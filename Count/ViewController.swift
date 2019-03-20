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
        txt.text="0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    var checked=0
    @IBAction func tapCount(_ sender: UIButton) {
        if(checked==0){
            counter = counter+1;
            if(counter>=9){
                checked=1;
            }
        }else if(checked==1){
            counter=counter-1;
            if(counter<=0){
                checked=0;
            }
        }
        txt.text=String(counter)
    }
    

}

