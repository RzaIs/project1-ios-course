//
//  SingleData.swift
//  project1
//
//  Created by Rza Ismayilov on 11.04.22.
//

import Foundation

/*
 Singletone example
 */

class SingleData {
	private static var ins: SingleData?
	
	private var info: String

	private init() {
		info = "Initial info"
	}
	
	public static func getObj() -> SingleData {
		if (ins == nil) {
			ins = SingleData()
		}
		return ins!
	}
	
	public func getInfo() -> String {
		return self.info
	}
	
	public func setInfo(newInfo : String) {
		self.info = newInfo
	}
}
