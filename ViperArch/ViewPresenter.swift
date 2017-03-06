//
//  ViewPresenter.swift
//  ViperArch
//
//  Created by Hasan, Adit on 3/6/17.
//  Copyright © 2017 Hasan, Adit. All rights reserved.
//

import UIKit

class ViewPresenter: NSObject, ViewInteractorOutput {
    
    var view:VIewCountView?
    
    var interactor:ViewInteractorInput?
    
 
    
    let countFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter
    }()
    
    func updateCountNumber(numberCount: Int) {
        self.view?.setViewCountText(text: self.formattedCount(count: numberCount))
        self.view?.setDecrementEnabled(enabled: numberCount > 0)
    }
    
    
    func updateCountVIew () {
        self.interactor?.requestNumberCount()
    }
    
    
    func incrementNumber () {
        self.interactor?.incrementNumber()
    }
    
    
    func decrementNumber () {
        self.interactor?.decrementNumber()
    }
    
    
    func formattedCount(count:NSInteger) -> String {
        return (countFormatter.string(from: NSNumber(value:count)))!
    }
}
