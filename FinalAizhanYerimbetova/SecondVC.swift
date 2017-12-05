//
//  SecondVC.swift
//  FinalAizhanYerimbetova
//
//  Created by Aizhan Yerimbetova on 12/5/17.
//  Copyright © 2017 Aizhan Yerimbetova. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController{
    
    
    var chosen: String = ""
    var gotJsonString = ""
   
    //var singletonObject: Info
    
    @IBOutlet weak var jsonStringLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //singletonObject.shared.
      
        print(chosen)
        print(singletonObject.shared.jsonString)
        jsonStringLabel.text = chosen
       // jsonStringLabel.text = (x?.shared.jsonString)! + " heeey"
       
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
