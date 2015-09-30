//
//  BSToast.swift
//
//  Created by Bradley Slayter on 9/18/15.
//  Copyright © 2015 Flipped Bit. All rights reserved.
//

import UIKit

class BSToast: UILabel {
	
	var originalFrame: CGRect?
	
	init(frame: CGRect, text: String) {
		super.init(frame: frame)
		self.text = text
		self.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.0)
		self.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.38)
		self.alpha = 0
		self.textAlignment = .Center
		self.font = UIFont.systemFontOfSize(48)
		self.clipsToBounds = true
		self.layer.cornerRadius = 5.0
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
	func getBigFrame() -> CGRect {
		var bigFrame = self.frame
		bigFrame.size.width += bigFrame.width * 0.1
		bigFrame.size.height += bigFrame.height * 0.1
		bigFrame.origin.x = self.center.x - (bigFrame.width/2)
		bigFrame.origin.y = self.center.y - (bigFrame.height/2)
		return bigFrame
	}
	
	func showInViewWithDuration(duration: NSTimeInterval, container: UIView) {
		container.addSubview(self)
		originalFrame = self.frame
		self.frame = getBigFrame()
		
		UIView.animateWithDuration(0.225, animations: {
			self.frame = self.originalFrame!
			self.alpha = 1.0
			self.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		})
		NSTimer.scheduledTimerWithTimeInterval(duration, target: self, selector: "hide:", userInfo: nil, repeats: false)
	}
	
	func hide(sender: AnyObject) {
		let bigFrame = getBigFrame()
		
		UIView.animateWithDuration(0.17, animations: {
			self.frame = bigFrame
			self.alpha = 0
			self.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.0)
			}, completion: { value in
			self.removeFromSuperview()
		})
	}

}
