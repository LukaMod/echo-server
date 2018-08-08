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

`cd build` to perform out-of-build:

```shell
cd build && cmake ..
```
generate server:

```shell
make server
```

usage
---

```shell
server <port>
```