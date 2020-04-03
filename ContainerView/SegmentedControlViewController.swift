//
//  SegmentedControlViewController.swift
//  ContainerView
//
//  Created by Mayur Mori on 14/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class SegmentedControlViewController: UIViewController {
    
    // MARK: - PROPERTIES -
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var containerViewFirst: UIView!
    @IBOutlet weak var containerViewSecond: UIView!
    
    private lazy var redViewController: RedViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "RedViewController") as! RedViewController
        return viewController
    }()
    
    private lazy var greenViewController: GreenViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        return viewController
    }()
    
    // MARK: - VIEW LIFE CYCLE -
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - FUNCTIONS -
    private func setupView() {
        setupSegmentedControl()
        self.containerViewFirst.backgroundColor = UIColor.green
        self.containerViewSecond.backgroundColor = UIColor.blue
    }
    
    private func setupSegmentedControl() {
        self.segmentedControl.tintColor = UIColor.red
        self.segmentedControl.addTarget(self, action: #selector(selectionDidChange), for: .valueChanged)
    }
    
    private func updateView() {
        if segmentedControl.selectedSegmentIndex == 0 {
            self.segmentedControl.tintColor = UIColor.red
            self.containerViewFirst.backgroundColor = UIColor.green
            self.containerViewSecond.backgroundColor = UIColor.blue
        } else {
            self.segmentedControl.tintColor = UIColor.green
            self.containerViewFirst.backgroundColor = UIColor.blue
            self.containerViewSecond.backgroundColor = UIColor.red
        }
    }
    
    // MARK: - IB ACTIONS -
    @objc func selectionDidChange(sender: UISegmentedControl) {
        updateView()
    }
}
