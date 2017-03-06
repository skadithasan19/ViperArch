//
//  ViewController.swift
//  ViperArch
//
//  Created by Hasan, Adit on 3/6/17.
//  Copyright © 2017 Hasan, Adit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VIewCountView {

    var presenter:ViewPresenter?
    
    @IBOutlet weak var counterText: UILabel!
    
    @IBOutlet weak var decrementButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setViewCountText(text: String) {
        self.counterText.text = text
    }

    func setDecrementEnabled(enabled: Bool) {
        self.decrementButton.isEnabled = enabled
    }

    @IBAction func minus(_ sender: Any) {
        self.presenter?.decrementNumber()
    }
    
    @IBAction func plus(_ sender: Any) {
        self.presenter?.incrementNumber()
    }
}

