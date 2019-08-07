# Robot Framework Hello World

[Robot Framework](https://robotframework.org/)使用demo。

## How To

### Install Robot Framework

```bash
$ pip install robotframework
```

更多其它安装方式请参考[INSTALL.rst](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst)

### Exec Test Cases

#### Hello World

```bash
$ robot ./helloworld.robot
```

#### Automatic Web Test

##### 1. Install dependent library

```bash
$ pip install robotframework-selenium2library
```

##### 2. Install browser driver

以chrome为例

```bash
$ pip install webdrivermanager
$ webdrivermanager chrome --linkpath /usr/local/bin
```

由于墙的原因，上面方法可能无法成功安装，这时可以到国内的镜像站（如[淘宝镜像站](https://npm.taobao.org/mirrors/chromedriver/)）手动下载相应版本的driver，然后解压放到PATH路径下（如MacOS下可以放到/usr/local/bin）。

##### 3. Exec

```bash
$ robot ./web_test_sample.robot
```

### View Test Report

```bash
$ open ./report.html
```
