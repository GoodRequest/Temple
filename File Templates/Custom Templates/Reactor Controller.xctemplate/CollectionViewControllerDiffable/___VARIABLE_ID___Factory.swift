//___FILEHEADER___

import UIKit
import GRProvider
import GoodExtensions

// MARK: - Section Factory

final class ___VARIABLE_ID___Factory {

    // MARK: - Provider Section

    enum SectionType: Int {

// Sample section types
//
//        case first = 0
//        case second = 1

    }

    struct Section: Sectionable, Equatable, Hashable {

        func hash(into hasher: inout Hasher) {
            hasher.combine(items)
        }

        static func == (lhs: Section, rhs: Section) -> Bool {
            return lhs.items == rhs.items
        }

        var type: SectionType
        var items: [Item]

        enum Item: Equatable, Hashable, NameDescribable {

            static func == (lhs: Item, rhs: Item) -> Bool {
                return lhs.hashValue == rhs.hashValue
            }

            case item

            func hash(into hasher: inout Hasher) {
                hasher.combine(self.typeName)

                switch self {
                default: break
                }
            }

        }

// Sample title
//
//        var title: String? {
//            switch type {
//            case .first:
//                return "First"
//
//            case .second:
//                return "Second"
//            }
//        }

    }

}

extension ___VARIABLE_ID___Factory {

    func makeSections(for response: String?) -> [Section] {
        var sections = [Section]()

        return sections
    }

}

