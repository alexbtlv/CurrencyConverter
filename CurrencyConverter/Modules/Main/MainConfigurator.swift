//
//  MainConfigurator.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import UIKit

protocol MainConfiguratorProtocol: class {
    func configure(with viewController: MainViewController)
}

class MainConfigurator: MainConfiguratorProtocol {
    
    func configure(with viewController: MainViewController) {
        let presenter = MainPresenter(view: viewController)
        let interactor = MainInteractor(presenter: presenter)
        let router = MainRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        presenter.currencyPickerView = viewController.currencyPickerView
        viewController.currencyPickerView.delegate = presenter
    }
}

