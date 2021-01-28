//___FILEHEADER___

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let rootDI = di

    private var appCoordinator: AppCoordinator!
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        if let window = window {
            appCoordinator = AppCoordinator(window: window, di: rootDI)
            appCoordinator.start()
        }

        return true
    }

}
