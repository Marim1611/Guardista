<template>
  <v-container class="mt-10 pt-16" fluid>
    <v-row class="text-center pb-10">
      <v-col>
        <h1><v-icon left>mdi-code-tags</v-icon> filename</h1></v-col
      >
    </v-row>
    <v-row>
      <v-col class="ml-10 py-5 code" cols="9">
        <pre>{{ userCode }}</pre>
      </v-col>
      <v-col class="text-left pr-10 pl-10">
        <v-row class="pb-10 text-center">
          <h3>
            Report Summary
            <v-icon medium right> mdi-bug-check </v-icon>
          </h3>
        </v-row>

        <v-card
          v-for="(issue, index) in issues"
          :key="index"
          class="mx-auto mb-5"
        >
          <v-card-title class="subtitle">
            <v-icon left>mdi-bug</v-icon>
            {{ issue.vulnerability }}
          </v-card-title>
          <v-card-text> {{ issue.description }}</v-card-text>
        </v-card>
        <v-row class="text-center">
          <v-col>
            <v-btn color="success" dark medium to="/guardista">
              Another scan?
              <v-icon right dark>mdi-feature-search</v-icon>
            </v-btn>
          </v-col>
        </v-row>
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
  // props: {
  //   filename: String,
  // },
  data() {
    return {
      userCode:
        'def encrypt(key, plaintext):\n\n key = key % 26\n    ciphertext = ""\n    for c in plaintext:\n        if c.isalpha():\n            if c.isupper():\n                ciphertext += chr((ord(c) + key - 65) % 26 + 65)\n            else:\n                ciphertext += chr((ord(c) + key - 97) % 26 + 97)\n        else:\n            ciphertext += c\n    return ciphertext\n\n\n ',

      issues: [
        {
          vulnerability: "CWE23",
          description:
            "The application uses a hard-coded cryptographic key for encryption.",
        },
        {
          vulnerability: "CWE23",
          description:
            "The application uses a hard-coded cryptographic key for encryption.",
        },
      ],
    };
  },
};
</script>

<style scoped>
.code {
  background-color: rgb(44, 44, 44);
  color: rgb(250, 241, 241);
  border-radius: 10px;
}

.subtitle {
  color: #9d0000;
}
</style>
