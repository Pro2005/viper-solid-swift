//
//  TopNewsPresenter.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//
import UIKit

final class TopNewsPresenter: TopNewsPresenterInput, TopNewsInteractorOutput {
    var activeTabBarIcon: UIImage { UIImage.activeNewsTab }
    var inactiveTabBarIcon: UIImage { UIImage.inactiveNewsTab }
    var view: TopNewsPresenterOutput!
    private let interactor: TopNewsInteractorInput
    private let router: TopNewsRouter
    
    init(interactor: TopNewsInteractorInput, router: TopNewsRouter) {
        self.interactor = interactor
        self.router = router
    }
    
}

protocol TopNewsPresenterInput {
    
}

protocol TopNewsPresenterOutput {
    
}
