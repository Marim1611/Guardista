<template>
  <div class="btn">
    <NuxtLink :to="route">
      <button :style="buttonColor" @click="buttonClicked">
        {{ text }}
      </button>
    </NuxtLink>
  </div>
</template>

<script>
export default {
  props: {
    text: String,
    route: {
      type: [String],
      default: '',
    },
    color: {
      type: [String],
      default: '#9c0000',
    },
    width: String,
    height: String,
  },
  computed: {
    buttonColor() {
      return {
        'background-color': this.color,
        width: this.width,
        height: this.height,
      }
    },
  },
  methods: {
    buttonClicked() {
      this.$emit('clicked')
    },
  },
}
</script>

<style scoped>
@media only screen and (max-width: 1000px) {
  button {
    width: 150px !important;
    height: 42px !important;
    font-size: 13px !important;
    border-radius: 110px;
  }
}
button {
  width: 220px;
  height: 52px;
  border-radius: 139px;
  color: white;
  text-decoration: none;
  font-family: 'Montserrat600';
  font-size: 18px;
  line-height: 21.94px;
  transition: all 0.8s;
}
.btn :hover {
  transform: scale(1.1);
  transition: transform 0.5s;
  transition: all 0.8s;
}
</style>
