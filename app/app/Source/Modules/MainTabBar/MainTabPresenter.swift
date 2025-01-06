//
//  MainTabPresenter.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//
import UIKit

final class MainTabPresenter: MainTabPresenterInput {
    private weak var view: MainTabPresenterOutput!
    private let interactor: MainTabInteractorInput
    private let router: MainTabRouter
    
    init(interactor: MainTabInteractorInput, router: MainTabRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad(view: MainTabPresenterOutput) {
        self.view = view
        createTabs()
    }
    
    private func createTabs() {
        let news = AppDIContainer.makeTopNewsModule()
        let search = AppDIContainer.makeSearchModule()
        view.presentTabs([news.0, search.0])
    }
}

protocol MainTabPresenterInput {
    func viewDidLoad(view: MainTabPresenterOutput)
}

protocol MainTabPresenterOutput: AnyObject {
    func presentTabs(_ viewControllers: [UIViewController])
}
