# 使用Alpine Linux作为基础镜像
FROM amd64/alpine

# 更新包管理器并安装QEMU-user-static
RUN apk update && apk add qemu-x86_64 qemu-system-x86_64

# 设置QEMU架构解释器
# RUN [ -e /proc/sys/fs/binfmt_misc/qemu-x86_64 ] || echo ':qemu-x86_64:M::\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\x3e::/usr/bin/qemu-x86_64-static:' > /proc/sys/fs/binfmt_misc/register

# 安装一些常见工具，例如bash和wget
# RUN apk add bash wget

# 在容器中创建一个工作目录
WORKDIR /app

# 启动一个Shell，以便你可以在容器中执行命令
CMD ["/bin/sh"]
