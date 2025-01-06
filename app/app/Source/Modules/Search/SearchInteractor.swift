//
//  SearchInteractor.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//

final class SearchInteractor: SearchInteractorInput {
    weak var presenter: SearchInteractorOutput!
}

protocol SearchInteractorInput {
    
}

protocol SearchInteractorOutput: AnyObject {
    
}
