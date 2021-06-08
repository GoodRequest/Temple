//___FILEHEADER___

import Combine
import GoodReactor

// MARK: - View Model

final class ___VARIABLE_ID___ViewModel: GoodReactor {

    // MARK: - TypeAliases

    typealias DI = WithRequestManager
    typealias Section = ___VARIABLE_ID___Factory.Section

    // MARK: - Enums

    enum DataFetchingState: Equatable {

        case idle
        case loading
        case failure(AppError)
        case empty

    }

    enum Action {

        case refreshData

    }

    enum Mutation {

        case didFetchData(String)
        case didFailFetchingData(AppError)
        case didStartLoadingData

    }

    // MARK: - Structs

    struct State {

        var dataFetchingState: DataFetchingState
        var sections: [Section]
        var dataResponse: String?

    }

    // MARK: - Constants

    internal let initialState: State
    internal let coordinator: GoodCoordinator<AppStep>

    private let factory = ___VARIABLE_ID___Factory()
    private let di: DI

    // MARK: - Constructor

    init(di: DI, coordinator: Coordinator<AppStep>) {
        self.di = di
        self.coordinator = coordinator
        self.initialState = State(
            dataFetchingState: .idle,
            sections: []
        )
    }

}

// MARK: - Coordinator

extension ___VARIABLE_ID___ViewModel {

    func navigate(action: Action) -> AppStep? {
        switch action {
        case .refreshData:
            return nil
        }
    }

}

// MARK: - Reactive

extension ___VARIABLE_ID___ViewModel {

    func transform(mutation: AnyPublisher<Mutation, Never>) -> AnyPublisher<Mutation, Never> {
        return mutation
            .merge(with: fetchData(requestManager: di.requestManager))
            .eraseToAnyPublisher()
    }

    func mutate(action: Action) -> AnyPublisher<Mutation, Never> {
        switch action {
        case .refreshData:
            return fetchData(requestManager: di.requestManager)
        }
    }

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

        switch mutation {
        case .didFetchData(let dataResponse):
            state.dataResponse = dataResponse
            state.dataFetchingState = .idle
            state = updateSections(state: state)

        case .didFailFetchingData(let error):
            state.dataFetchingState = .failure(error)

        case .didStartLoadingData:
            state.dataFetchingState = .loading
        }

        return state
    }

    private func updateSections(state: State) -> State {
        var newState = state

        newState.sections = factory.makeSections(for: state.dataResponse)
        newState.dataFetchingState = state.sections.isEmpty ? .empty : .idle

        return newState
    }

}

// MARK: - Private

private extension ___VARIABLE_ID___ViewModel {

    func fetchData(requestManager: RequestManagerType) -> AnyPublisher<Mutation, Never> {
        return Just(Mutation.didStartLoadingData)
            .eraseToAnyPublisher()
    }

}
