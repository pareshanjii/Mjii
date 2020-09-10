//
//  VCLectures.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 08/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import UIKit

class CustomCellController: UITableViewCell {
    // View
    @IBOutlet  var tableCell: UIView!
    @IBOutlet weak var VeiwBorder: UIView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var lectureAbbrivative: UIView!
    @IBOutlet weak var viewSepetator: UIView!
    // Label
    
    @IBOutlet weak var teacherNameEdit: UILabel!
    @IBOutlet weak var subjectNameEdit: UILabel!
    @IBOutlet weak var laborPracNameEdit: UILabel!
    @IBOutlet weak var llecViewAbbEdit: UILabel!
    
    //var lectureBrain = LecturesBrain()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        update()
        
//       var dDay = Utility.getCurrentCalander(formate: "EEEE")
        
    }
    
    
    func update(){
        
        cellView.layer.cornerRadius = 10
        cellView.layer.shadowColor = UIColor.gray.cgColor
        cellView.layer.shadowOpacity = 0.5
        cellView.layer.shadowOffset = .zero
        cellView.layer.shadowRadius = 10
        VeiwBorder.layer.cornerRadius = 31
        //        cellView.layer.opacity = 0.1 // mirror
        
        
        lectureAbbrivative.layer.cornerRadius = 30
        lectureAbbrivative.layer.shadowColor = UIColor.lightGray.cgColor
        lectureAbbrivative.layer.shadowOpacity = 1
        lectureAbbrivative.layer.shadowOffset = .zero
        lectureAbbrivative.layer.shadowRadius = 5
        
    }
    
    func updateUI(index:Int){
     let dDay = Utility.getCurrentCalander(formate: "EEEE")
        if (index > 0){
            viewSepetator.isHidden = true
        }
        
        if (index == 0){
            lectureAbbrivative.backgroundColor = UIColor.init(named: "greenMast")
        }else {
            lectureAbbrivative.backgroundColor = UIColor.init(named: "pinkMast")
        }
        
        if dDay == "Monday"{
            print ("yes")
        }
        
        
        teacherNameEdit.text = Utility.lec.teacherLbl(index: index)
        subjectNameEdit.text = Utility.lec.subLbl(index: index)
        laborPracNameEdit.text = Utility.lec.labOrPracLbl(index: index)
        llecViewAbbEdit.text = Utility.lec.abbLbl(index: index)
        
    }
    
    
    
    
    
    
    //    override func setSelected(_ selected: Bool, animated: Bool) {
    //        super.setSelected(selected, animated: animated)
    //
    //    }
    
    
    
    
}
//
