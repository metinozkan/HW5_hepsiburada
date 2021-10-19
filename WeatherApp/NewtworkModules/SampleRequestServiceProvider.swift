//
//  SampleRequestServiceProvider.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class SampleRequestServiceProvider:ApiServiceProvider<BaseRequest> {
    
    init(){
        super.init(method: .get, baseUrl: BaseUrl.dev.rawValue, path: Paths.list.rawValue)
    }
    
}
