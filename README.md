# adoberdr
Docker container for Adobe Reader 9.5.5 running on Ubuntu.

Pull image:
```
docker pull docker.pkg.github.com/dyhabo/adoberdr/adobe-reader-v9.5.5:latest
```

The run command below details the launch command for the container. Ensure xsrv is running on display 0 before launch.
```
docker run -e \
  DISPLAY=your.wsl.ip.address:0 \
  -v C:\Users\dyhabo\PDFshare\:\docs \
  adoberdr
```
