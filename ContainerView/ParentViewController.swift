//
//  ParentViewController.swift
//  ContainerView
//
//  Created by Mayur Mori on 14/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    
    // MARK: - PROPERTIES -
    @IBOutlet weak var btnGoToSegmentedVC: UIButton!
    
    // MARK: - IB ACTION -
    @IBAction func btnGoToSegmentedVC_Clicked(_ sender: UIButton) {
        if let segmented: SegmentedControlViewController = (self.storyboard?.instantiateViewController(withIdentifier: "SegmentedControlViewController") as? SegmentedControlViewController) {
            self.navigationController?.pushViewController(segmented, animated: true)
        }
    }
}
