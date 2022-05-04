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

    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

public class Test {
    public init() {}
    public func writeTestObjectWithName(_ name: String) {
        let realm = try! Realm()
        try! realm.write {
            let testObject = TestObject(name: name)
            realm.add(testObject)
        }
    }
}
