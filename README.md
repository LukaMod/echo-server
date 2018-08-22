<!---
 Copyright (c) 2018 cc
 
 This software is released under the MIT License.
 https://opensource.org/licenses/MIT
-->

ehco-server
---

This is a simple `kqueue` based non-blocking I/O TCP echo server

build
---

out-of-place build:

```shell
$ mkdir build && cd build && cmake ..
```
generate server:

```shell
$ make server
```

usage
---

server:
```shell
$ server [ <server or IPaddress> ]<port>
```

client:
```shell
$ python3 client <server or IPaddress> <port>
```
