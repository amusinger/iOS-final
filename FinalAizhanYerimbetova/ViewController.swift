//
//  ViewController.swift
//  FinalAizhanYerimbetova
//
//  Created by Aizhan Yerimbetova on 12/5/17.
//  Copyright © 2017 Aizhan Yerimbetova. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    var data: [String] = []
    
    var sendingString: String = ""
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        let manager = APIManager()
        manager.getData { (result) in
            self.data = result["segue"] as! [String]
            print(self.data)
            
            for i in self.data{
                self.sendingString.append(i)
            }
            self.tableView.reloadData()
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("heeeey")
        print(data.count)
        return self.data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        
        let i = indexPath.row
        let txt = data[i]
        let button : UIButton = UIButton(type:UIButtonType.custom) as UIButton
        
        button.frame = CGRect(origin: CGPoint(x: 200,y :60), size: CGSize(width: 100, height: 24))
        let cellHeight: CGFloat = 44.0
        
        
        button.tag = i
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: UIControlEvents.touchUpInside)
        button.setTitle(txt, for: UIControlState.normal)
        
        cell.addSubview(button)
        
        return cell
    }
    
    @objc func buttonClicked(sender:UIButton){
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        VC?.chosen = data[sender.tag]
        VC?.gotJsonString = self.sendingString
    
        if(data[sender.tag] == "push"){
            
            print("clicked ",data[sender.tag])
            self.navigationController?.pushViewController(VC!, animated: true)
            
        }
        if(data[sender.tag] == "modal"){
            self.present(VC!, animated: true, completion: nil)
        }
        
    }
}
    
