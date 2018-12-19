//
//  LogcatViewController.swift
//  NewPrivatePod
//
//  Created by Kede on 2018/12/17.
//  Copyright © 2018 clare. All rights reserved.
//

import UIKit

open class LogcatViewController: UIViewController {

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
        
    }
    
    func setupUI() {
        view.backgroundColor = UIColor.magenta
        
        let dismissButton = UIButton(type: .system)
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.center = view.center
        dismissButton.sizeToFit()
        dismissButton.addTarget(self, action: #selector(dismissSelf), for: .touchUpInside)
        view.addSubview(dismissButton)
    }

    @objc func dismissSelf() {
        self.dismiss(animated: true, completion: nil)
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
