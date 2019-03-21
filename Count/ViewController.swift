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
    var checked=0 // 체크용 변수를 0으로 선언
    @IBAction func tapCount(_ sender: UIButton) {
    
        
        if(checked==0){
            counter = counter+1;
            if(counter>=9){
                checked=1; //9까지 완료되면 체크용 변수를 1로 바꿈
            }
        }else if(checked==1){ // 체크변수가 1이되면 다시 1씩 빼서 0까지 만듬
            counter=counter-1;
            if(counter<=0){
                checked=0;
            }
        }
        txt.text=String(counter)
    }
    
}

