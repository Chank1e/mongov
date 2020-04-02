module mongo

pub fn collection_insert_one(
		collection &C.mongoc_collection_t,
		document &C.bson_t,
) bool {
	return C.mongoc_collection_insert_one(collection, document, 0, 0, 0)
}

pub fn collection_find_with_opts(
		collection &C.mongoc_collection_t,
		filter &C.bson_t,
) &C.mongoc_cursor_t {
	return C.mongoc_collection_find_with_opts(collection, filter, 0, 0)
}

