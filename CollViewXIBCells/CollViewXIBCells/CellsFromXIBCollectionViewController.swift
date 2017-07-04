//
//  CellsFromXIBCollectionViewController.swift
//  CollViewXIBCells
//
//  Created by Don Mini on 7/4/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

private let reuseIdentifier = "XIBCell"

class CellsFromXIBCollectionViewController: UICollectionViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let layout = self.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
			layout.itemSize = CGSize(width: 100, height: 80)
		}
		
		// Register cell classes
		self.collectionView?.register(UINib(nibName: "FromXIBCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
	}
	
	// MARK: UICollectionViewDataSource
	
	override func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FromXIBCollectionViewCell
		
		// Configure the cell
		cell.theLabel.text = "\(indexPath.row)"
		
		cell.btnTapAction = {
			_ in
			print("Call Back for Button tapped in cell:", indexPath)
		}
		
		return cell
	}
	
}
