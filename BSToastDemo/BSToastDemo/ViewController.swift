//
//  ViewController.swift
//  BSToastDemo
//
//  Created by Bradley Slayter on 9/18/15.
//  Copyright © 2015 Flipped Bit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let toastWidth = UIScreen.mainScreen().bounds.width * 0.4
	let toastHeight: CGFloat = 90.0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Create a button and add it to the screen
		let btn = UIButton(type: .System)
		btn.setTitle("Show", forState: .Normal)
		btn.addTarget(self, action: "showToast:", forControlEvents: .PrimaryActionTriggered)
		btn.frame = CGRectMake(0, 0, 200, 65)
		btn.center = CGPointMake(self.view.center.x, self.view.center.y - (self.view.center.y/2))
		self.view.addSubview(btn)
	}
	
	func showToast(sender: AnyObject) {
		// Create a toast notification and show it
		let toast = BSToast(frame: CGRectMake(0, 0, toastWidth, toastHeight),
							text: "Here's a toast notification")
		toast.center = self.view.center
		self.view.addSubview(toast)
		toast.showWithDuration(1.75)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

