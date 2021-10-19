//
//  SplashViewBuilder.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import Foundation
import UIKit

class SplashViewBuilder {
    
    
    class func build()-> UIViewController {
        return SplashViewController(viewModel:SplashViewModel() )
    }
}
