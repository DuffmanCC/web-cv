<template>
  <div class="mb-6" v-if="tasks && tasks.length > 0">
    <ul class="list-disc ml-4">
      <li v-for="(task, i) in tasks" :key="i" v-html="task"></li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "JobTasks",

  props: {
    tasks: {
      type: Object,
      required: true,
    },
  },
};
</script>
