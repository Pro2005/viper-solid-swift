//
//  MainTabBarViewController.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//

import UIKit
import Combine

class MainTabBarViewController: UITabBarController, MainTabPresenterOutput {
    private let presenter: MainTabPresenterInput
    private var cancellables: Set<AnyCancellable> = []
    
    init(presenter: MainTabPresenterInput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad(view: self)
    }
    
    func presentTabs(_ viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
    
}

extension MainTabBarViewController: MainTabScreen {
    func switchTo(tab index: Int) {
        
    }
}
