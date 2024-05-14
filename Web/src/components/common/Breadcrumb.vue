<script setup lang="ts">
import { HomeOutlined, UserOutlined } from '@ant-design/icons-vue';
</script>

<template>
 
 <a-breadcrumb class="breadcrumb">
    <a-breadcrumb-item href="">
      <home-outlined />
    </a-breadcrumb-item>
    <a-breadcrumb-item href="">
      <user-outlined />
      <span>Application List</span>
    </a-breadcrumb-item>
    <a-breadcrumb-item>Application</a-breadcrumb-item>
  </a-breadcrumb>
 
</template>

<style scoped>
    .breadcrumb{
        margin: 16px 0;
    }
</style>
