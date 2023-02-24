//
//  KorzinaCollectionViewCell.swift
//  CocktailsHW
//
//  Created by zalkarbek on 22/2/23.
//

import UIKit

class KorzinaCollectionViewCell: UICollectionViewCell {
 
        static let cellID = "feedCell"
        
        private lazy var barView: UIView = {
            let view = UIView()
            view.layer.cornerRadius = 10
            view.backgroundColor = .white
            return view
        }()
        
         lazy var barViewImage: UIImageView = {
            let imageView = UIImageView()
            return imageView
        }()
        
        lazy var nameCellLabel: UILabel = {
            let label = UILabel()
            label.backgroundColor = .black
            return label
        }()
        
        private lazy var cellButton: UIButton = {
            let button = UIButton()
            button.setTitle("buy", for: .normal)
            button.setTitleColor(.orange, for: .normal)
            button.addTarget(self, action: #selector(buyProduct), for: .touchUpInside)
            button.backgroundColor = .green
            return button
        }()
        
        private lazy var viewPodButton: UIView = {
            let view = UIView()
            view.backgroundColor = .systemGray5
            view.layer.cornerRadius = 6
            return view
        }()
        
        
        override func layoutSubviews() {
            super.layoutSubviews()
            setupView()
            setupLayout()
        }
        
        private func setupView() {
            contentView.addSubview(barView)
            barView.addSubview(barViewImage)
            contentView.addSubview(nameCellLabel)
            contentView.addSubview(cellButton)
            contentView.addSubview(viewPodButton)
        }
        
        private func setupLayout() {
            barView.snp.makeConstraints { make in
                make.top.equalTo(contentView.snp.top).offset(20)
                make.right.equalTo(contentView.snp.right).offset(-10)
                make.left.equalTo(contentView.snp.left).offset(10)
                make.width.equalTo(200)
                make.height.equalTo(100)
            }
            barViewImage.snp.makeConstraints { make in
                make.top.equalTo(contentView.snp.top).offset(20)
                make.right.equalTo(contentView.snp.right).offset(-10)
                make.left.equalTo(contentView.snp.left).offset(10)
                make.width.equalTo(200)
                make.height.equalTo(100)
            }
            nameCellLabel.snp.makeConstraints { make in
                make.top.equalTo(barViewImage.snp.top).offset(115)
                make.left.equalTo(contentView.snp.left).offset(10)
                make.right.equalTo(contentView.snp.right).offset(-10)
                make.width.equalTo(200)
                make.height.equalTo(25)
            }
            cellButton.snp.makeConstraints { make in
                make.top.equalTo(nameCellLabel.snp.top).offset(37)
                make.left.equalTo(contentView.snp.left).offset(10)
                make.right.equalTo(contentView.snp.right).offset(-10)
                make.width.equalTo(150)
                make.height.equalTo(25)
    //            cellButton.isUserInteractionEnabled = true
    //            let act = UITapGestureRecognizer(target: self, action: #selector(buyProduct))
    //            cellButton.addGestureRecognizer(act)
            }
            viewPodButton.snp.makeConstraints { make in
                make.top.equalTo(cellButton.snp.top).offset(30)
                make.left.equalTo(contentView.snp.left).offset(10)
//                make.right.equalTo(contentView.snp.right).offset(-10)
                make.width.equalTo(245)
                make.height.equalTo(10)
            }
        }
        
        @objc func buyProduct() {
            print("buy")
        }
    }
