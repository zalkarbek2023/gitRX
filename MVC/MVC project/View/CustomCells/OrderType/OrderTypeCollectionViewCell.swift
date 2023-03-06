//
//  OrderTypeCollectionViewCell.swift
//  homework4.4
//
//  Created by Zhansuluu Kydyrova on 2/1/23.
//

import UIKit

class OrderTypeCollectionViewCell: UICollectionViewCell {
    
    static var reuseID = String(describing: OrderTypeCollectionViewCell.self)
    
    @IBOutlet private weak var orderTypeImage: UIImageView!
    @IBOutlet private weak var orderTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func displayOrderType(_ item: OrderTypeModel) {
        orderTypeLabel.text = item.orderLabel
        orderTypeImage.image = UIImage(named: item.img)
        orderTypeImage.layer.cornerRadius = orderTypeImage.frame.size.width/2
    }
}
