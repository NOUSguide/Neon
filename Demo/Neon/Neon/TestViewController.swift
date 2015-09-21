//
//  TestViewController.swift
//  Neon
//
//  Created by Mike on 9/20/15.
//  Copyright © 2015 Mike Amaral. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    let anchorView : UIView = UIView()
   let anchorView2 : UIView = UIView()
    let view1 : UILabel = UILabel()
    let view2 : UILabel = UILabel()
    let view3 : UILabel = UILabel()
    let view4 : UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        anchorView.backgroundColor = UIColor(red: 229/255.0, green: 72/255.0, blue: 26/255.0, alpha: 1.0)
        view.addSubview(anchorView)

        anchorView2.backgroundColor = UIColor(red: 229/255.0, green: 72/255.0, blue: 26/255.0, alpha: 1.0)
        view.addSubview(anchorView2)

        view1.backgroundColor = UIColor(red: 78/255.0, green: 102/255.0, blue: 131/255.0, alpha: 1.0)
        view1.text = "1"
        view1.textAlignment = .Center
        view1.font = UIFont.boldSystemFontOfSize(20)
        view1.textColor = UIColor.whiteColor()
        anchorView.addSubview(view1)

        view2.backgroundColor = UIColor(red: 132/255.0, green: 169/255.0, blue: 57/255.0, alpha: 1.0)
        view2.text = "2"
        view2.textAlignment = .Center
        view2.font = UIFont.boldSystemFontOfSize(20)
        view2.textColor = UIColor.whiteColor()
        anchorView.addSubview(view2)

        view3.backgroundColor = UIColor(red: 229/255.0, green: 174/255.0, blue: 84/255.0, alpha: 1.0)
        view3.text = "3"
        view3.textAlignment = .Center
        view3.font = UIFont.boldSystemFontOfSize(20)
        view3.textColor = UIColor.whiteColor()
        anchorView2.addSubview(view3)

        view4.backgroundColor = UIColor(red: 33/255.0, green: 154/255.0, blue: 209/255.0, alpha: 1.0)
        view4.text = "4"
        view4.textAlignment = .Center
        view4.font = UIFont.boldSystemFontOfSize(20)
        view4.textColor = UIColor.whiteColor()
        anchorView2.addSubview(view4)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        view.groupAgainstEdge(group: .Horizontal, views: [anchorView, anchorView2], againstEdge: .Top, padding: 100, width: 200, height: 200)
//        anchorView.anchorInCenter(width: 200, height: 200)
        let padding : CGFloat = 10.0
        let size : CGFloat = 50.0

        view1.anchorAndFillEdge(.Top, xPad: padding, yPad: padding, otherSize: size)
        view2.anchorAndFillEdge(.Bottom, xPad: padding, yPad: padding, otherSize: size)
        view3.anchorAndFillEdge(.Left, xPad: padding, yPad: padding, otherSize: size)
        view4.anchorAndFillEdge(.Right, xPad: padding, yPad: padding, otherSize: size)
//        view1.anchorToEdge(.Top, padding: padding, width: size, height: size)
//        view2.anchorToEdge(.Left, padding: padding, width: size, height: size)
//        view3.anchorToEdge(.Bottom, padding: padding, width: size, height: size)
//        view4.anchorToEdge(.Right, padding: padding, width: size, height: size)
    }
}