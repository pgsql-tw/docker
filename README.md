[![Docker Automated buil](https://img.shields.io/docker/automated/pgsqltw/postgres-big.svg)](https://hub.docker.com/r/pgsqltw/postgres-big/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pgsqltw/postgres-big.svg)](https://hub.docker.com/r/pgsqltw/postgres-big/)
[![PostgreSQL正體中文使用手冊](https://img.shields.io/badge/%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%E4%BD%BF%E7%94%A8%E6%89%8B%E5%86%8A-PostgreSQL-blue.svg)](https://www.gitbook.com/book/pgsql-tw/documents/details)
[![PostgreSQL台灣使用者社群](https://img.shields.io/badge/台灣使用者社群-PostgreSQL-blue.svg)](https://pgsql-tw.github.io)

# PostgreSQL 大補帖
基於 [PostgreSQL Official Docker Repository](https://hub.docker.com/_/postgres/)，增加安裝各式常用延伸功能，方便入門者進行功能試用。

## Docker Installation
本專案需要您準備好 Docker 環境，並瞭解基本操作方式。\
Ubuntu 的 Docker 安裝方式，請參閱 Docker-install 目錄內容。

## Docker Hub
* https://hub.docker.com/r/pgsqltw/postgres-big/

## 啓動
```
sudo docker run --name postgres-big -e POSTGRES_PASSWORD=changeme -d pgsqltw/postgres-big
```

## 使用 psql 連線
```
sudo docker run -it --rm --link postgres-big:postgres postgres psql -h postgres -U postgres
```
> 建議也可以在 host 主機中安裝 PostgreSQL Client 比較方便

## 建議與協作
請於 GitHub Issues & Pull requests 給予指教。
