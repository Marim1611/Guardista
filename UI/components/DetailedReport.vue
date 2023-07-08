<template>
  <v-dialog
    v-model="detailed"
    width="max-content"
    class="mt-16 dialog"
    hide-overlay
    persistent
    @keydown.esc="closeDialog"
  >
    <v-card class="py-5 px-2" max-height="auto">
      <v-list>
        <v-list-item-group>
          <v-list-item v-for="(item, i) in detailedReport" :key="i">
            <v-list-item-content class="d-flex flex-column align-center">
              <v-list-item-title
                v-html="item.title"
                class="text-center"
              ></v-list-item-title>
              <v-list-item-subtitle
                class="text-wrap text-center"
                v-html="item.subtitle"
              ></v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-card>
  </v-dialog>
</template>

<script>
export default {
  props: {
    report: {
      type: Object,
      required: true,
    },
    detailed: {
      type: Boolean,
      required: true,
    },
  },

  computed: {
    detailedReport() {
      const list = [];
      const reportKeys = Object.keys(this.report);
      for (let i = 0; i < reportKeys.length; i++) {
        const key = reportKeys[i];
        const value = this.report[key];
        if (value !== null && value !== "nan") {
          if (key === "Severity") {
            list.splice(2, 0, { title: key, subtitle: value });
          } else {
            list.push({ title: key, subtitle: value });
          }
        }
      }
      return list;
    },
  },
  methods: {
    closeDialog() {
      this.$emit("closeDialog", false);
    },
  },
};
</script>

<style scoped>
.dialog {
  z-index: 15;
}
</style>
