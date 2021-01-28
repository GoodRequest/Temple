//___FILEHEADER___

import Combine
import Alamofire

protocol RequestManagerType: AnyObject {

    func getData() -> AnyPublisher<SampleResponse, AFError>

}


