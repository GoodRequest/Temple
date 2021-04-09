//___FILEHEADER___

import Foundation
import Combine
import GoodReactor
import GoodStructs
import GoodCombineExtensions

// MARK: - View Model Implementation

final class ___VARIABLE_ID___ViewModel: GoodReactor {

    // MARK: - View Model Definition

    typealias DI = WithRequestManager

    struct State {

    }

    enum Action {

    }

    enum Mutation {

    }

    // MARK: - Constants

    internal let initialState: State
    internal let coordinator: GoodCoordinator<AppStep>

    private let di: DI

    // MARK: - Constructor

    init(di: DI, coordinator: Coordinator<AppStep>) {
        self.di = di
        self.coordinator = coordinator
        self.state = State()
    }

}

// MARK: - Coordinator

extension ___VARIABLE_ID___ViewModel {

    func navigate(action: Action) -> AppStep? {

    }

}

// MARK: - Reactive

extension ___VARIABLE_ID___ViewModel {

    func transform(action: AnyPublisher<Action, Never>) -> AnyPublisher<Action, Never> {
        return Empty().eraseToAnyPublisher()
    }

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

extension ___VARIABLE_ID___ViewModel {

}
