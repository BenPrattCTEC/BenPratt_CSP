//
//  CreativityController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class CreativityController: UICollectionViewController, UICollectionViewDelegate {
    
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20)
    private let itemsPerRow: CGFloat = 3
    
    private lazy var artSelection: [UIImage?] = {
        return[
            UIImage(named: "CuteThing20x20"),
            UIImage(named: "AndGate"),
            UIImage(named: "Binary"),
            UIImage(named: "Blocks"),
            UIImage(named: "ByteCode"),
            UIImage(named: "javaSample"),
            UIImage(named: "WaterProblem")
               ]
    }()
    
    var largePhotoIndexPath: IndexPath?{
        didSet{
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath{
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue{
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates({
                self.collectionView?.reloadItems(at: indexPaths)
            })
            {
                completed in
                if let largePhotoIndexPath = self.largePhotoIndexPath{
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath, at: .centeredVertically, animated: true)
                }
            }
        }
    }
    
    override public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return artSelection.count
    }
    
    override public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)->UICollectionViewCell{
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        artCell.backgroundColor = .purple
        artCell.imageView.image = artSelection[indexPath.row]
        artCell.imageName.text = "My Art"
        
        return artCell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if indexPath == largePhotoIndexPath{
            let art = artSelection[indexPath.row]
            let size = collectionView.bounds.size
            let widthScale = (size.width/art!.size.width) * CGFloat(0.8)
            let largeSize = CGSize(width: art!.size.width * widthScale, height: art!.size.height * widthScale)
            
            return largeSize
        }
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return sectionInsets
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        return sectionInsets.left
    }
    
    override public func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        if largePhotoIndexPath == indexPath{
            largePhotoIndexPath = nil
        }
        else{
            largePhotoIndexPath = indexPath
        }
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
