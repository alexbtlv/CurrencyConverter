//
//  AboutPresenter.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import Foundation

protocol AboutPresenterProtocol: class {
    var router: AboutRouterProtocol! { set get }
    func configureView()
    func closeButtonTapped()
    func urlButtonTapped(with urlString: String?)
}


class AboutPresenter: AboutPresenterProtocol {
    weak var view: AboutViewProtocol!
    var interactor: AboutInteractorProtocol!
    var router: AboutRouterProtocol!
    
    required init(view: AboutViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view.setUrlButtonTitle(with: interactor.urlRatesSource)
    }
    
    func closeButtonTapped() {
        router.closeCurrentViewController()
    }
    
    func urlButtonTapped(with urlString: String?) {
        if let url = urlString {
            interactor.openUrl(with: url)
        }
    }
}
