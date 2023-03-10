<template>
  <aside
    class="xl:w-1/5 p-3 sm:py-8 sm:px-8 xl:px-4 bg-gray-300 dark:bg-gray-500 dark:text-white"
  >
    <div class="px-2 mb-6 text-center">
      <h1 class="text-2xl">Carlos Ortiz</h1>

      <p class="text-4xl xl:text-xl font-bold">Full Stack Developer</p>
    </div>

    <div class="flex justify-start xl:flex-col">
      <div class="font-light text-lg px-2 mb-6 mr-4">
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

      <div class="font-light text-lg px-2 mb-6">
        <h2 class="text-xl font-bold mb-3">Languages</h2>

        <h3 class="text-lg">Spanish</h3>

        <p class="text-sm italic">Native</p>

        <h3 class="text-lg">English</h3>

        <p class="text-sm italic">Fluent</p>
      </div>
    </div>
  </aside>
</template>

<script>
export default {
  name: "SideContent",
};
</script>
