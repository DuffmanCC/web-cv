import { createApp } from 'vue'
import App from './App.vue'
import './assets/tailwind.css'
import VueGtag from "vue-gtag";

createApp(App).use(VueGtag, {
    config: { id: "G-MJRJC5MREY" }
}).mount('#app')
