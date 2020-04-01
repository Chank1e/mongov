#flag -I/usr/local/include/libbson-1.0
#flag -I/usr/local/include/libmongoc-1.0
#flag -lmongoc-1.0
#flag -lbson-1.0
#include "mongoc/mongoc.h"
#include "bson/bson.h"

fn C.mongoc_init() int

//
//	mongoc_*
//
struct C.mongoc_client_t{}
struct C.mongoc_database_t{}
struct C.mongoc_collection_t{}

// //
// //	bson_*
// //
struct C.bson_t{} // http://mongoc.org/libbson/current/bson_t.html
struct C.bson_oid_t{} // http://mongoc.org/libbson/current/bson_oid_t.html
struct C.bson_context_t{} // http://mongoc.org/libbson/current/bson_context_t.html
struct C.bson_subtyper_t{} // http://mongoc.org/libbson/current/bson_subtype_t.html
struct C.bson_decimal128_t{} // http://mongoc.org/libbson/current/bson_decimal128_t.html
struct C.bson_iter_t{} // http://mongoc.org/libbson/current/bson_iter_t.html
struct C.bson_value_t{} // http://mongoc.org/libbson/current/bson_value_t.html


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
fn C.mongoc_collection_insert_one(&C.mongoc_collection_t, &C.bson_t, &C.bson_t, &C.bson_t, &C.bson_error_t) bool

//
// bson_t http://mongoc.org/libbson/current/bson_t.html
//
fn C.bson_new() &C.bson_t
fn C.bson_destroy(&C.bson_t)
fn C.bson_oid_init(&C.bson_oid_t, &C.bson_context_t)

//
// BSON_APPEND http://mongoc.org/libbson/current/bson_t.html
//
fn C.bson_append_array(&C.bson_t, string, int, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_array.html
fn C.bson_append_array_begin(&C.bson_t, string, int, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_array_begin.html
fn C.bson_append_array_end(&C.bson_t, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_array_end.html
fn C.bson_append_binary(&C.bson_t, string, int, &byte, u32) bool // http://mongoc.org/libbson/current/bson_append_binary.html
fn C.bson_append_bool(&C.bson_t, string, int, bool) bool // http://mongoc.org/libbson/current/bson_append_bool.html
fn C.bson_append_code(&C.bson_t, string, int, string) bool // http://mongoc.org/libbson/current/bson_append_code.html
fn C.bson_append_code_with_scope(&C.bson_t, string, int, string, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_code_with_scope.html
fn C.bson_append_date_time(&C.bson_t, string, int, i64) bool // http://mongoc.org/libbson/current/bson_append_date_time.html
fn C.bson_append_decimal128(&C.bson_t, string, int, &C.bson_decimal128_t) bool // http://mongoc.org/libbson/current/bson_append_decimal128.html
fn C.bson_append_document(&C.bson_t, string, int, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_document.html
fn C.bson_append_document_begin(&C.bson_t, string, int, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_document_begin.html
fn C.bson_append_document_end(&C.bson_t, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_document_end.html
fn C.bson_append_double(&C.bson_t, string, int, f64) bool // http://mongoc.org/libbson/current/bson_append_double.html
fn C.bson_append_int32(&C.bson_t, string, int, int) bool // http://mongoc.org/libbson/current/bson_append_int32.html
fn C.bson_append_int64(&C.bson_t, string, int, i64) bool // http://mongoc.org/libbson/current/bson_append_int64.html
fn C.bson_append_maxkey(&C.bson_t, string, int) bool // http://mongoc.org/libbson/current/bson_append_maxkey.html
fn C.bson_append_minkey(&C.bson_t, string, int) bool // http://mongoc.org/libbson/current/bson_append_minkey.html
fn C.bson_append_npw_utc(&C.bson_t, string, int) bool // http://mongoc.org/libbson/current/bson_append_npw_utc.html
fn C.bson_append_null(&C.bson_t, string, int) bool // http://mongoc.org/libbson/current/bson_append_null.html
fn C.bson_append_oid(&C.bson_t, string, int, &C.bson_oid_t) bool // http://mongoc.org/libbson/current/bson_append_oid.html
fn C.bson_append_regex(&C.bson_t, string, int, string, string) bool // http://mongoc.org/libbson/current/bson_append_regex.html
fn C.bson_append_regex_w_len(&C.bson_t, string, int, string, int, string) bool // http://mongoc.org/libbson/current/bson_append_regex_w_len.html
fn C.bson_append_symbol(&C.bson_t, string, int, string, int) bool // http://mongoc.org/libbson/current/bson_append_symbol.html
fn C.bson_append_time_t(&C.bson_t, string, int, u32) bool // http://mongoc.org/libbson/current/bson_append_time_t.html
fn C.bson_append_timestamp(&C.bson_t, string, int, u32, u32) bool // http://mongoc.org/libbson/current/bson_append_timestamp.html
// TODO: bson_append_timeval
fn C.bson_append_undefined(&C.bson_t, string, int) bool // http://mongoc.org/libbson/current/bson_append_undefined.html
fn C.bson_append_utf8(&C.bson_t, string, int, string, int) bool // http://mongoc.org/libbson/current/bson_append_utf8.html
fn C.bson_append_value(&C.bson_t, string, int, &C.bson_value_t) bool // http://mongoc.org/libbson/current/bson_append_value.html




fn main() {
	uri := 'mongodb://127.0.0.1:27017'.str
	C.mongoc_init()
	mongo_uri := C.mongoc_uri_new(uri)
	client := C.mongoc_client_new_from_uri(mongo_uri)

	database := C.mongoc_client_get_database(client, 'db_name')
	collection := C.mongoc_client_get_collection(client, 'db_name', 'collection_name')

	bson := bson_new()
	oid := &C.bson_oid_t{}
	C.bson_oid_init(&oid, 0)
	C.bson_append_bool(bson, 'key'.str,-1,true)
	C.bson_append_utf8(bson, 'key'.str,-1,'value',-1)
	C.bson_append_bool(bson, 'key2'.str,-1,true)
	
	C.mongoc_collection_insert_one (
		collection, bson, C.NULL, C.NULL, C.NULL)

}