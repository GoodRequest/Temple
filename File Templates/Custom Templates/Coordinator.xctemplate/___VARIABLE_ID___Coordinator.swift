//___FILEHEADER___

import UIKit

// MARK: - Steps

enum ___VARIABLE_ID___Step {

}

// MARK: - View Model Implementation

final class ___VARIABLE_ID___Coordinator: Coordinator<AppStep> {

    // MARK: - Typealias

    typealias DI = DependencyContainer

    // MARK: - Constant

    private let di: DI
    private let parentCoordinator: Coordinator<AppStep>

    // MARK: - Initializer

    init(di: DependencyContainer,
         parentCoordinator: Coordinator<AppStep>,
         navigationController: UINavigationController?) {
        self.di = di
        self.parentCoordinator = parentCoordinator
    }

    // MARK: - Public

    override func navigate(to step: AppStep) -> StepAction {
        switch step {
        default: return .none
        }
    }

    // MARK: - Override

    override func start() -> UIViewController? {
        super.start()

        let ___VARIABLE_ID___Controller = ___VARIABLE_ID___ViewController.create(
            viewModel: ___VARIABLE_ID___ViewModel(
                di: di,
                coordinator: self
            )
        )

        return ___VARIABLE_ID___Controller
    }

}

// MARK: Navigation - Private

extension ___VARIABLE_ID___Coordinator {

    private func navigate(to step: ___VARIABLE_ID___Step) -> StepAction {

    }

}
