NAME = xennis/openjdk

VERSION_MAJOR = 8
VERSION_MINOR = 151
VERSION_PATCH = 12-r0

build:
	docker build \
	  --build-arg VERSION_ALPINE=$(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH) \
	  --build-arg VERSION_MAJOR=$(VERSION_MAJOR) \
		-t $(NAME):$(VERSION_MAJOR)u$(VERSION_MINOR)-jdk \
		-t $(NAME):$(VERSION_MAJOR)-jdk \
		-t $(NAME):latest \
		.
