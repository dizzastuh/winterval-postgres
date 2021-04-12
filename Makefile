export BIN_DIR=./bin
export SERVER_DIR=./cmd/server

clean_bin:
	rm -rf $(BIN_DIR)/

create_bin_dir:
	@mkdir -p $(BIN_DIR)

build: create_bin_dir
	go build -o $(BIN_DIR)/application $(SERVER_DIR)/app.go

rerun:
ifeq ("$(wildcard $(BIN_DIR)/application)","")
	@echo "Application binary not built. Building."
	make build
else
	@echo "Application binary already built."
endif
	@echo "Running."
	$(BIN_DIR)/application

run: clean_bin
	make rerun

docker:
	@(cd scripts && ./run_docker.sh)
