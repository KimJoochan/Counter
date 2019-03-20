//
//  ViewController.swift
//  Count
//
//  Created by dit02 on 2019. 3. 20..
//  Copyright © 2019년 dit02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt: UILabel!
    var counter=0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func tapCount(_ sender: UIButton) {
        counter = counter+1;
        if(counter>=11){
            counter=1;
        }
        txt.text=String(counter)
    }
    

}

