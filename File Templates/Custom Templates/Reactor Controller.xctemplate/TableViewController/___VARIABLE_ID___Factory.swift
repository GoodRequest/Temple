//___FILEHEADER___

import Foundation
import UIKit
import GRProvider

// MARK: - View Model Implementation

final class ___VARIABLE_ID___Factory {

    // MARK: - Provider Section

    enum SectionType: Int {

        case first = 0
        case second = 1

    }

    struct Section: Sectionable {

        var type: SectionType
        var items: [Item]

        enum Item {

            case item

        }

        var title: String? {
            switch type {
            case .first:
                return "First"

            case .second:
                return "Second"
            }
        }

    }

    // MARK: - Factory

//
//    TODO: IMPLEMENT CUSTOM RESPONSE PARSING TO SECTIONS OR ITEMS
//
//    func items(for results: ResponseResults) {
//        var sections = [Section]()
//
//        return sections
//    }

}
