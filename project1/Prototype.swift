//
//  Prototype.swift
//  project1
//
//  Created by Rza Ismayilov on 14.04.22.
//

import Foundation

class ProtoClassBase {
    public var data1: String
    public var data2: String
    
    public init(data1: String, data2: String) {
        self.data1 = data1
        self.data2 = data2
    }
    
    public init(obj: ProtoClassBase) {
        self.data1 = obj.data1
        self.data2 = obj.data2
    }
    
}

class ProtoClass : ProtoClassBase {
    public var data3: String
    
    public init(data1: String, data2: String, data3: String) {
        self.data3 = data3
        super.init(data1: data1, data2: data2)
    }
    
    public init(baseObj: ProtoClassBase, data3: String) {
        self.data3 = data3
        super.init(obj: baseObj)
    }
    
    public init(obj: ProtoClass) {
        self.data3 = obj.data3
        super.init(obj: obj)
    }
}
