// ___FILEHEADER___

import UIKit
import Combine

/**
 # Description

 BaseViewController:
 - Created to:
    - remove boiler-plate from view controller
    - remove the need to force-cast viewModel type
    - define cancellables so you don't have to

 - Class is generic with the viewModel type as the generic type.

 # Important

 Should only be scalled if all the extended controllers use the property to avoid unnecessarry
 */

class BaseViewController<T>: UIViewController {

    let viewModel: T
    let cancellables = Set<AnyCancellable>()

    convenience init() {
        fatalError("init() has not been implemented")
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    required init(viewModel: T) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }

}
