//
//  Mediator+CommunityPrivatePod.swift
//  CommunityPrivatePod
//
//  Created by Kede on 2018/12/19.
//  Copyright © 2018 Clare. All rights reserved.
//

import MediatorPrivatePod
import UIKit

let newPrivatePodModule = "NewPrivatePod"

public extension Mediator {
    
    static func scoreViewController() -> UIViewController? {
        return Mediator.shared.targetViewController(module: newPrivatePodModule, className: "ScoreViewController", params: nil)
    }
}
