module mongo

pub fn collection_insert_one(
		collection &C.mongoc_collection_t,
		document &C.bson_t,
) bool {
	return C.mongoc_collection_insert_one(collection, document, 0, 0, 0)
}

