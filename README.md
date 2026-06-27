# hello-haskell-lambda

Haskell で AWS Lambda を動かすサンプル。

## 構成

- ランタイム: [`hal`](https://hackage.haskell.org/package/hal) (Haskell AWS Lambda)
- ビルド: Cabal
- デプロイ: `bootstrap` バイナリを `lambda.zip` に固めて Lambda にアップロード

## ビルド

```bash
cabal build
```

## デプロイ用パッケージ作成

```bash
cabal build
cp $(cabal exec -- which hello-haskell-lambda) bootstrap
zip lambda.zip bootstrap
```

## Lambda の設定

- ランタイム: `provided.al2023`
- ハンドラ: `bootstrap`
