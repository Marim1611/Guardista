<template>
  <v-container fluid class="parent">
    <v-row class="d-flex flex-row justify-center">
      <!-- add hacker gif -->
      <h1>Relax, and let Guardista check your code.</h1>
    </v-row>
    <v-row class="d-flex flex-row justify-center mt-16 px-12">
      <v-col cols="2"><v-spacer></v-spacer></v-col>
      <v-col cols="6">
        <v-file-input
          show-size
          multiple
          label="Browse File(s)"
          @change="selectFile"
          ref="form"
        ></v-file-input>
        <v-alert
          v-if="message"
          border="left"
          color="error"
          dark
          style="max-width: 60vw"
          class="text-center"
        >
          {{ message }}
        </v-alert>
      </v-col>
      <v-col>
        <v-btn dark medium class="mt-4 ml-7" color="success" @click="upload">
          Upload to Scan
          <v-icon class="mdi mdi-cloud-upload"></v-icon>
        </v-btn>
      </v-col>
    </v-row>
    <v-row
      class="d-flex flex-row justify-space-around mt-16 px-12"
      v-if="showStatus"
    >
      <v-col cols="3"><v-spacer></v-spacer></v-col>

      <v-col v-for="(ele, i) in cases.slice(0, -1)" :key="i" class="btn">
        <v-icon :class="{ iconColor: done[i] }">{{ icons[i] }}</v-icon>
        <p class="stat" color="#6e1131" :class="{ checked: done[i] }">
          {{ ele }}
        </p>
      </v-col>
      <v-col class="btn" v-if="!disableLocalization">
        <v-icon :class="{ iconColor: done[4] }">{{ icons[4] }}</v-icon>
        <p class="stat" color="#6e1131" :class="{ checked: done[4] }">
          {{ cases[4] }}
        </p>
      </v-col>

      <v-col cols="3"><v-spacer></v-spacer></v-col>
    </v-row>

    <v-row class="d-flex flex-row justify-center" v-if="done[3]">
      <v-card class="mx-auto py-auto px-12">
        <v-list>
          <v-subheader>Results</v-subheader>
          <v-list-item-group color="primary">
            <v-list-item v-for="(file, index) in currentFiles" :key="index">
              <v-row>
                <v-col>
                  <a :href="file.url">{{ file.name }}</a>
                </v-col>
              </v-row>
            </v-list-item>
            <v-row class="d-flex flex-row align-center justify-center py-8">
              <v-btn
                small
                @click="show_report('report1')"
                class="mr-2"
                dark
                color="#757575"
                :class="{
                  'font-weight-regular ': !report1Clicked,
                  'custom-font-weight ': report1Clicked,
                }"
              >
                See Report 1
                <v-icon right dark>mdi-bug-check</v-icon>
              </v-btn>
              <v-btn
                small
                @click="show_report('report2')"
                class="ml-2"
                dark
                color="#757575"
                :class="{
                  'font-weight-regular ': !report2Clicked,
                  'custom-font-weight ': report2Clicked,
                }"
              >
                See Report 2
                <v-icon right dark>mdi-bug-check</v-icon>
              </v-btn>
            </v-row>
          </v-list-item-group>
        </v-list>
      </v-card>
    </v-row>

    <v-row
      class="d-flex flex-row align-center justify-center pt-8 px-14"
      v-if="
        (main_report1 && this.show_safe_msg[1] == false) ||
        (main_report2 && this.show_safe_msg[0] == false)
      "
    >
      <MainInfo
        v-if="main_report1 && this.show_safe_msg[1] == false"
        :report="report1"
        :reportName="'Report 1'"
      ></MainInfo>
      <MainInfo
        v-if="main_report2 && this.show_safe_msg[0] == false"
        :report="report2"
        :reportName="'Report 2'"
      ></MainInfo>
    </v-row>

    <v-row
      class="d-flex flex-row align-center justify-center py-2 px-14"
      v-if="show_safe_msg[0] || show_safe_msg[1]"
    >
      <v-col cols="2"><v-spacer></v-spacer></v-col>
      <v-col>
        <v-alert border="left" color="success" class="text-center" dark>
          SAFE
        </v-alert>
      </v-col>
      <v-col cols="2"><v-spacer></v-spacer></v-col>
    </v-row>
    <v-row
      v-if="done[3]"
      class="d-flex flex-row align-center justify-center py-8"
    >
      <v-btn color="success" dark medium class="mr-2" @click="reset">
        Another scan?
        <v-icon right dark>mdi-feature-search</v-icon>
      </v-btn>
      <v-btn
        color="#757575"
        dark
        medium
        class="ml-2"
        @click="localize"
        v-if="!disableLocalization"
      >
        Localize vulnerability?
        <v-icon right dark>mdi-bug</v-icon>
      </v-btn>
    </v-row>
    <v-row
      class="d-flex flex-row align-center justify-center py-2 px-14"
      v-if="no_source_code"
    >
      <v-col cols="2"><v-spacer></v-spacer></v-col>
      <v-col>
        <v-alert border="left" color="error" dark class="text-center">
          Please upload your source code to localize the vulnerabilities.
        </v-alert>
      </v-col>
      <v-col cols="2"><v-spacer></v-spacer></v-col>
    </v-row>

    <v-row
      class="d-flex flex-row justify-center mt-2 px-12"
      v-if="no_source_code"
    >
      <v-col cols="2"><v-spacer></v-spacer></v-col>
      <v-col cols="6">
        <v-file-input
          show-size
          multiple
          label="Browse File(s)"
          @change="selectSrcFiles"
          ref="srcCodeform"
        ></v-file-input>
        <v-alert
          v-if="message2"
          border="left"
          color="error"
          dark
          style="max-width: 60vw"
          class="text-center"
        >
          {{ message2 }}
        </v-alert>
      </v-col>
      <v-col>
        <v-btn
          dark
          medium
          class="mt-4 ml-7"
          color="success"
          @click="uploadSrcCode"
        >
          Upload to Localize
          <v-icon class="mdi mdi-cloud-upload"></v-icon>
        </v-btn>
      </v-col>
    </v-row>

    <v-dialog
      v-model="localizationDialog"
      width="max-content"
      class="mt-16"
      @keydown.esc="closeReport"
      v-if="!no_source_code"
    >
      <v-carousel v-model="selectedWindow" hide-delimiters>
        <v-carousel-item v-for="span in spans" :key="span.id">
          <LocalizationReport
            :span="span"
            @closeDialog="closeReport"
            class="report-container"
          ></LocalizationReport>
        </v-carousel-item>
      </v-carousel>
    </v-dialog>
  </v-container>
