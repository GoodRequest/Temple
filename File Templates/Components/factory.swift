// ___FILEHEADER___

import GRProvider

// MARK: - Section Factory

final class ___VARIABLE_ID___Factory {

    // MARK: - Provider Section

// Sample section types
//
//    enum SectionType: Int {
//
//
//        case first = 0
//        case second = 1
//
//    }

    struct Section: Sectionable, Equatable, Hashable {

//        var type: SectionType
        var items: [Item]

        enum Item: Equatable {

            static func == (lhs: Item, rhs: Item) -> Bool {
                return lhs.hashValue == rhs.hashValue
            }

            case item

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
