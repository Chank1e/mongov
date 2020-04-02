import mongo
import bson

fn main() {
	uri := 'mongodb://127.0.0.1:27017'.str
	mongo.initialize()
	
	mongo_uri := mongo.uri_new(uri)
	client := mongo.client_new_from_uri(mongo_uri)

	database := mongo.client_get_database(client, 'db_name')
	collection := mongo.client_get_collection(client, 'db_name', 'collection_name')
	
	bson := bson.new()
	/*
	oid := &C.bson_oid_t{}
	C.bson_oid_init(&oid, 0)
	C.bson_append_bool(bson, 'key'.str,-1,true)
	C.bson_append_utf8(bson, 'key3'.str,-1,'value',-1)
	C.bson_append_bool(bson, 'key2'.str,-1,true)
	
	C.mongoc_collection_insert_one (
		collection, bson, C.NULL, C.NULL, C.NULL)
	*/	

}