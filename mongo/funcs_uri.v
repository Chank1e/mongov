module mongo

pub fn uri_new(uri_string string) &C.mongoc_uri_t {
	return C.mongoc_uri_new(uri_string.str)
}