// ___FILEHEADER___

import Combine
import SafariServices
import GoodExtensions
import GoodReactor

enum StepAction {

    case push(UIViewController)
    case pushWithCompletion(UIViewController, VoidClosure)
    case present(UIViewController, UIModalPresentationStyle, UIViewControllerTransitioningDelegate? = nil)
    case safari(URL)
    case call(String)
    case dismiss
    case pop
    case popTo(UIViewController)
    case popToRoot
    case set([UIViewController])
    case none

    var isModalAction: Bool {
        switch self {
        case .present, .dismiss, .safari, .call:
            return true

        default:
            return false
        }
    }

    var isNavigationAction: Bool {
        switch self {
        case .push, .pushWithCompletion, .pop, .popTo, .set, .popToRoot:
            return true

        default:
            return false
        }
    }

}

class Coordinator<Step>: GoodCoordinator<Step> {

    var rootViewController: UIViewController?

    var rootNavigationController: UINavigationController? {
        return rootViewController as? UINavigationController
    }

    init(rootViewController: UIViewController? = nil, parentCoordinator: GoodCoordinator<Step>? = nil) {
        super.init(parentCoordinator: parentCoordinator)

        self.parentCoordinator = parentCoordinator
        self.rootViewController = rootViewController
    }

    @discardableResult
    func navigate(to stepper: Step) -> StepAction {
        return .none
    }

    private func navigate(flowAction: StepAction) {
        if flowAction.isModalAction == true {
            guard let viewController = rootViewController else {
                assertionFailure("Coordinator without root view controller")
                return
            }

            switch flowAction {
            case .dismiss:
                viewController.dismiss(animated: true, completion: nil)

            case .present(let controller, let style, let transitionDelegate):
                if let transitionDelegate = transitionDelegate {
                    controller.transitioningDelegate = transitionDelegate
                }
                controller.modalPresentationStyle = style
                viewController.present(controller, animated: true, completion: nil)

            case .safari(let url):
                let safariViewController = SFSafariViewController(url: url)
                return viewController.present(safariViewController, animated: true, completion: nil)

            case .call(let number):
                UIApplication.shared.gr.open(.telepromt(number: number))

            default:
                break
            }
        } else if flowAction.isNavigationAction == true {
            guard let viewController = rootNavigationController else {
                assertionFailure("Coordinator without navigation view controller")
                return
            }

            switch flowAction {
            case .push(let controller):
                viewController.pushViewController(controller, animated: true)

            case .pushWithCompletion(let controller, let completion):
                viewController.gr.pushViewController(controller, animated: true, completion: completion)

            case .pop:
                viewController.popViewController(animated: true)

            case .popTo(let controller):
                viewController.popToViewController(controller, animated: true)

            case .popToRoot:
                rootNavigationController?.popToRootViewController(animated: true)

            case .set(let controllers):
                viewController.setViewControllers(controllers, animated: true)

            default:
                break
            }
        }
    }

    @discardableResult
    public func start() -> UIViewController? {
        $step
            .compactMap { $0 }
            .sink { [weak self] in
                guard let `self` = self else { return }
                self.navigate(flowAction: self.navigate(to: $0))
            }.store(in: &cancellables)

        return rootViewController
    }

    func perform(step: Step) {
        self.step = step
    }

}
