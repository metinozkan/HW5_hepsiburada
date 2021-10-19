//
//  EndpointHelper.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import Foundation


typealias BaseUrl = EndpointHelper.BaseUrls
typealias Paths = EndpointHelper.Paths


 
enum EndpointHelper {
        
    enum BaseUrls : String {
        case dev = "https://picsum.photos/v2/"
    }
  

    enum Paths : String {
        case list = "list"
    }
    
}



