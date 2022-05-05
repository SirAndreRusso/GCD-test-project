//
//  SecondViewController.swift
//  GCD
//
//  Created by Андрей Русин on 06.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    fileprivate var imageURL: URL?
    fileprivate var image: UIImage? {
        get {
            return imageView.image
        }
        set {
//            activityIndicator.stopAnimating()
//            activityIndicator.isHidden = true
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchImage()
        
    }
    fileprivate func fetchImage() {
        imageURL = URL(string: "https://i.pinimg.com/originals/20/07/72/200772d95ac824dd0143a838ac4369e3.jpg")
//        activityIndicator.isHidden = false
//        activityIndicator.startAnimating()
        guard let url = imageURL, let imageData = try? Data(contentsOf: url) else {return}
        self.image = UIImage(data: imageData)
        self.imageView.contentMode = .scaleAspectFill
    }
}

