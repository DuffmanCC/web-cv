<template>
  <div class="mb-6 flex flex-wrap" v-if="skills.length > 0">
    <span
      class="rounded-xl bg-gray-300 px-3 mx-1 my-1 dark:bg-gray-500 dark:text-white print:border print:border-black"
      v-for="(skill, i) in skills"
      :key="i"
      >{{ skill }}</span
    >
  </div>
</template>

<script>
export default {
  name: "JobSkills",

  props: {
    skills: {
      type: Array,
      required: true,
    },
  },
};
</script>
