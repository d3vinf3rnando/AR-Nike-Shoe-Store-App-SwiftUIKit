//
//  ViewController.swift
//  Nike-Shoe-AR
//
//  Created by Devin Fernando on 2022-12-25.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    //code update
    
    @IBOutlet var arView: ARView!
    
    var anchorShoe : GreenShoe._GreenShoe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anchorShoe =  try! GreenShoe.load_GreenShoe()
        anchorShoe.generateCollisionShapes(recursive: true)
        arView.scene.anchors.append(anchorShoe)
        
        
    }
    
    @IBAction func buynow(_ sender: Any) {
        anchorShoe.notifications.newshoe.post()
    }
}
