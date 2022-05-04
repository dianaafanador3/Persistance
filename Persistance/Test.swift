//
//  Test.swift
//  Persistance
//
//  Created by Diana Maria Perez Afanador on 4/5/22.
//

import Foundation
import RealmSwift

class TestObject: Object {
    @Persisted(primaryKey: true) var id: ObjectId = ObjectId.generate()
    @Persisted var name: String
}

public class Test {
    public func writeTestObjectWithName(_ name: String) {
        let realm = try! Realm()
        try! realm.write {
            let testObject = TestObject()
            testObject.name = name
            realm.add(testObject)
        }
    }
}
