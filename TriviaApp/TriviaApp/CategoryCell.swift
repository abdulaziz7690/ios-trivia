//
//  CategoryCell.swift
//  TriviaApp
//
//  Created by Abdul Aziz on 11/23/17.
//  Copyright © 2017 ruangguru. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var title: UILabel!
        
    func setBackgrounds(backgroundImage:String,title:String,iconImage:String){
        let backgroundImage = UIImage(named: backgroundImage)
        let iconImage = UIImage(named: iconImage)
        self.backgroundImage.image = backgroundImage
        self.iconImage.image = iconImage
        self.title.text = title
    }
}
