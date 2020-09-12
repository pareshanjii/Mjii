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
        
        algo()
        
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
    
    
    
    
    
    
      func algo()  {
          
          var a = 9;
          var b = 2;

          var i=1;
          var c=0;

          while(!(a == b)){
              
              
              
              if (a>b){
                  a = a-b; // a=6
              }else{
                  c = a;
                  a = b;
                  b = c;
              }
              
              print(i+1)
              i+=1;
              
                print("i--value in while -- ", i);
          }

          print("i--value -- ", i);
      }
      
}




