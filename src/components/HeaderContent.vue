<template>
  <header class="p-4 lg:px-0 dark:bg-gray-700 xl:dark:bg-gray-900">
    <div class="flex justify-end">
      <VSwitch v-model="darkMode" ariaLabel="dark mode">
        <template v-slot:icon>
          <span
            class="text-xs font-icon"
            :class="[darkMode ? 'icon-moon' : 'icon-sun']"
          ></span>
        </template>
      </VSwitch>
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
    });
  },
};
</script>
