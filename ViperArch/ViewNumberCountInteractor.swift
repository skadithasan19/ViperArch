//
//  ViewNumberCountInteractor.swift
//  ViperArch
//
//  Created by Hasan, Adit on 3/6/17.
//  Copyright © 2017 Hasan, Adit. All rights reserved.
//

import UIKit

class ViewNumberCountInteractor: NSObject,ViewInteractorInput {

    var output:ViewInteractorOutput?
    
    var count:Int = 0
    
    func incrementNumber() {
        //
        self.count += 1
        self.sendCOunt()
    }
    
    func decrementNumber() {
        //
        if self.canDecrement() {
            self.count -= 1
            self.sendCOunt()
        }
    }
    
 
    func requestNumberCount() {
        self.sendCOunt()
    }
    
    func sendCOunt() {
    
        self.output?.updateCountNumber(numberCount: self.count)
    }

    func canDecrement() -> Bool {
        return self.count > 0
    }
 }
