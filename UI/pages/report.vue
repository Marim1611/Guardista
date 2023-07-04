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
      // console.log("Recieved report...",this.$route.params.report);
      //  return this.$route.params.report;
      return {
        "CWE-ID": "CWE-23",
        Name: "Relative Path Traversal",
        "Weakness Abstraction": "Standard",
        Status: "Incomplete",
        Description:
          "The application uses a hard-coded cryptographic key for encryption.",
        "Extended Description":
          "The application uses a hard-coded cryptographic key for encryption.",
        "Related Weaknesses": "CWE-23",
        "Weakness Ordinalities": "Primary",
        "Applicable Platforms": "Language-independent",
        "Background Details":
          "The application uses a hard-coded cryptographic key for encryption.",
        "Alternate Terms": "CWE-23",
        "Modes Of Introduction": "Implementation",
        "Exploitation Factors": "High",
        "Likelihood Of Exploit": "High",
        "Common Consequences": "Confidentiality",
        "Detection Methods": "Automated Static Analysis",
        "Potential Mitigations": "Implementation",
        "Observed Examples": "CWE-23",
        "Functional Areas": "Implementation",
        "Affected Resources": "CWE-23",
        "Taxonomy Mappings": "CWE-23",
        "Related Attack Patterns": "CWE-23",
        Notes: "CWE-23",
        Severity: "High",
      };
    },
    reportList() {
      const list = [];

      for (const [key, value] of Object.entries(this.report)) {
        list.push({ title: key, subtitle: value });
      }

      // remove keys that have Nan values from the list
      list.forEach((item, index) => {
        if (item.subtitle === null) {
          list.splice(index, 1);
        }
      }); 
      return list;
    },
  },
  data() {
    return {
      dialog: false,
      filecontent:
        '/* TEMPLATE GENERATED TESTCASE FILE\nFilename: CWE191_Integer_Underflow__unsigned_int_min_sub_07.c\nLabel Definition File: CWE191_Integer_Underflow.label.xml\nTemplate File: sources-sinks-07.tmpl.c\n*/\n/*\n * @description\n * CWE: 191 Integer Underflow\n * BadSource: min Set data to the min value for unsigned int\n * GoodSource: Set data to a small, non-zero number (negative two)\n * Sinks: sub\n *    GoodSink: Ensure there will not be an underflow before subtracting 1 from data\n *    BadSink : Subtract 1 from data, which can cause an Underflow\n * Flow Variant: 07 Control flow: if(staticFive==5) and if(staticFive!=5)\n *\n * */\n\n#include "std_testcase.h"\n\n/* The variable below is not declared "const", but is never assigned\n   any other value so a tool should be able to identify that reads of\n   this will always give its initialized value. */\nstatic int staticFive = 5;\n\n#ifndef OMITBAD\n\nvoid CWE191_Integer_Underflow__unsigned_int_min_sub_07_bad()\n{\n    unsigned int data;\n    data = 0;\n    if(staticFive==5)\n    {\n        /* POTENTIAL FLAW: Use the minimum size of the data type */\n        data = 0;\n    }\n    if(staticFive==5)\n    {\n        {\n            /* POTENTIAL FLAW: Subtracting 1 from data could cause an underflow */\n            unsigned int result = data - 1;\n            printUnsignedLine(result);\n        }\n    }\n}\n\n#endif /* OMITBAD */\n\n\n/* Below is the main(). It is only used when building this testcase on\n   its own for testing or for building a binary to use in testing binary\n   analysis tools. It is not used when compiling all the testcases as one\n   application, which is how source code analysis tools are tested. */\n\nint main(int argc, char * argv[])\n{\n    /* seed randomness */\n    srand( (unsigned)time(NULL) );\n\n#ifndef OMITBAD\n    printLine("Calling bad()...");\n    CWE191_Integer_Underflow__unsigned_int_min_sub_07_bad();\n    printLine("Finished bad()");\n#endif /* OMITBAD */\n    return 0;\n}\n',
      highlight: [[886, 1328]],
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
