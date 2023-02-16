.PHONY: all build clean coverage test

TARGET := LeetCodeProblems
TEST_TARGET := $(TARGET)PackageTests

all: build test

clean:
	rm -rf .build .swiftpm

build:
	swift build

test:
	swift test --enable-code-coverage
#	xcodebuild test -scheme LeetCodeProblems -sdk macosx -destination "platform=macOS"

coverage: $(eval SHELL:=/bin/bash)
	xcrun llvm-cov export -format="lcov" .build/debug/$(TEST_TARGET).xctest/Contents/MacOS/$(TEST_TARGET) -instr-profile .build/debug/codecov/default.profdata > .build/info.lcov
	cd .build && bash <(curl -s https://codecov.io/bash)