// ___FILEHEADER___

import Foundation

// MARK: - Requests

protocol WithRequestManager: AnyObject {

    var requestManager: RequestManagerType { get }

}

final class DependencyContainer: WithRequestManager {

    lazy var requestManager: RequestManagerType = RequestManager(server: .base)

}
