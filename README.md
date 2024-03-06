## Issue 1: array input and schema does not work

```shell
opa eval -b . -f pretty data.array_input.policy --input array_input/input/valid/data.json
opa eval -b . -f pretty data.array_input.policy --input array_input/input/invalid_no_array/data.json
opa eval -b . -f pretty data.array_input.policy --input array_input/input/invalid_type/data.json
```


## Issue 2: string regex patterns are not taken into account

```shell
opa eval -b . -f pretty data.string_regex_pattern.policy --input string_regex_pattern/input/valid/data.json
opa eval -b . -f pretty data.string_regex_pattern.policy --input string_regex_pattern/input/invalid_length/data.json
opa eval -b . -f pretty data.string_regex_pattern.policy --input string_regex_pattern/input/invalid_regex/data.json # should not match because of regex
```

## tests

```shell
opa test . --verbose
```

## opa version

```shell
opa version
Version: 0.62.0
Build Commit: 1d0ab93822e83a4165c78372a7fb4c05e14a8bca
Build Timestamp: 2024-02-29T17:07:11Z
Build Hostname: Mac-1709226273754.local
Go Version: go1.22.0
Platform: darwin/amd64
WebAssembly: available
```
