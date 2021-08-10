//___FILEHEADER___

import UIKit
import Combine
import GRProvider

// MARK: - Class

final class ___VARIABLE_ID___ViewController: UIViewController {

    // MARK: - TypeAliases

    typealias Section = ___VARIABLE_ID___Factory.Section

    // MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!

    // MARK: - Constants

    private enum C {

    }

    // MARK: - Variables

    lazy var provider = GRDiffableTableViewProvider<Section>(tableView: tableView)

    private var viewModel: ___VARIABLE_ID___ViewModel!
    private var cancellables = Set<AnyCancellable>()

    // MARK: - Initializer

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

        setupTableView()
        setupTableProvider()
        setupNavigation()

        bindState(reactor: viewModel)
        bindActions(reactor: viewModel)
    }

}

// MARK: - Setup

private extension ___VARIABLE_ID___ViewController {

    // MARK: - Setup Navigation

    func setupNavigation() {
        
    }

    // MARK: - Setup Table View

    func setupTableView() {
        registerCells()
        setupRefreshControl()
    }

    func registerCells() {

    }

    func setupRefreshControl() {
// Setup refresh controll action bound to view model action
//
//        provider.configureRefreshGesture = { [weak self] _ in
//            self?.viewModel.send(event: .refreshData)
//        }
    }

    // MARK: - Setup Table View Provider

    func setupTableProvider() {
        setupCell()
    }

    func setupCell() {

    }

}

// MARK: - Combine

extension ___VARIABLE_ID___ViewController {

    func bindState(reactor: ___VARIABLE_ID___ViewModel) {
        reactor.state
            .map { $0.dataFetchingState }
            .removeDuplicates()
            .sink { [weak self] state in
// Switch over data fetching states to handle
//
//                switch state {
//                case .idle:
//                    self?.showIdleState()
//
//                case .loading:
//                    self?.showLoadingState()
//
//                case .failure(let error):
//                    self?.showErrorState(error: error)
//
//                case .empty:
//                    self?.showEmptyState()
//                }
            }
            .store(in: &cancellables)

        reactor.state
            .map { $0.sections }
            .removeDuplicates()
            .sink { [weak self] sections in
                guard let self = self else { return }
                self.provider.bind(to: self.tableView, sections: sections)
            }
            .store(in: &cancellables)
    }

    func bindActions(reactor: ___VARIABLE_ID___ViewModel) {

    }

}

// MARK: - Private

extension ___VARIABLE_ID___ViewController {

// Sample state handling functions
//
//    func showIdleState() {
//        tableView.refreshControl?.endCurrentRefreshing()
//    }
//
//    func showLoadingState() {
//
//    }
//
//    func showErrorState(error: AppError) {
//        tableView.refreshControl?.endCurrentRefreshing()
//        if viewModel.currentState.sections.isEmpty {
//
//        } else {
//
//        }
//    }
//
//    func showEmptyState() {
//        tableView.refreshControl?.endCurrentRefreshing()
//    }

}
