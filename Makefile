.PHONY: coverage

coverage:
	flutter test --coverage
	genhtml -o coverage coverage/lcov.info
	open coverage/index.html