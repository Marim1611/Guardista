<template>
    <v-container fluid class="parent">
      <v-row >
        <v-col :space="9">
          <img src="~assets/icons/infected.svg" />
          <h3>"Knowing your weaknesses is the first step to becoming stronger"</h3>

        </v-col>
        <v-col>
          <div v-if="currentFiles">
      <div>
        <v-progress-linear
          v-model="progress"
          color="light-blue"
          height="25"
          reactive
        >
          <strong>{{ progress }} %</strong>
        </v-progress-linear>
      </div>

    </div>
        <v-file-input
          show-size
          multiple
          label="Browse Files"
          @change="selectFile"
        ></v-file-input>
          <div class="btn">
            <v-btn color="success" dark small @click="upload">
            Upload to Scan
            <v-icon right dark>mdi-cloud-upload</v-icon>
          </v-btn>
          </div>   
       
          <v-alert ma-6 v-if="message" border="left" color="error" dark>
            {{ message }}
          </v-alert>

          <div v-if="showStatus" class="stats_bar">
            <p class="stat"  v-for="(ele,i) in cases" :key="i" color="#6e1131" :class="{checked:done[i]}">{{ele}}</p>

          </div>

          <v-card v-if="uploaded" class="mx-auto">
            <v-list>
              <v-subheader>Results</v-subheader>
              <v-list-item-group color="primary">
                <v-list-item v-for="(file, index) in currentFiles" :key="index">
                  <v-row>
                    <v-col>
                      <a :href="file.url">{{ file.name }}</a>
                    </v-col>
                    <v-col>
                      <p> 0 issues </p>
                    </v-col>
                    <v-col> 
                      <v-btn color="success" dark small to="/about">
                        See Report
                        <v-icon right dark>mdi-feature-search</v-icon>
                      </v-btn>
                    </v-col>
                  </v-row>
                </v-list-item>
              </v-list-item-group>
            </v-list>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
</template>

<script>
import axios from "axios";
import { getUniversalCookies } from 'cookie-universal-nuxt'
export default {
  data ()
  {
    return {
      currentFiles: undefined,
      progress: 0,
      message: "",
      cases: ['submitted','compiled','lifted','analyzed'],
      done:[false,true,false,false],
      uploaded: false,
      showStatus: false,
      currentCase:-1,
    };
  },
    mounted() {
      print("FFFFF" , this.done[0])
      if (this.done[0])
      {
      //   this.fetchStatus(); // fetch the status on component mount
      // setInterval(() => {
      //   this.fetchStatus(); // fetch the status every second
      // }, 1000);
      }
    },
    methods:{
     async fetchStatus() {
      await axios
        .get("http://localhost:8000/api/status",
        {
          headers: {
            'X-CSRFToken': `Bearer ${this.token}`,
          },
        })
        .then((res) => {
          console.log("$######### get status");
          console.log(res);
          console.log( res.headers)
        })
        .catch((err) => {
          console.log("Error in get status");
          console.log(err);
        });

    },
    selectFile(files) {
      this.progress = 0;
      this.currentFiles = files;
      console.log(this.currentFiles);
    },
    async upload() {
      if (!this.currentFiles) {
        this.message = "Please select a file!";
        return;
      }
      // loop on current files
      const formData = new FormData()
      for (let i =0 ; i < this.currentFiles.length ; i++ )
      {
        console.log(this.currentFiles[i].name);
        const ext = this.currentFiles[i].name.split(".").pop();
        const allowed_extensions=["py", "c","exe","cpp","ll"]
      if (! allowed_extensions.includes(ext) ) {
        console.log(ext);
        console.log("**********");
        this.currentFiles[i] = undefined;
        this.message = "Only code files or executables are allowed!";
        return;
      }
      formData.append('files', this.currentFiles[i])
      }
      this.message = "";
      console.log(this.currentFiles);
      console.log("token in upload",this.token)
      console.log(this.currentFiles)
      this.showStatus=true
      // config:(event) => {
      //   this.progress = Math.round((100 * event.loaded) / event.total);
      //   console.log("progresssssssssss",this.progress);
      // }
      await axios
        .post("http://localhost:8000/api/upload", formData,  {
          headers: {
            'Content-Type': 'multipart/form-data',
            'X-CSRFToken': `Bearer ${this.token}`,
          },
        })
        .then((res) => {
          this.done[0]=true;
          console.log("response to upload",res);
          console.log("response to upload",res.data);
          console.log("progress",this.progress);
          setInterval(this.fetchStatus, 1000);
        })
        .catch((err) => {
          console.log("err in upload", err.response);
        });
        this.uploaded = true;

    },
  },
  computed:{
    token(){
      return this.$store.state.token
    },
    set_token(){
    this.$store.commit('setToken',this.$cookies.get('csrftoken'))
  }
  },
  async created() {
  await axios
        .get("http://localhost:8000/api/get")
        .then((res) => {
          console.log("$######### get token");
          console.log(res);
          console.log( res.headers)
        })
        .catch((err) => {
          console.log("Error in get token");
          console.log(err);
        });
        console.log("token",this.$cookies.get('csrftoken'))
        this.set_token
  },
  
  }

</script>

<style scoped>

.parent {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 100px ;
  height: 100vh;
}
h3 {
  font-family: "Roboto";
  font-size: 2.2vmax;
  color: #9d0000;
}
.btn {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-bottom:20px;
}
.checked {
  color: #9d0000;
  font-weight: bold;
  font-size: 20px;
}
.stats_bar {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  margin-top: 20px;
  margin-bottom: 20px;
}

.con {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items:flex-start ;
}
</style>

  
