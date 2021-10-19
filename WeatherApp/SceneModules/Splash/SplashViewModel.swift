//
//  SplashViewModel.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import Foundation

typealias VoidBlock = () -> Void

class SplashViewModel {
    
    private var splashFinalizeListener: VoidBlock?
    
    init(completion: @escaping VoidBlock) {
        self.splashFinalizeListener = completion
    }
    
    func fireApplicationInitiateProcess() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.splashFinalizeListener?()
        }
        
    }
    
}
