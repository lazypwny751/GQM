PREFIX := .
BUILDD := $(PREFIX)/build
BIN := $(BUILDD)/main
GO := go

all: build run

build:
	mkdir -vp $(BUILDD)
	$(GO) build -o $(BIN) "src/main.go"

clean:
	rm -vr $(BUILDD)

run:
	$(BIN)

.PHONY: all build run
