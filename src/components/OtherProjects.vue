<template>
  <div class="mb-8" v-if="projects && projects.length > 0">
    <h2 class="text-2xl mb-4 font-bold print:text-4xl">Other projects</h2>

    <ul class="list-disc ml-4">
      <li v-for="(project, i) in projects" :key="i">
        <a :href="project.url" target="_blank" class="link">{{
          project.title
        }}</a>
        - <span v-html="project.description"></span> -

        <a
          class="font-icon icon-github mr-2"
          :href="project.githubUrl"
          aria-label="github"
          target="_blank"
        ></a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "OtherProjects",

  props: {
    projects: {
      type: Array,
      required: true,
    },
  },
};
</script>
