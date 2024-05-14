<script setup lang="ts">

import SideBar from '../components/common/SideBar.vue'
import NavBar from '../components/common/NavBar.vue'
import Footer from '../components/common/Footer.vue'
import Breadcrumb from '../components/common/Breadcrumb.vue'
import Web_Index from '../components/web/Index.vue'

</script>

<template>
  <a-layout class="layout">
    <NavBar />
    <a-layout-content class="body">

      <Breadcrumb />
      
      <a-layout class="body-content">

        <a-layout-sider class="body-content-sider" >
          <SideBar />
        </a-layout-sider>

        <a-layout-content class="body-content-view">
          <Web_Index />
        </a-layout-content>

      </a-layout>
    </a-layout-content>

     <Footer />
  </a-layout>
</template>
  
<style scoped>
  .body {
    padding: 0 50px
  }
  .body-content{
    padding: 24px 0; 
    background: #fff;
    position: relative;
    min-height: 100vh;
  }
  .body-content-sider{
    width: "200";
    background: #fff;
    margin: 20px;
  }
  .body-content-view{
    padding: '0 24px';
    margin: 20px;
  }
</style>
