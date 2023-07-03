.PHONY = build r b clean

image_name = r-base
container_name = r_container

build:
	docker build -t $(image_name) .

r:
	docker run -it --rm --name $(container_name) -v $PWD:/work/ -p 8888:8888 $(image_name)

b:
	docker run -it --rm --name $(container_name) -v $PWD:/work/ -p 8888:8888 $(image_name) /bin/bash

clean:
	docker image rm r-base
