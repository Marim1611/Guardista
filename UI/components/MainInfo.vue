<template>
  <v-card class="main">
    <v-table fixed-header height="300px" class="table" name="ReportSummary">
      <thead>
        <tr>
          <th class="text-center">CWE ID</th>
          <th class="text-center">Severity</th>
          <th class="text-center">CWE Name</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, i) in report" :key="i" class="text-center">
          <td class="text-center">{{ item["CWE-ID"] }}</td>
          <td :class="getSeverityClass(item['Severity'])">
            <b class="font-weight-bold text-center">{{ item["Severity"] }}</b>
          </td>
          <td class="text-center text-wrap" style="width: 40%">
            {{ item["Name"] }}
          </td>
          <td>
            <v-btn
              light
              small
              class="ml-0 my-6 primary--text"
              @click="showReport(item)"
              text
            >
              <span class="v-btn__content custom-underline">
                Detailed Report
              </span>
              <v-icon right dark color="primary"
                >mdi-file-document-multiple-outline</v-icon
              >
            </v-btn>
          </td>
        </tr>
      </tbody>
    </v-table>
    <v-dialog
      v-model="detailed"
      width="max-content"
      class="mt-16 dialog"
      hide-overlay
      persistent
      @keydown.esc="closeReport"
    >
      <DetailedReport
        v-if="Object.keys(reportToShow).length > 0"
        :report="reportToShow"
        :detailed="detailed"
        @closeDialog="closeReport"
      >
      </DetailedReport>
    </v-dialog>
  </v-card>
</template>

<script>
import DetailedReport from "../components/DetailedReport.vue";
export default {
  name: "ReportSummary",
  props: {
    report: {
      type: Array,
      required: true,
    },
    reportName: {
      type: String,
      required: true,
    },
  },
  components: {
    DetailedReport,
  },

  data() {
    return {
      detailed: false,
      reportToShow: {},
    };
  },

  methods: {
    getSeverityClass(severity) {
      switch (severity) {
        case "LOW":
          return "green--text";
        case "MEDIUM":
          return "orange--text";
        case "HIGH":
          return "yellow--text text--darken-3";
        case "CRITICAL":
          return "red--text";
        default:
          return "";
      }
    },
    showReport(report) {
      this.reportToShow = report;
      this.detailed = true;
    },
    closeReport() {
      this.reportToShow = {};
      this.detailed = false;
    },
  },
};
</script>

<style scoped>
.main {
  background-color: #f8f8f8;
}
.table td,
.table th {
  padding: 8px;
}

.dialog {
  z-index: 9999; /*not working*/
}

.custom-underline {
  text-decoration: underline;
}
</style>
