//
//  SkillSelectionCell.swift
//  Yep
//
//  Created by NIX on 15/4/16.
//  Copyright (c) 2015年 Catch Inc. All rights reserved.
//

import UIKit

class SkillSelectionCell: UICollectionViewCell {

    static let height: CGFloat = 35

    @IBOutlet weak var backgroundImageView: UIImageView!

    @IBOutlet weak var skillLabel: UILabel!

    enum Selection {
        case Unavailable
        case Off
        case On
    }

    var skillSelection: Selection = .Off {
        willSet {
            switch newValue {

            case .Unavailable:
                backgroundImageView.image = UIImage(named: "skill_bubble_large_empty")
                skillLabel.textColor = UIColor.yepTintColor()
                contentView.alpha = 0.2

            case .Off:
                backgroundImageView.image = UIImage(named: "skill_bubble_large_empty")
                skillLabel.textColor = UIColor.yepTintColor()
                contentView.alpha = 1

            case .On:
                backgroundImageView.image = UIImage(named: "skill_bubble_large")
                skillLabel.textColor = UIColor.whiteColor()
                contentView.alpha = 1
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        skillLabel.font = UIFont.skillTextLargeFont()
    }
}
