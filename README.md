<!---
 Copyright (c) 2018 cc
 
 This software is released under the MIT License.
 https://opensource.org/licenses/MIT
-->

ehco-server
---

这是一个基于 `kqueue` 的简单的非阻塞I/O回射服务器, 支持IPv4/IPv6, 作为自己网络编程阶段学习的小结。

build
---

进入 `build` 执行外部构建:

```shell
cd build && cmake ..
```
生成服务器程序:
```shell
make server
```
usage
---
`hostname` 是可选的, `port`为监听的端口：
```shell
server [ <hostname> ] <port>
```