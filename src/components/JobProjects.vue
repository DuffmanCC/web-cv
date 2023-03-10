<template>
  <div v-if="projects.length > 0">
    <h3 class="text-xl">Some Projects</h3>

    <ul>
      <li v-for="(site, i) in projects" :key="i">
        <a
          :href="site.url"
          class="hover:underline text-blue-800 block dark:text-blue-400"
          target="_blank"
          :key="i"
          >- {{ site.title }}</a
        >
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "JobProjects",

  props: {
    projects: {
      type: Object,
      required: true,
    },
  },
};
</script>
