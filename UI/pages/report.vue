<template>
  <v-container class="mt-10 pt-16 px-12" fluid>
    <v-row class="text-center justify-center">
      <v-col>
        <h1>
          <v-icon right class="iconColor" large>mdi-file-code</v-icon>
          <span>{{filename}}</span>
        </h1>
      </v-col>
      <v-col>
        <v-btn color="success" dark medium to="/guardista">
          Another scan?
          <v-icon right dark>mdi-feature-search</v-icon>
        </v-btn>
        <v-btn color="#757575" dark medium @click="dialog = true">
          Localize vulnerability?
          <v-icon right dark>mdi-bug</v-icon>
        </v-btn>
      </v-col>
    </v-row>
    <v-row class="d-flex flex-row align-center justify-center pt-10">
      <v-col cols="7">
        <v-card class="py-5 px-2">
          <v-card-title class="text-center align-center">
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
    <v-row class="d-flex flex-row align-center justify-center pt-10">
      <v-col>
        <v-dialog v-model="dialog" width="max-content" class="mt-16">
          <v-card class="code py-8 px-2">
            <v-card-title class="d-flex justify-end align-end">
              <v-btn
                @click="dialog = false"
                text
                :hover="false"
                class="no-hover"
              >
                <v-icon right large color="red">mdi-close-circle</v-icon>
              </v-btn>
            </v-card-title>
            <v-card-text>
              <pre class="codeColor">{{ userCode }}</pre>
            </v-card-text>
          </v-card>
        </v-dialog>
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
        Severity: "HIGH",
      };
    },
    reportList() {
      const list = [];
      for (const [key, value] of Object.entries(this.report)) {
        list.push({ title: key, subtitle: value });
      }
      return list;
    },
  },
  data() {
    return {
      userCode:
        'def encrypt(key, plaintext):\n\n key = key % 26\n    ciphertext = ""\n    for c in plaintext:\n        if c.isalpha():\n            if c.isupper():\n                ciphertext += chr((ord(c) + key - 65) % 26 + 65)\n            else:\n                ciphertext += chr((ord(c) + key - 97) % 26 + 97)\n        else:\n            ciphertext += c\n    return ciphertext\n\n\n ',
      dialog: false,
    };
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
.no-hover:hover {
  transition: none;
  box-shadow: none;
}
</style>
