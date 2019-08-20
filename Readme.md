# nuxt.js with storybook　~ typescriptを添えて

## 構成

* Nuxt 2.8.x
  * axios
  * bluma
  * express
  * jest
  * ESLint
  * typescript
  * scss
* storybook 5.0.x
  * アドオンまだ

## 使い方

* Docker、docker-composeつかいます

```
git clone -b NuxtWithStoryBook https://github.com/fussy113/MyNodeDock.git

cd MyNodeDock

cp .env.example .env

./initialize.sh
```

## 確認方法

* Nuxt
  * http://localhost:3000
_
* StoryBook
  * http://localhost:9001