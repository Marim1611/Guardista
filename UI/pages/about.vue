<template>
  <v-container fluid>
    <v-row class="intro pl-10 pt-16">
      <v-col cols="4" class="pt-16">
        <img src="~/assets/Binary4.gif" alt="gif" class="pl-16" />
      </v-col>
      <v-col>
        <p class="text-center pr-16 title">Guardista</p>
        <p class="titleDescription">
          {{ GuardistaDescription }}
        </p>
      </v-col>
    </v-row>
    <v-row class="d-flex flex-row justify-center text-center my-16">
      <h1 class="whyGuardista">Our Features</h1>
    </v-row>
    <v-row class="justify-center pb-16">
      <v-col
        v-for="item in WhyGuardista"
        :key="item.id"
        cols="12"
        md="3"
        sm="6"
        class="px-md-10 px-6"
      >
        <v-card
          class="d-flex flex-column align-center"
          height="100%"
          rounded="xl"
        >
          <img
            class="pt-10 icons"
            :src="require(`~/assets/icons/${item.icon}`)"
          />
          <p class="text-center text-sm-justify px-6 pb-3 pt-7 description">
            {{ item.description }}
          </p>
        </v-card>
      </v-col>
    </v-row>
    <ImageText
      v-for="screen in screens"
      :key="screen.title"
      class="my-10"
      :text="screen.text"
      :title="screen.title"
      :bg-color="screen.bgColor"
      :is-left="screen.leftOrRight"
    />
    <!-- :img="screen.img" -->
  </v-container>
</template>
<script>
import ImageText from "../screens/AboutUs.vue";

export default {
  components: {
    ImageText,
  },
  head: { title: "About Us" },
  data() {
    return {
      GuardistaDescription:
        "- We provide peace of mind for developers, allowing them to focus on building great software without worrying about potential vulnerabilities.",
      //   WhyGuardista:
      //     "Traditional vulnerability detection tools that analyze source code may not be able to detect all vulnerabilities and may even be ineffective when source code is not available or lost. Guardista addresses this issue by detecting potential security risks at the binary level, helping to improve the overall security and reliability of software systems. Our tool is efficient and does not require access to the original source code, saving time and resources. It can detect vulnerabilities in software written in any language, regardless of the specific tools or frameworks used to develop it.",
      screens: [
        {
          text: "Guardista is a cutting-edge security tool that offers a comprehensive analysis of software code at the binary level. Our mission is to provide a reliable and efficient solution for software security by detecting potential security vulnerabilities that may not be apparent at the source code level. With Guardista, developers can focus on building great software without worrying about potential vulnerabilities.",
          title: "Mission",
          //   img: 'examine.png',
          bgColor: "#9d000020",
          leftOrRight: true,
        },
        {
          text: "Guardista's main objective is to develop a binary vulnerability detection tool that can identify potential security vulnerabilities in software at the binary level. By examining actual executable code, Guardista provides accurate and efficient results without the need for access to the original source code. Guardista can detect vulnerabilities in software written in any language, regardless of the specific tools or frameworks used to develop it, making it a valuable tool for any software developer.",
          title: "Objective",
          //   img: 'coffe.png',
          bgColor: "#f8f8f8",
          leftOrRight: false,
        },
        {
          text: "At Guardista, our process involves the transformation of binary code into a higher-level representation of control flow graphs. We then extract statistical, structural, and semantic features that we use to train different models, including both classical and deep learning models. Our classifiers output accurate results, reducing false positives and negatives, and improving overall accuracy. This process allows Guardista to provide a comprehensive analysis of software code at the binary level, detecting potential security vulnerabilities that may not be apparent at the source code level.",
          title: "Process",
          //   img: 'examine.png',
          bgColor: "#9d000020",
          leftOrRight: true,
        },
        {
          text: "Guardista detects potential security vulnerabilities in software at the binary level. If vulnerabilities are detected, Guardista can mark the location of the vulnerability within the source code and provide a highlighted representation of the affected area. Guardista also informs the user of the corresponding CVE name associated with the identified vulnerability and a description of the vulnerability. This information helps developers quickly identify and address potential security risks in their software.",
          title: "How it works?",
          //   img: 'coffe.png',
          bgColor: "#f8f8f8",
          leftOrRight: false,
        },
      ],
      WhyGuardista: [
        {
          icon: "feature1.png",
          //   animate: 'fade-right',
          description:
            "Guardista examines the binary code of software to detect potential security vulnerabilities.",
        },
        {
          icon: "feature2.png",
          //   animate: 'fade-left',
          description:
            "Guardista can detect vulnerabilities in software written in any language, regardless of the specific tools or frameworks used to develop it.",
        },
        {
          icon: "feature3.png",
          //   animate: 'fade-right',
          description:
            "Guardista provides accurate and efficient results without the need for access to the original source code.",
        },
        {
          icon: "feature4.png",
          //   animate: 'fade-left',
          description:
            "Guardista reduces false positives and negatives, improving overall accuracy.",
        },
      ],
    };
  },
};
</script>
<style scoped>
.intro {
  background-color: #f8f8f8;
  color: #9d0000;
  height: 100vh;
  padding-top: 100px !important;
  font-weight: bold;
  font-family: "Serif, Garamond" !important;
}
.title {
  font-size: 80px !important;
  color: #9d0000;
  padding-top: 210px !important;
}
.titleDescription {
  font-size: 26px !important;
  color: rgb(77, 77, 77);
  padding-top: 50px !important;
  text-align: center;
  font-style: italic;
}

.feature {
  font-weight: 700;
  font-size: 1.5vmax;
  color: #565656;
}

.description {
  font-weight: 500;
  font-size: 0.9vmax;
  color: #565656;
}

.whyGuardista {
  color: #9d0000;
  font-size: 2.8vmax;
  font-weight: 700;
}
</style>
