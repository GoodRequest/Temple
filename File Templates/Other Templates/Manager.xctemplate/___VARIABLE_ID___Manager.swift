// ___FILEHEADER___

import UIKit

// MARK: - Manager Implementation

final class ___VARIABLE_ID___Manager: ___VARIABLE_ID___ManagerType {

    // MARK: - Typealias

    typealias DI = DependencyContainer

    // MARK: - Constants

    private let di: DI

    // MARK: - Initializer

    init(di: DependencyContainer) {
        self.di = di
    }

    // MARK: - Public

}

// MARK: Manager Implementation

protocol With___VARIABLE_ID___Manager: AnyObject {

    var ___VARIABLE_VAR___Manager: ___VARIABLE_ID___ManagerType { get }

}

// MARK: Manager Implementation

extension DependencyContainer: With___VARIABLE_ID___Manager {

    var ___VARIABLE_VAR___Manager: ___VARIABLE_ID___ManagerType {
        return ___VARIABLE_ID___Manager(di: self)
    }

}
