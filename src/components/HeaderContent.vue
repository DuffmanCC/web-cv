<template>
  <header class="p-4 lg:px-0 dark:bg-gray-900">
    <div class="flex justify-end">
      <VSwitch v-model="darkMode" class="mr-8" ariaLabel="dark mode">
        <template v-slot:icon>
          <span
            class="text-xs font-icon"
            :class="[darkMode ? 'icon-moon' : 'icon-sun']"
          ></span>
        </template>
      </VSwitch>

      <!-- <VSwitch v-model="spanish" ariaLabel="change language">
        <span class="mr-2 dark:text-white">Language:</span>

        <template v-slot:icon>
          <span
            class="text-xs text-gray-600"
            v-text="spanish ? 'ES' : 'EN'"
          ></span>
        </template>
      </VSwitch> -->
    </div>
  </header>
</template>

<script>
import VSwitch from "./VSwitch.vue";

export default {
  name: "HeaderContent",

  components: {
    VSwitch,
  },

  data() {
    return {
      darkMode: false,
      spanish: false,
    };
  },

  methods: {
    handleSwitchers(data) {
      this.$emit("handle-switchers", data);
    },
  },

  updated() {
    this.handleSwitchers({
      darkMode: this.darkMode,
      spanish: this.spanish,
    });

    document.documentElement.lang = this.spanish ? "es" : "en";
  },
};
</script>
