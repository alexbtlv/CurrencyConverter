//
//  AboutConfigurator.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import Foundation

protocol AboutConfiguratorProtocol : class {
    func configure(with viewController: AbountViewController)
}


class AboutConfigurator: AboutConfiguratorProtocol {
    func configure(with viewController: AbountViewController) {
        let presenter = AboutPresenter(view: viewController)
        let interactor = AboutInteractor(presenter: presenter)
        let router = AboutRouter(viewController: viewController)
        
        presenter.router = router
        presenter.interactor = interactor
        viewController.presenter = presenter
    }
}
