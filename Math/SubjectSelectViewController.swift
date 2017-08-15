//
//  SubjectSelectViewController.swift
//  Math
//
//  Created by Trevor Stevenson on 7/29/17.
//  Copyright © 2017 TStevenson Apps. All rights reserved.
//

import UIKit

class SubjectSelectViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    let buttonImages = [#imageLiteral(resourceName: "AlgebraButton"), #imageLiteral(resourceName: "GeometryButton")]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return buttonImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SubjectCell
        
        guard let subCell = cell else
        {
            return UICollectionViewCell()
        }
        
        subCell.subjectButton.setBackgroundImage(buttonImages[indexPath.row], for: .normal)
        
        return subCell
    }
}
