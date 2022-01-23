# xmas-sw-wars
Santa and AT-AT Walker battle




### Example War


https://user-images.githubusercontent.com/20580783/149639668-4fa412f0-6f99-4e09-a96c-42da437ddd8f.mp4



### Build

docker build xmas-wars .


### Export image to import to QNAP container

docker image save xmas-wars > war.tar

https://github.com/rz93594/xmas-sw-wars/blob/main/imgs/console.png?raw=true


### Image custom image to container station

QNAP -> ContainerStation -> Import -> +Import -> Browse Local -> import war.tar

### Script echos out status in color to container console

### ToDo

- Move IP address to variable setting
- Move execution script to dyanmic download
