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
export default {
  data ()
  {
    return {
      currentFiles: undefined,
      progress: 0,
      message: "",
      fileInfos: [],
      uploaded: false,

    };
  },
  methods:{
    selectFile(files) {
      this.progress = 0;
      this.currentFiles = files;
      console.log(this.currentFiles);
    },
    upload() {
      if (!this.currentFiles) {
        this.message = "Please select a file!";
        return;
      }
      // loop on current files
    
      for (let i =0 ; i < this.currentFiles.length ; i++ )
      {
        console.log(this.currentFiles[i].name);
        const ext = this.currentFiles[i].name.split(".").pop();
        const allowed_extensions=["py", "c","exe","cpp"]
      if (! allowed_extensions.includes(ext) ) {
        console.log(ext);
        console.log("**********");
        this.currentFiles[i] = undefined;
        this.message = "Only code files or executables are allowed!";
        return;
      }

      }
      this.message = "";
      this.uploaded = true;
      console.log(this.currentFiles);
      

      // UploadService.upload(this.currentFile, (event) => {
      //   this.progress = Math.round((100 * event.loaded) / event.total);
      // })
      //   .then((response) => {
      //     this.message = response.data.message;
      //     return UploadService.getFiles();
      //   })
      //   .then((files) => {
      //     this.fileInfos = files.data;
      //   })
      //   .catch(() => {
      //     this.progress = 0;
      //     this.message = "Could not upload the file!";
      //     this.currentFile = undefined;
      //   });
    },
  }

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
.con {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items:flex-start ;
}
</style>

  
