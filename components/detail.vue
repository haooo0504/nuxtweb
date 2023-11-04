<template>
  <div id="section1">
    <div
      class="flex justify-center items-center w-[100%] absolute top-[50%] left-[50%] transform -translate-x-1/2 -translate-y-1/2"
    >
      <img class="md:w-[40%] w-[100%] opacity-5" :src="noBgLogo" alt="" />
    </div>
    <img class="bg-image" :src="image1" alt="" />
    <div
      class="flex flex-col justify-center items-center md:w-[50%] w-[100%] z-10 mt-20"
    >
      <div class="md:w-[60%] w-[90%] md:mr-5">
        <div
          class="gradient-title md:text-[100px] text-[60px] z-0 text-gray-400 font-semibold"
        >
          CHAT AI
        </div>
        <div
          class="gradient-text md:text-[40px] text-[25px] z-0 text-gray-300 mt-5"
        >
          讓對話引領智慧 免費使用最新科技
        </div>
        <div class="md:text-[25px] z-0 text-gray-300 mt-5">
          結合最先進的GPT-4.0技術，CHAT
          AI帶給您一個無與倫比的智能對話體驗，無論您是在尋找快速的答案、需要專業建議，還是希望將圖片中的文字快速識別並轉化為可交互的信息，我們都在這裡，為您節省時間，提升效率。一款為學生、專業人士和每一位用戶量身打造的智能助手。
        </div>
      </div>
    </div>
    <div
      class="md:w-[50%] w-[100%] flex flex-col justify-center items-center mt-20"
    >
      <div class="h-[50px]">
        <div
          id="download-text"
          class="text-[#97d0ff] inline-block text-[50px] font-semibold"
        ></div>
      </div>
      <div class="container">
        <div class="card">
          <div class="begin-content">
            <Icon name="raphael:android" color="white" />
          </div>
          <div class="content">
            <img :src="androidApp" alt="" />
            <a
              href="https://play.google.com/store/apps/details?id=com.productchat.aichat"
              >前往下載</a
            >
          </div>
        </div>
        <div class="card">
          <div class="begin-content">
            <Icon name="raphael:apple" color="black" />
          </div>
          <div class="content">
            <img :src="iosApp" alt="" />
            <a
              href="https://apps.apple.com/us/app/chatai-%E8%90%AC%E8%83%BDai%E5%8A%A9%E7%90%86/id6450117198"
              >前往下載</a
            >
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import noBgLogo from "assets/images/noBgLogo.png";
import VanillaTilt from "vanilla-tilt";
import image1 from "assets/images/介紹功能2.png";
import androidApp from "assets/images/androidapp.png";
import iosApp from "assets/images/iosapp.png";
import Typed from "typed.js";

// 設定 meta tags
// useHead({
//   title: "關於我們 About - Nuxt3 高效入門全攻略",
//   meta: [
//     { property: "og:title", content: "關於我們 About - Nuxt3 高效入門全攻略" },
//     { property: "og:url", content: "http://localhost:3000/about" },
//     { property: "og:image", content: "http://localhost:3000/share.jpg" },
//     { name: "description", content: "關於我們 About - 最棒的Nuxt3的線上課程" },
//     {
//       property: "og:description",
//       content: "關於我們 About - 最棒的Nuxt3的線上課程",
//     },
//   ],
//   link: [{ rel: "icon", type: "image/png", href: "logo-one.png" }],
// });

onMounted(() => {
  VanillaTilt.init(document.querySelectorAll(".card"), {
    max: 15, //最大倾斜度数
    speed: 400, //倾斜转换的速度
    glare: true, //是否开启眩光效果
    "max-glare": 1, //最大眩光的不透明度
  });
  new Typed("#download-text", {
    strings: ["download"],
    typeSpeed: 200,
    backSpeed: 100,
    loop: true,
  });
});
</script>

