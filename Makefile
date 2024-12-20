# 定义变量
IMAGE_NAME=tooljet-ce
TAG=guoxin_v0.3_based_CE-LTS-2.50.9
DOCKERFILE=./docker/production.Dockerfile

# 默认目标
.PHONY: all
all: build push

# 构建 Docker 镜像
.PHONY: build
build:
	docker build -f $(DOCKERFILE) -t $(IMAGE_NAME):$(TAG) .
	docker tag $(IMAGE_NAME):$(TAG) eharbor.crhc.cn/sjzt/$(IMAGE_NAME):$(TAG)

# 推送 Docker 镜像到仓库
.PHONY: push
push:
	docker push eharbor.crhc.cn/sjzt/$(IMAGE_NAME):$(TAG)

# 清理 Docker 镜像
.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME):$(TAG)
