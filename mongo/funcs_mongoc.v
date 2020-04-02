module mongo

pub fn initialize() {
	C.mongoc_init()
}

