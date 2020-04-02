module bson

//
// bson_t http://mongoc.org/libbson/current/bson_t.html
//
fn C.bson_new() &C.bson_t
fn C.bson_destroy(&C.bson_t)

//
// bson_oid_t http://mongoc.org/libbson/current/bson_oid_t.html
//
fn C.bson_oid_init(&C.bson_oid_t, &C.bson_context_t)

//
// BSON_APPEND http://mongoc.org/libbson/current/bson_t.html
//
fn C.bson_append_array(&C.bson_t, string, int, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_array.html
fn C.bson_append_array_begin(&C.bson_t, string, int, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_array_begin.html
fn C.bson_append_array_end(&C.bson_t, &C.bson_t) bool // http://mongoc.org/libbson/current/bson_append_array_end.html
fn C.bson_append_binary(&C.bson_t, string, int, &C.bson_subtype_t, &byte, u32) bool // http://mongoc.org/libbson/current/bson_append_binary.html
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
fn C.bson_append_now_utc(&C.bson_t, string, int) bool // http://mongoc.org/libbson/current/bson_append_now_utc.html
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


