//
//  ViewController.swift
//  SampleCollectionView
//
//  Created by 原田摩利奈 on 2019/01/21.
//  Copyright © 2019 原田摩利奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showImageCollectionView: UICollectionView!
    var imageNameArray = ["image1.HEIC","image2.JPG", "image3.JPG","image4.HEIC", "image5.JPG", "image6.JPG", "image7.JPG", "image8.JPG", "image9.JPG", "image10.JPG",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIImage(named: imageNameArray[0])
        showImageCollectionView.dataSource = self
        let nib:UINib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        showImageCollectionView.register(nib, forCellWithReuseIdentifier: "CustomCell")
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.setImage(imageData:UIImage(named: imageNameArray[indexPath.row])!)
        
        
        return cell
}


}
