# yocto_icarus
1. Create docker from Dockerfile
2. Run docker with : run --rm -it -v /var/run/docker.sock:/var/run/docker.sock focal:buildforyoctor
3. inside focal:buildforyoctor - cd imx-docker/
4. Create docker for yocto build run ./docker-build.sh Dockerfile-Ubuntu-20.04
