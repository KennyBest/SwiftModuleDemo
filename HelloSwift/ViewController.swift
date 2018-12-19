//
//  ViewController.swift
//  HelloSwift
//
//  Created by Kede on 2018/12/17.
//  Copyright © 2018 Clare. All rights reserved.
//

import UIKit
import NewPrivatePod
import CommunityPrivatePod

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        navigationItem.title = "HelloSwift"
        
        let button = UIButton(type: .system)
        button.center = view.center
        button.setTitle("Present", for: .normal)
        button.sizeToFit()
        button.addTarget(self, action: #selector(presentOther), for: .touchUpInside)
        view.addSubview(button)
        
        let button2 = UIButton(type: .system)
        button2.center = CGPoint(x: view.center.x, y: view.center.y + 60)
        button2.setTitle("Present", for: .normal)
        button2.sizeToFit()
        button2.addTarget(self, action: #selector(presentSecond), for: .touchUpInside)
        view.addSubview(button2)
    }

    
    @objc func presentOther() -> Void {
        let vc = LogcatViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func presentSecond() {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func gotoCommunity(_ sender: Any) {
        let vc = CommunityViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

