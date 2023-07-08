<template>
  <v-card class="code py-8 px-2">
    <v-card-title class="d-flex justify-end align-end">
      <v-row class="text-center">
        <v-col>
          <h3>
            {{ file_name }}
          </h3>
          <h3 class="subtitle-1">CVE ID: {{ cve_id }}</h3>
        </v-col>
      </v-row>
      <v-btn @click="closeDialog" text :hover="false">
        <v-icon right large color="red">mdi-close-circle</v-icon>
      </v-btn>
    </v-card-title>
    <v-card-text class="pt-16">
      <pre class="codeColor">
          <span v-for="(segment, index) in codeSegments" :key="index" :class="{ vulnerableCode: segment.isVulnerable }">{{ segment.content }}</span>
        </pre>
    </v-card-text>
  </v-card>
</template>

<script>
export default {
  props: {
    span: Array,
  },

  created() {
    this.cve_id = this.span[0];
    var file_path = Object.keys(this.span[1])[0];
    this.file_name = file_path.split("\\").pop();
    this.filecontent = this.span[1][file_path]["filecontent"];
    for (var key in this.span[1][file_path]) {
      if (key != "filecontent") {
        let start = this.span[1][file_path][key][0][0];
        let end = this.span[1][file_path][key][0][1];
        this.highlight.push([start, end]);
      }
    }
    this.highlightCode();
  },
  data() {
    return {
      dialog: false,
      filecontent: "",
      file_name: "",
      cve_id: "",
      highlight: [],
      codeSegments: [],
    };
  },

  methods: {
    highlightCode() {
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
    closeDialog() {
      this.$emit("closeDialog", false);
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
  color: rgb(250, 241, 241);
}
.vulnerableCode {
  color: red;
}

h1 span {
  display: block;
}

.subtitle-1 {
  color: red;
}
h1 {
  color: rgb(250, 241, 241);
}
</style>
