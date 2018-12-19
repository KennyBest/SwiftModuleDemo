//
//  ScoreViewController.swift
//  NewPrivatePod
//
//  Created by Kede on 2018/12/18.
//  Copyright © 2018 clare. All rights reserved.
//

import UIKit

open class ScoreViewController: UIViewController {

    open var userName: String?
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        let x = view.center.x
        let y = view.center.y
        
        if let userName = userName {
            let label = UILabel(frame: .zero)
            label.text = "Welcome \(userName)"
            label.sizeToFit()
            label.center = CGPoint(x: x, y: 120)
            view.addSubview(label)
        }
        
        let label = UILabel(frame: .zero)
        label.text = "Score Zero"
        label.sizeToFit()
        label.center = CGPoint(x: x, y: y - 100)
        label.textColor = .cyan
        view.addSubview(label)
    
        let giftButton = UIButton(type: .system)
        giftButton.setTitle("Find Gift", for: .normal)
        giftButton.addTarget(self, action: #selector(gotoGiftVC), for: .touchUpInside)
        giftButton.sizeToFit()
        giftButton.center = CGPoint(x: x, y: y - 60)
        view.addSubview(giftButton)
        
    }
    
    @objc func gotoGiftVC() {
        if let navigationController = navigationController {
            let vc = GiftViewController()
            navigationController.pushViewController(vc, animated: true)
        }
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
