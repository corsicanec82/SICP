install:
	raco pkg install sicp
	raco pkg install review

test:
	raco test .

lint:
	@(for f in $$(find . -name '*.rkt'); do raco review $$f; done)

.PHONY: test
