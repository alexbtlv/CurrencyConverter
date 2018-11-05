//
//  AbountViewController.swift
//  CurrencyConverter
//
//  Created by Alexander Batalov on 11/5/18.
//  Copyright © 2018 Alexander Batalov. All rights reserved.
//

import UIKit

protocol AboutViewProtocol: class {
    func setUrlButtonTitle(with title: String)
}

class AbountViewController: UIViewController, AboutViewProtocol {

    @IBOutlet weak var urlButton: UIButton!
    
    var presenter: AboutPresenterProtocol!
    let configurator: AboutConfiguratorProtocol = AboutConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
    }

    @IBAction func closeButtonClicked(_ sender: UIBarButtonItem) {
        presenter.closeButtonTapped()
    }
    
    @IBAction func urlButtonClicked(_ sender: UIButton) {
        presenter.urlButtonTapped(with: sender.currentTitle)
    }
    
    func setUrlButtonTitle(with title: String) {
        urlButton.setTitle(title, for: .normal)
    }
}
