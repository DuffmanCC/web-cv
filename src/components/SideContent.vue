<template>
  <aside
    class="xl:w-1/5 p-3 sm:py-8 sm:px-8 xl:px-4 bg-gray-300 dark:bg-gray-500 dark:text-white print:w-full"
  >
    <div class="px-2 mb-6">
      <h1 class="text-4xl font-bold">Carlos Ortiz</h1>

      <p class="text-3xl xl:text-xl print:text-2xl">Full Stack Developer</p>
    </div>

    <div class="flex justify-start xl:flex-col print:flex">
      <div class="font-light text-lg px-2 mb-6 mr-4">
        <h2 class="text-xl print:text-3xl font-bold mb-3">Contact</h2>

        <div class="print:text-xl">
          <span class="cursor-pointer font-icon icon-envelope mr-2"></span>

          <a href="mailto:carlosor@gmail.com">carlosor@gmail.com</a>
        </div>

        <div class="print:text-xl">
          <span class="cursor-pointer font-icon icon-phone mr-2"></span>

          <a href="tel:+44 7592 238 443">+44 7592 238 443</a>
        </div>

        <div>
          <span class="cursor-pointer font-icon icon-phone mr-2"></span>

          <a href="tel:+44 7592 238 443">+34 630 20 87 07</a>
        </div>

        <div class="text-2xl my-3 flex gap-2 items-center">
          <a
            class="font-icon icon-github mr-2"
            href="https://github.com/DuffmanCC"
            aria-label="github"
            target="_blank"
          ></a>

          <a
            class="cursor-pointer font-icon icon-linkedin"
            href="https://www.linkedin.com/in/carlosortiz79/"
            aria-label="linkedin"
            target="_blank"
          ></a>

          <a href="https://codepen.io/DuffmanCC/" target="_blank">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              aria-label="CodePen"
              role="img"
              viewBox="0 0 512 512"
              class="w-6 h-6"
            >
              <rect width="512" height="512" rx="15%" fill="#4B5563" />

              <g
                fill="none"
                stroke="#e6e6e6"
                stroke-width="33"
                stroke-linejoin="round"
              >
                <path d="M81 198v116l175 117 175-117V198L256 81z" />

                <path d="M81 198l175 116 175-116M256 81v117" />

                <path d="M81 314l175-116 175 116M256 431V314" />
              </g>
            </svg>
          </a>
        </div>
      </div>

      <div class="font-light text-lg px-2 mb-6">
        <h2 class="text-xl print:text-3xl font-bold mb-3">Languages</h2>

        <h3 class="text-lg print:text-2xl">Spanish</h3>

        <p class="text-sm print:text-xl italic">Native</p>

        <h3 class="text-lg print:text-2xl">English</h3>

        <p class="text-sm print:text-xl italic">Fluent</p>
      </div>
    </div>
  </aside>
</template>

<script>
export default {
  name: "SideContent",
};
</script>
