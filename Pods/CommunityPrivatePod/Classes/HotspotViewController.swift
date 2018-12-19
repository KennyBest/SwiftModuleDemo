//
//  HotspotViewController.swift
//  CommunityPrivatePod
//
//  Created by Kede on 2018/12/18.
//  Copyright © 2018 Clare. All rights reserved.
//

import UIKit

class HotspotViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        let label = UILabel(frame: .zero)
        view.addSubview(label)
        label.text = "Hotspot all in real world"
        label.sizeToFit()
        label.center = view.center
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
