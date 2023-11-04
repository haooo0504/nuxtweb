<template>
  <div class="bg">
    <div class="navbar">
      <div class="flex items-center">
        <img
          class="md:block md:h-[80px] hidden md:ml-[10%]"
          :src="noBgNameLogo"
          alt=""
        />
        <img class="md:hidden h-[60px] ml-3" :src="logoOne" alt="" />
      </div>
      <div class="flex md:mr-[50px]">
        <button class="md:mr-[30px] mr-[10px]" @click="scrollTo('#section1')">
          首頁
        </button>
        <button class="md:mr-[30px] mr-[10px]" @click="scrollTo('#section2')">
          功能介紹
        </button>
        <button class="md:mr-[30px] mr-[10px]" @click="scrollTo('#section3')">
          如何使用
        </button>
        <button class="md:mr-[30px] mr-[10px]" @click="scrollTo('#section4')">
          關於我們
        </button>
      </div>
    </div>

    <detail />

    <feature />

    <div id="section3">
      <div
        class="flex justify-center items-center w-[100%] absolute top-[50%] left-[50%] transform -translate-x-1/2 -translate-y-1/2"
      >
        <img class="md:w-[40%] w-[100%] opacity-5" :src="noBgLogo" alt="" />
      </div>
      <div
        class="w-[100%] md:h-[250px] h-[400px] relative flex justify-start items-center"
      >
        <div class="flex justify-start md:ml-[15%]">
          <div class="relative w-[400px] h-[100px]">
            <water
              :title="'選擇AI版本'"
              :contentOne="'開啟App，您將看到兩個選項: GPT-3 和 GPT-4。根據您的需求和可用的聊天次數，選擇適合的版本。'"
              :contentWarning="'提醒：GPT-4 使用會扣除5次聊天次數。'"
            />
          </div>
        </div>
      </div>
      <div
        class="w-[100%] md:h-[250px] h-[400px] relative flex justify-end items-center"
      >
        <div class="flex justify-end md:mr-[20%]">
          <div class="relative w-[400px] h-[100px]">
            <water
              :title="'獲取聊天次數'"
              :contentOne="'每日獎勵：每天登入App，即可領取每日獎勵，獲得十次聊天次數。'"
              :contentTwo="'觀看廣告：每天可以觀看五個廣告，每觀看一次，您可以獲得五次聊天次數。'"
            />
          </div>
        </div>
      </div>
      <div
        class="w-[100%] md:h-[250px] h-[400px] relative flex justify-start items-center"
      >
        <div class="flex justify-start md:ml-[25%]">
          <div class="relative w-[400px] h-[100px]">
            <water
              :title="'使用繪圖功能'"
              :contentOne="'選擇繪圖功能，這會扣除您的五次聊天次數。上傳或拍攝您想要轉換的圖片，系統將自動識別圖片內容並為您呈現結果。'"
            />
          </div>
        </div>
      </div>
    </div>
    <div id="section4">
      <div class="absolute opacity-5 flex justify-center w-[100%]">
        <img class="w-[50%]" :src="chatAiBg" alt="" />
      </div>
      <div
        class="w-[100%] flex md:flex-row flex-col p-[12px] sm:justify-center md:mt-0 mt-[50px]"
      >
        <div class="md:w-[50%] w-[100%] flex items-center justify-center">
          <personalInfo />
        </div>
        <div class="text-white md:w-[50%] w-[100%] md:mt-0 mt-4 md:ml-0 ml-4">
          <div class="font-bold text-[50px]">About</div>
          <div class="border-t border-white w-[50%] h-0 mb-5"></div>
          <div
            class="font-medium text-[35px] transition duration-300 transform hover:bg-[rgba(255,255,255,0.1)] hover:backdrop-blur-lg hover:shadow-lg hover:-translate-y-1 rounded-[15px] flex items-center w-[180px]"
          >
            <div class="flex flex-col m-2">
              <div class="flex items-center">
                <p class="text-gray-400 text-[22px]">姓名</p>
              </div>
              <div>陳峻浩</div>
            </div>
          </div>
          <div
            class="font-medium text-[25px] transition duration-300 transform hover:bg-[rgba(255,255,255,0.1)] hover:backdrop-blur-lg hover:shadow-lg hover:-translate-y-1 rounded-[15px] flex items-center w-[180px] mt-4"
          >
            <div class="flex flex-col m-2">
              <div class="flex items-center">
                <p class="text-gray-400 text-[22px]">職業</p>
              </div>
              <div>前端工程師</div>
            </div>
          </div>
          <div
            class="font-medium text-[25px] transition duration-300 transform hover:bg-[rgba(255,255,255,0.1)] hover:backdrop-blur-lg hover:shadow-lg hover:-translate-y-1 rounded-[15px] flex items-center w-[300px] mt-4"
          >
            <div class="flex flex-col m-2 w-[100%]">
              <div class="flex items-center">
                <p class="text-gray-400 text-[22px]">技能</p>
              </div>
              <div class="flex w-[100%] flex-wrap">
                <div title="Vue.js">
                  <Icon name="logos:vue" class="mr-2" />
                </div>
                <div title="Vite.js">
                  <Icon name="logos:vitejs" class="mr-2" />
                </div>
                <div title="typescript">
                  <Icon name="logos:typescript-icon" class="mr-2" />
                </div>
                <div title="javascript">
                  <Icon name="logos:javascript" class="mr-2" />
                </div>
                <div title="docker">
                  <Icon name="logos:docker-icon" class="mr-2" />
                </div>
                <div title="vitest">
                  <Icon name="logos:vitest" class="mr-2" />
                </div>
                <div title="tailwindcss">
                  <Icon name="logos:tailwindcss-icon" class="mr-2" />
                </div>
                <div title="nginx">
                  <Icon name="logos:nginx" class="mr-2" />
                </div>
                <div title="nuxt">
                  <Icon name="logos:nuxt-icon" class="mr-2" />
                </div>
                <div title="cordova">
                  <Icon name="logos:cordova" class="mr-2" />
                </div>
                <div title="flutter">
                  <Icon name="logos:flutter" class="mr-2" />
                </div>
                <div title="go"><Icon name="logos:go" class="mr-2" /></div>
                <div title="nodejs">
                  <Icon name="logos:nodejs-icon" class="mr-2" />
                </div>
                <div title="xcode">
                  <Icon name="logos:xcode" class="mr-2" />
                </div>
                <div title="firebase">
                  <Icon name="logos:firebase" class="mr-2" />
                </div>
                <div title="nestjs">
                  <Icon name="logos:nestjs" class="mr-2" />
                </div>
              </div>
            </div>
          </div>
          <div
            class="font-medium text-[25px] transition duration-300 transform hover:bg-[rgba(255,255,255,0.1)] hover:backdrop-blur-lg hover:shadow-lg hover:-translate-y-1 rounded-[15px] flex items-center w-[300px] mt-5"
          >
            <div class="flex flex-col m-2">
              <div class="flex items-center">
                <p class="text-gray-400 text-[22px]">聯繫方式</p>
              </div>
              <div>
                <div class="flex items-center mt-2">
                  <Icon name="mdi:instagram" color="rgba(81,121,255, 0.7)" />
                  <p class="ml-4 text-[20px] text-[#abbaff]">jun_hao_05</p>
                </div>
                <div class="flex items-center mt-3">
                  <Icon
                    name="ic:outline-mail-outline"
                    color="rgba(81,121,255, 0.7)"
                  />
                  <p class="ml-4 text-[20px] text-[#abbaff]">
                    cjuhao0504@gmail.com
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div
      class="h-[50px] bg-[#1a1a1a] opacity-60 flex justify-center items-center text-white"
    >
      © 2023 junhaochen。All rights reserved.
    </div>
  </div>
