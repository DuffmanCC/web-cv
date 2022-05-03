<template>
  <div :class="{'dark': darkMode}">
    <div class="dark:bg-gray-900">
      <div class="container max-w-7xl">
        <header class="p-8 border-b dark:bg-gray-900">
          <div class="">
            <VSwitch v-model="darkMode"></VSwitch>
          </div>
        </header>

        <div class="lg:p-8 dark:bg-gray-900">
          <main class="sm:flex lg:shadow-2xl">
            <aside class="sm:w-1/3 md:w-1/4 lg:w-1/5 p-3 sm:py-8 sm:px-2 bg-gray-300  dark:bg-gray-500 dark:text-white">
              <div class="px-2 mb-12 text-center sm:text-left">
                <h1 class="text-4xl font-bold sm:font-normal sm:text-2xl mb-2">Carlos Ortiz</h1>

                <p class="text-lg">Fullstack Developer</p>
              </div>

              <div class="font-light text-lg px-2 mb-12">
                <h2 class="text-xl font-bold mb-4">Contact</h2>

                  
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
                    target="_blank"
                  ></a>

                  <a 
                    class="cursor-pointer font-icon icon-linkedin mr-2" 
                    href="https://www.linkedin.com/in/carlosortiz79/"
                    target="_blank"
                  ></a>
                </div>
              </div>

              <div class="font-light text-lg px-2 mb-12">
                <h2 class="text-xl font-bold text-2xl mb-4">Languages</h2>

                <h3 class="text-lg">Spanish</h3>

                <p class="text-sm italic">Native</p>

                <h3 class="text-lg">English</h3>

                <p class="text-sm italic">Fluent</p>
              </div>
            </aside>

            <div class="sm:w-2/3 md:w-3/4 lg:w-4/5 p-3 sm:py-8 sm:px-8 dark:bg-gray-700 dark:text-white">
              <div id="profile">
                <h2 class="text-2xl mb-4">Profile</h2>

                <p>
                  Full-stack developer specialized in WordPress and single-page applications. I have developed a wide range of websites using the latest trends and frameworks. Skilled at writing efficient, scalable, and maintainable code using current best practices.
                </p>
              </div>

              <hr class="mt-8 mb-12">

              <div id="experience">
                <h2 class="text-2xl mb-4">Experience</h2>

                <div>
                  <div class="mb-4">
                    <h3 class="font-bold text-xl">Full Stack Web Developer</h3>

                    <div class="font-bold">Network Rail - Full time</div>

                    <time>Feb 2018 - April 2022 . 4 years 3 months</time>

                    <div class="">Milton Keynes, United Kingdom</div>
                  </div>

                  <div class="mb-6">
                    <ul class="list-none">
                      <li>- Design the architecture, develop and maintenance the corporate website of the company.</li>
                      <li>- Lead on the design and implementation of new features and functionality to enhance the user experience.</li>
                      <li>- Creation of a design system based on Storybook to manage all frontend resources of the corporate website.</li>
                      <li>- Creation of single-page applications and other microsites based on Vue.js.</li>
                      <li>- Monitor website performance and take appropriate action to ensure optimal performance.</li>
                      <li>- Define development workflows and processes to optimize the resources.</li>
                      <li>- Passionate about keeping up-to-date with the latest trends in web developments, CSS technics, JS frameworks, and accessibility.</li>
                    </ul>
                  </div>

                  <div class="mb-6 flex flex-wrap">
                    <span 
                      class="rounded-xl bg-gray-300 px-3 mx-1 my-1 dark:bg-gray-500 dark:text-white"
                      v-for="skill in ['Vue.js', 'Vuex', 'TypeScript', 'Webpack', 'Tailwindcss', 'GraphQL',  'Git', 'Laravel', 'Sage', 'WP Engine']"
                      :key="skill"
                    >{{ skill }}</span>
                  </div>

                  <div>
                    <h3 class="text-xl">Projects</h3>

                    <a 
                      :href="site.url" 
                      class="hover:underline text-blue-800 block dark:text-blue-400"
                      target="_blank"
                      v-for="(site, i) in [
                        {url: 'https://www.networkrail.co.uk', title: 'Network Rail corporate website'},
                        {url: 'https://www.networkrail.co.uk/careers/careers-search/', title: 'Careers Search'},
                        {url: 'https://duffmancc.github.io/sustainability-at-network-rail/', title: 'Sustainability at Network Rail'}
                      ]"
                      :key="i"
                    >{{ site.title }}</a>
                  </div>
                </div>

                <hr class="mt-8 mb-12">

                <div>
                  <div class="mb-4">
                    <h3 class="font-bold text-xl">Web Developer</h3>

                    <div class="font-bold">Klood Ltd - Full time</div>

                    <time>Nov 2015 - Nov 2017 . 2 years 1 month</time>

                    <div class="">Milton Keynes, United Kingdom</div>
                  </div>

                  <div class="mb-6">
                    <ul class="list-none">
                      <li>- Created custom plugins, themes, and functions for WordPress based sites.</li>
                      <li>- Tested front-end code in multiple browsers to ensure cross-browser compatability.</li>
                      <li>- Maintained brand standards under company guidelines.</li>
                      <li>- Optimized pages for page speed using Google Page Speed (API) for Apache to obtain higher rankings on Search Engines (SEM).</li>
                      <li>- Front-end development using latest HTML5 and CSS3 techniques, backed by jQuery and Vue.js to enable optimum user experience throughout the site.</li>
                      <li>- Worked in Agile methodology.</li>
                    </ul>
                  </div>

                  <div class="mb-6 flex flex-wrap">
                    <span 
                      class="rounded-xl bg-gray-300 px-3 mx-1 my-1 dark:bg-gray-500 dark:text-white"
                      v-for="skill in ['jQuery', 'Gulp', 'Composer', 'Git', 'Docker', 'Bootstrap', 'Vuj.js', 'Laravel', 'Sage', 'cPanel', 'WooCommerce']"
                      :key="skill"
                    >{{ skill }}</span>
                  </div>

                  <div>
                    <h3 class="text-xl">Projects</h3>

                    <a 
                      :href="site.url" 
                      class="hover:underline visited:text-purple-800 text-blue-800 block dark:text-blue-400"
                      target="_blank"
                      v-for="(site, i) in [
                        {url: 'http://www.vwfsfleet.co.uk', title: 'Volkswagen Financial Services'},
                        {url: 'http://www.peachpubs.com', title: 'Peach Pubs'},
                        {url: 'http://www.retailthinktank.co.uk', title: 'Retail think tank'}
                      ]"
                      :key="i"
                    >{{ site.title}}</a>
                  </div>
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

export default {
  name: 'App',

  components: {
    VSwitch
  },

  data() {
    return {
      darkMode: false
    }
  }
}
</script>

<style>

</style>
