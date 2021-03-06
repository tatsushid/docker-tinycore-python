PYTHON_DIRS := 3.6 3.5 3.4 2.7
ONBUILD_DIRS := 3.6/onbuild 3.5/onbuild 3.4/onbuild 2.7/onbuild

.PHONY: all clean $(PYTHON_DIRS) $(ONBUILD_DIRS)

all: $(PYTHON_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(PYTHON_DIRS)

$(PYTHON_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
