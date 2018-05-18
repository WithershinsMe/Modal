//
//  ViewController.swift
//  ModalExplore
//
//  Created by GK on 2018/5/16.
//  Copyright © 2018年 GK. All rights reserved.
//

import UIKit
import GHModalStatus

class ViewController: UIViewController {

    @IBAction func popViewButtonClicked(_ sender: UIButton) {
        
        let modalView = GHModalStatusView(frame: self.view.bounds)
        //modalView.set(image: downloadImage)
        modalView.set(headline: "Downloading")
        view.addSubview(modalView)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

