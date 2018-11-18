USER=lmestar
CONTAINER_NAME=verilog_tb_gen
IMAGE=$(USER)/$(CONTAINER_NAME):0.1

all: up

build:
	docker build -t $(IMAGE) .

gen:
	docker run -it --rm \
	-v $(PWD):/src \
	--name $(CONTAINER_NAME) $(IMAGE) \
	bash -c "python3 vTbgenerator.py *.v"