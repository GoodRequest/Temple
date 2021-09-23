// ___FILEHEADER___

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Variables

    private var appCoordinator: AppCoordinator!
    var window: UIWindow?

    // MARK: - Lifecycle

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        guard let window = window else {
            return true
        }

        appCoordinator = AppCoordinator(window: window, di: DI())
        appCoordinator.start()

        return true
    }

}
