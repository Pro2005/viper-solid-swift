//
//  SearchPresenter.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//
import UIKit

final class SearchPresenter: SearchPresenterInput, SearchInteractorOutput {
    var activeTabBarIcon: UIImage { UIImage.activeSearchTab }
    var inactiveTabBarIcon: UIImage { UIImage.inactiveSearchTab }
    var view: SearchPresenterOutput!
    private let interactor: SearchInteractorInput
    private let router: SearchRouter
    
    init(interactor: SearchInteractorInput, router: SearchRouter) {
        self.interactor = interactor
        self.router = router
    }
    
}

protocol SearchPresenterInput {
    
}

protocol SearchPresenterOutput {
    
}
