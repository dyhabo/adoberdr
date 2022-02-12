# adoberdr
Docker container for Adobe Reader 9.5.5

The run command below details the launch command for the container. Ensure xsrv is running on display 0 before launch.
```docker run -e \
DISPLAY=your.wsl.ip.address:0 \
-v C:\Users\dyhabo\PDFshare\:\docs adoberdr
```
