import { createApp } from 'vue'
import Index from './views/index.vue'
import Antd from 'ant-design-vue'
import 'ant-design-vue/dist/reset.css';

createApp(Index)
    .use(Antd)
    .mount('#index')
