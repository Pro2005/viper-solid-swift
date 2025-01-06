//
//  TopNewsInteractor.swift
//  app
//
//  Created by Denysov Illia on 2025-01-05.
//

final class TopNewsInteractor: TopNewsInteractorInput {
    weak var presenter: TopNewsInteractorOutput!
}

protocol TopNewsInteractorInput {
    
}

protocol TopNewsInteractorOutput: AnyObject {
    
}
