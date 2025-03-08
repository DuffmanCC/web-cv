<template>
  <div v-if="projects && projects.length > 0">
    <h3 class="text-xl">Some Projects</h3>

    <ul>
      <li v-for="(site, i) in projects" :key="i" class="list-disc ml-4">
        <a :href="site.url" class="link" target="_blank" :key="i">
          {{ site.title }}</a
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
      type: Array,
      required: true,
    },
  },
};
</script>
