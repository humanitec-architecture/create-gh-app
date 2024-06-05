IMG_TAG ?= latest
IMG ?= ghcr.io/humanitec-architecture/create-gh-app:$(IMG_TAG)
PLATFORM ?= linux/amd64,linux/arm64

# Build the create-gh-app image
build:
	docker buildx build --platform $(PLATFORM) -t $(IMG) .
	# Ideally we could remove the next step, but docker on GHA doesn't support
	# loading multi-platform builds yet
	docker buildx build -t $(IMG) --load .

# Test the create-gh-app image
test:
	docker run --rm -e STUB_FILE=1 -v $(PWD):/pwd $(IMG)

# Push the create-gh-app image
push:
	docker buildx build --platform $(PLATFORM) -t $(IMG) --push .
