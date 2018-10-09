//
//  ViewController.swift
//  Can I Park Here
//
//  Created by Matthew Santamaria on 10/9/18.
//  Copyright © 2018 Matthew Santamaria. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGesture()
    }
    
    func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapped))
        mainImageView.addGestureRecognizer(tap)
    }
    
    @objc func tapped(sender: UITapGestureRecognizer) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
}
