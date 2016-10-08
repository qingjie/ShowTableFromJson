//
//  Array+RemoveDuplicates.swift
//  ShowTableFromJson
//
//  Created by Qingjie Zhao on 10/8/16.
//  Copyright © 2016 qingjiezhao. All rights reserved.
//

import Foundation

extension Array where Element : Hashable {
	/**
	* Remove duplicate elements from an array
	*
	* - returns: A new array without duplicates
	*/
	func removeDuplicates()->[Element] {
		var result:[Element] = []
		for value in self {
			if !result.contains(value){
				result.append(value)
			}
		}
		return result
	}
	
	/**
	* Remove duplicate elements from an array
	*/
	mutating func removeDuplicatesInPlace() {
		var result:[Element] = []
		
		for value in self {
			if !result.contains(value){
				result.append(value)
			}
		}
		self = result
	}
	
}