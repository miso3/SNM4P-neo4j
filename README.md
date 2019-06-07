# 歩行空間ネットワークデータ on neo4j on Docker

## 実行方法

1. 歩行空間ネットワークデータのダウンロード
    * [渋谷データ](https://www.geospatial.jp/ckan/dataset/0401/resource/99548096-1b53-4a47-b861-a7b7eaa64012) をダウンロードする
    * `渋谷地区データ\歩行空間ネットワークデータ（csv形式）` 内の `link.csv` と `node.csv` を `neo4j/import/CSV` 内へコピーする
2. コンテナの立ち上げ
    * `docker-compose up --build` を実行
3. Web インタフェースから動作を確認する
    * http://localhost:7474 にアクセスする
