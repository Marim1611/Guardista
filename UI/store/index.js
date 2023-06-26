export const state = newFunction()
function newFunction() {
  return () => ({
    Theme: 
      {
        color1: '#9d0000', // RED
        color2: '#545454', // Gray
        titleFontSize: '38px',
        subTitleFontSize: '24px',
        paragraphFontSize: '20px',
      }
  })
}