import mongo
import bson

fn test_as_json() {
	doc := bson.new_from_json('{"insert":"test"}')
	assert bson.as_json(doc).replace(' ', '') == '{"insert":"test"}'
}

fn test_compare1() {
	doc1 := bson.new_from_json('{"insert":"test"}')
	doc2 := bson.new_from_json('{"insert":"test"}')
	assert bson.compare(doc1, doc2)
}

fn test_compare2() {
	doc1 := bson.new_from_json('{"insert":"test"}')
	doc2 := bson.new_from_json('{"insert":"test1"}')
	assert !bson.compare(doc1, doc2)
}