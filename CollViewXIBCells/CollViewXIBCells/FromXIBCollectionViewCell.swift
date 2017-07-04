//
//  FromXIBCollectionViewCell.swift
//  CollViewXIBCells
//
//  Created by Don Mini on 7/4/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class FromXIBCollectionViewCell: UICollectionViewCell {

	@IBOutlet weak var theLabel: UILabel!
	
	@IBOutlet weak var theButton: UIButton!
	
	var btnTapAction: (()->())?
	
	@IBAction func buttonTapped(_ sender: Any) {
		print("Tapped (this is inside the cell class)!")
		btnTapAction?()
	}
	
}
