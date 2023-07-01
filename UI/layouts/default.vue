<template>
  <v-app fluid class="pa-0 ma-0">
    <v-main>
      <NavBar />
      <Nuxt />
    </v-main>

    <!-- <TheFooter /> -->
  </v-app>
</template>

<script>
import NavBar from "../components/NavBar.vue";
// import TheFooter from "../components/TheFooter.vue";
export default {
  components: {
    NavBar,
    // TheFooter,
  },
  name: "DefaultLayout",
};
</script>