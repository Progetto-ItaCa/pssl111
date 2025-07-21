TYPST ?= typst
TYPST_COMPILE_FLAGS ?= --features html --format html --root=${PWD}
TYPSTYLE ?= typstyle

SRCS := $(wildcard src/[^_]*.typ)
CSSS := $(wildcard src/*.css)
LIBS := $(wildcard lib/*.typ)
TGTS := $(patsubst src/%.typ, out/%.html, $(SRCS)) \
		$(patsubst src/%.css, out/%.css, $(CSSS))

all: $(TGTS)
	$(info Building $(TGTS))

out/%.html: src/%.typ $(LIBS)
	@mkdir -p $(dir $@)
	$(TYPST) compile \
		--input filename=$(basename $(notdir $<)) \
		$(TYPST_COMPILE_FLAGS) $< $@

out/%.css: src/%.css
	@mkdir -p $(dir $@)
	@cp $< $@

check: $(SRCS) $(LIBS)
	for file in $^; do \
		echo "Checking $$file"; \
		if ! $(TYPSTYLE) --diff $$file; then \
			echo "Formatting check failed for $$file"; \
			exit 1; \
		fi; \
	done

format: $(SRCS) $(LIBS)
	for file in $^; do \
		echo "Formatting $$file"; \
		$(TYPSTYLE) --inplace $$file; \
	done

clean:
	@rm -rfv $(TGTS)

.PHONY: all check format clean
