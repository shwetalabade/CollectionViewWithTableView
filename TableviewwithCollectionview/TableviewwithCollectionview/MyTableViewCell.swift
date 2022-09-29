//
//  MyTableViewCell.swift
//  TableviewwithCollectionview
//
//  Created by Mac on 11/09/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var myCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        
        // Initialization code
    }
    }
extension MyTableViewCell:  UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallary.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let obj1 = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell", for: indexPath) as? MyCollectionViewCell
        obj1?.imageview.image = UIImage(named:
            eData[myCollectionView.tag].imageGallary[indexPath.row])
        return obj1!
    }
    
    
}

