//
//  APIManager.swift
//  FinalAizhanYerimbetova
//
//  Created by Aizhan Yerimbetova on 12/5/17.
//  Copyright © 2017 Aizhan Yerimbetova. All rights reserved.
//

import Foundation
import UIKit
import Alamofire


public class APIManager{
    
    public func getData(completion: @escaping (AnyObject) -> Void){
        
        
        Alamofire.request("https://jsonblob.com/api/340d357d-d988-11e7-bd0d-957142124e77")
            .responseJSON { response in
                //debugPrint(response)
                if(response != nil){
                    let result = response.result.value as AnyObject
                    completion(result)
                }
                
        }
        
//        Alamofire.request("https://jsonblob.com/340d357d-d988-11e7-bd0d-957142124e77").responseJSON { (responseData) -> Void in
//            if((responseData) != nil) {
//               let result = responseData as AnyObject
//                completion(result)
//            }
//        }
        
        
//        Alamofire.request(
//            URL(string: "https://jsonblob.com/api/340d357d-d988-11e7-bd0d-957142124e77")!,
//            method: .get,
//            parameters: ["include_docs": "true"])
//            .validate()
//            .responseJSON { (response) -> Void in
//
//                print(response)
//                let result = response as? [AnyObject]
//
//                completion(result)
//        }
    }
    

  
}
