// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ["@nuxt/ui", "nuxt-icon"],
  css: [
    "~/assets/css/tailwind.css",
    // "https://fonts.googleapis.com/earlyaccess/cwtexyen.css",
  ],
  app: {
    head: {
      title: "ChatAI - GPT4人工智慧聊天機器人",
      meta: [
        {
          property: "og:title",
          content: "ChatAI - GPT4人工智慧聊天機器人",
        },
        { property: "og:url", content: "https://chatai.jhaochen.com" },
        {
          property: "og:image",
          content: "https://chatai.jhaochen.com/colorfulLogo.png",
        },
        {
          name: "description",
          content:
            "ChatAI 使用OpenAI的GPT-4模型，提供最先進的人工智慧聊天機器人，快速響應，讓您免費享用最先進的科技",
        },
        {
          property: "og:description",
          content:
            "ChatAI 使用OpenAI的GPT-4模型，提供最先進的人工智慧聊天機器人，快速響應，讓您免費享用最先進的科技",
        },
      ],
      link: [{ rel: "icon", type: "image/png", href: "colorfulLogo.png" }],
    },
  },
});
