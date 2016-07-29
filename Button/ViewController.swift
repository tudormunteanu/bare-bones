//
//  ViewController.swift
//  Button
//
//  Created by Tudor on 29/07/2016.
//  Copyright © 2016 Testing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var name = ""

	override func viewDidLoad() {
		
		super.viewDidLoad()
		view.backgroundColor = UIColor.blueColor()
		print(name)
		
		let button = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
		button.setTitle("Take me far away", forState: UIControlState.Normal)
		button.addTarget(self, action: #selector(buttonTapped(_:)), forControlEvents: UIControlEvents.TouchUpInside)
		view.addSubview(button)
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func buttonTapped(sender: UIButton) {
		
		print("button tapped")
		let secondScreen = SecondViewController(nibName: nil, bundle: nil)
		secondScreen.day = "Friday"
		self.navigationController?.pushViewController(secondScreen, animated: true)
	}

}

