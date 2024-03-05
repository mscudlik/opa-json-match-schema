package string_regex_pattern.test

import rego.v1

import data.string_regex_pattern.policy

import data.string_regex_pattern.input.valid
import data.string_regex_pattern.input.invalid_length
import data.string_regex_pattern.input.invalid_regex

test_valid_string if {
	result := policy with input as valid
	result.matches
	count(result.errors) == 0
}

test_invalid_string_length if {
	result := policy with input as invalid_length
	not result.matches
	count(result.errors) > 0
}

test_invalid_string_pattern if {
	result := policy with input as invalid_regex
	not result.matches # must be false, as the pattern is not matched
	count(result.errors) > 0
}
