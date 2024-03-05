package string_regex_pattern.policy

import rego.v1

import data.string_regex_pattern.schema

default matches := false

matches if {
    [schemaValid, _] = json.match_schema(input, schema)
    schemaValid
}

errors contains error if {
	[schemaValid, schemaMessage] := json.match_schema(input, schema)
    not schemaValid
    some message in schemaMessage
	error := message
}