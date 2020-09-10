//
//  Lectures.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 10/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import Foundation


struct Lectures {
   
    let classTeacherName : String
    let subjectName : String
    let subjectNameAbbrivative : String
    //let dayWanted : String
    //let dateWanted : String
    let lectureOrPractical : String
    
    
    init(classTeacherName : String,subjectName : String,subjectNameAbbrivative : String,lectureOrPractical : String){
        
        self.classTeacherName = classTeacherName
        self.subjectName = subjectName
        self.subjectNameAbbrivative = subjectNameAbbrivative
        // self.dayWanted = dayWanted
        // self.dateWanted = dateWanted
        self.lectureOrPractical = lectureOrPractical
        
    }
   
 
    
}
