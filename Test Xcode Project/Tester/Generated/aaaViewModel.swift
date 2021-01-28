//
//  aaaViewModel.swift
//  Tester
//
//  Created by Andrej Jasso on 30/06/2020.
//  Copyright © 2020 Ado Corp. All rights reserved.
//

import Foundation
import Combine

// MARK: - View Model Implementation

final class aaaViewModel: ViewModelType {

    // MARK: - Class definitions

    typealias DI = Dependency
    typealias ConfigType = Config
    typealias StateType = State

    struct Config {
        let di: DI
        var state: StateType
    }

    struct State {

    }

    enum Action {

    }

    enum Mutation {

    }

    // MARK: - Constant

    // MARK: - Variable

    internal var config: Config
    internal let initialState: StateType = StateType()

    // MARK: - Initializer

    init(configuration: ConfigType) {
        self.config = configuration
    }

}

// MARK: - Reactor

extension aaaViewModel {

    func mutate(action: Action) -> AnyPublisher<Mutation, Never> {
        switch action {
        default: break
        }
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

        switch mutation {
        default: break
        }

        return state
    }

}

// MARK: - Private

extension aaaViewModel {

}
