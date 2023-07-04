<template>
  <v-container class="mt-10 pt-16 px-12" fluid>
    <v-row class="text-center">
      <v-col>
        <h1>
          <v-icon right class="iconColor" large>mdi-file-code</v-icon>
          {{ filename }}
        </h1></v-col
      >
      <v-col>
        <v-btn color="#757575" dark medium @click="localization()">
          Localize vulnerability?
          <v-icon right dark>mdi-bug</v-icon>
        </v-btn>
        <v-btn color="success" dark medium to="/guardista">
          Another scan?
          <v-icon right dark>mdi-feature-search</v-icon>
        </v-btn>

        <v-dialog v-model="dialog" width="max-content" class="mt-16">
          <v-card class="code py-8 px-2">
            <v-card-title class="d-flex justify-end align-end">
              <v-btn @click="dialog = false" text :hover="false">
                <v-icon right large color="red">mdi-close-circle</v-icon>
              </v-btn>
            </v-card-title>
            <v-card-text>
              <pre class="codeColor">
            <span v-for="(segment, index) in codeSegments" :key="index" :class="{ vulnerableCode: segment.isVulnerable }">{{ segment.content }}</span>
          </pre>
            </v-card-text>
          </v-card>
        </v-dialog>
      </v-col>
    </v-row>
    <v-row class="d-flex flex-row align-center justify-center pt-10">
      <v-col cols="7">
        <v-card class="py-5 px-2">
          <v-card-title class="text-center align-center justify-center">
            <h3 class="text-center">
              <v-icon medium class="iconColor"> mdi-bug-check </v-icon>
              Report Summary
            </h3>
          </v-card-title>
          <v-list>
            <v-list-item-group>
              <v-list-item v-for="(item, i) in reportList" :key="i">
                <v-list-item-content>
                  <v-list-item-title v-html="item.title"></v-list-item-title>
                  <v-list-item-subtitle
                    v-html="item.subtitle"
                  ></v-list-item-subtitle>
                </v-list-item-content>
              </v-list-item>
            </v-list-item-group>
          </v-list>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  head: {
    title: "Report",
    meta: [{ hid: "description", name: "description", content: "Output" }],
  },
  computed: {
    filename() {
      return this.$route.params.filename;
    },
    report() {
      return this.$route.params.report;
    },

    span() {
      return this.$route.params.span;
    },

    reportList() {
      const list = [];

      for (const [key, value] of Object.entries(this.report)) {
        if (value !== null && value !== "nan") {
          list.push({ title: key, subtitle: value });
        }
      }

      return list;
    },
  },
  data() {
    return {
      dialog: false,
      filecontent: "",
      highlight: [],
      codeSegments: [],
    };
  },

  methods: {
    extractSpan() {
      for (var key in this.span) {
        if (key.includes(this.filename)) {
          this.filecontent = this.span[key]["filecontent"];
          let start = this.span[key][this.filename][0][0];
          let end = this.span[key][this.filename][0][1];
          this.highlight.push([start, end]);
        }
      }
    },
    highlightCode() {
      this.extractSpan();
      const code = this.filecontent;
      const segments = [];
      const sortedHighlight = this.highlight
        .slice()
        .sort((a, b) => a[0] - b[0]);
      let currentIndex = 0;
      for (let i = 0; i < sortedHighlight.length; i++) {
        const start = sortedHighlight[i][0];
        const end = sortedHighlight[i][1];
        if (start > currentIndex) {
          segments.push({
            content: code.substring(currentIndex, start),
            isVulnerable: false,
          });
        } 
          const vulnerableCode = code.substring(start, end);
          segments.push({ content: vulnerableCode, isVulnerable: true });
          currentIndex = end;
       
      }

      if (currentIndex < code.length) {
        segments.push({
          content: code.substring(currentIndex),
          isVulnerable: false,
        });
      }
      this.codeSegments = segments;
    },
    localization() {
      this.highlightCode();
      this.dialog = true;
    },
  },
};
</script>

<style scoped>
.code {
  background-color: rgb(44, 44, 44);
  color: rgb(250, 241, 241);
  z-index: 12;
}
.codeColor {
  color: rgb(250, 241, 241);
}

.iconColor {
  color: #9d0000;
}
.vulnerableCode {
  color: red;
}
</style>
