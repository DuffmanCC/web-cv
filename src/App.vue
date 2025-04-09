<template>
  <div class="dark:bg-gray-900 text-gray-600">
    <div class="container max-w-7xl">
      <HeaderContent @handle-switchers="handleSwitchers" />

      <div
        class="xl:shadow-2xl xl:flex print:flex print:flex-col dark:bg-gray-900"
      >
        <SideContent />

        <main
          class="xl:w-4/5 print:w-full p-3 sm:p-8 dark:bg-gray-700 dark:text-white"
        >
          <div id="profile">
            <h2 class="text-2xl mb-4 font-bold print:text-4xl">Profile</h2>

            <div class="flex flex-col gap-2 print:text-2xl">
              <p
                v-for="(paragraph, i) in content.profile"
                :key="i"
                v-html="paragraph"
              />
            </div>
          </div>

          <hr class="mt-8 mb-12" />

          <div id="experience" class="mb-8">
            <h2 class="text-2xl mb-4 font-bold print:text-4xl">Experience</h2>

            <div
              v-for="(job, i) in content.experience"
              :key="i"
              class="print:text-2xl"
            >
              <JobInfo :job="job" />

              <p class="mb-4" v-if="job.intro" v-html="job.intro"></p>

              <JobTasks :tasks="job.tasks" />

              <JobSkills :skills="job.skills" />

              <JobProjects :projects="job.projects" />

              <hr
                class="my-4 print:my-16"
                :class="{
                  'break-before-page print:py-12':
                    i === 0 || i === 3 || i === 5,
                }"
              />
            </div>
          </div>

          <OtherProjects :projects="content.otherProjects" />

          <EducationContent />
        </main>
      </div>

      <footer
        class="text-sm p-3 sm:p-8 xl:px-0 border-b dark:bg-gray-700 xl:dark:bg-gray-900 dark:text-white print:hidden"
      >
        Last updated on
        <time datetime="2025-04-09">April 9, 2025</time>
      </footer>
    </div>
  </div>
</template>

<script>
import EducationContent from "./components/EducationContent.vue";
import HeaderContent from "./components/HeaderContent.vue";
import JobInfo from "./components/JobInfo.vue";
import JobProjects from "./components/JobProjects.vue";
import JobSkills from "./components/JobSkills.vue";
import JobTasks from "./components/JobTasks.vue";
import OtherProjects from "./components/OtherProjects.vue";
import SideContent from "./components/SideContent.vue";
import contentEn from "./data/en.json";

export default {
  name: "App",

  components: {
    SideContent,
    HeaderContent,
    JobInfo,
    JobProjects,
    JobSkills,
    JobTasks,
    EducationContent,
    OtherProjects,
  },

  data() {
    return {
      darkMode: false,
    };
  },

  computed: {
    content() {
      return contentEn;
    },
  },

  methods: {
    handleSwitchers({ darkMode }) {
      this.darkMode = darkMode;
    },
  },

  watch: {
    darkMode(value) {
      document.documentElement.classList.toggle("dark", value);
    },
  },

  created() {
    document.documentElement.lang = "en";
    document.title = "Carlos Ortiz Resume";
    const meta = document.createElement("meta");
    meta.name = "description";
    meta.content =
      "Experienced Front-End Developer | React, Vue & Modern UI Specialist";
    document.getElementsByTagName("head")[0].appendChild(meta);
  },
};
</script>
