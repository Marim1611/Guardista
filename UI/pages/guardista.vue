<template>
  <v-container fluid class="parent">
    <v-row>
      <!-- add hacker gif -->
      <h1>Relax, and let Guardista check your code.</h1>
    </v-row>
    <v-row class="justify-center">
      <v-col>
        <v-file-input
          show-size
          multiple
          label="Browse File(s)"
          @change="selectFile"
          ref="form"
        ></v-file-input>
        <div class="btn">
          <v-btn color="success" dark small @click="upload">
            Upload to Scan
            <v-icon right dark>mdi-cloud-upload</v-icon>
          </v-btn>
        </div>

        <v-alert ma-6 v-show="message" border="left" color="error" dark>
          {{ message }}
        </v-alert>

        <div v-if="showStatus" class="stats_bar">
          <div v-for="(ele, i) in cases" :key="i" class="btn">
            <v-icon :class="{ iconColor: done[i] }">{{ icons[i] }}</v-icon>
            <p class="stat" color="#6e1131" :class="{ checked: done[i] }">
              {{ ele }}
            </p>
          </div>
        </div>

        <v-card v-if="done[3]" class="mx-auto pa-auto mb-9">
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
              <v-row class="d-flex flex-row align-center justify-center py-6">
                <v-btn
                  color="success"
                  dark
                  small
                  @click="show_report('report1')"
                  class="mr-2"
                >
                  See Report 1
                  <v-icon right dark>mdi-bug-check</v-icon>
                </v-btn>
                <v-btn
                  color="success"
                  dark
                  small
                  @click="show_report('report2')"
                  class="ml-2"
                >
                  See Report 2
                  <v-icon right dark>mdi-bug-check</v-icon>
                </v-btn>
              </v-row>
            </v-list-item-group>
          </v-list>
        </v-card>

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

        <v-alert
          ma-6
          v-show="show_safe_msg[0]"
          border="left"
          color="success"
          class="text-center"
          dark
        >
          SAFE
        </v-alert>
        <v-alert
          ma-6
          v-show="show_safe_msg[1]"
          border="left"
          color="success"
          class="text-center"
          dark
        >
          SAFE
        </v-alert>

        <v-alert ma-6 v-if="no_source_code" border="left" color="error" dark>
          Please upload your source code to localize the vulnerabilities.
        </v-alert>

        <v-row
          v-if="done[3]"
          class="d-flex flex-row align-center justify-center py-15"
        >
          <v-btn color="success" dark small class="mr-2" @click="reset">
            Another scan?
            <v-icon right dark>mdi-feature-search</v-icon>
          </v-btn>
          <v-btn
            color="#757575"
            dark
            small
            class="ml-2"
            @click="localize"
            :disabled="isSafeMsgDisabled"
          >
            Localize vulnerability?
            <v-icon right dark>mdi-bug</v-icon>
          </v-btn>
        </v-row>
        <v-file-input
          v-if="no_source_code"
          show-size
          multiple
          label="Browse Source Code File(s)"
          @change="selectSrcFiles"
          ref="srcCodeform"
        ></v-file-input>
        <div class="btn">
          <v-btn
            color="success"
            dark
            small
            @click="uploadSrcCode"
            v-if="no_source_code"
          >
            Upload to Scan
            <v-icon right dark>mdi-cloud-upload</v-icon>
          </v-btn>
        </div>
      </v-col>
    </v-row>

    <v-dialog
      v-model="localizationDialog"
      width="max-content"
      class="mt-16"
      @keydown.esc="closeReport"
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

      cases: ["submitted", "compiled", "lifted", "classified", "localized"],
      done: [false, false, false, , false],
      icons: [
        "mdi-loading",
        "mdi-loading",
        "mdi-loading",
        "mdi-loading",
        "mdi-loading",
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
          } else if (res.data.waiting_status == 3) {
            this.$set(this.done, 3, true);
            this.$set(this.icons, 3, "mdi-check-circle");
            console.log("&&&&&&&&&&&&& classified");
            this.getReport();
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
              this.spans.push(this.spans_dict[id]);
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
      this.currentFiles = [];
      this.done = [false, false, false, false, false];
      this.icons = [
        "mdi-circle",
        "mdi-circle",
        "mdi-circle",
        "mdi-circle",
        "mdi-circle",
      ];
      this.message = "";
      this.showStatus = false;
      this.progress = 0;
      this.main_report1 = 0;
      this.main_report2 = 0;
      this.safe_reports = [false, false];
      this.show_safe_msg = [false, false];
      this.no_source_code = false;
      //reset all data
      this.report1 = [];
      this.report2 = [];
      this.spans = [];
      this.spans_dict = {};

      clearInterval(this.intervalId);
      this.$refs.form.reset();
    },

    show_report(report) {
      if (
        report === "report1" &&
        this.safe_reports[0] === false &&
        this.main_report1 === false
      ) {
        this.main_report1 = true;
        this.main_report2 = false;
        this.show_safe_msg[1] = false;
        this.show_safe_msg[0] = false;
      } else if (report === "report1" && this.safe_reports[0] === true) {
        console.log("HERE");
        this.show_safe_msg[0] = true;
        this.show_safe_msg[1] = false;
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
        this.show_safe_msg[1] = false;
        this.show_safe_msg[0] = false;
      } else if (report === "report2" && this.safe_reports[1] === true) {
        this.show_safe_msg[1] = true;
        this.show_safe_msg[0] = false;
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
        this.message = "Please select a source file!";
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
          this.message = "Only code files are allowed!";
          return;
        }
        formData.append("files", this.srcFiles[i]);
      }
      // this.message = "";
      // this.$set(this.done, 3, true);
      this.message = "";
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
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 100px;
  height: max-content;
}
h3 {
  font-family: "Roboto";
  font-size: 2.2vmax;
  color: #9d0000;
}
.btn {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;
}
.checked {
  color: #9d0000;
  font-weight: bold;
  font-size: 20px;
}
.stats_bar {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  margin-top: 20px;
  margin-bottom: 20px;
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
  height: 100%; /* Set the maximum height of the container */
  overflow-y: auto; /* Enable vertical scrolling when the content exceeds the height of the container */
}
</style>
