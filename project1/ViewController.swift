//
//  ViewController.swift
//  project1
//
//  Created by Rza Ismayilov on 09.04.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
	
//    private var vm = MainViewModel()
    
    private lazy var redView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
        return view
    }()
    
    private lazy var textLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.backgroundColor = .green
        label.textColor = .black
        label.textAlignment = .center
        label.text = "HELLO WORLD"
        return label
    }()
    
    private lazy var contentText : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.numberOfLines = 0
        label.backgroundColor = .green
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        return label
    }()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
        self.view.backgroundColor = .blue
        
        self.view.addSubview(self.redView)
        
        self.redView.snp.makeConstraints { make in
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-20)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-20)
        }
        
        self.redView.addSubview(self.textLabel)
        
        self.textLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
            make.top.equalToSuperview().offset(20)
//            make.bottom.equalToSuperview().offset(-20)
        }
        
        self.redView.addSubview(self.contentText)
        
        self.contentText.snp.makeConstraints {make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(self.textLabel.snp.bottom).offset(20)
        }
        
    }
	

}

