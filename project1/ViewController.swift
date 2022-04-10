//
//  ViewController.swift
//  project1
//
//  Created by Rza Ismayilov on 09.04.22.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		print("VIEW DID LOAD")
		// Do any additional setup after loading the view.
		self.test1(value: "hello world1")
		self.test2("hello world2")
		
		self.view.backgroundColor = .green
		let label = UILabel()
		label.frame = CGRect.init(x: 150, y: 300, width: 100, height: 30)
		label.text = "Hello World"
		self.view.addSubview(label)
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
}

