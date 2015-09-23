# サーバー用 Raspbarry Pi に適用する itamae レシピ

サーバー用 Raspberry Pi の自動設定に使う itamae レシピです。

## 準備

Ruby がインストールされている Linux 上で作業します。

### Bundler のインストール

```bash
gem install bundler
```

### gem のインストール

```bash
bundle install --path=vendor/bundle
```

### SSH 接続の設定

```
# ~/.ssh/config に追記（なければ作成）
Host refugeerpi2
  Hostname refugeerpi2.local
  User root
```

## レシピの適用

```bash
rake
```