<style lang="scss" scoped>
#section1 {
  font-family: "cwTeXYen", sans-serif;
  /* 100%窗口高度 */
  min-height: 100vh;
  /* 弹性布局 水平+垂直居中 */
  display: flex;
  justify-content: center;
  align-items: center;
  // background: linear-gradient(
  //   135deg,
  //   #1a1a1a 0%,
  //   #2e2e2e 25%,
  //   #3f3f3f 50%,
  //   #2e2e2e 75%,
  //   #1a1a1a 100%
  // );
  overflow: hidden;
  position: relative;

  @media (max-width: 767px) {
    flex-direction: column;
  }
}
// #section1::before {
//   content: "";
//   /* 绝对定位 */
//   position: absolute;
//   top: 0;
//   left: 0;
//   width: 100%;
//   height: 100%;
//   /* 渐变背景 */
//   background: linear-gradient(#2193b0, #6dd5ed);
//   /* 将元素剪切微一个圆形【30%表示圆的直径】【right 70%表示圆心位置】 */
//   clip-path: circle(30% at right 70%);
// }
// #section1::after {
//   content: "";
//   /* 绝对定位 */
//   position: absolute;
//   top: 0;
//   left: 0;
//   width: 100%;
//   height: 100%;
//   /* 渐变背景 */
//   background: linear-gradient(#ee9ca7, #ffdde1);
//   /* 将元素剪切微一个圆形【30%表示圆的直径】【right 70%表示圆心位置】 */
//   clip-path: circle(20% at 10% 10%);
// }
.container {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  z-index: 1;
  margin-top: 30px;
}
.container .card {
  /* 相对定位 */
  position: relative;
  width: 200px;
  height: 220px;
  background-color: rgba(255, 255, 255, 0.1);
  margin: 15px;
  border-radius: 15px;
  /* 阴影 */
  box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.5);
  /* 溢出隐藏 */
  overflow: hidden;
  display: flex;
  justify-content: center;
  align-items: center;
  border-top: 1px solid rgba(255, 255, 255, 0.5);
  border-left: 1px solid rgba(255, 255, 255, 0.5);
  /* 背景模糊 */
  backdrop-filter: blur(5px);
}
.container .card .content {
  padding: 20px;
  text-align: center;
  /* 默认下移+隐藏 */
  transform: translateY(100px);
  opacity: 0;
  transition: 0.5s;
}
.container .card:hover .content {
  /* 鼠标移入，上移+显示 */
  transform: translateY(0);
  opacity: 1;
}
.container .card .content h2 {
  position: absolute;
  top: -80px;
  right: 25px;
  font-size: 128px;
  color: rgba(255, 255, 255, 0.05);
}
.container .card .content h3 {
  font-size: 28px;
  color: #fff;
}
.container .card .content p {
  font-size: 16px;
  color: #fff;
  font-weight: 300;
  margin: 10px 0 15px 0;
}
.container .card .content a {
  position: relative;
  display: inline-block;
  padding: 8px 20px;
  margin-top: 15px;
  background-color: #fff;
  color: #000;
  text-decoration: none;
  border-radius: 20px;
  font-weight: 500;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.container .card .begin-content {
  position: absolute;
  padding: 20px;
  text-align: center;
  /* 默认下移+隐藏 */
  transform: translateY(0);
  opacity: 1;
  transition: 0.5s;
  color: #fff;
  font-size: 200px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.container .card:hover .begin-content {
  /* 鼠标移入，上移+显示 */
  transform: translateY(-200px);
  opacity: 0;
}
.container .card .begin-content h2 {
  position: absolute;
  top: -120px;
  right: 25px;
  font-size: 120px;
  color: rgba(255, 255, 255, 0.05);
}

.bg-image {
  z-index: 0;
  width: 20%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -60%);
  opacity: 0.6;

  @media (max-width: 767px) {
    display: none;
  }
}

.gradient-text {
  background: linear-gradient(to bottom, rgb(113, 146, 255), white);
  -webkit-background-clip: text;
  color: transparent;
}

.gradient-title {
  background: linear-gradient(to bottom, rgb(144, 124, 255), white);
  -webkit-background-clip: text;
  color: transparent;
}
</style>
