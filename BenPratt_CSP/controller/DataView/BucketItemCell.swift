//
//  BucketItemCell.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 1/9/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell{
    
    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    var bucketItem: BucketItem!{
        didSet{
            updateCellView()
        }
    }
    
    private func randomEmoji()-> String{
        let emojiStart = 0x1f601
        let emojiEnd = 0x1f64f
        let symbolStart = 0x1f680
        let symbolEnd = 0x1f6c5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
    
    private func updateCellView(){
        if(bucketItem != nil){
            bucketItemSignature.text = bucketItem.itemAuthor
            bucketItemText.text = bucketItem.itemContents
        }
        else{
            bucketItemSignature.text = "author goes here"
            bucketItemText.text = "text goes here"
        }
        bucketItemSymbol.text = randomEmoji()
    }
    
    public override func awakeFromNib(){
        super.awakeFromNib()
    }
    
    public override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
    
}
