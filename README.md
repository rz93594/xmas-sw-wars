# xmas-sw-wars
Santa and AT-AT Walker battle




### Example War


<!--- https://user-images.githubusercontent.com/20580783/149639668-4fa412f0-6f99-4e09-a96c-42da437ddd8f.mp4 --->
https://user-images.githubusercontent.com/20580783/150703802-ca9d5882-5e67-4e1e-bf3f-6f6b10318bf2.mp4


### Hardware


Load [WLED](https://kno.wled.ge/) on an [ESP32](https://www.amazon.com/gp/product/B09J94HPZB/) development board that gives you built in WiFi, 5v power and individual LED control.

Individual LED strips based on the [WS2812B](https://www.amazon.com/gp/product/B00ZHB9M6A) chipset were used. 


### Build

Use Docker to continually run a script on a system rather have a dedicated laptop/VM up and running.  In my case I loaded a container on our NAS system and used its extra capacity that was already running.

The following syntax was used to build the container:

```bash
docker build xmas-wars .
```

### Export image to import to QNAP container

```bash
docker image save xmas-wars > war.tar
```

### Console will output in color for live tracking
![](https://github.com/rz93594/xmas-sw-wars/blob/main/imgs/console.png?raw=true)


### Image custom image to container station
```html
QNAP -> ContainerStation -> Import -> +Import -> Browse Local -> import war.tar
```

- Script echos out status in color to container console for tracking
- Script has run for 30 days straight with no power cycles on ESP32 board..one hard power cycle was needed to.

### ToDo

- Move IP address to variable setting
- Move execution script to dyanmic download
