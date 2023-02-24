//
//  KorzinaViewController.swift
//  CocktailsHW
//
//  Created by zalkarbek on 22/2/23.
//

import UIKit
import SnapKit

struct Model {
    var str: String
    var imag: UIImage
}

class KorzinaViewController: UIViewController {
    
    private lazy var cart: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "cart.circle")
        imageView.backgroundColor = .black
        imageView.tintColor = .white
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    private lazy var name: UILabel = {
        let label = UILabel()
        label.text = "Main Dishes"
        label.tintColor = .black
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 25.0)
        return label
    }()
    
    private lazy var text: UILabel = {
        let label = UILabel()
        label.text = "Find the best selling dishes. All meales are preparred fresh."
        label.numberOfLines = 2
        label.tintColor = .black
        label.font = UIFont(name: "Arial", size: 18.0)
        return label
    }()
    
    
    private lazy var collections: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 100
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 200, height: 100)
        var collection = UICollectionView(
            frame: .zero, collectionViewLayout: layout
        )
        collection.showsHorizontalScrollIndicator = false
        collection.backgroundColor = .red
        return collection
    }()
    
    private lazy var searchBar: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Enter"
        search.searchBar.searchBarStyle = .minimal
        return search
    }()
    
    private func configureCollectionView() {
        collections.delegate = self
        collections.dataSource = self
        collections.register(
            KorzinaCollectionViewCell.self,
            forCellWithReuseIdentifier: KorzinaCollectionViewCell.cellID
        )
    }
    
    var model: [Model] = [
        Model(str: "Rice", imag: UIImage(named: "5")!),
        Model(str: "Rice", imag: UIImage(named: "2")!),
        Model(str: "Rice", imag: UIImage(named: "7")!),
        Model(str: "Rice", imag: UIImage(named: "10")!),
        Model(str: "Rice", imag: UIImage(named: "8")!),
        Model(str: "Rice", imag: UIImage(named: "9")!)
    ]

    
    private func setupView() {
        view.addSubview(cart)
        view.addSubview(collections)
        view.addSubview(name)
        view.addSubview(text)
    }

    private func setupLayout() {
        collections.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(200)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        cart.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(15)
            make.right.equalTo(view.snp.right).offset(-15)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        name.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(35)
            make.left.equalTo(view.snp.left).offset(150)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
        text.snp.makeConstraints { make in
            make.top.equalTo(name.snp.top).offset(100)
            make.left.equalTo(view.snp.left).offset(115)
            make.width.equalTo(250)
            make.height.equalTo(50)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        // Do any additional setup after loading the view.
        configureCollectionView()
        setupView()
        setupLayout()
        
        //              searchBar
        searchBar.searchResultsUpdater = self
        navigationItem.searchController = searchBar
        
        //         Alamofire
        
//         AF.request("https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a").responseJSON { response in
//                    print("Result \(response.result)")
//
//    }
    

    }
        
  

}


extension KorzinaViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KorzinaCollectionViewCell.cellID, for: indexPath) as? KorzinaCollectionViewCell
        cell!.barViewImage.image = model[indexPath.row].imag
//        cell?.nameCellLabel.text =
        return cell!
    }
    
    
}


extension KorzinaViewController: UICollectionViewDelegateFlowLayout {
    
}

extension KorzinaViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard searchController.searchBar.text != nil else {return}
        
    }
}
