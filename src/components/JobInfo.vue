<template>
  <div class="mb-4">
    <h3 class="font-bold text-xl">{{ job.title }}</h3>

    <div class="font-bold">
      <a
        :href="job.url"
        target="_blank"
        class="hover:underline text-blue-800 dark:text-blue-400 cursor-pointer"
      >
        {{ job.company }}
      </a>
      - {{ job.type }}
    </div>

    <time>{{ job.period }}</time>

    <div class="">{{ job.place }}</div>
  </div>
</template>

<script>
export default {
  name: "JobInfo",

  props: {
    job: {
      type: Object,
      required: true,
    },
  },
};
</script>
