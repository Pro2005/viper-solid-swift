//
//  Router.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//

protocol Router: AnyObject {
    var screen: Screen! { get set }
    func navigation(to destination: Destination)
}

protocol Destination {
    var identifier: String { get }
    var nextDestination: Destination? { get }
}
