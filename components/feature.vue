<template>
  <div id="section2">
    <div class="rom-content">
      <div class="rom-txt">功能介紹</div>
      <div class="rom-img">
        <img :src="image1" alt="" class="pic1" />
        <img :src="image4" alt="" class="pic2" />
        <img :src="image5" alt="" class="pic3" />
        <img :src="image3" alt="" class="pic4" />
        <img :src="image2" alt="" class="pic5" />
      </div>
      <div class="info-pic2">
        <img :src="image2" alt="" class="info-pic2-img" />
        <div class="info-pic2-text">
          <div class="info-pic2-text__title">使用GPT-4模型</div>
          <div class="info-pic2-text__content">
            <div>更快速、更聰明的完成你的問題</div>
            <div>精確地處理從簡單到複雜的各種問題</div>
            <div>體驗先進技術帶來的無窮可能性</div>
          </div>
        </div>
      </div>
      <div class="info-pic34">
        <div class="info-pic34-container">
          <img :src="image3" alt="" class="info-pic34-img" />
          <div class="info-pic34-text">
            <div class="info-pic34-text__title">照片文字提取工具</div>
            <div class="info-pic34-text__content">
              <div>只需將您的照片上傳 我們將利用</div>
              <div>文字辨識的技術將圖片中的文字</div>
              <div>準確的提取出來</div>
            </div>
          </div>
        </div>
        <div class="info-pic34-container">
          <img :src="image4" alt="" class="info-pic34-img" />
          <div class="info-pic34-text">
            <div class="info-pic34-text__title">省去大量時間</div>
            <div class="info-pic34-text__content">
              <div>辨識出來的文字會直接提取到輸入框</div>
              <div>你只需按下送出鍵就可以與AI對話</div>
              <div>省去大量打字時間 不再手動輸入</div>
            </div>
          </div>
        </div>
      </div>
      <div class="info-pic15">
        <div class="info-pic15-container">
          <img :src="image1" alt="" class="info-pic15-img" />
          <div class="info-pic15-text">
            <div class="info-pic15-text__title">AI繪圖功能</div>
            <div class="info-pic15-text__content">
              <div>使用 OpenAI DALL·E 模型</div>
              <div>您只需選擇圖片像素及輸入關鍵字</div>
              <div>就可以獲得您希望得到的照片</div>
            </div>
          </div>
        </div>
        <div class="info-pic15-container">
          <img :src="image5" alt="" class="info-pic15-img" />
          <div class="info-pic15-text">
            <div class="info-pic15-text__title">AI繪圖分享</div>
            <div class="info-pic15-text__content">
              <div>在「分享區」發布您的AI繪製作品</div>
              <div>與愛好者共賞、交流心得透過彼此</div>
              <div>的交流一同進步！</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import image1 from "assets/images/介紹功能1.png";
import image2 from "assets/images/介紹功能2.png";
import image3 from "assets/images/介紹功能3.png";
import image4 from "assets/images/介紹功能4.png";
import image5 from "assets/images/介紹功能5.png";

onMounted(() => {
  gsap.registerPlugin(ScrollTrigger);

  ScrollTrigger.create({
    trigger: "#section2",
    start: "top top",
    end: "+=3000",
    pin: true,
    scrub: true,
    animation: gsap
      .timeline()
      .fromTo(
        ".rom-txt",
        { opacity: 1, marginTop: 0 },
        { opacity: 0, marginTop: "-2em" }
      )
      .fromTo(".pic5", { width: "18.75em" }, { width: "16.75em" })
      .fromTo(".pic1", { left: "55.725em" }, { left: "26.1em" }, "<")
      .fromTo(".pic2", { right: "55.725em" }, { right: "26.1em" }, "<")
      .fromTo(".pic3", { left: "55.725em" }, { left: "39.8em" }, "<")
      .fromTo(".pic4", { right: "55.725em" }, { right: "39.8em" }, "<")
      .fromTo(
        [".pic1", ".pic2", ".pic3", ".pic4", ".pic5"],
        { opacity: 1 },
        { opacity: 0 }
      )
      .fromTo(".info-pic2", { opacity: 0 }, { opacity: 1 })
      .to(".info-pic2", { opacity: 0 })
      .fromTo(".info-pic34", { left: "-100%" }, { left: "50%" })
      .addPause("+=0.5")
      .to(".info-pic34", {
        transform: "translateY(-50%)",
        opacity: 0,
      })
      .fromTo(".info-pic15", { top: "150%" }, { top: "50%" }, "-=0.5")
      .addPause("+=0.5")
      .to(".info-pic15", {
        transform: "translateX(-50%) translateY(-100%)",
        opacity: 0,
      }),
  });
});
</script>

