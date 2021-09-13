// ___FILEHEADER___

import Combine
import Alamofire
import GoodRequestManager

class ___VARIABLE_ID___RequestManager: ___VARIABLE_ID___RequestManagerType {

    // MARK: - Enums

    enum ApiServer: String {

        case base = "https://"

    }

    // MARK: - Constants

    private let session: GRSession<Endpoint, ApiServer>

    // MARK: - Initialization

    init(server: ApiServer) {
        session = GRSession(configuration: .default, baseURL: server)
    }

}
