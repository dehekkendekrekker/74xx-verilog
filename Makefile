%: ./src/%.v ./tests/%_TB.v
	@mkdir -p ./build/
	@iverilog -g2012 ./src/$@.v ./lib/macros.v ./tests/$@_TB.v -o ./build/$@.vpp
	@./build/$@.vpp

all: $(wildcard ./src/*.v)
	@for f in $(notdir $(basename $^)); do make --no-print-directory $$f; done
	



clean:
	@rm -rf ./build/