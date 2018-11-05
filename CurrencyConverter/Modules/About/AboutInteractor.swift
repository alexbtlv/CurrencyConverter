//
//  AboutInteractor.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import Foundation

protocol AboutInteractorProtocol: class {
    var urlRatesSource: String { get }
    func openUrl(with urlString: String)
}

class AboutInteractor: AboutInteractorProtocol {
    
    weak var presenter: AboutPresenterProtocol!
    let serverService: ServerServiceProtocol = ServerService()
    
    required init(presenter: AboutPresenterProtocol) {
        self.presenter = presenter
    }
    
    var urlRatesSource: String {
        get {
            return serverService.urlRatesSource
        }
    }
    
    func openUrl(with urlString: String) {
        serverService.openUrl(with: urlString)
    }
}
