<template>
  <v-container>
    <v-row>
      <v-col>
        <p id="title" class="text-center my-8">{{ title }}</p>
      </v-col>
    </v-row>
    <v-row
      :style="{ 'background-color': bgColor }"
      class="colored-div pa-2 ma-1 flex-wrap-reverse"
    >
      <v-col md="6" cols="12">
        <p class="text pa-md-8" :class="{ 'multi-lined-text': multiLined }">{{ text }}</p>
      </v-col>
      <v-col :class="{ 'order-first': isLeft }" md="6" cols="12">
        <img class="resp-img" :src="require(`~/assets/${img}`)" alt="" /> 
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      decreaseFont: false,
      multiLined: false,
      imgFade: '',
      textFade: '',
    }
  },
  props: {
    img: String,
    title: String,
    text: String,
    isLeft: Boolean, // if the image on the left or not
    bgColor: String,
  },
  created() {
    // this.imgFade = this.isLeft ? 'fade-right' : 'fade-left'
    // this.textFade = this.isLeft ? 'fade-left' : 'fade-right'
  },
 
}
</script>

<style scoped>
.colored-div {
  border-radius: 20px;
}
#title {
  color: #9d0000;
  font-size: 2.8vmax;
  font-weight: 700;
}
.text {
  color: rgba(86, 86, 86, 1);
  text-align: justify;
  line-height: 2.5;
}
.small-font {
  line-height: 1.7;
  font-size: 1vmax;
}
.resp-img {
  width: 100%;
  height: auto;
}
.multi-lined-text {
  white-space: pre-line;
}
.colored-div {
  border-radius: 20px;
}
.level {
  margin-top: 10%;
}
</style>
