module bson

pub fn new() &C.bson_t {
	return C.bson_new()
}

pub fn destroy(document &C.bson_t) {
	C.bson_destroy(document)
}