
//
//  ViewInteractorIO.swift
//  ViperArch
//
//  Created by Hasan, Adit on 3/6/17.
//  Copyright © 2017 Hasan, Adit. All rights reserved.
//

import UIKit

protocol ViewInteractorInput {
    func requestNumberCount();
    func incrementNumber();
    func decrementNumber();
}

protocol ViewInteractorOutput {
    func updateCountNumber(numberCount:Int);
}
