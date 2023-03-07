FROM python:3.10-slim

# ソースのコピー
COPY . /pyspace
# カレントディレクトリの指定
WORKDIR /pyspace

# ライブラリのインストール
RUN apt-get update && apt-get install -y git

# Python関係
RUN pip install --upgrade pip
RUN pip install pipenv