//___FILEHEADER___

import UIKit

// MARK: - Class

final class ___VARIABLE_ID___CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var contentXib: ___VARIABLE_ID___View!

    func setup(model: ___VARIABLE_ID___View.Model) {
        contentXib.setup(model)
    }

}
