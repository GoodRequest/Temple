// ___FILEHEADER___

import Foundation
import Alamofire
import GoodExtensions

enum AppError: Error, Equatable, Hashable, NameDescribable {

    case af(AFError)
    case unknown(String)

    static func == (lhs: AppError, rhs: AppError) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    var message: String? {
        switch self {
        case .af(let error):
            return error.errorDescription ?? "Unable to parse AFError description"

        case .unknown(let message):
            return message
        }
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.typeName)

        switch self {
        case .af(let error):
            hasher.combine(error)

        case .unknown(let message):
            hasher.combine(message)
        }
    }

}

extension AFError: NameDescribable, Hashable {

    public static func == (lhs: AFError, rhs: AFError) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.typeName)
        hasher.combine(self.errorDescription)
    }

}
