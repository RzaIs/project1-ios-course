//
//  ViewController.swift
//  project1
//
//  Created by Rza Ismayilov on 09.04.22.
//

import UIKit

class ViewController: UIViewController {
	
	var mutableData : String =  "Hello World"

	override func viewDidLoad() {
		super.viewDidLoad()
		print("VIEW DID LOAD")
		// Do any additional setup after loading the view.
		self.test1(value: "hello world1")
		self.test2("hello world2")
		
		self.view.backgroundColor = .green
		let label = UILabel()
		label.frame = CGRect.init(x: 150, y: 300, width: 100, height: 30)
		label.textColor = .red
		label.text = "Hello World"
		self.view.addSubview(label)
		
		self.processData()
		print(self.mutableData)
		
		self.mutableData = self.pureProcessData()
		print(self.mutableData)
		
		
		
		let data1 : SingleData = SingleData.getObj()
		let data2 : SingleData = SingleData.getObj()
		let data3 : SingleData = SingleData.getObj()
		
		data2.setInfo(newInfo: "This is the data of data 2\n")
		print(data1.getInfo(), data2.getInfo(), data3.getInfo())
		
        let vehicle : Vehicle = Vehicle.VehicleBuilder()
			.setFuelType(fuelType: .diesel)
			.setNbOfPassenger(nbOfPassenger: 8)
			.setNbOfWheels(nbOfWheels: 6)
			.buildVehicle()
		
		print(vehicle.description)
		
		let animalCreateor : AnimalCreateor = AnimalCreateor()
		let cat: Animal = animalCreateor.creatAnimal(isDog: false)
		let dog: Animal = animalCreateor.creatAnimal(isDog: true)
		cat.makeNoise()
		dog.makeNoise()
        
        let protobase = ProtoClassBase(data1: "data1", data2: "data2")
        let protobaseClone = ProtoClassBase(obj: protobase)
        
        let proto = ProtoClass(baseObj: protobase, data3: "data3")
        let protoClone = ProtoClass(obj: proto)
        
        print("protobase", protobase.data1, protobase.data2, protobase)
        print("protobaseClone", protobaseClone.data1, protobaseClone.data2, protoClone)
        
        print("proto", proto.data1, proto.data2, proto.data3, proto)
        print("protoClone", protoClone.data1, protoClone.data2, protoClone.data3, protoClone)

	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("VIEW WILL APPEAR")
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print(#function)
	}
	
	func test1(value: String) {
		print("test1 -> \(value)")
	}
	
	func test2(_ value: String) {
		print("test2 -> \(value)")
	}
	
	func processData() {
		self.mutableData = "text1"
	}
	
	func pureProcessData() -> String{
		return "text2"
	}
}


func MapFilterReduce() {
    // list
    let listInt = [1,2,3,4,5,6,7,8,9,0];
    print(listInt)
    
    // map
    let listStr = listInt.map({num in
        return "\(num)"
    })
    print(listStr)
    
    // filter
    let listOddNum = listInt.filter({num in
        return num % 2 == 1
    })
    print(listOddNum)
    
    // reduce
    let sum = listInt.reduce(0, {prev, num in
        prev + num
    })
    print(sum)
    
    // reduce with filter
    let sumOfOdd = listInt.filter({num in
        return num % 2 == 1
    }).reduce(0, {prev, num in
        prev + num
    })
    print(sumOfOdd)
}
