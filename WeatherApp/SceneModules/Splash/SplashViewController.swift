//
//  SplashViewController.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import Foundation
import UIKit
class SplashViewController :BaseViewController<SplashViewModel>{
    
    
    
    private lazy var image :UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints=false
        temp.isUserInteractionEnabled = false
        temp.image = PageViewImages.defaultSplashBackground.value
        temp.contentMode = .scaleAspectFill
        
        return temp
        
    }()
    
    
    private lazy var titleInfo   : UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints=false
        temp.text = "Weather app"
        temp.font = MainFont.medium(32).value
        temp.textColor = .white
        return temp
        
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        appendComponent()
        viewModel.fireApplicationInitiateProcess()
    }
    
    
    private func appendComponent(){
        view.addSubview(image)
        view.addSubview(titleInfo)
        
        
        NSLayoutConstraint.activate([
        
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            image.topAnchor.constraint(equalTo: view.topAnchor),
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            titleInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleInfo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
            
            
        ])
    
    }
    
    
    
}
