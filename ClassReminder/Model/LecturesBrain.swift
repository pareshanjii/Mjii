//
//  LecturesBrain.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 10/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import Foundation

struct LecturesBrain {
    
    
    var periodNo = 0
    
    let lectures = [
        
        Lectures(// periodNo = 0
            classTeacherName : "Dinesh Puri (DDP)",
            subjectName :  "Formal language and automata theory",
            subjectNameAbbrivative :  "FLAT",
            lectureOrPractical : "Lecture"
        ),
        
        Lectures(// periodNo = 1
            classTeacherName : "Shital Patil (SAP)",
            subjectName :  "Database and management system",
            subjectNameAbbrivative :  "DBMS",
            lectureOrPractical : "Lecture"
        ),
        
        Lectures(// periodNo = 2
            classTeacherName : "Ashish Bhole (ATB)",
            subjectName :  "Software engineering",
            subjectNameAbbrivative :  "SE",
            lectureOrPractical : "Lecture"
        ),
        
        Lectures(// periodNo = 3
            classTeacherName : "Pravin Patil (PKP)",
            subjectName :  "Artificial Intelligence",
            subjectNameAbbrivative :  "AI",
            lectureOrPractical : "Lecture"
        ),
        
        Lectures(// periodNo = 4
            classTeacherName : "Nilima Patil (NP)",
            subjectName :  "Cyber laws and ethics",
            subjectNameAbbrivative :  "CLE",
            lectureOrPractical : "Lecture"
        ),
        
        Lectures(// periodNo = 5
            classTeacherName : "Shital Patil (SAP)",
            subjectName :  "Database and management system Lab",
            subjectNameAbbrivative :  "DBMSL",
            lectureOrPractical : "Practical"
        ),
        
        Lectures(// periodNo = 6
            classTeacherName : "Ashish Bhole (ATB)",
            subjectName :  "Software engineering Lab",
            subjectNameAbbrivative :  "SEL",
            lectureOrPractical : "Practical"
        ),
        
        Lectures(// periodNo = 8
            classTeacherName : "Nilima Patil (NP)",
            subjectName :  "Cyber laws and ethics Lab",
            subjectNameAbbrivative :  "CLEL",
            lectureOrPractical : "Practical"
        )
        
    ] // array struct
    
 
    
    // Methods  ----->
    
    func teacherLbl(index:Int) -> String{
        return lectures[index].classTeacherName
    }
    
    func subLbl(index:Int) -> String{
        return lectures[index].subjectName
    }
    
    func abbLbl(index:Int) -> String{
        return lectures[index].subjectNameAbbrivative
    }
    
    func labOrPracLbl(index:Int) -> String{
        return lectures[index].lectureOrPractical
    }
    
//    mutating func periodArrangement(Dayy : String) -> String{
//        if()
//        return
//    }
//    
}


