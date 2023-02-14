//
//  GreetingModels.swift
//  GreetingApp
//
//  Created by Андрей Абакумов on 14.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

typealias GreetingViewModel = Greeting.ShowGreeting.ViewModel
typealias GreetingRequest = Greeting.ShowGreeting.Request
typealias GreetingResponse = Greeting.ShowGreeting.Response

enum Greeting {
 
    // MARK: Use cases
    enum ShowGreeting {
        struct Request {
        }
        
        struct Response {
            let name: String
            let surname: String
        }
        
        struct ViewModel {
            let greeting: String
        }
    }
}