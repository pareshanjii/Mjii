//
//  ViewDetail.swift
//  ClassReminder
//
//  Created by Prashant Jangid on 12/09/20.
//  Copyright © 2020 Prashant Jangid. All rights reserved.
//

import UIKit

class ViewDetail: UIView {

    
    @IBOutlet weak var viewContainer: UIView!
    
    
    
    override func draw(_ rect: CGRect) {

        
        
        
    }
    
   

    func animate() {
        
    
        
        self.viewContainer.frame.origin.y = Utility.SCREEN_HEIGHT
        
        UIView.animate(withDuration: 0.3) {
            
            self.viewContainer.frame.origin.y = 20
            
            
        }
    }
    
    @IBAction func tapCancel(_ sender: Any) {
        
        UIView.animate(withDuration: 0.2, animations: {
            self.viewContainer.frame.origin.y = Utility.SCREEN_HEIGHT
        }) { (success) in
            self.removeFromSuperview()
        }
        
    }
    
    
    
}
