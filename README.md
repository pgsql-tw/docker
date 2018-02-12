## PostgreSQL 大補帖
[![Docker Automated buil](https://img.shields.io/docker/automated/pgsqltw/postgres-big.svg)](https://hub.docker.com/r/pgsqltw/postgres-big/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pgsqltw/postgres-big.svg)](https://hub.docker.com/r/pgsqltw/postgres-big/)
[![Gitter](https://img.shields.io/gitter/room/pgsql-tw/Lobby.js.svg)](https://gitter.im/pgsql-tw/Lobby)

基於 [PostgreSQL Official Docker Repository](https://hub.docker.com/_/postgres/)，增加安裝各式常用延伸功能，方便入門者進行功能試用。

[![Docker Build Statu](https://img.shields.io/docker/build/pgsqltw/postgres-big.svg)](https://hub.docker.com/r/pgsqltw/postgres-big/builds/)
* 10 (latest)
   - PostgreSQL 10

   - PL/Python 2 (plpythonu)
   - [PostGIS 2.4](http://postgis.net/)
* 9.6
   * PostgreSQL 9.6
   * PL/Python 2 (plpythonu)
   * [PostGIS 2.3](http://postgis.net/)
   * [Multicorn 1.3.3 (Python 3)](http://multicorn.org)
   * [Madlib 1.1.2](http://madlib.apache.org/)

### Docker Installation
本專案需要您準備好 Docker 環境，並瞭解基本操作方式。
- [docker-install](https://github.com/docker/docker-install)

### Docker Hub
* https://hub.docker.com/r/pgsqltw/postgres-big/

```
# docker pull pgsqltw/postgres-big
```

### 啓動
#### Using Docker
* 預設連線: postgres://postgres:changeme/postgres

```
$ sudo docker run --name postgres-big -e POSTGRES_PASSWORD=changeme -d pgsqltw/postgres-big
```

#### Using docker-compose (方便設定多個 docker 及其配置參數)
1. 下載 GitHub 裡對應版本目錄中的 docker-compose.yml
> 範例檔會在 host 建立一個 5433 port 對應到 postgres-big 裡的 PostgreSQL:5432。
2. 安裝好 docker-compose
3. 切換到 docker-compose.yml 的目錄中
4. 預設無密碼。

```
$ sudo docker-compose up -d
```

### 停止
#### Using Docker

```
$ sudo docker stop postgres-big
```

#### Using docker-compose
* 切換到原 docker-compose.yml 同目錄

```
$ sudo docker-compose stop
```

### 使用 psql 連線

```
$ sudo docker exec -it postgres-big psql -U postgres postgres
```

> 建議也可以在 host 主機中安裝 PostgreSQL Client 比較方便

### 建議與協作
請於 [GitHub Issues](https://github.com/pgsql-tw/docker/issues) 給予指教，也可以來[聊天室](https://gitter.im/pgsql-tw/Lobby)跟我們聊聊。

---

[![GitHub stars](https://img.shields.io/github/stars/pgsql-tw/docker.svg?style=social&label=Star)](https://github.com/pgsql-tw/docker)
[![PostgreSQL小島故事](https://img.shields.io/badge/小島故事-PostgreSQL-blue.svg)](https://island.postgresql.tw/)
[![PostgreSQL正體中文使用手冊](https://img.shields.io/badge/%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%E4%BD%BF%E7%94%A8%E6%89%8B%E5%86%8A-PostgreSQL-blue.svg)](https://docs.postgresql.tw)
[![PostgreSQL台灣使用者社群](https://img.shields.io/badge/台灣使用者社群-PostgreSQL-blue.svg)](https://postgresql.tw)
