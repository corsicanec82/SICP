# SICP

[![github action status](https://github.com/corsicanec82/sicp/workflows/Racket%20CI/badge.svg)](https://github.com/corsicanec82/sicp/actions)

### Requirements

- Racket
- Rackunit
  ```sh
  $ raco pkg install rackunit
  ```
- [SICP Support for Racket](https://docs.racket-lang.org/sicp-manual/index.html) (contains a `#lang sicp` language)
  ```sh
  $ raco pkg install sicp
  ```
- [Racket-review](https://github.com/Bogdanp/racket-review) (surface-level linter)
  ```sh
  $ raco pkg install review
  ```
- Make

### Install packages

```sh
$ make install
```

### Run tests

```sh
$ make test
```

### Run linter

```sh
$ make lint
```
