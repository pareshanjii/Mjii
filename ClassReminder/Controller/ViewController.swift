//
//  ViewController.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 08/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var DateView: UIView!
    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var lblDay: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dissappearTab()
        self.Custom()
        
        
        tabelView.delegate = self
        tabelView.dataSource = self
        
        lblDay.text = Utility.getCurrentCalander(formate: "EEEE")
        lblDate.text = Utility.getCurrentCalander(formate: "d")
        
        
//        Utility.sendNotification(message: "hello")
        
        
        Utility.lec.setFilterArray()
        tabelView.reloadData()
        
        
        
        DispatchQueue.main.async {
            Utility.SCREEN_HEIGHT = self.view.frame.height
            Utility.SCREEN_WIDTH = self.view.frame.height
        }
        

    }
    
    
    
    
    func Custom(){
        dayView.layer.cornerRadius = 25
        DateView.layer.cornerRadius = 27
        tabelView.layer.opacity = 1
    }
    
    func dissappearTab() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Utility.lec.filterArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellBndle = Bundle.main.loadNibNamed("CustomCellController", owner: self, options: nil)
        let cell = cellBndle?[0] as! CustomCellController
        
        cell.updateUI(index: indexPath.row)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let myview = Bundle.main.loadNibNamed("ViewDetail", owner: self, options: nil)?[0] as! ViewDetail
        myview.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(myview)
        myview.animate()
        myview.viewContainer.layer.cornerRadius = 25
        myview.viewContainer.layer.shadowColor = UIColor.black.cgColor
           myview.viewContainer.layer.cornerRadius = 10
             myview.viewContainer.layer.shadowColor = UIColor.gray.cgColor
             myview.viewContainer.layer.shadowOpacity = 0.5
//        myview.viewContainer.layer.shadowOffset = 0.5
             myview.viewContainer.layer.shadowRadius = 0
        myview.viewContainer.colo
             
        
        
        
        
    }
    
    
    
}
    
   


