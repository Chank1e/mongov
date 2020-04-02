module mongo

fn C.mongoc_init() int


//
//	mongoc_uri_t http://mongoc.org/libmongoc/current/mongoc_uri_t.html
//
fn C.mongoc_uri_new(byteptr) &C.mongoc_uri_t

//
//	mongoc_client_t http://mongoc.org/libmongoc/current/mongoc_client_t.html
//
fn C.mongoc_client_new_from_uri(byteptr) &C.mongoc_client_t
fn C.mongoc_client_get_database(client &C.mongoc_client_t, str byteptr) &C.mongoc_database_t
fn C.mongoc_client_get_collection(client &C.mongoc_client_t, db byteptr, coll byteptr) &C.mongoc_collection_t

//
//	mongoc_collection_t http://mongoc.org/libmongoc/current/mongoc_collection_t.html
//
fn C.mongoc_collection_insert_one(&C.mongoc_collection_t, &C.bson_t, &C.bson_t, &C.bson_t, &C.bson_error_t) bool
fn C.mongoc_collection_find_with_opts(&C.mongoc_collection_t, &C.bson_t, &C.bson_t, &C.mongoc_read_prefs_t) &C.mongoc_cursor_t

//
//	mongoc_cursor_t http://mongoc.org/libmongoc/current/mongoc_cursor_t.html
//
fn C.mongoc_cursor_next(&C.mongoc_cursor_t, &C.bson_t) bool