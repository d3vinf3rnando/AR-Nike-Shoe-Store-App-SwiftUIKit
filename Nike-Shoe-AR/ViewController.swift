//
//  ViewController.swift
//  Nike-Shoe-AR
//
//  Created by Devin Fernando on 2022-12-25.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    //add new ar view
    
    //code update
    
    @IBOutlet var arView: ARView!
    
    var anchorShoe : ArStore._ArStore! //add project.rc file
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anchorShoe =  try! ArStore.load_ArStore()
        anchorShoe.generateCollisionShapes(recursive: true)
        arView.scene.anchors.append(anchorShoe)
        
        
    }

    //add a new view controller
    
    @IBAction func buynow(_ sender: Any) {
        //add notify button linked with rc.project
    }
}
