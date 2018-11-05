//
//  AboutRouter.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import Foundation

protocol AboutRouterProtocol: class {
    func closeCurrentViewController()
}

class AboutRouter: AboutRouterProtocol {
    
    weak var viewController: AbountViewController!
    
    init(viewController: AbountViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
