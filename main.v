module main

import bson
import mongo

fn main() {
	uri := 'mongodb://127.0.0.1:27017'
	mongo.initialize()
	
	mongo_uri := mongo.uri_new(uri)
	client := mongo.client_new_from_uri(mongo_uri)

	database := mongo.client_get_database(client, 'db_name')
	collection := mongo.client_get_collection(client, 'db_name', 'collection_name')
	
	bson1 := bson.new()
	
	// oid := &C.bson_oid_t{}

	// bson.oid_init(&oid)
	if bson.append_bool(bson1, 'bool', true) {
		println('appended bool')
	} else {
		println('error appending bool')
	}
	// C.bson_append_utf8(bson, 'key3'.str,-1,'value',-1)
	// C.bson_append_bool(bson, 'key2'.str,-1,true)
	
	mongo.collection_insert_one (collection, bson1)
	

}