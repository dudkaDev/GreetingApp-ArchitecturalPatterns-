//
//  GreetingConfigurator.swift
//  GreetingApp
//
//  Created by Андрей Абакумов on 10.02.2023.
//

import Foundation

protocol GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
