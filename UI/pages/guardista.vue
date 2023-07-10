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
import axios from "axios";
import { getUniversalCookies } from "cookie-universal-nuxt";
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
      report1Clicked: false,
      report2Clicked: false,
      cases: ["Submitted", "Compiled", "Lifted", "Classified", "Localized"],
      done: [false, false, false, false, false],
      icons: [
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
        "mdi-loading rotate",
      ],
      message2: "",
      disableLocalization: false,
    };
  },
  methods: {
    async fetchStatus() {
      await axios
        .get(this.baseURL + "/api/status", {
          headers: {
            "X-CSRFToken": `Bearer ${this.token}`,
          },
          responseType: "json",
          withCredentials: true,
        })
        .then((res) => {
          console.log("********get status");
          console.log(res.data);
          console.log(res);
          const data = JSON.parse(JSON.stringify(res.data));
          // console.log(res.data["waiting_status"]);

          // JSON.parse
          console.log(data);
          if (res.data.waiting_status == 0) {
            console.log("&&&&&&&&&&&&& submitted");
            this.$set(this.done, 0, true);
            this.$set(this.icons, 0, "mdi-check-circle");
          } else if (res.data.waiting_status == 1) {
            console.log("&&&&&&&&&&&&& compiled");
            this.$set(this.done, 1, true);
            this.$set(this.icons, 1, "mdi-check-circle");
          } else if (res.data.waiting_status == 2) {
            this.$set(this.done, 2, true);
            this.$set(this.icons, 2, "mdi-check-circle");

            console.log("&&&&&&&&&&&&& lifted");
          } else if (
            res.data.waiting_status == 3 ||
            res.data.waiting_status == 5
          ) {
            this.$set(this.done, 3, true);
            this.$set(this.icons, 3, "mdi-check-circle");
            console.log("&&&&&&&&&&&&& classified");
            this.getReport();
            if (res.data.waiting_status == 5) {
              this.disableLocalization = true;
            }
          } else if (res.data.waiting_status == 4) {
            this.$set(this.done, 4, true);
            this.$set(this.icons, 4, "mdi-check-circle");
            console.log("&&&&&&&&&&&&& Localized");
            clearInterval(this.intervalId);
            this.getSpan();
          }
        })
        .catch((err) => {
          console.log("Error in get status");
          console.log(err);
        });
    },
    async getReport() {
      console.log("get report");
      await axios
        .get(this.baseURL + "/api/report", {
          headers: {
            "X-CSRFToken": `Bearer ${this.token}`,
          },
          responseType: "json",
          withCredentials: true,
        })
        .then((res) => {
          console.log("$######### get report");

          var report1 = res.data.report1;
          var report2 = res.data.report2;

          if (this.report1.length == 0) {
            if (report1.hasOwnProperty("report")) {
              this.$set(this.safe_reports, 0, true);
            } else {
              for (var key in report1["report1"]) {
                this.report1.push(report1["report1"][key]);
              }
            }
          }

          if (this.report2.length == 0) {
            if (report2.hasOwnProperty("report")) {
              this.$set(this.safe_reports, 1, true);
            } else {
              for (var key in report2["report2"]) {
                this.report2.push(report2["report2"][key]);
              }
            }
          }
        })

        .catch((err) => {
          console.log("Error in get report");
        });
    },
    async getSpan() {
      console.log("get span");
      await axios
        .get(this.baseURL + "/api/loc", {
          headers: {
            "X-CSRFToken": `Bearer ${this.token}`,
          },
          responseType: "json",
          withCredentials: true,
        })
        .then((res) => {
          console.log("$######### get span");
          console.log("-------- Response --------");
          console.log(res.data);
          console.log("--------------------------");
          this.spans_dict = res.data;

          if (this.spans.length == 0 && this.safe_reports[0] == false) {
            for (var key in this.report1) {
              let id = this.report1[key]["CWE-ID"];
              if (this.spans_dict[id] === undefined) {
                continue;
              }
              this.spans.push([id, this.spans_dict[id]]);
            }
          }
          if (this.spans.length == 0 && this.safe_reports[1] == false) {
            for (var key in this.report2) {
              console.log("key");
              let id = this.report2[key]["CWE-ID"];
              if (
                this.spans_dict[id] === undefined ||
                Object.keys(this.spans_dict[id]).length === 0
              ) {
                continue;
              }
              this.spans.push([id, this.spans_dict[id]]);
            }
          }
        })
        .catch((err) => {
          console.log("Error in get span");
        });
    },
    selectFile(files) {
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
      console.log(this.currentFiles);
      console.log("token in upload", this.token);
      console.log(this.currentFiles);
      this.showStatus = true;
      await axios
        .post(this.baseURL + "/api/upload", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
            "X-CSRFToken": `Bearer ${this.token}`,
          },
        })
        .then((res) => {
          this.done[0] = true;
          this.icons[0] = "mdi-check-circle";
          console.log("response to upload", res);
          console.log("response to upload", res.data);
          console.log("progress", this.progress);
          console.log("num_case", this.$cookies.get("num_case"));
          this.$cookies.set("num_case", res.data);
          console.log("num_caseww", this.$cookies.get("num_case"));
          this.intervalId = setInterval(this.fetchStatus, 100);
        })
        .catch((err) => {
          console.log("err in upload", err.response);
        });
    },

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

      clearInterval(this.intervalId);
      this.$refs.form.reset();
      this.disableLocalization = false;
    },

    show_report(report) {
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
      var source_code_available = false;
      for (var i = 0; i < this.currentFiles.length; i++) {
        const ext = this.currentFiles[i].name.split(".").pop();
        const allowed_extensions = ["py", "c", "cpp"];
        if (allowed_extensions.includes(ext)) {
          source_code_available = true;
          break;
        }
      }

      if ((source_code_available = true)) {
        this.localizationDialog = true;
      } else {
        this.no_source_code = true;
        return;
      }
    },

    // For Localizer
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
          this.message2 = "Only Source Code file(s) is/are allowed!";
          return;
        }
        formData.append("files", this.srcFiles[i]);
      }
      // this.message = "";
      // this.$set(this.done, 3, true);
      this.message2 = "";
      this.no_source_code = false;
      console.log(this.srcFiles);
      console.log("token in upload", this.token);
      console.log(this.srcFiles);
      this.showStatus = true;
      await axios
        .post(this.baseURL + "/api/uploadSrc", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
            "X-CSRFToken": `Bearer ${this.token}`,
          },
        })
        .then((res) => {
          this.icons[0] = "mdi-check-circle";
          console.log("response to upload", res);
          console.log("response to upload", res.data);
          console.log("num_case", this.$cookies.get("num_case"));
          this.$cookies.set("num_case", res.data);
          console.log("num_caseww", this.$cookies.get("num_case"));
          this.intervalId = setInterval(this.fetchStatus, 100);
        })
        .catch((err) => {
          console.log("err in upload", err.response);
        });
    },
    selectSrcFiles(files) {
      if (this.currentFiles != undefined && files.length == 0) {
        this.reset();
      }
      this.progress = 0;
      this.srcFiles = files;
      console.log(this.srcFiles);
    },
  },
  computed: {
    isSafeMsgDisabled() {
      return this.safe_reports[0] === true && this.safe_reports[1] === true;
    },
    token() {
      return this.$store.state.token;
    },
    set_token() {
      this.$store.commit("setToken", this.$cookies.get("csrftoken"));
    },
    baseURL() {
      return this.$store.state.baseURL;
    },
  },
  async created() {
    await axios
      .get(this.baseURL + "/api/get")
      .then((res) => {
        console.log("$######### get token");
      })
      .catch((err) => {
        console.log("Error in get token");
      });
    this.set_token;
  },
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
