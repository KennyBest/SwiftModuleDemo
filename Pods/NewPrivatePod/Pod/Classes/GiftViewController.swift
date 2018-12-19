//
//  GiftViewController.swift
//  NewPrivatePod
//
//  Created by Kede on 2018/12/18.
//  Copyright © 2018 clare. All rights reserved.
//

import UIKit

class GiftViewController: UIViewController {
    
    lazy var markLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Gift Heaven"
        label.textColor = UIColor.purple
        label.sizeToFit()
        label.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 200)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(markLabel)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
