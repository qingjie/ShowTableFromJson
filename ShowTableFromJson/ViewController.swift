//
//  ViewController.swift
//  ShowTableFromJson
//
//  Created by Qingjie Zhao on 10/7/16.
//  Copyright © 2016 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	var items:[String] = ["Zhao","Qing","Jie","Jie"]
	
	
	@IBOutlet weak var tbview: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let temp0 = items.removeDuplicates()
		print(temp0)
		
		//let temp1 = items.removeDuplicatesInPlace()
		//print(temp1)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.items.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = self.tbview.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
		cell.textLabel?.text = self.items[indexPath.row]
		return cell
	}
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
}

