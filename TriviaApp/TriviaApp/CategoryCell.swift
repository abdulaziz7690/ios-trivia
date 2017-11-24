//
//  CategoryCell.swift
//  TriviaApp
//
//  Created by Abdul Aziz on 11/23/17.
//  Copyright © 2017 ruangguru. All rights reserved.
//

import UIKit

protocol CategoryCellDelegate {
    func goToQuestion(id: String)
}

class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    var cellID : String = ""
    var categoryCellDelegate : CategoryCellDelegate?
    
    func setBackgrounds(backgroundImage:String,title:String,iconImage:String){
        let backgroundImage = UIImage(named: backgroundImage)
        let iconImage = UIImage(named: iconImage)
        self.backgroundImage.image = backgroundImage
        self.iconImage.image = iconImage
        self.title.text = title
        self.cellID = title
    }
    
    func setDelegate(categoryCellDelegate : CategoryCellDelegate){
        self.categoryCellDelegate = categoryCellDelegate
    }
    
    override func awakeFromNib() {
        let backgroundTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(backgroundTapped(tapGestureRecognizer:)))
        let iconTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(iconTapped(tapGestureRecognizer:)))
        let titleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(titleTapped(tapGestureRecognizer:)))
        backgroundImage.isUserInteractionEnabled = true
        backgroundImage.addGestureRecognizer(backgroundTapRecognizer)
        iconImage.isUserInteractionEnabled = true
        iconImage.addGestureRecognizer(iconTapRecognizer)
        title.isUserInteractionEnabled = true
        title.addGestureRecognizer(titleTapRecognizer)
    }
    
    @objc func backgroundTapped(tapGestureRecognizer: UITapGestureRecognizer){
        print(cellID + " tapped")
    }
    @objc func iconTapped(tapGestureRecognizer: UITapGestureRecognizer){
        print(cellID + " tapped")
    }
    @objc func titleTapped(tapGestureRecognizer: UITapGestureRecognizer){
        print(cellID + " tapped")
    }
    
    func goToQuestion(id: String){
        self.categoryCellDelegate?.goToQuestion(id:id)
    }
}
