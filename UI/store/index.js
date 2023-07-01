export const state = newFunction()
function newFunction() {
  return () => ({
    Theme: {
      color1: "#9d0000", // RED
      color2: "#9d0000", // Gray
      titleFontSize: "38px",
      subTitleFontSize: "24px",
      paragraphFontSize: "20px",
    },
    token: "",
  });
}
export const mutations = {
  setToken(state, token) {
    console.log("setToken in store", token);
    state.token = token;
  } 
};