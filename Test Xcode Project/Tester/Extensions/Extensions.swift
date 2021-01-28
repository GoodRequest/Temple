//
//  Extensions.swift
//  Tester
//
//  Created by Andrej Jasso on 29/06/2020.
//  Copyright © 2020 Ado Corp. All rights reserved.
//

import Foundation
import UIKit

protocol NameDescribable {
    var typeName: String { get }
    static var typeName: String { get }
}

extension NameDescribable {
    var typeName: String {
        return String(describing: type(of: self))
    }

    static var typeName: String {
        return String(describing: self)
    }
}

extension NSObject: NameDescribable {}
extension Array: NameDescribable {}

protocol Instantiable {
    static func makeInstance(name: String?) -> Self
}

extension Instantiable where Self: UIViewController {
    /// Instantiates controller from storyboard.
    /// - example:
    /// `let myViewController = MyViewController.makeInstance()`
    /// - important:
    /// Initial controller of the same type must exists in storyboard named as controller's
    /// class without "ViewController" suffix, otherwise will `fatalError()`.
    /// - Returns: Instantiated view controller.
    static func makeInstance(name: String? = nil) -> Self {
        var viewControllerName: String
        if let name = name {
            viewControllerName = name
        } else {
            viewControllerName = typeName.replacingOccurrences(of: "ViewController", with: "")
        }

        let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
        guard let instance = storyboard.instantiateInitialViewController() as? Self else { fatalError("Could not make instance of \(String(describing: self))") }
        return instance
    }
}

extension UIViewController: Instantiable {}

protocol ViewControllerType {

    associatedtype ViewModelType

    var viewModel: ViewModelType! { get set }

}

extension ViewControllerType where Self: UIViewController {

    static func create(viewModel: ViewModelType) -> Self {
        var controller = Self.makeInstance()
        controller.viewModel = viewModel
        return controller
    }

}

protocol ViewModelType {

    associatedtype Config

    var config: Config { get set }

    init()

}

extension ViewModelType {

    init(configuration: Config) {
        self.init()
        config = configuration
    }

}

class Dependency {

    static let shared = Dependency()

}
