<template>
  <div class="mb-6" v-if="tasks.length > 0">
    <ul class="list-none">
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
