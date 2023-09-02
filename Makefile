TARGET_DIRECTORY=$(HOME)/.local/lib/bash

install:
	mkdir --parents $(TARGET_DIRECTORY)
	find . -maxdepth 1 -type f -not -name "*_test.sh" -name "*.sh" -exec cp -t $(TARGET_DIRECTORY) {} +
