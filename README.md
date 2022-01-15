# xmas-sw-wars
Santa and AT-AT Walker battle


### Build

docker build xmas-wars .


### Export image to import to QNAP container

docker image save xmas-wars > war.tar


### Image custom image to container station

QNAP -> ContainerStation -> Import -> +Import -> Browse Local -> import war.tar
