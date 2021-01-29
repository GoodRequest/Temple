//___FILEHEADER___

import Foundation
import Combine
import Alamofire
enum ApiServer: String {
    case base = "https://"
}
class RequestManager: RequestManagerType {
    private let session: GRSession<Endpoint, ApiServer>
    init(server: ApiServer, localizationManager: LocalizationManagerType, appPreferences: AppPreferences, cache: CacheType) {
        session = GRSession(configuration: .default, baseURL: server.rawValue)
    }
    func getData() -> AnyPublisher<SampleResponse, AFError> {
        return session.request(endpoint: .data)
            .goodify()
    }
}
// MARK: Privates
extension RequestManager {
    private class DefaultRedirectHandler: RedirectHandler {
        func task(_ task: URLSessionTask, willBeRedirectedTo request: URLRequest, for response: HTTPURLResponse, completion: @escaping (URLRequest?) -> Void) {
            return completion(nil)
        }
    }
}
