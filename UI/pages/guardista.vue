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

      <v-col v-for="(ele, i) in cases" :key="i" class="btn">
        <v-icon :class="{ iconColor: done[i] }">{{ icons[i] }}</v-icon>
        <p class="stat" color="#6e1131" :class="{ checked: done[i] }">
          {{ ele }}
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
                class="mr-2 custom-text"
                text
                :class="{
                  'font-weight-regular ': !report1Clicked,
                  'custom-font-weight ': report1Clicked,
                }"
              >
                See Report 1
                <v-icon right dark>mdi-bug-check</v-icon>
              </v-btn>
              <v-btn
                text
                small
                @click="show_report('report2')"
                class="ml-2 custom-text"
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
        :disabled="isSafeMsgDisabled"
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
    };
  },
  methods: {
    uploadSrcCode() {
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
    upload() {
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
      this.icons[3] = "mdi-check-circle";
      this.$set(this.done, 3, true);
      this.icons[2] = "mdi-check-circle";
      this.$set(this.done, 2, true);
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
      this.message2= "";
      this.report1Clicked= false;
      this.report2Clicked= false;

      clearInterval(this.intervalId);
      this.$refs.form.reset();
    },

    show_report(report) {
      var response = {
        report1: {
          report: "safe",
        },
        report2: {
          report2: {
            rep0: {
              "CWE-ID": "78",
              Name: "Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection')",
              "Weakness Abstraction": "Base",
              Status: "Stable",
              Description:
                "The product constructs all or part of an OS command using externally-influenced input from an upstream component, but it does not neutralize or incorrectly neutralizes special elements that could modify the intended OS command when it is sent to a downstream component.",
              "Extended Description":
                "This could allow attackers to execute unexpected, dangerous commands directly on the operating system. This weakness can lead to a vulnerability in environments in which the attacker does not have direct access to the operating system, such as in web applications. Alternately, if the weakness occurs in a privileged program, it could allow the attacker to specify commands that normally would not be accessible, or to call alternate commands with privileges that the attacker does not have. The problem is exacerbated if the compromised process does not follow the principle of least privilege, because the attacker-controlled commands may run with special system privileges that increases the amount of damage. There are at least two subtypes of OS command injection The application intends to execute a single, fixed program that is under its own control. It intends to use externally-supplied inputs as arguments to that program. For example, the program might use system(nslookup [HOSTNAME]) to run nslookup and allow the user to supply a HOSTNAME, which is used as an argument. Attackers cannot prevent nslookup from executing. However, if the program does not remove command separators from the HOSTNAME argument, attackers could place the separators into the arguments, which allows them to execute their own program after nslookup has finished executing. The application accepts an input that it uses to fully select which program to run, as well as which commands to use. The application simply redirects this entire command to the operating system. For example, the program might use exec([COMMAND]) to execute the [COMMAND] that was supplied by the user. If the COMMAND is under attacker control, then the attacker can execute arbitrary commands or programs. If the command is being executed using functions like exec() and CreateProcess(), the attacker might not be able to combine multiple commands together in the same line. From a weakness standpoint, these variants represent distinct programmer errors. In the first variant, the programmer clearly intends that input from untrusted parties will be part of the arguments in the command to be executed. In the second variant, the programmer does not intend for the command to be accessible to any untrusted party, but the programmer probably has not accounted for alternate ways in which malicious attackers can provide input.",
              "Weakness Ordinalities": "nan",
              "Applicable Platforms":
                "LANGUAGE CLASSNot Language-SpecificLANGUAGE PREVALENCEUndetermined",
              "Background Details": "nan",
              "Exploitation Factors": "nan",
              "Likelihood of Exploit": "nan",
              "Common Consequences":
                " ,Confidentiality ,Integrity ,Availability ,Non-Repudiation ,Execute Unauthorized Code or Commands ,DoS Crash, Exit, or Restart ,Read Files or Directories ,Modify Files or Directories ,Read Application Data ,Modify Application Data ,Hide ActivitiesNOTEAttackers could execute unauthorized commands, which could then be used to disable the product, or read and modify data for which the attacker does not have permissions to access directly. Since the targeted application is directly executing the commands instead of the attacker, any malicious activities may appear to come from the application or the application's owner.",
              "Detection Methods":
                " ,Automated Static Analysis ,This weakness can often be detected using automated static analysis tools. Many modern tools use data flow analysis or constraint-based techniques to minimize the number of false positives. Automated static analysis might not be able to recognize when proper input validation is being performed, leading to false positives - i.e., warnings that do not have any security consequences or require any code changes. Automated static analysis might not be able to detect the usage of custom API functions or third-party libraries that indirectly invoke OS commands, leading to false negatives - especially if the API/library code is not available for analysis. ,Automated Dynamic Analysis ,This weakness can be detected using dynamic tools and techniques that interact with the product using large test suites with many diverse inputs, such as fuzz testing (fuzzing), robustness testing, and fault injection. The product's operation may slow down, but it should not become unstable, crash, or generate incorrect results.EFFECTIVENESSModerate ,Manual Static Analysis ,Since this weakness does not typically appear frequently within a single software package, manual white box techniques may be able to provide sufficient code coverage and reduction of false positives if all potentially-vulnerable operations can be assessed within limited time constraints.EFFECTIVENESSHigh ,Automated Static Analysis - Binary or Bytecode ,According to SOAR, the following detection techniques may be useful Highly cost effective Bytecode Weakness Analysis - including disassembler + source code weakness analysis Binary Weakness Analysis - including disassembler + source code weakness analysisEFFECTIVENESSHigh ,Dynamic Analysis with Automated Results Interpretation ,According to SOAR, the following detection techniques may be useful Cost effective for partial coverage Web Application Scanner Web Services Scanner Database ScannersEFFECTIVENESSSOAR Partial ,Dynamic Analysis with Manual Results Interpretation ,According to SOAR, the following detection techniques may be useful Cost effective for partial coverage Fuzz Tester Framework-based FuzzerEFFECTIVENESSSOAR Partial ,Manual Static Analysis - Source Code ,According to SOAR, the following detection techniques may be useful Highly cost effective Manual Source Code Review (not inspections) Cost effective for partial coverage Focused Manual Spotcheck - Focused manual analysis of sourceEFFECTIVENESSHigh ,Automated Static Analysis - Source Code ,According to SOAR, the following detection techniques may be useful Highly cost effective Source code Weakness Analyzer Context-configured Source Code Weakness AnalyzerEFFECTIVENESSHigh ,Architecture or Design Review ,According to SOAR, the following detection techniques may be useful Highly cost effective Formal Methods / Correct-By-Construction Cost effective for partial coverage Inspection (IEEE 1028 standard) (can apply to requirements, design, source code, etc.)EFFECTIVENESSHigh",
              "Potential Mitigations":
                " ,Architecture and Design ,If at all possible, use library calls rather than external processes to recreate the desired functionality. ,Architecture and Design Operation ,Sandbox or Jail ,Run the code in a jail or similar sandbox environment that enforces strict boundaries between the process and the operating system. This may effectively restrict which files can be accessed in a particular directory or which commands can be executed by the software. OS-level examples include the Unix chroot jail, AppArmor, and SELinux. In general, managed code may provide some protection. For example, java.io.FilePermission in the Java SecurityManager allows the software to specify restrictions on file operations. This may not be a feasible solution, and it only limits the impact to the operating system; the rest of the application may still be subject to compromise. Be careful to avoid CWE-243 and other weaknesses related to jails.EFFECTIVENESSLimited ,Architecture and Design ,Attack Surface Reduction ,For any data that will be used to generate a command to be executed, keep as much of that data out of external control as possible. For example, in web applications, this may require storing the data locally in the session's state instead of sending it out to the client in a hidden form field. ,Architecture and Design ,For any security checks that are performed on the client side, ensure that these checks are duplicated on the server side, in order to avoid CWE-602. Attackers can bypass the client-side checks by modifying values after the checks have been performed, or by changing the client to remove the client-side checks entirely. Then, these modified values would be submitted to the server. ,Architecture and Design ,Libraries or Frameworks ,Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid. For example, consider using the ESAPI Encoding control [REF-45] or a similar tool, library, or framework. These will help the programmer encode outputs in a manner less prone to error. ,Implementation ,Output Encoding ,While it is risky to use dynamically-generated query strings, code, or commands that mix control and data together, sometimes it may be unavoidable. Properly quote arguments and escape any special characters within those arguments. The most conservative approach is to escape or filter all characters that do not pass an extremely strict allowlist (such as everything that is not alphanumeric or white space). If some special characters are still needed, such as white space, wrap each argument in quotes after the escaping/filtering step. Be careful of argument injection (CWE-88). ,Implementation ,If the program to be executed allows arguments to be specified within an input file or from standard input, then consider using that mode to pass arguments instead of the command line. ,Architecture and Design ,Parameterization ,If available, use structured mechanisms that automatically enforce the separation between data and code. These mechanisms may be able to provide the relevant quoting, encoding, and validation automatically, instead of relying on the developer to provide this capability at every point where output is generated. Some languages offer multiple functions that can be used to invoke commands. Where possible, identify any function that invokes a command shell using a single string, and replace it with a function that requires individual arguments. These functions typically perform appropriate quoting and filtering of arguments. For example, in C, the system() function accepts a string that contains the entire command to be executed, whereas execl(), execve(), and others require an array of strings, one for each argument. In Windows, CreateProcess() only accepts one command at a time. In Perl, if system() is provided with an array of arguments, then it will quote each of the arguments. ,Implementation ,Input Validation ,Assume all input is malicious. Use an accept known good input validation strategy, i.e., use a list of acceptable inputs that strictly conform to specifications. Reject any input that does not strictly conform to specifications, or transform it into something that does. When performing input validation, consider all potentially relevant properties, including length, type of input, the full range of acceptable values, missing or extra inputs, syntax, consistency across related fields, and conformance to business rules. As an example of business rule logic, boat may be syntactically valid because it only contains alphanumeric characters, but it is not valid if the input is only expected to contain colors such as red or blue. Do not rely exclusively on looking for malicious or malformed inputs. This is likely to miss at least one undesirable input, especially if the code's environment changes. This can give attackers enough room to bypass the intended validation. However, denylists can be useful for detecting potential attacks or determining which inputs are so malformed that they should be rejected outright. When constructing OS command strings, use stringent allowlists that limit the character set based on the expected value of the parameter in the request. This will indirectly limit the scope of an attack, but this technique is less important than proper output encoding and escaping. Note that proper output encoding, escaping, and quoting is the most effective solution for preventing OS command injection, although input validation may provide some defense-in-depth. This is because it effectively limits what will appear in output. Input validation will not always prevent OS command injection, especially if you are required to support free-form text fields that could contain arbitrary characters. For example, when invoking a mail program, you might need to allow the subject field to contain otherwise-dangerous inputs like ; and > characters, which would need to be escaped or otherwise handled. In this case, stripping the character might reduce the risk of OS command injection, but it would produce incorrect behavior because the subject field would not be recorded as the user intended. This might seem to be a minor inconvenience, but it could be more important when the program relies on well-structured subject lines in order to pass messages to other components. Even if you make a mistake in your validation (such as forgetting one out of 100 input fields), appropriate encoding is still likely to protect you from injection-based attacks. As long as it is not done in isolation, input validation is still a useful technique, since it may significantly reduce your attack surface, allow you to detect some attacks, and provide other security benefits that proper encoding does not address. ,Architecture and Design ,Enforcement by Conversion ,When the set of acceptable objects, such as filenames or URLs, is limited or known, create a mapping from a set of fixed input values (such as numeric IDs) to the actual filenames or URLs, and reject all other inputs. ,Operation ,Compilation or Build Hardening ,Run the code in an environment that performs automatic taint propagation and prevents any command execution that uses tainted variables, such as Perl's -T switch. This will force the program to perform validation steps that remove the taint, although you must be careful to correctly validate your inputs so that you do not accidentally mark dangerous inputs as untainted (see CWE-183 and CWE-184). ,Operation ,Environment Hardening ,Run the code in an environment that performs automatic taint propagation and prevents any command execution that uses tainted variables, such as Perl's -T switch. This will force the program to perform validation steps that remove the taint, although you must be careful to correctly validate your inputs so that you do not accidentally mark dangerous inputs as untainted (see CWE-183 and CWE-184). ,Implementation ,Ensure that error messages only contain minimal details that are useful to the intended audience and no one else. The messages need to strike the balance between being too cryptic (which can confuse users) or being too detailed (which may reveal more than intended). The messages should not reveal the methods that were used to determine the error. Attackers can use detailed information to refine or optimize their original attack, thereby increasing their chances of success. If errors must be captured in some detail, record them in log messages, but consider what could occur if the log messages can be viewed by attackers. Highly sensitive information such as passwords should never be saved to log files. Avoid inconsistent messaging that might accidentally tip off an attacker about internal state, such as whether a user account exists or not. In the context of OS Command Injection, error information passed back to the user might reveal whether an OS command is being executed and possibly which command is being used. ,Operation ,Sandbox or Jail ,Use runtime policy enforcement to create an allowlist of allowable commands, then prevent use of any command that does not appear in the allowlist. Technologies such as AppArmor are available to do this. ,Operation ,Firewall ,Use an application firewall that can detect attacks against this weakness. It can be beneficial in cases in which the code cannot be fixed (because it is controlled by a third party), as an emergency prevention measure while more comprehensive software assurance measures are applied, or to provide defense in depth.EFFECTIVENESSModerate ,Architecture and Design Operation ,Environment Hardening ,Run your code using the lowest privileges that are required to accomplish the necessary tasks [REF-76]. If possible, create isolated accounts with limited privileges that are only used for a single task. That way, a successful attack will not immediately give the attacker access to the rest of the software or its environment. For example, database applications rarely need to run as the database administrator, especially in day-to-day operations. ,Operation Implementation ,Environment Hardening ,When using PHP, configure the application so that it does not use register_globals. During implementation, develop the application so that it does not rely on this feature, but be wary of implementing a register_globals emulation that is subject to weaknesses such as CWE-95, CWE-621, and similar issues.",
              "Observed Examples":
                " ,CVE-2020-10987 ,OS command injection in Wi-Fi router, as exploited in the wild per CISA KEV.LINKhttps//www.cve.org/CVERecord?id=CVE-2020-10987 ,CVE-2020-10221 ,Template functionality in network configuration management tool allows OS command injection, as exploited in the wild per CISA KEV.LINKhttps//www.cve.org/CVERecord?id=CVE-2020-10221 ,CVE-2020-9054 ,Chain improper input validation (CWE-20) in username parameter, leading to OS command injection (CWE-78), as exploited in the wild per CISA KEV.LINKhttps//www.cve.org/CVERecord?id=CVE-2020-9054 ,CVE-1999-0067 ,Canonical example of OS command injection. CGI program does not neutralize | metacharacter when invoking a phonebook program.LINKhttps//www.cve.org/CVERecord?id=CVE-1999-0067 ,CVE-2001-1246 ,Language interpreter's mail function accepts another argument that is concatenated to a string used in a dangerous popen() call. Since there is no neutralization of this argument, both OS Command Injection (CWE-78) and Argument Injection (CWE-88) are possible.LINKhttps//www.cve.org/CVERecord?id=CVE-2001-1246 ,CVE-2002-0061 ,Web server allows command execution using | (pipe) character.LINKhttps//www.cve.org/CVERecord?id=CVE-2002-0061 ,CVE-2003-0041 ,FTP client does not filter | from filenames returned by the server, allowing for OS command injection.LINKhttps//www.cve.org/CVERecord?id=CVE-2003-0041 ,CVE-2008-2575 ,Shell metacharacters in a filename in a ZIP archiveLINKhttps//www.cve.org/CVERecord?id=CVE-2008-2575 ,CVE-2002-1898 ,Shell metacharacters in a telnet// link are not properly handled when the launching application processes the link.LINKhttps//www.cve.org/CVERecord?id=CVE-2002-1898 ,CVE-2008-4304 ,OS command injection through environment variable.LINKhttps//www.cve.org/CVERecord?id=CVE-2008-4304 ,CVE-2008-4796 ,OS command injection through https// URLsLINKhttps//www.cve.org/CVERecord?id=CVE-2008-4796 ,CVE-2007-3572 ,Chain incomplete denylist for OS command injectionLINKhttps//www.cve.org/CVERecord?id=CVE-2007-3572 ,CVE-2012-1988 ,Product allows remote users to execute arbitrary commands by creating a file whose pathname contains shell metacharacters.LINKhttps//www.cve.org/CVERecord?id=CVE-2012-1988",
              "Functional Areas": "Program Invocation",
              "Affected Resources": "System Process",
              Notes:
                "TYPETerminologyNOTEThe OS command injection phrase carries different meanings to different people. For some people, it only refers to cases in which the attacker injects command separators into arguments for an application-controlled program that is being invoked. For some people, it refers to any type of attack that can allow the attacker to execute OS commands of their own choosing. This usage could include untrusted search path weaknesses (CWE-426) that cause the application to find and execute an attacker-controlled program. Further complicating the issue is the case when argument injection (CWE-88) allows alternate command-line switches or options to be inserted into the command line, such as an -exec switch whose purpose may be to execute the subsequent argument as a command (this -exec switch exists in the UNIX find command, for example). In this latter case, however, CWE-88 could be regarded as the primary weakness in a chain with CWE-78.TYPEResearch GapNOTEMore investigation is needed into the distinction between the OS command injection variants, including the role with argument injection (CWE-88). Equivalent distinctions may exist in other injection-related problems such as SQL injection.",
              Severity: "CRITICAL",
              ID: "78",
            },
            rep1: {
              "CWE-ID": "126",
              Name: "Buffer Over-read",
              "Weakness Abstraction": "Variant",
              Status: "Draft",
              Description:
                "The product reads from a buffer using buffer access mechanisms such as indexes or pointers that reference memory locations after the targeted buffer.",
              "Extended Description":
                "This typically occurs when the pointer or its index is incremented to a position beyond the bounds of the buffer or when pointer arithmetic results in a position outside of the valid memory location to name a few. This may result in exposure of sensitive information or possibly a crash.",
              "Weakness Ordinalities": "ORDINALITYPrimary",
              "Applicable Platforms":
                "LANGUAGE NAMECLANGUAGE PREVALENCEUndeterminedLANGUAGE NAMEC++LANGUAGE PREVALENCEUndetermined",
              "Background Details": "nan",
              "Exploitation Factors": "nan",
              "Likelihood of Exploit": "nan",
              "Common Consequences":
                " ,Confidentiality ,Read Memory ,Confidentiality ,Bypass Protection MechanismNOTEBy reading out-of-bounds memory, an attacker might be able to get secret values, such as memory addresses, which can be bypass protection mechanisms such as ASLR in order to improve the reliability and likelihood of exploiting a separate weakness to achieve code execution instead of just denial of service.",
              "Detection Methods":
                " ,Automated Static Analysis ,Automated static analysis, commonly referred to as Static Application Security Testing (SAST), can find some instances of this weakness by analyzing source code (or binary/compiled code) without having to execute it. Typically, this is done by building a model of data flow and control flow, then searching for potentially-vulnerable patterns that connect sources (origins of input) with sinks (destinations where the data interacts with external components, a lower layer such as the OS, etc.)EFFECTIVENESSHigh",
              "Potential Mitigations": "nan",
              "Observed Examples":
                " ,CVE-2014-0160 ,Chain Heartbleed bug receives an inconsistent length parameter (CWE-130) enabling an out-of-bounds read (CWE-126), returning memory that could include private cryptographic keys and other sensitive data.LINKhttps//www.cve.org/CVERecord?id=CVE-2014-0160 ,CVE-2009-2523 ,Chain product does not handle when an input string is not NULL terminated, leading to buffer over-read or heap-based buffer overflow.LINKhttps//www.cve.org/CVERecord?id=CVE-2009-2523",
              "Functional Areas": "nan",
              "Affected Resources": "nan",
              Notes:
                "TYPERelationshipNOTEThese problems may be resultant from missing sentinel values (CWE-463) or trusting a user-influenced input length variable.",
              Severity: "HIGH",
              ID: "126",
            },
            rep2: {
              "CWE-ID": "590",
              Name: "Free of Memory not on the Heap",
              "Weakness Abstraction": "Variant",
              Status: "Incomplete",
              Description:
                "The product calls free() on a pointer to memory that was not allocated using associated heap allocation functions such as malloc(), calloc(), or realloc().",
              "Extended Description":
                "When free() is called on an invalid pointer, the program's memory management data structures may become corrupted. This corruption can cause the program to crash or, in some circumstances, an attacker may be able to cause free() to operate on controllable memory locations to modify critical program variables or execute code.",
              "Weakness Ordinalities": "nan",
              "Applicable Platforms": "nan",
              "Background Details": "nan",
              "Exploitation Factors": "nan",
              "Likelihood of Exploit": "nan",
              "Common Consequences":
                " ,Integrity ,Confidentiality ,Availability ,Execute Unauthorized Code or Commands ,Modify MemoryNOTEThere is the potential for arbitrary code execution with privileges of the vulnerable program via a write, what where primitive. If pointers to memory which hold user information are freed, a malicious user will be able to write 4 bytes anywhere in memory.",
              "Detection Methods":
                " ,Fuzzing ,Fuzz testing (fuzzing) is a powerful technique for generating large numbers of diverse inputs - either randomly or algorithmically - and dynamically invoking the code with those inputs. Even with random inputs, it is often capable of generating unexpected results such as crashes, memory corruption, or resource consumption. Fuzzing effectively produces repeatable test cases that clearly indicate bugs, which helps developers to diagnose the issues.EFFECTIVENESSHigh ,Automated Static Analysis ,Automated static analysis, commonly referred to as Static Application Security Testing (SAST), can find some instances of this weakness by analyzing source code (or binary/compiled code) without having to execute it. Typically, this is done by building a model of data flow and control flow, then searching for potentially-vulnerable patterns that connect sources (origins of input) with sinks (destinations where the data interacts with external components, a lower layer such as the OS, etc.)EFFECTIVENESSHigh",
              "Potential Mitigations":
                " ,Implementation ,Only free pointers that you have called malloc on previously. This is the recommended solution. Keep track of which pointers point at the beginning of valid chunks and free them only once. ,Implementation ,Before freeing a pointer, the programmer should make sure that the pointer was previously allocated on the heap and that the memory belongs to the programmer. Freeing an unallocated pointer will cause undefined behavior in the program. ,Architecture and Design ,Libraries or Frameworks ,Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid. For example, glibc in Linux provides protection against free of invalid pointers. ,Architecture and Design ,Use a language that provides abstractions for memory allocation and deallocation. ,Testing ,Use a tool that dynamically detects memory management problems, such as valgrind.",
              "Observed Examples": "nan",
              "Functional Areas": "nan",
              "Affected Resources": "Memory",
              Notes:
                "TYPEOtherNOTEIn C++, if the new operator was used to allocate the memory, it may be allocated with the malloc(), calloc() or realloc() family of functions in the implementation. Someone aware of this behavior might choose to map this problem to CWE-590 or to its parent, CWE-762, depending on their perspective.",
              Severity: "LOW",
              ID: "590",
            },
            rep3: {
              "CWE-ID": "762",
              Name: "Mismatched Memory Management Routines",
              "Weakness Abstraction": "Variant",
              Status: "Incomplete",
              Description:
                "The product attempts to return a memory resource to the system, but it calls a release function that is not compatible with the function that was originally used to allocate that resource.",
              "Extended Description":
                "This weakness can be generally described as mismatching memory management routines, such as The memory was allocated on the stack (automatically), but it was deallocated using the memory management routine free() (CWE-590), which is intended for explicitly allocated heap memory. The memory was allocated explicitly using one set of memory management functions, and deallocated using a different set. For example, memory might be allocated with malloc() in C++ instead of the new operator, and then deallocated with the delete operator. When the memory management functions are mismatched, the consequences may be as severe as code execution, memory corruption, or program crash. Consequences and ease of exploit will vary depending on the implementation of the routines and the object being managed.",
              "Weakness Ordinalities": "nan",
              "Applicable Platforms":
                "LANGUAGE NAMECLANGUAGE PREVALENCEUndeterminedLANGUAGE NAMEC++LANGUAGE PREVALENCEUndetermined",
              "Background Details": "nan",
              "Exploitation Factors": "nan",
              "Likelihood of Exploit": "nan",
              "Common Consequences":
                " ,Integrity ,Availability ,Confidentiality ,Modify Memory ,DoS Crash, Exit, or Restart ,Execute Unauthorized Code or Commands",
              "Detection Methods": "nan",
              "Potential Mitigations":
                " ,Implementation ,Only call matching memory management functions. Do not mix and match routines. For example, when you allocate a buffer with malloc(), dispose of the original pointer with free(). ,Implementation ,Libraries or Frameworks ,Choose a language or tool that provides automatic memory management, or makes manual memory management less error-prone. For example, glibc in Linux provides protection against free of invalid pointers. When using Xcode to target OS X or iOS, enable automatic reference counting (ARC) [REF-391]. To help correctly and consistently manage memory when programming in C++, consider using a smart pointer class such as stdauto_ptr (defined by ISO/IEC ISO/IEC 148822003), stdshared_ptr and stdunique_ptr (specified by an upcoming revision of the C++ standard, informally referred to as C++ 1x), or equivalent solutions such as Boost. ,Architecture and Design ,Libraries or Frameworks ,Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid. For example, glibc in Linux provides protection against free of invalid pointers. ,Architecture and Design ,Use a language that provides abstractions for memory allocation and deallocation. ,Testing ,Use a tool that dynamically detects memory management problems, such as valgrind.",
              "Observed Examples": "nan",
              "Functional Areas": "nan",
              "Affected Resources": "Memory",
              Notes:
                "TYPEApplicable PlatformNOTEThis weakness is possible in any programming language that allows manual management of memory.",
              Severity: "HIGH",
              ID: "762",
            },
          },
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
    localize() {
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
        this.localizationDialog = true;
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
. {
  color: #757575 !important;
}
</style>
