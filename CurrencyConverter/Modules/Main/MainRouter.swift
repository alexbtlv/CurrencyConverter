//
//  MainRouter.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import UIKit

protocol MainRouterProtocol: class {
    func showAboutScene()
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

class MainRouter: MainRouterProtocol {
    
    weak var viewController: MainViewController!
    
    init(viewController: MainViewController) {
        self.viewController = viewController
    }
    
    func showAboutScene() {
        viewController.performSegue(withIdentifier: viewController.selfToAboutSegueName, sender: nil)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // prepare here some data for destination viewController
    }
}
