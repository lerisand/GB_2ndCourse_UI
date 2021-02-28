//
//  PhotoCollectionController.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class PhotoCollectionController: UICollectionViewController {
    
    var photosLibrary:[UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        let itemSize = UIScreen.main.bounds.width/3 - 3

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemSize, height: itemSize)

        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3

        collectionView.collectionViewLayout = layout

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photosLibrary.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCell
        cell.setData(image: photosLibrary[indexPath.row])
        cell.addLikeControl()
        return cell
    }
}
