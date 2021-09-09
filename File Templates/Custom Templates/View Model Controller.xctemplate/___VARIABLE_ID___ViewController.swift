// ___FILEHEADER___

import UIKit

// MARK: - Class

final class ___VARIABLE_ID___ViewController: UIViewController {

    // MARK: - Outlets

    // MARK: - Constants

    private enum C {

    }

    // MARK: - Variables

    private var viewModel: ___VARIABLE_ID___VM!

    // MARK: - Initializer

    /// Class instance creator
    /// - Parameter viewModel: Data container of current View Controller
    /// - Returns: Instance of self with initialized View Model
    static func create(viewModel: ___VARIABLE_ID___ViewModel) -> Self {
        let instance = makeInstance()
        instance.viewModel = viewModel
        return instance
    }

}

// MARK: - Lifecycle

extension ___VARIABLE_ID___ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        viewModel.setup(viewDelegate: self)
    }

}

// MARK: - Private

extension ___VARIABLE_ID___ViewController {

    private func setupView() {

    }

}

// MARK: - ___VARIABLE_ID___ViewDelegate

extension ___VARIABLE_ID___ViewController: ___VARIABLE_ID___ViewDelegate {

}
