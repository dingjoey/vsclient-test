### vsclient 测试工程 setup ###

- 准备构建vsclient.la的依赖

    假设所有依赖安装到$HOME/usr/local下

   - jason 依赖

    ```
        cd /home/qiaoyi.dingqy/softs
        wget http://curl.haxx.se/download/curl-7.31.0.tar.gz
        tar -zxvf curl-7.31.0.tar.gz
        cd curl-7.31.0
        ./configure --prefix=/home/qiaoyi.dingqy/usr/local/curl-7.31.0
    
    ```
   - curl 依赖

    ```
        cd /home/qiaoyi.dingqy/softs
        wget http://www.digip.org/jansson/releases/jansson-2.4.tar.gz
        tar -zxvf jansson-2.4.tar.gz
        cd jansson-2.4
        ./configure --prefix=/home/qiaoyi.dingqy/usr/local/jasson-2.4
    
    ```

- 构建vsclient.la的依赖
    - 由于没有jason、curl依赖没有安装在标准路径，所有要设置环境变量

    ```
        export CFLAGS="-I/home/qiaoyi.dingqy/usr/local/curl-7.31.0/include/ -I/home/qiaoyi.dingqy/usr/local/jasson-2.4/include"
        export LDFLAGS="-L/home/qiaoyi.dingqy/usr/local/curl-7.31.0/lib/ -L/home/qiaoyi.dingqy/usr/local/jasson-2.4/lib"

    ```
    
    - 构建vsclient.la
    
        假设安装到$HOME/usr/local下

    ```
       ./configure --prefix=/home/qiaoyi.dingqy/usr/local/vsclient
       make install
    ```
    
    - 构建完毕后
        > 编译vipserver-c-client 安装到/home/qiaoyi.dingqy/usr/local/vsclient/中
        > 
        > /home/qiaoyi.dingqy/usr/local/vsclient/include中有头文件
        > 
        > /home/qiaoyi.dingqy/usr/local/vsclient/lib有libtool库.la文件

    
- 准备测试框架gtest依赖
    - 下载gtest 1.6.0 并且build

    ```
        wget https://googletest.googlecode.com/files/gtest-1.6.0.zip
        tar -zxvf gtest-1.6.0
        make 
    ```
    - 安装gtest
    
    ```
        cp -r gtest-1.6.0 /home/qiaoyi.dingqy/usr/local/
    ```
    

- 编写测试代码，并且修改Makefile

    ......

- 执行测试运行命令

    ```
        make check
    ```

