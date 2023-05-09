<template>
  <div :class="{ dark: darkMode }">
    <div class="dark:bg-gray-900 text-gray-600">
      <div class="container max-w-7xl">
        <HeaderContent @handle-switchers="handleSwitchers" />

        <div class="dark:bg-gray-900">
          <div class="lg:shadow-2xl xl:flex">
            <SideContent />

            <main class="xl:w-4/5 p-3 sm:p-8 dark:bg-gray-700 dark:text-white">
              <div id="profile">
                <h2 class="text-2xl mb-4 font-bold">Profile</h2>

                <div class="flex flex-col gap-2">
                  <p
                    v-for="(paragraph, i) in content.profile"
                    :key="i"
                    v-html="paragraph"
                  />
                </div>
              </div>

              <hr class="mt-8 mb-12" />

              <div id="experience">
                <h2 class="text-2xl mb-4 font-bold">Experience</h2>

                <div v-for="(job, i) in content.experience" :key="i">
                  <JobInfo :job="job" />

                  <p class="mb-4" v-if="job.intro" v-text="job.intro"></p>

                  <JobTasks :tasks="job.tasks" />

                  <JobSkills :skills="job.skills" />

                  <JobProjects :projects="job.projects" />

                  <hr class="mt-8 mb-8" />
                </div>
              </div>

              <EducationContent />
            </main>
          </div>
        </div>

        <footer class="p-4 lg:px-0 border-b dark:bg-gray-900 dark:text-white">
          Copyright © <time datetime="2023">2023</time> Carlos Ortiz
        </footer>
      </div>
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
import SideContent from "./components/SideContent.vue";
import contentEn from "./data/en.json";
import contentEs from "./data/es.json";

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
  },

  data() {
    return {
      darkMode: false,
      spanish: false,
    };
  },

  computed: {
    content() {
      if (this.spanish === true) {
        return contentEs;
      }

      return contentEn;
    },
  },

  methods: {
    handleSwitchers({ darkMode, spanish }) {
      this.darkMode = darkMode;
      this.spanish = spanish;
    },
  },

  created() {
    document.documentElement.lang = "en";
    document.title = "Carlos Ortiz Resume";
    const meta = document.createElement("meta");
    meta.name = "description";
    meta.content =
      "Full Stack developer specialized in WordPress and single-page applications. I have developed a wide range of websites using the latest trends and frameworks. Skilled at writing efficient, scalable, and maintainable code using current best practices.";
    document.getElementsByTagName("head")[0].appendChild(meta);
  },

  updated() {
    const description = this.spanish
      ? "Full Stack developer especializado en WordPress y aplicaciones de una sola página. He desarrollado una amplia gama de sitios web utilizando las últimas tendencias y frameworks. Habilidad para escribir código eficiente, escalable y mantenible utilizando las mejores prácticas actuales."
      : "Full Stack developer specialized in WordPress and single-page applications. I have developed a wide range of websites using the latest trends and frameworks. Skilled at writing efficient, scalable, and maintainable code using current best practices.";

    document.querySelector('meta[name="description"]').content = description;
  },
};
</script>
