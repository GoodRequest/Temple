//___FILEHEADER___

import UIKit
import GRProvider

// MARK: - Section Factory

final class ___VARIABLE_ID___LayoutComposer {

    // MARK: - Typealiases

    typealias Section = ___VARIABLE_ID___Factory.Section

    // MARK: - Constants

    private enum C {

        static let defaultContentInsets = NSDirectionalEdgeInsets(
            top: 16,
            leading: 16,
            bottom: 16,
            trailing: 16
        )

    }

    // MARK: - Public

    func prepareLayout(
        provider: GRCollectionViewProvider<Section>,
        heightDimension: CGFloat
    ) -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { [unowned provider] index, _ -> NSCollectionLayoutSection? in
// Use factory sections to switch over
//
//            switch provider.sections[index].type {
//            case .first:
//                return self.prepareFirstSection()
//
//            case .second:
//                return self.prepareSecondSection()
//            }
        }
    }

}

// MARK: - Private

private extension ___VARIABLE_ID___LayoutComposer {

// Sample section layouts
//
//    func prepareFirstSection() -> NSCollectionLayoutSection {
//        let itemSize = NSCollectionLayoutSize(
//            widthDimension: .fractionalWidth(1.0),
//            heightDimension: .absolute(230)
//        )
//        let item = NSCollectionLayoutItem(layoutSize: itemSize)
//
//        let group = NSCollectionLayoutGroup.horizontal(
//            layoutSize: itemSize,
//            subitem: item,
//            count: 1
//        )
//
//        let section = NSCollectionLayoutSection(group: group)
//        section.interGroupSpacing = 16.0
//        section.contentInsets = C.defaultContentInsets
//
//        return section
//    }
//
//    func prepareSecondSection() -> NSCollectionLayoutSection {
//        let itemSize = NSCollectionLayoutSize(
//            widthDimension: .absolute(80.0),
//            heightDimension: .absolute(80.0)
//        )
//
//        let item = NSCollectionLayoutItem(layoutSize: itemSize)
//
//        let group = NSCollectionLayoutGroup.horizontal(
//            layoutSize: itemSize,
//            subitems: [item]
//        )
//        let section = NSCollectionLayoutSection(group: group)
//        section.interGroupSpacing = 8
//        section.contentInsets = C.defaultContentInsets
//        section.orthogonalScrollingBehavior = .continuous
//
//        return section
//    }

}
