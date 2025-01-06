//
//  MainTabInteractor.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//

final class MainTabInteractor: MainTabInteractorInput {
    weak var presenter: MainTabInteractorOutput!
}

protocol MainTabInteractorInput {
    
}

protocol MainTabInteractorOutput: AnyObject {
    
}
