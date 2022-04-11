//
//  Animal.swift
//  project1
//
//  Created by Rza Ismayilov on 11.04.22.
//

import Foundation

/*
 Factory Creator example
 */

protocol Animal {
	func makeNoise() -> Void
}

class Dog : Animal {
	public func makeNoise() {
		print("Woof")
	}
}

class Cat : Animal {
	public func makeNoise() {
		print("Meow")
	}
}

class AnimalCreateor {
	public func creatAnimal(isDog: Bool) -> Animal {
		if (isDog) {
			return Dog()
		} else {
			return Cat()
		}
	}
}
