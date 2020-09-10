//
//  ViewController.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 08/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import UIKit

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
        return 4
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
    
}




