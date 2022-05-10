<template>
  <div :class="{'dark': darkMode}">
    <div class="dark:bg-gray-900 text-gray-600">
      <div class="container max-w-7xl">
        <header class="p-4 sm:p-8 border-b dark:bg-gray-900">
          <div class="flex justify-end">
            <VSwitch v-model="darkMode" class="mr-8" ariaLabel="dark mode">
              <template v-slot:icon>
                <span
                  class="text-xs font-icon"
                  :class="[darkMode ? 'icon-moon' : 'icon-sun']"
                ></span>
              </template>
            </VSwitch>

            <VSwitch v-model="spanish" ariaLabel="change language">
              <span class="mr-2 dark:text-white">Language:</span>

              <template v-slot:icon>
                <span class="text-xs text-gray-600" v-text="spanish ? 'ES' : 'EN'"></span>
              </template>
            </VSwitch>
          </div>
        </header>

        <div class="lg:p-8 dark:bg-gray-900">
          <main class="sm:flex lg:shadow-2xl">
            <aside class="sm:w-1/3 md:w-1/4 lg:w-1/5 p-3 sm:py-8 sm:px-2 bg-gray-300  dark:bg-gray-500 dark:text-white">
              <div class="px-2 mb-6 sm:mb-12 text-center sm:text-left">
                <h1 class="text-4xl font-bold sm:font-normal sm:text-2xl sm:mb-2">
                  Carlos Ortiz
                </h1>

                <p class="text-lg">Full Stack Developer</p>
              </div>

              <div class="font-light text-lg px-2 mb-6 sm:mb-12">
                <h2 class="text-xl font-bold mb-3">Contact</h2>
           
                <div>
                  <span class="cursor-pointer font-icon icon-envelope mr-2"></span>

                  <a href="mailto:carlosor@gmail.com">carlosor@gmail.com</a>
                </div>

                <div>
                  <span class="cursor-pointer font-icon icon-phone mr-2"></span>

                  <a href="tel:+44 7592 238 443">+44 7592 238 443</a>  
                </div>

                <div>
                  <span class="cursor-pointer font-icon icon-phone mr-2"></span>

                  <a href="tel:+44 7592 238 443">+34 630 20 87 07</a>
                </div>

                <div class="text-2xl my-3">
                  <a 
                    class="cursor-pointer font-icon icon-github mr-2" 
                    href="https://github.com/DuffmanCC"
                    aria-label="github"
                    target="_blank"
                  ></a>

                  <a 
                    class="cursor-pointer font-icon icon-linkedin mr-2" 
                    href="https://www.linkedin.com/in/carlosortiz79/"
                    aria-label="linkedin"
                    target="_blank"
                  ></a>
                </div>
              </div>

              <div class="font-light text-lg px-2 mb-6 sm:mb-12">
                <h2 class="text-xl font-bold mb-3">Languages</h2>

                <h3 class="text-lg">Spanish</h3>

                <p class="text-sm italic">Native</p>

                <h3 class="text-lg">English</h3>

                <p class="text-sm italic">Fluent</p>
              </div>
            </aside>

            <div class="sm:w-2/3 md:w-3/4 lg:w-4/5 p-3 sm:py-8 sm:px-8 dark:bg-gray-700 dark:text-white">
              <div id="profile">
                <h2 class="text-2xl mb-4">Profile</h2>

                <div v-html="content.profile"></div>
              </div>

              <hr class="mt-8 mb-12">

              <div id="experience">
                <h2 class="text-2xl mb-4">Experience</h2>

                <div v-for="(job, i) in content.experience" :key="i">
                  <div class="mb-4">
                    <h3 class="font-bold text-xl">{{ job.title }}</h3>

                    <div class="font-bold">
                      <a :href="job.url" target="_blank" class="hover:underline text-blue-800 dark:text-blue-400 cursor-pointer">
                        {{ job.company }}
                      </a> - {{ job.type }}
                    </div>

                    <time>{{ job.period }}</time>

                    <div class="">{{ job.place }}</div>
                  </div>

                  <div class="mb-6">
                    <ul class="list-none">
                      <li v-for="(task, j) in job.tasks" :key="j" v-html="task"></li>
                    </ul>
                  </div>

                  <div class="mb-6 flex flex-wrap">
                    <span 
                      class="rounded-xl bg-gray-300 px-3 mx-1 my-1 dark:bg-gray-500 dark:text-white"
                      v-for="(skill, k) in job.skills"
                      :key="k"
                    >{{ skill }}</span>
                  </div>

                  <div>
                    <h3 class="text-xl">Projects</h3>

                    <a 
                      :href="site.url" 
                      class="hover:underline text-blue-800 block dark:text-blue-400"
                      target="_blank"
                      v-for="(site, l) in job.projects"
                      :key="l"
                    >{{ site.title }}</a>
                  </div>

                  <hr class="mt-8 mb-12">
                </div>
              </div>
            </div>
          </main>
        </div> 
      </div>  
    </div>
  </div>
</template>

<script>
import VSwitch from "./components/VSwitch.vue"
import contentEn from "./data/en.json"
import contentEs from "./data/es.json"
import {pageview } from "vue-gtag"

export default {
  name: 'App',

  components: {
    VSwitch
  },

  data() {
    return {
      darkMode: false,
      spanish: false,
    }
  },

  computed: {
    content() {
      if (this.spanish === true) {
        return contentEs
      }

      return contentEn
    }
  },

  methods: {
    track() {
      pageview("/");
    },
  },

  created() {
    document.documentElement.lang = 'en'
    document.title = "Carlos Ortiz Resume"
    const meta = document.createElement('meta')
    meta.name = "description"
    meta.content = "Full Stack developer specialized in WordPress and single-page applications. I have developed a wide range of websites using the latest trends and frameworks. Skilled at writing efficient, scalable, and maintainable code using current best practices."
    document.getElementsByTagName('head')[0].appendChild(meta)
  },

  updated() {
    const lang = this.spanish ? 'es' : 'en'

    document.documentElement.lang = lang

    const description = this.spanish ? 'Full Stack developer especializado en WordPress y aplicaciones de una sola página. He desarrollado una amplia gama de sitios web utilizando las últimas tendencias y frameworks. Habilidad para escribir código eficiente, escalable y mantenible utilizando las mejores prácticas actuales.' : 'Full Stack developer specialized in WordPress and single-page applications. I have developed a wide range of websites using the latest trends and frameworks. Skilled at writing efficient, scalable, and maintainable code using current best practices.'

    document.querySelector('meta[name="description"]').content = description
  }
}
</script>
