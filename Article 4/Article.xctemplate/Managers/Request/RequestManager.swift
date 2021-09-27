// ___FILEHEADER___

import Combine
import Alamofire
import GoodRequestManager

// MARK: - Api Server

enum ApiServer: String {

    case base = "https://"

}

class RequestManager: RequestManagerType {

    // MARK: - Constants

    private let session: GRSession<Endpoint, ApiServer>

    // MARK: - Initialization

    init(server: ApiServer) {
        session = GRSession(configuration: .default, baseURL: server)
    }

}
