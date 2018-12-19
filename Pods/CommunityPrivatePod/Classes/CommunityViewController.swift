//
//  CommunityViewController.swift
//  CommunityPrivatePod
//
//  Created by Kede on 2018/12/18.
//  Copyright © 2018 Clare. All rights reserved.
//

import UIKit
import MediatorPrivatePod

open class CommunityViewController: UIViewController {

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        let x = view.center.x
        let y = view.center.y
        
        let label = UILabel(frame: .zero)
        label.text = "CommunityViewController Page"
        label.sizeToFit()
        label.center = CGPoint(x: x, y: y - 60)
        view.addSubview(label)

        let popButton = UIButton(type: .system)
        popButton.setTitle("Pop", for: .normal)
        popButton.addTarget(self, action: #selector(popToPre), for: .touchUpInside)
        popButton.sizeToFit()
        popButton.center = CGPoint(x: x, y: y)
        view.addSubview(popButton)
        
        let hotspotButton = UIButton(type: .system)
        hotspotButton.setTitle("Push Hotspot", for: .normal)
        hotspotButton.addTarget(self, action: #selector(gotoHotspotVC), for: .touchUpInside)
        hotspotButton.sizeToFit()
        hotspotButton.center = CGPoint(x: x, y: y + 60)
        view.addSubview(hotspotButton)
        
        let scoreButton = UIButton(type: .system)
        scoreButton.setTitle("Enjoy Score", for: .normal)
        scoreButton.addTarget(self, action: #selector(gotoScoreVC), for: .touchUpInside)
        scoreButton.sizeToFit()
        scoreButton.center = CGPoint(x: x, y: y + 80)
        view.addSubview(scoreButton)
    }
    
    @objc func popToPre() {
        if let nav = navigationController {
            nav.popViewController(animated: true)
        }
    }
    
    @objc func gotoHotspotVC() {
        if let nav = navigationController {
            let vc = HotspotViewController()
            nav.pushViewController(vc, animated: true)
        }
    }
    
    @objc func gotoScoreVC() {
        if let vc = Mediator.scoreViewController() {
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
