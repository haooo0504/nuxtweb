<template>
  <div class="profile-container">
    <div class="outer-ring"></div>
    <div class="inner-ring"></div>
    <div class="profile-circle">
      <img :src="personalPhoto" alt="User Avatar" class="avatar-image" />
    </div>
  </div>
</template>

<script setup lang="ts">
import personalPhoto from "assets/images/personalPhoto.png";
</script>

<style lang="scss" scoped>
.profile-container {
  position: relative;
  width: 250px;
  height: 250px;
  @media (max-width: 767px) {
    width: 200px;
    height: 200px;
  }
}

.outer-ring,
.inner-ring {
  position: absolute;
  top: 50%;
  left: 50%;
  border: 2px solid #ffffff;
  border-radius: 50%;
  transform: translate(-50%, -50%);
}

.outer-ring {
  width: 340px;
  height: 340px;
  box-shadow: 0 0 30px rgba(255, 255, 255, 0.3); /* 提供一些光暈效果 */
  @media (max-width: 767px) {
    width: 230px;
    height: 230px;
  }
}

.inner-ring {
  width: 320px;
  height: 320px;
  @media (max-width: 767px) {
    width: 220px;
    height: 220px;
  }
}

.profile-circle {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 300px;
  height: 300px;
  border: 2px solid #ffffff;
  border-radius: 50%;
  background: #000; /* 你的背景色 */
  transform: translate(-50%, -50%);
  display: flex;
  justify-content: center;
  align-items: center;
  @media (max-width: 767px) {
    width: 210px;
    height: 210px;
  }
}

.avatar-image {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  object-fit: cover;
}
</style>
