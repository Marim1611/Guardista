<template>
  <v-container fluid>
    <v-row class="nav-bar pt-2 pb-0">
      <v-col cols="2">
        <nuxt-link to="/">
          <div class="logo">
            <img id="img-logo" src="~assets/icons/Guardista.png" alt="" />
          </div>
        </nuxt-link>
      </v-col>
       <v-col col="7">
        <v-spacer></v-spacer>
      </v-col>
     
      <v-col  class="pt-6">
        <v-tabs
          grow
          align-with-title
          background-color="transparent"
          :color="Theme.color2"
        >
          <v-tab
            v-for="tab in tabs"
            :key="tab.route"
            :to="tab.route"
            :nuxt="true"
            class="title ss"
            >{{ tab.name }}</v-tab
          >
        </v-tabs>
      </v-col>
      
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      tabs: [
        { name: "Home", route: "/" },
        { name: "About Us", route: "/about" },
        { name: "Tools", route: "guardista" },
       
      ],
      navbar: false,
    };
  },
  computed: {
    Theme() {
      return this.$store.state.Theme;
    },
  },

};
</script>

<style scoped>
a {
  text-decoration: none;
}
.v-tab {
  text-transform: none !important;
}
.nav-bar {
  position: fixed;
  top: 0;
  z-index: 10;
  width: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -ms-flex-direction: row;
  flex-direction: row;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  height: min-content;
  -webkit-backdrop-filter: blur(.625rem);
  backdrop-filter: blur(.625rem);
  background: hsla(0,0%,100%,.9);
}
.v-tab--exact--active v-tab {
  font-size: 20px !important;
  color: #9d0000  !important;
}
.ss:hover {
  color: #9d0000 !important;
  -webkit-box-shadow: none !important;
  box-shadow: none !important;
  background: hsla(0,0%,100%,.9) !important;
  background-color: hsla(0,0%,100%,.9) !important;
}
.logo {
  display: flex;
  flex-direction: column;
  align-content: center;
  align-items: center;
  justify-items: center;
  justify-content: center;
}
#img-logo {
  width: 150px;
  height: 70px;
}
</style>