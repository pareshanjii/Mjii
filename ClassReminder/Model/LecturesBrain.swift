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
        
        "1" : Lectures(// periodNo = 0
            classTeacherName : "Dinesh Puri (DDP)",
            subjectName :  "Formal language and automata theory",
            subjectNameAbbrivative :  "FLAT",
            lectureOrPractical : "Lecture", id: 1
            
        ),
        
        "2": Lectures(// periodNo = 1
            classTeacherName : "Shital Patil (SAP)",
            subjectName :  "Database and management system",
            subjectNameAbbrivative :  "DBMS",
            lectureOrPractical : "Lecture", id: 2
        ),
        
        "3" : Lectures(// periodNo = 2
            classTeacherName : "Ashish Bhole (ATB)",
            subjectName :  "Software engineering",
            subjectNameAbbrivative :  "SE",
            lectureOrPractical : "Lecture", id: 3
        ),
        
        "4" :Lectures(// periodNo = 3
            classTeacherName : "Pravin Patil (PKP)",
            subjectName :  "Artificial Intelligence",
            subjectNameAbbrivative :  "AI",
            lectureOrPractical : "Lecture", id: 4
        ),
        
        "5":Lectures(// periodNo = 4
            classTeacherName : "Nilima Patil (NP)",
            subjectName :  "Cyber laws and ethics",
            subjectNameAbbrivative :  "CLE",
            lectureOrPractical : "Lecture", id: 5
        ),
        
        "6": Lectures(// periodNo = 5
            classTeacherName : "Shital Patil (SAP)",
            subjectName :  "Database and management system Lab",
            subjectNameAbbrivative :  "DBMSL",
            lectureOrPractical : "Practical", id: 6
        ),
        
        "7": Lectures(// periodNo = 6
            classTeacherName : "Ashish Bhole (ATB)",
            subjectName :  "Software engineering Lab",
            subjectNameAbbrivative :  "SEL",
            lectureOrPractical : "Practical", id: 7
        ),
        
        "8": Lectures(// periodNo = 7
            classTeacherName : "Nilima Patil (NP)",
            subjectName :  "Cyber laws and ethics Lab",
            subjectNameAbbrivative :  "CLEL",
            lectureOrPractical : "Practical", id: 8
        ),
        
       "9" :Lectures(// periodNo = 8
            classTeacherName : "Nilima Patil (NP)",
            subjectName :  "Web programming language lab",
            subjectNameAbbrivative :  "WPLL",
            lectureOrPractical : "Practical", id: 9
        )
        
    ] // array struct
    
    
    var filterArray = [Lectures]()
    
    
    let dict = ["monday":[1,4,6],
                "tuesday":[3,5,1,7],
                "wednesday":[5,2,4,9],
                "thursday":[5,2,3],
                "friday":[2,1,3],
                "saturday":[2]
    ]
    
    var today = ""
     
    mutating func setFilterArray() {
        let today =  Utility.getCurrentCalander(formate: "EEEE")
        
        let todayPeriods = dict[today.lowercased()]!
        
        for item in todayPeriods {
            filterArray.append(lectures["\(item)"]!)
        }
        
    }

    
    func teacherLbl(index:Int) -> String{
        return filterArray[index].classTeacherName
    }
    
    func subLbl(index:Int) -> String{
        return filterArray[index].subjectName
    }
    
    func abbLbl(index:Int) -> String{
        return filterArray[index].subjectNameAbbrivative
    }
    
    func labOrPracLbl(index:Int) -> String{
        return filterArray[index].lectureOrPractical
    }
    
    
}
