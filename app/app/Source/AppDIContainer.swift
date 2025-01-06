//
//  AppDIContainer.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//
import UIKit
import SwiftUI

struct AppDIContainer {
    typealias ViewAndRouter = (UIViewController, Router)
    static func makeTabBarModule() -> UIViewController {
        let interactor = MainTabInteractor()
        let router = MainTabRouter()
        let presenter = MainTabPresenter(interactor: interactor, router: router)
        let viewController = MainTabBarViewController(presenter: presenter)
        router.screen = viewController
        return viewController
    }
    
    static func makeTopNewsModule() -> ViewAndRouter {
        let interactor = TopNewsInteractor()
        let router = TopNewsRouter()
        let presenter = TopNewsPresenter(interactor: interactor, router: router)
        let view = TopNewsView(presenter: presenter)
        let viewController = UIHostingController(rootView: view)
        viewController.tabBarItem = UITabBarItem(image: presenter.inactiveTabBarIcon, selectedImage: presenter.activeTabBarIcon)
        router.screen = view
        presenter.view = view
        return (viewController, router)
    }
    
    static func makeSearchModule() -> ViewAndRouter {
        let interactor = SearchInteractor()
        let router = SearchRouter()
        let presenter = SearchPresenter(interactor: interactor, router: router)
        interactor.presenter = presenter
        let view = SearchView(presenter: presenter)
        let viewController = UIHostingController(rootView: view)
        viewController.tabBarItem = UITabBarItem(image: presenter.inactiveTabBarIcon, selectedImage: presenter.activeTabBarIcon)
        router.screen = view
        presenter.view = view
        return (viewController, router)
    }
}
