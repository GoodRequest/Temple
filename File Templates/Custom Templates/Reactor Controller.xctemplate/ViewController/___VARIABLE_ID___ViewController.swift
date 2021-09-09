// ___FILEHEADER___

import UIKit
import Combine

// MARK: - Class

final class ___VARIABLE_ID___ViewController: UIViewController {

    // MARK: - Outlets

    // MARK: - Constants

    private enum C {

    }

    // MARK: - Variables

    private var viewModel: ___VARIABLE_ID___ViewModel!
    private var cancellables = Set<AnyCancellable>()

    // MARK: - Initialization

    static func create(viewModel: ___VARIABLE_ID___ViewModel) -> Self {
        let instance = gr.makeInstance()
        instance.viewModel = viewModel
        return instance
    }

}

// MARK: - Lifecycle

extension ___VARIABLE_ID___ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        bindState(reactor: viewModel)
        bindActions(reactor: viewModel)
    }

}

// MARK: - Setup

extension ___VARIABLE_ID___ViewController {

}

// MARK: - Combine

extension ___VARIABLE_ID___ViewController {

    func bindState(reactor: ___VARIABLE_ID___ViewModel) {

    }

    func bindActions(reactor: ___VARIABLE_ID___ViewModel) {

    }

}

// MARK: - Private

extension ___VARIABLE_ID___ViewController {

}
