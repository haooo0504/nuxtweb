<template>
  <div
    class="container"
    :class="{ paused: isPaused }"
    @mouseenter="pauseAnimation"
    @mouseleave="resumeAnimation"
  >
    <div class="text-center text-white text-[30px] font-bold mt-[50px]">
      {{ props.title }}
    </div>
    <div class="text-left w-[80%] text-gray-200 md:mt-[30px] text-[20px]">
      {{ props.contentOne }}
    </div>
    <div
      v-if="props.contentTwo"
      class="text-left w-[80%] text-gray-200 md:mt-[20px] text-[20px]"
    >
      {{ props.contentTwo }}
    </div>
    <div
      v-if="props.contentWarning"
      class="text-left w-[80%] text-orange-400 md:mt-[10px] text-[18px]"
    >
      {{ props.contentWarning }}
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";

const props = defineProps({
  title: {
    type: String,
    required: true,
  },
  contentOne: {
    type: String,
    required: true,
  },
  contentTwo: {
    type: String,
  },
  contentWarning: {
    type: String,
  },
});

const isPaused = ref(false);

const pauseAnimation = () => {
  console.log(123);
  isPaused.value = true;
};

const resumeAnimation = () => {
  isPaused.value = false;
};
</script>

<style lang="scss" scoped>
.container {
  font-family: "cwTeXYen", sans-serif;
  display: flex;
  flex-direction: column;
  align-items: center;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 400px;
  height: 400px;
  box-sizing: border-box;
  border-radius: 50%;
  background: transparent;
  box-shadow: inset 10px 20px 30px rgba(0, 0, 0, 0.5),
    10px 10px 20px rgba(0, 0, 0, 0.3), 15px 15px 30px rgba(0, 0, 0, 0.05),
    inset -10px -10px 15px rgba(255, 255, 255, 0.8);
  animation: move 6s linear infinite;
  @media (max-width: 767px) {
    width: 350px;
    height: 350px;
  }
}

.container::after {
  position: absolute;
  content: "";
  width: 40px;
  height: 40px;
  background: rgba(255, 255, 255, 0.5);
  left: 80px;
  top: 80px;
  border-radius: 50%;
  animation: move2 6s linear infinite;
  filter: blur(1px);
}

.container::before {
  position: absolute;
  content: "";
  width: 20px;
  height: 20px;
  background: rgba(255, 255, 255, 0.5);
  left: 130px;
  top: 70px;
  border-radius: 50%;
  animation: move3 6s linear infinite;
  filter: blur(1px);
}

.container.paused,
.container.paused::before,
.container.paused::after {
  animation-play-state: paused;
}

@keyframes move {
  50% {
    border-radius: 40% 60% 60% 40% / 40% 40% 60% 60%;
  }
  75% {
    border-radius: 60% 40% 60% 40% / 60% 60% 40% 40%;
  }
  25% {
    border-radius: 45% 55% 55% 45% / 45% 55% 45% 55%;
  }
}

@keyframes move2 {
  50% {
    left: 75px;
    top: 85px;
  }
  75% {
    left: 78px;
    top: 115px;
  }
  25% {
    left: 72px;
    top: 110px;
  }
}

@keyframes move3 {
  50% {
    left: 120px;
    top: 78px;
  }
  75% {
    left: 125px;
    top: 95px;
  }
  25% {
    left: 115px;
    top: 85px;
  }
}
</style>
