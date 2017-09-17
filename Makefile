NAME = xennis/openjdk

build:
	docker build \
		-t $(NAME):8u131-jdk \
		-t $(NAME):8-jdk \
		-t $(NAME):latest \
		.
