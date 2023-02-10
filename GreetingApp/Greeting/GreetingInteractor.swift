//
//  GreetingInteractor.swift
//  GreetingApp
//
//  Created by Андрей Абакумов on 10.02.2023.
//

import Foundation

protocol GreetingInteractorInputProtocol {
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    
    unowned private let presenter: GreetingInteractorOutputProtocol
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let person = Person(name: "Tim", surname: "Cook")
        let greetingData = GreetingData(name: person.name, surname: person.surname)
        presenter.receiveGreetingData(greetingData: greetingData)
    }
}
