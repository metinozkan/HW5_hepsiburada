//
//  MainViewBuilder.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import Foundation
import UIKit

class MainViewBuilder {
    
    
    
    class func build()->UIViewController {
        return MainViewController(viewModel:MainViewModel())
    }
}