</template>
<script>
// import axios from "axios";
// import { getUniversalCookies } from "cookie-universal-nuxt";
import MainInfo from "../components/MainInfo.vue";
import LocalizationReport from "../components/LocalizationReport.vue";
export default {
  components: {
    MainInfo,
    LocalizationReport,
  },

  data() {
    return {
      currentFiles: undefined,
      progress: 0,
      message: "",
      main_report1: false,
      main_report2: false,

      cases: ["Submitted", "Compiled", "Lifted", "Classified", "Localized"],
      done: [false, false, false, false, false],
      icons: [
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
      ],
      showStatus: false,
      currentCase: -1,
      intervalId: null,
      reports: [],
      spans: [],
      reports_dict: {},
      spans_dict: {},
      report2: [],
      report1: [],
      safe_reports: [false, false],
      show_safe_msg: [false, false],
      no_source_code: false,
      localizationDialog: false,
      selectedWindow: true,
      message2: "",
      report1Clicked: false,
      report2Clicked: false,
      disableLocalization: false,
    };
  },
  methods: {
    async uploadSrcCode() {
      if (!this.srcFiles) {
        this.message2 = "Please select a source file!";
        return;
      }
      // loop on current files
      const formData = new FormData();
      for (let i = 0; i < this.srcFiles.length; i++) {
        console.log(this.srcFiles[i].name);
        const ext = this.srcFiles[i].name.split(".").pop();
        const allowed_extensions = ["py", "c", "cpp", "h"];
        if (!allowed_extensions.includes(ext)) {
          console.log(ext);
          console.log("**********");
          this.srcFiles[i] = undefined;
          this.message2 = "Only source code files are allowed!";
          return;
        }
        formData.append("files", this.srcFiles[i]);
      }
      this.message2 = "";
      this.no_source_code = false;
      await new Promise((resolve) => setTimeout(resolve, 3000));
      this.icons[4] = "mdi-check-circle";
      this.$set(this.done, 4, true);
      await new Promise((resolve) => setTimeout(resolve, 2000));
      this.localizationDialog = true;
      var response = {
        78: {
          "D:/ClassWork/Guardista/BackEnd/new_BE/tmp/tmp76\\output\\source\\CWE78_OS_Command_Injection__char_file_w32_execv_04.c":
            {
              "CWE78_OS_Command_Injection__char_file_w32_execv_04.c": [
                [1053, 2323],
              ],
              filecontent:
                '/* TEMPLATE GENERATED TESTCASE FILE\nFilename: CWE78_OS_Command_Injection__char_file_w32_execv_04.c\nLabel Definition File: CWE78_OS_Command_Injection.strings.label.xml\nTemplate File: sources-sink-04.tmpl.c\n*/\n/*\n * @description\n * CWE: 78 OS Command Injection\n * BadSource: file Read input from a file\n * GoodSource: Fixed string\n * Sink: w32_execv\n *    BadSink : execute command with execv\n * Flow Variant: 04 Control flow: if(STATIC_CONST_TRUE) and if(STATIC_CONST_FALSE)\n *\n * */\n\n#include "std_testcase.h"\n\n#include <wchar.h>\n\n#include <unistd.h>\n#define COMMAND_INT_PATH "/bin/sh"\n#define COMMAND_INT "sh"\n#define COMMAND_ARG1 "-c"\n#define COMMAND_ARG2 "ls "\n#define COMMAND_ARG3 data\n\n\n\n#define FILENAME "/tmp/file.txt"\n\n\n#include <process.h>\n#define EXECV _execv\n\n/* The two variables below are declared "const", so a tool should\n * be able to identify that reads of these will always return their\n * initialized values.\n */\nstatic const int STATIC_CONST_TRUE = 1; /* true */\nstatic const int STATIC_CONST_FALSE = 0; /* false */\n\n#ifndef OMITBAD\n\nvoid CWE78_OS_Command_Injection__char_file_w32_execv_04_bad()\n{\n    char * data;\n    char dataBuffer[100] = COMMAND_ARG2;\n    data = dataBuffer;\n    if(STATIC_CONST_TRUE)\n    {\n        {\n            /* Read input from a file */\n            size_t dataLen = strlen(data);\n            FILE * pFile;\n            /* if there is room in data, attempt to read the input from a file */\n            if (100-dataLen > 1)\n            {\n                pFile = fopen(FILENAME, "r");\n                if (pFile != NULL)\n                {\n                    /* POTENTIAL FLAW: Read data from a file */\n                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL)\n                    {\n                        printLine("fgets() failed");\n                        /* Restore NUL terminator if fgets fails */\n                        data[dataLen] = \'\\0\';\n                    }\n                    fclose(pFile);\n                }\n            }\n        }\n    }\n    {\n        char *args[] = {COMMAND_INT_PATH, COMMAND_ARG1, COMMAND_ARG3, NULL};\n        /* execv - specify the path where the command is located */\n        /* POTENTIAL FLAW: Execute command without validating input possibly leading to command injection */\n        EXECV(COMMAND_INT_PATH, args);\n    }\n}\n\n#endif /* OMITBAD */\n\n\n/* Below is the main(). It is only used when building this testcase on\n * its own for testing or for building a binary to use in testing binary\n * analysis tools. It is not used when compiling all the testcases as one\n * application, which is how source code analysis tools are tested.\n */\n\n\nint main(int argc, char * argv[])\n{\n    /* seed randomness */\n    srand( (unsigned)time(NULL) );\n\n#ifndef OMITBAD\n    printLine("Calling bad()...");\n    CWE78_OS_Command_Injection__char_file_w32_execv_04_bad();\n    printLine("Finished bad()");\n#endif /* OMITBAD */\n    return 0;\n}\n',
            },
        },
        126: {
          "D:/ClassWork/Guardista/BackEnd/new_BE/tmp/tmp76\\output\\source\\CWE126_OS_Command_Injection__char_file_w32_execv_04.c":
            {
              "CWE126_OS_Command_Injection__char_file_w32_execv_04.c": [
                [1053, 2323],
              ],
              filecontent:
                '/* TEMPLATE GENERATED TESTCASE FILE\nFilename: CWE126_OS_Command_Injection__char_file_w32_execv_04.c\nLabel Definition File: CWE78_OS_Command_Injection.strings.label.xml\nTemplate File: sources-sink-04.tmpl.c\n*/\n/*\n * @description\n * CWE: 78 OS Command Injection\n * BadSource: file Read input from a file\n * GoodSource: Fixed string\n * Sink: w32_execv\n *    BadSink : execute command with execv\n * Flow Variant: 04 Control flow: if(STATIC_CONST_TRUE) and if(STATIC_CONST_FALSE)\n *\n * */\n\n#include "std_testcase.h"\n\n#include <wchar.h>\n\n#include <unistd.h>\n#define COMMAND_INT_PATH "/bin/sh"\n#define COMMAND_INT "sh"\n#define COMMAND_ARG1 "-c"\n#define COMMAND_ARG2 "ls "\n#define COMMAND_ARG3 data\n\n\n\n#define FILENAME "/tmp/file.txt"\n\n\n#include <process.h>\n#define EXECV _execv\n\n/* The two variables below are declared "const", so a tool should\n * be able to identify that reads of these will always return their\n * initialized values.\n */\nstatic const int STATIC_CONST_TRUE = 1; /* true */\nstatic const int STATIC_CONST_FALSE = 0; /* false */\n\n#ifndef OMITBAD\n\nvoid CWE78_OS_Command_Injection__char_file_w32_execv_04_bad()\n{\n    char * data;\n    char dataBuffer[100] = COMMAND_ARG2;\n    data = dataBuffer;\n    if(STATIC_CONST_TRUE)\n    {\n        {\n            /* Read input from a file */\n            size_t dataLen = strlen(data);\n            FILE * pFile;\n            /* if there is room in data, attempt to read the input from a file */\n            if (100-dataLen > 1)\n            {\n                pFile = fopen(FILENAME, "r");\n                if (pFile != NULL)\n                {\n                    /* POTENTIAL FLAW: Read data from a file */\n                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL)\n                    {\n                        printLine("fgets() failed");\n                        /* Restore NUL terminator if fgets fails */\n                        data[dataLen] = \'\\0\';\n                    }\n                    fclose(pFile);\n                }\n            }\n        }\n    }\n    {\n        char *args[] = {COMMAND_INT_PATH, COMMAND_ARG1, COMMAND_ARG3, NULL};\n        /* execv - specify the path where the command is located */\n        /* POTENTIAL FLAW: Execute command without validating input possibly leading to command injection */\n        EXECV(COMMAND_INT_PATH, args);\n    }\n}\n\n#endif /* OMITBAD */\n\n\n/* Below is the main(). It is only used when building this testcase on\n * its own for testing or for building a binary to use in testing binary\n * analysis tools. It is not used when compiling all the testcases as one\n * application, which is how source code analysis tools are tested.\n */\n\n\nint main(int argc, char * argv[])\n{\n    /* seed randomness */\n    srand( (unsigned)time(NULL) );\n\n#ifndef OMITBAD\n    printLine("Calling bad()...");\n    CWE78_OS_Command_Injection__char_file_w32_execv_04_bad();\n    printLine("Finished bad()");\n#endif /* OMITBAD */\n    return 0;\n}\n',
            },
        },
        590: {},
        762: {},
      };

      this.spans_dict = response;
      for (var key in this.report1) {
        let id = this.report1[key]["CWE-ID"];
        if (this.spans_dict[id] === undefined) {
          continue;
        }
        this.spans.push(this.spans_dict[id]);
      }
      for (var key in this.report2) {
        let id = this.report2[key]["CWE-ID"];
        if (
          this.spans_dict[id] === undefined ||
          Object.keys(this.spans_dict[id]).length === 0
        ) {
          continue;
        }
        this.spans.push([id, this.spans_dict[id]]);
      }

      // this.message2 = "";
      // console.log(this.srcFiles);
      // console.log("token in upload", this.token);
      // console.log(this.srcFiles);
      // this.showStatus = true;
      // await axios
      //   .post(this.baseURL + "/api/uploadSrc", formData, {
      //     headers: {
      //       "Content-Type": "multipart/form-data",
      //       "X-CSRFToken": `Bearer ${this.token}`,
      //     },
      //   })
      //   .then((res) => {
      //     this.icons[0] = "mdi-check-circle";
      //     console.log("response to upload", res);
      //     console.log("response to upload", res.data);
      //     console.log("num_case", this.$cookies.get("num_case"));
      //     this.$cookies.set("num_case", res.data);
      //     console.log("num_caseww", this.$cookies.get("num_case"));
      //     this.intervalId = setInterval(this.fetchStatus, 100);
      //   })
      //   .catch((err) => {
      //     console.log("err in upload", err.response);
      //   });
    },
    selectSrcFiles(files) {
      this.progress = 0;
      this.srcFiles = files;
      console.log(this.srcFiles);
    },
    // async fetchStatus() {
    //   await axios
    //     .get(this.baseURL + "/api/status", {
    //       headers: {
    //         "X-CSRFToken": `Bearer ${this.token}`,
    //       },
    //       responseType: "json",
    //       withCredentials: true,
    //     })
    //     .then((res) => {
    //       console.log("********get status");
    //       console.log(res.data);
    //       console.log(res);
    //       const data = JSON.parse(JSON.stringify(res.data));
    //       // console.log(res.data["waiting_status"]);

    //       // JSON.parse
    //       console.log(data);
    //       if (res.data.waiting_status == 0) {
    //         console.log("&&&&&&&&&&&&& submitted");
    //         this.$set(this.done, 0, true);
    //         this.$set(this.icons, 0, "mdi-check-circle");
    //       } else if (res.data.waiting_status == 1) {
    //         console.log("&&&&&&&&&&&&& compiled");
    //         this.$set(this.done, 1, true);
    //         this.$set(this.icons, 1, "mdi-check-circle");
    //       } else if (res.data.waiting_status == 2) {
    //         this.$set(this.done, 2, true);
    //         this.$set(this.icons, 2, "mdi-check-circle");

    //         console.log("&&&&&&&&&&&&& lifted");
    //       } else if (res.data.waiting_status == 3) {
    ////         this.$set(this.done, 3, true);
    //         this.$set(this.icons, 3, "mdi-check-circle");
    //         console.log("&&&&&&&&&&&&& classified");
    //         this.getReport();
    //       } else if (res.data.waiting_status == 4) {
    //         this.$set(this.done, 4, true);
    //         this.$set(this.icons, 4, "mdi-check-circle");
    //         console.log("&&&&&&&&&&&&& Localized");
    //         clearInterval(this.intervalId);
    //         this.getSpan();
    //       }
    //     })
    //     .catch((err) => {
    //       console.log("Error in get status");
    //       console.log(err);
    //     });
    // },
    // async getReport() {
    //   console.log("get report");
    //   await axios
    //     .get(this.baseURL + "/api/report", {
    //       headers: {
    //         "X-CSRFToken": `Bearer ${this.token}`,
    //       },
    //       responseType: "json",
    //       withCredentials: true,
    //     })
    //     .then((res) => {
    //       console.log("$######### get report");

    //  this.reports_dict = res.data.report;

    //   var report1 = this.reports_dict["report1"];
    //   var report2 = this.reports_dict["report2"];

    //   if (report1.hasOwnProperty("report")) {
    //     this.$set(this.safe_reports, 0, true);
    //   } else {
    //     for (var key in report1["report1"]) {
    //       this.report1.push(report1["report1"][key]);
    //     }
    //   }

    //   if (report2.hasOwnProperty("report")) {
    //     this.$set(this.safe_reports, 1, true);
    //   } else {
    //     for (var key in report2["report2"]) {
    //       this.report2.push(report2["report2"][key]);
    //     }
    //   }

    //     .catch((err) => {
    //       console.log("Error in get report");
    //     });
    // },
    // async getSpan() {
    //   console.log("get span");
    //   await axios
    //     .get(this.baseURL + "/api/loc", {
    //       headers: {
    //         "X-CSRFToken": `Bearer ${this.token}`,
    //       },
    //       responseType: "json",
    //       withCredentials: true,
    //     })
    //     .then((res) => {
    //       console.log("$######### get span");
    //       console.log("-------- Response --------");
    //       console.log(res.data);
    //       console.log("--------------------------");
    //       this.spans_dict = res.data;

    //       if (this.spans.length == 0 && this.safe_reports[0] == false) {
    //         for (var key in this.report1) {
    //           let id = this.report1[key]["CWE-ID"];
    //           if (this.spans_dict[id] === undefined) {
    //             continue;
    //           }
    //           this.spans.push(this.spans_dict[id]);
    //         }
    //       }
    //       if (this.spans.length == 0 && this.safe_reports[1] == false) {
    //         for (var key in this.report2) {
    //           console.log("key");
    //           let id = this.report2[key]["CWE-ID"];
    //           if (
    //             this.spans_dict[id] === undefined ||
    //             Object.keys(this.spans_dict[id]).length === 0
    //           ) {
    //             continue;
    //           }
    //           this.spans.push([id, this.spans_dict[id]]);
    //         }
    //       }
    //       this.localizationDialog = true;
    //     })
    //     .catch((err) => {
    //       console.log("Error in get span");
    //     });
    // },
    selectFile(files) {
      if (this.currentFiles != undefined && files.length == 0) {
        this.reset();
      }
      this.progress = 0;
      this.currentFiles = files;
      console.log(this.currentFiles);
    },

    closeReport() {
      this.localizationDialog = false;
    },
    async upload() {
      if (!this.currentFiles) {
        this.message = "Please select a file!";
        return;
      }
      // loop on current files
      const formData = new FormData();
      for (let i = 0; i < this.currentFiles.length; i++) {
        console.log(this.currentFiles[i].name);
        const ext = this.currentFiles[i].name.split(".").pop();
        const allowed_extensions = ["py", "c", "exe", "cpp", "gch", "h", "o"];
        if (!allowed_extensions.includes(ext)) {
          console.log(ext);
          console.log("**********");
          this.currentFiles[i] = undefined;
          this.message = "Only code files or executables are allowed!";
          return;
        }
        formData.append("files", this.currentFiles[i]);
      }
      this.message = "";
      this.showStatus = true;
      await new Promise((resolve) => setTimeout(resolve, 3000));

      this.icons[0] = "mdi-check-circle";
      this.$set(this.done, 0, true);
      await new Promise((resolve) => setTimeout(resolve, 3000));

      this.icons[1] = "mdi-check-circle";
      this.$set(this.done, 1, true);
      await new Promise((resolve) => setTimeout(resolve, 3000));

      this.icons[2] = "mdi-check-circle";
      this.$set(this.done, 2, true);
      await new Promise((resolve) => setTimeout(resolve, 3000));

      this.icons[3] = "mdi-check-circle";
      this.$set(this.done, 3, true);

      var response = {
        report1: {
          report: "safe",
        },
        report2: {
          report: "safe",
        },
      };
      this.reports_dict = response;

      var report1 = this.reports_dict["report1"];
      var report2 = this.reports_dict["report2"];

      if (report1.hasOwnProperty("report")) {
        this.$set(this.safe_reports, 0, true);
      }

      if (report2.hasOwnProperty("report")) {
        this.$set(this.safe_reports, 1, true);
      }

      if (this.safe_reports[0] == true && this.safe_reports[1] == true) {
        this.disableLocalization = true;
      }
    },
    //   this.message = "";
    //   console.log(this.currentFiles);
    //   console.log("token in upload", this.token);
    //   console.log(this.currentFiles);
    //   this.showStatus = true;
    //   await axios
    //     .post(this.baseURL + "/api/upload", formData, {
    //       headers: {
    //         "Content-Type": "multipart/form-data",
    //         "X-CSRFToken": `Bearer ${this.token}`,
    //       },
    //     })
    //     .then((res) => {
    //       this.done[0] = true;
    //       this.icons[0] = "mdi-check-circle";
    //       console.log("response to upload", res);
    //       console.log("response to upload", res.data);
    //       console.log("progress", this.progress);
    //       console.log("num_case", this.$cookies.get("num_case"));
    //       this.$cookies.set("num_case", res.data);
    //       console.log("num_caseww", this.$cookies.get("num_case"));
    //       this.intervalId = setInterval(this.fetchStatus, 100);
    //     })
    //     .catch((err) => {
    //       console.log("err in upload", err.response);
    //     });
    // },

    reset() {
      console.log("reset");
      this.currentFiles = undefined;
      this.progress = 0;
      this.message = "";
      this.main_report1 = false;
      this.main_report2 = false;
      this.cases = [
        "Submitted",
        "Compiled",
        "Lifted",
        "Classified",
        "Localized",
      ];
      this.done = [false, false, false, false, false];
      this.icons = [
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
      ];
      this.showStatus = false;
      this.currentCase = -1;
      this.intervalId = null;
      this.reports = [];
      this.spans = [];
      this.reports_dict = {};
      this.spans_dict = {};
      this.report2 = [];
      this.report1 = [];
      this.safe_reports = [false, false];
      this.show_safe_msg = [false, false];
      this.no_source_code = false;
      this.localizationDialog = false;
      this.selectedWindow = true;
      this.message2 = "";
      this.report1Clicked = false;
      this.report2Clicked = false;
      this.disableLocalization = false;

      clearInterval(this.intervalId);
      this.$refs.form.reset();
    },

    show_report(report) {
      var response = {
        report1: {
          report: "safe",
        },
        report2: {
          report: "safe",
        },
      };
      this.reports_dict = response;

      var report1 = this.reports_dict["report1"];
      var report2 = this.reports_dict["report2"];

      if (report1.hasOwnProperty("report")) {
        this.$set(this.safe_reports, 0, true);
      } else {
        for (var key in report1["report1"]) {
          this.report1.push(report1["report1"][key]);
        }
      }

      if (report2.hasOwnProperty("report")) {
        this.$set(this.safe_reports, 1, true);
      } else {
        for (var key in report2["report2"]) {
          this.report2.push(report2["report2"][key]);
        }
      }
      //////////////////////////////// Remove above////////////////////////////////////

      if (report === "report1") {
        this.report1Clicked = true;
        this.report2Clicked = false;
      } else if (report === "report2") {
        this.report1Clicked = false;
        this.report2Clicked = true;
      }

      if (
        report === "report1" &&
        this.safe_reports[0] === false &&
        this.main_report1 === false
      ) {
        this.main_report1 = true;
        this.main_report2 = false;
        this.$set(this.show_safe_msg, 0, false);
        this.$set(this.show_safe_msg, 1, false);
      } else if (report === "report1" && this.safe_reports[0] === true) {
        console.log("HERE");
        this.$set(this.show_safe_msg, 0, true);
        this.$set(this.show_safe_msg, 1, false);
        this.main_report1 = false;
        this.main_report2 = false;
      }
      if (
        report === "report2" &&
        this.safe_reports[1] === false &&
        this.main_report2 === false
      ) {
        this.main_report2 = true;
        this.main_report1 = false;
        this.$set(this.show_safe_msg, 0, false);
        this.$set(this.show_safe_msg, 1, false);
      } else if (report === "report2" && this.safe_reports[1] === true) {
        this.$set(this.show_safe_msg, 0, false);
        this.$set(this.show_safe_msg, 1, true);
        this.main_report1 = false;
        this.main_report2 = false;
      }
    },
    async localize() {
      let source_code_available = false;
      for (var i = 0; i < this.currentFiles.length; i++) {
        const ext = this.currentFiles[i].name.split(".").pop();
        console.log(ext);
        const allowed_extensions = ["py", "c", "cpp"];
        if (allowed_extensions.includes(ext)) {
          source_code_available = true;
          console.log("HERE");
          break;
        }
      }

      if (source_code_available == true) {
        ///////////////////////// show span and loadinggggggg
        var response = {
          78: {
            "D:/ClassWork/Guardista/BackEnd/new_BE/tmp/tmp76\\output\\source\\CWE78_OS_Command_Injection__char_file_w32_execv_04.c":
              {
                "CWE78_OS_Command_Injection__char_file_w32_execv_04.c": [
                  [1053, 2323],
                ],
                filecontent:
                  '/* TEMPLATE GENERATED TESTCASE FILE\nFilename: CWE78_OS_Command_Injection__char_file_w32_execv_04.c\nLabel Definition File: CWE78_OS_Command_Injection.strings.label.xml\nTemplate File: sources-sink-04.tmpl.c\n*/\n/*\n * @description\n * CWE: 78 OS Command Injection\n * BadSource: file Read input from a file\n * GoodSource: Fixed string\n * Sink: w32_execv\n *    BadSink : execute command with execv\n * Flow Variant: 04 Control flow: if(STATIC_CONST_TRUE) and if(STATIC_CONST_FALSE)\n *\n * */\n\n#include "std_testcase.h"\n\n#include <wchar.h>\n\n#include <unistd.h>\n#define COMMAND_INT_PATH "/bin/sh"\n#define COMMAND_INT "sh"\n#define COMMAND_ARG1 "-c"\n#define COMMAND_ARG2 "ls "\n#define COMMAND_ARG3 data\n\n\n\n#define FILENAME "/tmp/file.txt"\n\n\n#include <process.h>\n#define EXECV _execv\n\n/* The two variables below are declared "const", so a tool should\n * be able to identify that reads of these will always return their\n * initialized values.\n */\nstatic const int STATIC_CONST_TRUE = 1; /* true */\nstatic const int STATIC_CONST_FALSE = 0; /* false */\n\n#ifndef OMITBAD\n\nvoid CWE78_OS_Command_Injection__char_file_w32_execv_04_bad()\n{\n    char * data;\n    char dataBuffer[100] = COMMAND_ARG2;\n    data = dataBuffer;\n    if(STATIC_CONST_TRUE)\n    {\n        {\n            /* Read input from a file */\n            size_t dataLen = strlen(data);\n            FILE * pFile;\n            /* if there is room in data, attempt to read the input from a file */\n            if (100-dataLen > 1)\n            {\n                pFile = fopen(FILENAME, "r");\n                if (pFile != NULL)\n                {\n                    /* POTENTIAL FLAW: Read data from a file */\n                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL)\n                    {\n                        printLine("fgets() failed");\n                        /* Restore NUL terminator if fgets fails */\n                        data[dataLen] = \'\\0\';\n                    }\n                    fclose(pFile);\n                }\n            }\n        }\n    }\n    {\n        char *args[] = {COMMAND_INT_PATH, COMMAND_ARG1, COMMAND_ARG3, NULL};\n        /* execv - specify the path where the command is located */\n        /* POTENTIAL FLAW: Execute command without validating input possibly leading to command injection */\n        EXECV(COMMAND_INT_PATH, args);\n    }\n}\n\n#endif /* OMITBAD */\n\n\n/* Below is the main(). It is only used when building this testcase on\n * its own for testing or for building a binary to use in testing binary\n * analysis tools. It is not used when compiling all the testcases as one\n * application, which is how source code analysis tools are tested.\n */\n\n\nint main(int argc, char * argv[])\n{\n    /* seed randomness */\n    srand( (unsigned)time(NULL) );\n\n#ifndef OMITBAD\n    printLine("Calling bad()...");\n    CWE78_OS_Command_Injection__char_file_w32_execv_04_bad();\n    printLine("Finished bad()");\n#endif /* OMITBAD */\n    return 0;\n}\n',
              },
          },
          126: {
            "D:/ClassWork/Guardista/BackEnd/new_BE/tmp/tmp76\\output\\source\\CWE126_OS_Command_Injection__char_file_w32_execv_04.c":
              {
                "CWE126_OS_Command_Injection__char_file_w32_execv_04.c": [
                  [1053, 2323],
                ],
                filecontent:
                  '/* TEMPLATE GENERATED TESTCASE FILE\nFilename: CWE126_OS_Command_Injection__char_file_w32_execv_04.c\nLabel Definition File: CWE78_OS_Command_Injection.strings.label.xml\nTemplate File: sources-sink-04.tmpl.c\n*/\n/*\n * @description\n * CWE: 78 OS Command Injection\n * BadSource: file Read input from a file\n * GoodSource: Fixed string\n * Sink: w32_execv\n *    BadSink : execute command with execv\n * Flow Variant: 04 Control flow: if(STATIC_CONST_TRUE) and if(STATIC_CONST_FALSE)\n *\n * */\n\n#include "std_testcase.h"\n\n#include <wchar.h>\n\n#include <unistd.h>\n#define COMMAND_INT_PATH "/bin/sh"\n#define COMMAND_INT "sh"\n#define COMMAND_ARG1 "-c"\n#define COMMAND_ARG2 "ls "\n#define COMMAND_ARG3 data\n\n\n\n#define FILENAME "/tmp/file.txt"\n\n\n#include <process.h>\n#define EXECV _execv\n\n/* The two variables below are declared "const", so a tool should\n * be able to identify that reads of these will always return their\n * initialized values.\n */\nstatic const int STATIC_CONST_TRUE = 1; /* true */\nstatic const int STATIC_CONST_FALSE = 0; /* false */\n\n#ifndef OMITBAD\n\nvoid CWE78_OS_Command_Injection__char_file_w32_execv_04_bad()\n{\n    char * data;\n    char dataBuffer[100] = COMMAND_ARG2;\n    data = dataBuffer;\n    if(STATIC_CONST_TRUE)\n    {\n        {\n            /* Read input from a file */\n            size_t dataLen = strlen(data);\n            FILE * pFile;\n            /* if there is room in data, attempt to read the input from a file */\n            if (100-dataLen > 1)\n            {\n                pFile = fopen(FILENAME, "r");\n                if (pFile != NULL)\n                {\n                    /* POTENTIAL FLAW: Read data from a file */\n                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL)\n                    {\n                        printLine("fgets() failed");\n                        /* Restore NUL terminator if fgets fails */\n                        data[dataLen] = \'\\0\';\n                    }\n                    fclose(pFile);\n                }\n            }\n        }\n    }\n    {\n        char *args[] = {COMMAND_INT_PATH, COMMAND_ARG1, COMMAND_ARG3, NULL};\n        /* execv - specify the path where the command is located */\n        /* POTENTIAL FLAW: Execute command without validating input possibly leading to command injection */\n        EXECV(COMMAND_INT_PATH, args);\n    }\n}\n\n#endif /* OMITBAD */\n\n\n/* Below is the main(). It is only used when building this testcase on\n * its own for testing or for building a binary to use in testing binary\n * analysis tools. It is not used when compiling all the testcases as one\n * application, which is how source code analysis tools are tested.\n */\n\n\nint main(int argc, char * argv[])\n{\n    /* seed randomness */\n    srand( (unsigned)time(NULL) );\n\n#ifndef OMITBAD\n    printLine("Calling bad()...");\n    CWE78_OS_Command_Injection__char_file_w32_execv_04_bad();\n    printLine("Finished bad()");\n#endif /* OMITBAD */\n    return 0;\n}\n',
              },
          },
          590: {},
          762: {},
        };

        this.spans_dict = response;
        for (var key in this.report1) {
          let id = this.report1[key]["CWE-ID"];
          if (this.spans_dict[id] === undefined) {
            continue;
          }
          this.spans.push(this.spans_dict[id]);
        }
        for (var key in this.report2) {
          let id = this.report2[key]["CWE-ID"];
          if (
            this.spans_dict[id] === undefined ||
            Object.keys(this.spans_dict[id]).length === 0
          ) {
            continue;
          }
          this.spans.push([id, this.spans_dict[id]]);
        }

        console.log(this.spans);
        //////////////////to be removed////////////////////
        await new Promise((resolve) => setTimeout(resolve, 3000));

        this.localizationDialog = true;

        this.icons[4] = "mdi-check-circle";
        this.$set(this.done, 4, true);
      } else {
        this.no_source_code = true;

        return;
      }
    },
  },
  computed: {
    isSafeMsgDisabled() {
      return this.safe_reports[0] === true && this.safe_reports[1] === true;
    },

    // token() {
    //   return this.$store.state.token;
    // },
    // set_token() {
    //   this.$store.commit("setToken", this.$cookies.get("csrftoken"));
    // },
    // baseURL() {
    //   return this.$store.state.baseURL;
    // },
  },
  // async created() {
  //   await axios
  //     .get(this.baseURL + "/api/get")
  //     .then((res) => {
  //       console.log("$######### get token");
  //     })
  //     .catch((err) => {
  //       console.log("Error in get token");
  //     });
  //   this.set_token;
  // },
};
</script>

<style scoped>
.parent {
  margin-top: 100px;
  height: max-content;
}
h3 {
  font-family: "Roboto";
  font-size: 2.2vmax;
  color: #9d0000;
}

.checked {
  color: #9d0000;
  font-weight: bold;
  font-size: 20px;
}

.iconColor {
  color: #9d0000;
}
.con {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: flex-start;
}

.dialog {
  z-index: 12;
}
.report-container {
  height: 100%;
  overflow-y: auto;
}

.rotate {
  animation-name: rotate;
  animation-duration: 2s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
  transform-origin: center;
}

@keyframes rotate {
  from {
    transform: rotate(0);
  }
  to {
    transform: rotate(360deg);
  }
}

.btn {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;
}

.custom-font-weight {
  font-weight: 900;
}

h1 {
  color: #9d0000;
}
</style>
