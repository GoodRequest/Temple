// ___FILEHEADER___

import Foundation
import Combine
import GoodReactor

// MARK: - View Model Implementation

final class ___VARIABLE_ID___ViewModel: GoodReactor {

    // MARK: - TypeAliases

    typealias DI = WithRequestManager

    // MARK: - Enums

    enum Action {

    }

    enum Mutation {

    }

    // MARK: - Structs

    struct State {

    }

    // MARK: - Constants

    internal let initialState: State
    internal let coordinator: GoodCoordinator<AppStep>

    private let di: DI

    // MARK: - Initialization

    init(di: DI, coordinator: Coordinator<AppStep>) {
        self.di = di
        self.coordinator = coordinator
        self.initialState = State()
    }

}

// MARK: - Coordinator

extension ___VARIABLE_ID___ViewModel {

    func navigate(action: Action) -> AppStep? {

    }

}

// MARK: - Reactive

extension ___VARIABLE_ID___ViewModel {

    func mutate(action: Action) -> AnyPublisher<Mutation, Never> {
        return Empty().eraseToAnyPublisher()
//        switch action {
//        default: break
//        }
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

//        switch mutation {
//        default: break
//        }

        return state
    }

}

// MARK: - Private

extension ___VARIABLE_ID___ViewModel {

}
