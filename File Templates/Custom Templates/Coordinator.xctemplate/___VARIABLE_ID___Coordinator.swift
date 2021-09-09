// ___FILEHEADER___

import UIKit

// MARK: - Steps

enum ___VARIABLE_ID___Step {

}

// MARK: - View Model Implementation

final class ___VARIABLE_ID___Coordinator: Coordinator<AppStep> {

    // MARK: - Typealias

    typealias DI = DependencyContainer

    // MARK: - Constants

    private let di: DI
    private let parentCoordinator: Coordinator<AppStep>

    // MARK: - Initializer

    init(di: DependencyContainer,
         parentCoordinator: Coordinator<AppStep>,
         navigationController: UINavigationController?) {
        self.di = di
        self.parentCoordinator = parentCoordinator
    }

    // MARK: - Override

    override func start() -> UIViewController? {
        super.start()

        let ___VARIABLE_VarID___Controller = ___VARIABLE_ID___ViewController.create(
            viewModel: ___VARIABLE_ID___ViewModel(
                di: di,
                coordinator: self
            )
        )

        return ___VARIABLE_VarID___Controller
    }

    // MARK: - Public

    override func navigate(to step: AppStep) -> StepAction {
        switch step {
        default: return .none
        }
    }

}

// MARK: Navigation

private extension ___VARIABLE_ID___Coordinator {

    func navigate(to step: ___VARIABLE_ID___Step) -> StepAction {
        return .none
    }

}
