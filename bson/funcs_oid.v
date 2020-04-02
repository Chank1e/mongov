module bson

// TODO; bson_context_t as second arg
pub fn oid_init(oid &C.bson_oid_t) {
	C.bson_oid_init(oid, C.NULL)
}