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