<style lang="scss" scoped>
#section2 {
  font-family: "cwTeXYen", sans-serif;
  font-size: 0.78125vw;
  position: relative;
  width: 100%;
  height: 100vh;
  // background-color: black;
  display: flex;
  justify-content: center;
  align-items: center;
}

.rom-content {
  width: 100%;
  height: 100%;
  position: relative;
  overflow: hidden;
}

.rom-txt {
  font-family: "cwTeXYen", sans-serif;
  font-weight: 600;
  width: 100%;
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  left: 0;
  font-size: 20em;
  text-align: center;
  z-index: -1;

  /* Gradient background */
  background: linear-gradient(to bottom, #8b8b8b, #ffffff);

  /* Apply the background only to the text */
  -webkit-background-clip: text;
  background-clip: text;

  /* Make the text color transparent so the background shows */
  -webkit-text-fill-color: transparent;
  color: transparent;
}

.rom-img {
  position: absolute;
  width: 126.3em;
  height: 100%;
}
.pic1,
.pic2 {
  width: 13.066666666em;
  position: absolute;
  bottom: 3.17em;
}

.pic3,
.pic4 {
  width: 14.866666666em;
  position: absolute;
  bottom: 1.06em;
}

.pic5 {
  width: 18.75em;
  top: 50%;
  transform: translateY(-50%);
  left: 55.125em;
  position: absolute;
}

.pic1,
.pic3 {
  left: 55.125em;
  z-index: -1;
  top: 50%;
  transform: translateY(-50%);
}

.pic2,
.pic4 {
  right: 55.125em;
  z-index: -1;
  top: 50%;
  transform: translateY(-50%);
}

.info-pic2 {
  width: 100%;
  position: absolute;
  opacity: 0;
  left: 50%;
  top: 50%; // 修改這裡
  transform: translate(-50%, -50%); // 添加這行
  display: flex;
  justify-content: center;
  align-items: center;
  &-container {
    display: flex;
    justify-content: center;
    align-items: center;
    @media (max-width: 767px) {
      margin: 25px 0;
    }
  }
  &-img {
    width: 25em;
    @media (max-width: 767px) {
      width: 40em;
    }
  }
  &-text {
    margin-left: 3em;
    color: white;
    &__title {
      font-size: 3em;
      font-weight: 700;
      @media (max-width: 767px) {
        font-size: 10em;
      }
    }
    &__content {
      font-size: 2em;
      @media (max-width: 767px) {
        font-size: 5em;
      }
    }
  }
}

.info-pic34 {
  width: 100%;
  position: absolute;
  opacity: 1;
  left: -100%;
  top: 50%; // 修改這裡
  transform: translate(-50%, -50%); // 添加這行
  display: flex;
  justify-content: center;
  align-items: center;
  @media (max-width: 767px) {
    flex-direction: column;
  }
  &-container {
    display: flex;
    justify-content: center;
    align-items: center;
    @media (max-width: 767px) {
      margin: 25px 0;
    }
  }
  &-img {
    width: 25em;
    @media (max-width: 767px) {
      width: 40em;
    }
  }
  &-text {
    margin-left: 3em;
    color: white;
    &__title {
      font-size: 3em;
      font-weight: 700;
      @media (max-width: 767px) {
        font-size: 10em;
      }
    }
    &__content {
      font-size: 2em;
      @media (max-width: 767px) {
        font-size: 5em;
      }
    }
  }
}

.info-pic15 {
  width: 100%;
  position: absolute;
  opacity: 1;
  left: 50%; // 將元素水平置中
  top: 150%; // 初始渲染在視窗底部外面
  transform: translate(-50%, -50%);
  display: flex;
  justify-content: center;
  align-items: center;
  @media (max-width: 767px) {
    flex-direction: column;
  }
  &-container {
    display: flex;
    justify-content: center;
    align-items: center;
    @media (max-width: 767px) {
      margin: 25px 0;
    }
  }
  &-img {
    width: 25em;
    @media (max-width: 767px) {
      width: 40em;
    }
  }
  &-text {
    margin-left: 3em;
    color: white;
    &__title {
      font-size: 3em;
      font-weight: 700;
      @media (max-width: 767px) {
        font-size: 10em;
      }
    }
    &__content {
      font-size: 2em;
      @media (max-width: 767px) {
        font-size: 5em;
      }
    }
  }
}
</style>
