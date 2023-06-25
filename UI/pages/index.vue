<template>
  <div class="app">
  </div>
</template>

<script>

import AboutScreen from "../screens/AboutUs.vue";

export default {
  name: "IndexPage",
  components: {
    AboutScreen,

  },
  head: {
    title: "Home",
    meta: [
      { charset: "utf-8" },
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      {
        hid: "description",
        name: "description",
        content: "Guardista offers trusted security services ",
      },
      { name: "format-detection", content: "telephone=no" },
    ],
    link: [
      {
        hid: "canonical",
        rel: "canonical",
        href: "https://guardista.net",
      },
    ],
  },
 

};
</script>
<style scoped>
</style>