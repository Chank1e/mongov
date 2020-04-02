module bson

pub fn new() &C.bson_t {
	return C.bson_new()
}

pub fn destroy(document &C.bson_t) {
	C.bson_destroy(document)
}

pub fn free(mem voidptr) {
	C.bson_free(mem)
}

pub fn as_canonical_extended_json(document &C.bson_t) string {
	return string(C.bson_as_canonical_extended_json(document, 0))
}

pub fn init_from_json(document &C.bson_t, json_data string) bool {
	return C.bson_init_from_json(document, json_data.str, -1, 0)
}