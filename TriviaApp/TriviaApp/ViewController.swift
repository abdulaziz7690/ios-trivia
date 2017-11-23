//
//  ViewController.swift
//  TriviaApp
//
//  Created by Abdul Aziz on 11/22/17.
//  Copyright © 2017 ruangguru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)
    let itemsPerRow: CGFloat = 2
    
    let backgroundImageCollection = ["generalKnowledgeBackground","entertainmentBooksBackground","entertainmentFilmBackground","entertainmentMusicBackground","entertainmentGameBackground","entertainmentTvBackground","sciencesComputerBackground","celebritiesBackground","historyBackground","animalBackground"]
    let iconImageCollection = ["generalKnowledgeIcon","entertainmentBooksIcon","entertainmentFilmIcon","entertainmentMusicIcon","entertainmentGameIcon","entertainmentTvIcon","sciencesComputerIcon","celebritiesIcon","historyIcon","animalIcon"]
    let titleCollection = ["General Knowledge","Entertainment: Books","Entertainment: Film","Entertainment: Music","Entertainment: Games","Entertainment: TV","Science: Computers","Celebrities","History","Animals"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        cell.setBackgrounds(backgroundImage: backgroundImageCollection[indexPath.row], title: titleCollection[indexPath.row], iconImage: iconImageCollection[indexPath.row])
        return cell
    }
}

