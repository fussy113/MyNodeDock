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

* 起動方法

```
git clone -b NuxtWithStoryBook https://github.com/fussy113/MyNodeDock.git

cd MyNodeDock

cp .env.example .env

./initialize.sh
```

* 終了方法

```
docker-compose down

# 2回目以降は下記コマンドで立ち上がります。
docker-compose up -d

```

* よく使うコマンド

```
# 新しいパッケージインストール時
docker-compose run --rm app yarn add hogehoge

# 何か様子がおかしい
docker-compose down -v
./initialize.sh
```

## 確認方法

* Nuxt
  * http://localhost:3000
_
* StoryBook
  * http://localhost:9001