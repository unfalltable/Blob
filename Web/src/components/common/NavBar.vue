<script setup lang="ts">
import { ref } from 'vue';
const selectedKeys1 = ref<string[]>(['1']);


const value = ref<string>('');

const onSearch = (searchValue: string) => {
  console.log('use value', searchValue);
  console.log('or use this.value', value.value);
};
</script>

<template>
    <a-layout-header class="header">
      <a-row>
        <a-col :span="3">
          <a-input-search
          v-model:value="value"
          placeholder="input search text"
          enter-button
          @search="onSearch"
          class="search"
        />
        </a-col>
        <a-col :span="1">
        </a-col>
        <a-col :span="20" >
          <a-menu
            v-model:selectedKeys="selectedKeys1"
            theme="dark"
            mode="horizontal"
            :style="{ lineHeight: '64px' }"
          >
            <a-menu-item key="1">nav 1</a-menu-item>
            <a-menu-item key="2">nav 2</a-menu-item>
            <a-menu-item key="3">nav 3</a-menu-item>
          </a-menu>
        </a-col>
      </a-row>
      
      
    </a-layout-header>
</template>

<style scoped>
  .search {
    margin: 15px;
  }
</style>
