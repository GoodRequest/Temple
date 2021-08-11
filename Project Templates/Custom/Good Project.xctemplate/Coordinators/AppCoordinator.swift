// ___FILEHEADER___

import UIKit
import GoodExtensions

enum AppStep {}

final class AppCoordinator: Coordinator<AppStep> {

    // MARK: - Constants

    private let di: DependencyContainer
    private let window: UIWindow

    // MARK: - Initialization

    init(window: UIWindow, di: DependencyContainer) {
        self.window = window
        self.di = di
    }

    // MARK: - Override

    @discardableResult
    override func start() -> UIViewController? {
        super.start()

        return window.rootViewController
    }

}
