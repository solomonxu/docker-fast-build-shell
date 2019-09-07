# docker-fast-build-shell
How to build shell's source code into a docker image rapidly.


## 1. Clone repository to local host.

`git clone https://github.com/solomonxu/docker-fast-build-shell.git`

## 2. Firstly build.
Build docker images firstly, and output time stamps before and after build. This will build pre-image and final image, and cost about 2~10 minutes.

`date; make; date;`

## 3. Secondly build. 
Build docker image secondly, and output time stamps before and after build. This will build final image only, and just cost about 2 seconds.

`date; make; date;`

## 4. Delete the final docker image.
Delete the final docker image, and leave pre-image alone.

`make cleanup-diag`

## 5. Thirdly build.
Build docker image thirdly, and output time stamps before and after build. This will build final image only, and just cost less than 2 seconds. 

`date "+%Y-%m-%d %H:%M:%S.%N"; make; date "+%Y-%m-%d %H:%M:%S.%N";`

## 6. Push the final image to docker repository.

`make push`

## 7. Cleanup all images locally.

`make cleanup`

You can find a Chinese article [How to build docker image of shell rapidly](https://github.com/solomonxu/docker-fast-build-shell/blob/master/docs/How%20to%20build%20docker%20image%20of%20shell%20rapidly_zh.pdf) and click to download.
