//
//  orderMethodCollectionViewCell.swift
//  homework4.4
//
//  Created by Zhansuluu Kydyrova on 2/1/23.
//

import UIKit

class OrderMethodCollectionViewCell: UICollectionViewCell {
    
    static var reuseID = String(describing: OrderMethodCollectionViewCell.self)
    
    @IBOutlet private weak var orderingMethodImgView: UIImageView!
    @IBOutlet private weak var orderingMethodLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displayOrderMethod(_ item: OrderMethodModel) {
        orderingMethodLabel.text = item.name
        orderingMethodImgView.image = item.img
    }
    
    @IBInspectable
    private var cornerRadius: CGFloat {
        get { self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable
    private var borderWidth: CGFloat {
        get { self.layer.borderWidth }
        set { self.layer.borderWidth = newValue }
    }
    
    @IBInspectable
    private var borderColor: UIColor? {
        get { UIColor(cgColor: self.layer.borderColor!) }
        set { self.layer.borderColor = newValue?.cgColor }
    }
}
