package array_input.test

import rego.v1

import data.array_input.policy

import data.array_input.input.valid
import data.array_input.input.invalid_no_array
import data.array_input.input.invalid_type

test_valid if {
	result := policy with input as valid
	result.matches
	count(result.errors) == 0
}

test_invalid_no_array if {
	result := policy with input as invalid_no_array
	not result.matches
	count(result.errors) > 0
}

test_invalid_type if {
	result := policy with input as invalid_type
	not result.matches 
	count(result.errors) > 0
}
