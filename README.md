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
Version: 0.61.0
Build Commit: ea7a3e13c8fdceadeb199904facb4990fcb010f8
Build Timestamp: 2024-01-25T13:06:02Z
Build Hostname: Mac-1706188202317.local
Go Version: go1.21.5
Platform: darwin/amd64
WebAssembly: available
```