</template>

<script setup lang="ts">
import noBgLogo from "assets/images/noBgLogo.png";
import logoOne from "assets/images/logo-one.png";
import noBgNameLogo from "assets/images/noBgNameLogo.png";
import chatAiBg from "assets/images/ChatAiBg.png";

const scrollTo = (selector: any) => {
  const element = document.querySelector(selector);
  if (element) {
    element.scrollIntoView({ behavior: "smooth" });
  }
};
</script>

<style lang="scss" scoped>
.bg {
  font-family: "cwTeXYen", sans-serif;
  background: linear-gradient(
    135deg,
    #1a1a1a 0%,
    #2e2e2e 25%,
    #3f3f3f 50%,
    #2e2e2e 75%,
    #1a1a1a 100%
  );
}
.section {
  min-height: 100vh;
  padding: 20px;
}

.navbar {
  position: fixed;
  z-index: 99999;
  top: 0;
  left: 0;
  right: 0;
  width: 100%;
  height: 80px;
  background-color: rgba(255, 255, 255, 0); /* 添加半透明效果 */
  backdrop-filter: blur(10px); /* 添加毛玻璃效果 */
  color: white;
  display: flex;
  justify-content: space-between;
}

#section3 {
  min-height: 100vh;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  overflow-x: hidden;
}

.water-container {
  width: 100%;
  height: 250px;
  position: relative;
  &-one {
    width: 100%;
    height: 300px;
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
  }
}

#section4 {
  min-height: 100vh;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  overflow-x: hidden;
}
</style>
