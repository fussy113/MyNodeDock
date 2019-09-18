# MyNodeDock ~ Nuxt ~

## 構成

* Nuxt 2.9.x
* Vuetify
* Sass-loader
* Axios
* TypeScript
* ESLint
* Jest

## 必要なもの

* Docker
* docker-compose

## 使用方法

1. ターミナルで実行

```
git clone -b NuxtDock https://github.com/fussy113/MyNodeDock.git

cd MyNodeDock

# envファイルは適宜変更してください
cp .env.example .env

.initialize.sh
```

2. http://localhost:3000 でアクセスできます

* 良く使うコマンド

```
docker-compose down

# 2回目以降は下記コマンドで立ち上がります。
docker-compose up -d

# 新しいパッケージインストール時
docker-compose run --rm app yarn add hogehoge

# 何か様子がおかしい...そう思ったら
docker-compose down -v
./initialize.sh
```
