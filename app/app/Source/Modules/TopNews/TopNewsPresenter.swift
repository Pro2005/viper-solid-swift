//
//  TopNewsPresenter.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//
import UIKit

final class TopNewsPresenter: TopNewsPresenterInput, TopNewsInteractorOutput {
    var view: TopNewsPresenterOutput!
    private let interactor: TopNewsInteractorInput
    private let router: TopNewsRouter
    
    init(interactor: TopNewsInteractorInput, router: TopNewsRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    func makeTabBarItem() -> UITabBarItem {
        UITabBarItem(title: "Top News", image: UIImage(named: "newsTab"), tag: 0)
    }
}

protocol TopNewsPresenterInput {
    
}

protocol TopNewsPresenterOutput {
    
}
