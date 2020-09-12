//
//  Utility.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 10/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import UIKit

class Utility: NSObject {
    
    static var lec = LecturesBrain()
    
 
    class func getCurrentCalander(formate : String) -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = formate
        let result = formatter.string(from: date)
        return result
        
        
        
        
    }
    
}
