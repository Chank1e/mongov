module mongo

pub fn uri_new(uri_string byteptr) &C.mongoc_uri_t {
	return C.mongoc_uri_new(uri_string)
}