//
//  DetailViewController.swift
//  Flag Viewer
//
//  Created by Steven Vandegrift on 8/12/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    var imageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.systemGray.cgColor
        image.image = UIImage(named: imageName)
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(sharePressed))
    }
    
    @objc func sharePressed(){
        if let image = self.image.image?.jpegData(compressionQuality: 1) {
            let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: [])
            activityViewController.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
            present(activityViewController, animated: true)
        }
        
        
    }
    

}
