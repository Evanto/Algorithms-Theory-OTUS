JAVA_RUNEBLE ?= BasicAlgorithms/Fibonachi BasicAlgorithms/Evklid SortAlgorithms/bubleSort
PYTHON_RUNEBLE ?= BasicAlgorithms/Fibonachi BasicAlgorithms/Evklid BasicAlgorithms/Eratosfen SortAlgorithms/bubleSort
LUA_RUNEBLE ?= BasicAlgorithms/Evklid SortAlgorithms/bubleSort
C_LANG_RUNEBLE ?= BasicAlgorithms/Fibonachi BasicAlgorithms/Evklid BasicAlgorithms/Eratosfen SortAlgorithms/bubleSort
CPP_RUNEBLE ?= BasicAlgorithms/Eratosfen SortAlgorithms/bubleSort
GO_RUNEBLE ?= BasicAlgorithms/Evklid SortAlgorithms/bubleSort


run-java:
	for directory in $(JAVA_RUNEBLE); do \
	$(MAKE) -C $$directory $@ || exit $$?; done

run-python3:
	for directory in $(PYTHON_RUNEBLE); do \
	$(MAKE) -C $$directory $@ || exit $$?; done

run-lua:
	for directory in $(LUA_RUNEBLE); do \
	$(MAKE) -C $$directory $@ || exit $$?; done

run-gcc:
	for directory in $(C_LANG_RUNEBLE); do \
	$(MAKE) -C $$directory $@ || exit $$?; done

run-cpp:
	for directory in $(CPP_RUNEBLE); do \
	$(MAKE) -C $$directory $@ || exit $$?; done

run-golang:
	for directory in $(GO_RUNEBLE); do \
	$(MAKE) -C $$directory $@ || exit $$?; done
