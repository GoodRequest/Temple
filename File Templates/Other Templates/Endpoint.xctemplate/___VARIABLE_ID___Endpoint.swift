// ___FILEHEADER___

import Foundation
import Alamofire
import GoodStructs
import GoodRequestManager

// MARK: - Constants

private enum C {

    enum ContentType {

        static let appJson = "application/json"

    }

}

enum ___VARIABLE_ID___Endpoint: GREndpointManager {

    case data

    var path: String {
        switch self {
        case .data:
            return "/api/data"
        }
    }

    var method: HTTPMethod {
        switch self {
        case .data:
            return .get
        }
    }

    var queryParameters: Either<Parameters, GREncodable>? {
        switch self {
        default:
            return nil
        }
    }

    var parameters: Either<Parameters, GREncodable>? {
        switch self {
        default:
            return nil
        }
    }

    var encoding: ParameterEncoding {
        return JSONEncoding.default
    }

    var headers: HTTPHeaders? {
        switch self {
        default:
            return [.contentType(C.ContentType.appJson)]
        }
    }

    func asURL(baseURL: String) throws -> URL {
        var url = try baseURL.asURL()
        url.appendPathComponent(path)
        return url
    }

}
