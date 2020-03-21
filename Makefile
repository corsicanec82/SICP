test:
	raco test .

lint:
	@(for f in $$(find . -name '*.rkt'); do raco review $$f; done)

.PHONY: test
