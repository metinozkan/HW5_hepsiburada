//
//  ViewController.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import UIKit
import DefaultNetworkOperationPackage



class BaseRequest:Codable {
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getData{ result in
            switch result {
            case .failure(let err):
                print ("err:\(err)")

            case .success(let data):
                print ("data:\(data)")
            }
 
        }
      
    }
    
    private func getData(completion:@escaping (Result<[SampleResponse],ErrorResponse>)->Void){
        
        do {
            guard let urlRequest = try?
                    SampleRequestServiceProvider().returnUrlRequest() else { return }
            
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
            
        }
       
        
    
    }


}



class SampleResponse : Codable {
    let author :String?
    init (author:String){
        self.author = author
    }
}

