//
//  SearchPresenter.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//
import UIKit

final class SearchPresenter: SearchPresenterInput, SearchInteractorOutput {
    var view: SearchPresenterOutput!
    private let interactor: SearchInteractorInput
    private let router: SearchRouter
    
    init(interactor: SearchInteractorInput, router: SearchRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    func makeTabBarItem() -> UITabBarItem {
        UITabBarItem(title: "Search", image: UIImage(named: "searchTab"), tag: 0)
    }
}

protocol SearchPresenterInput {
    
}

protocol SearchPresenterOutput {
    
}
