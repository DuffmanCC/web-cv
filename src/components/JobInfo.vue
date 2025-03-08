<template>
  <div class="mb-4 print:mb-8 flex flex-col gap-0 print:gap-2">
    <h3 class="font-bold text-xl print:text-3xl">{{ job.title }}</h3>

    <div class="font-bold">
      <a :href="job.url" target="_blank" class="link" v-if="job.url">
        {{ job.company }}
      </a>

      <span v-else>{{ job.company }}</span>
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
