//
//  ViewController.swift
//  Mario_Game_App_21
//
//  Created by Fonzie on 3/6/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var kartView3: UIImageView!
    @IBOutlet weak var kartView2: UIImageView!
    @IBOutlet weak var kartView0: UIImageView!
    
    var startingPointKartView0 = CGPoint()
    var startingPointKartView3 = CGPoint()
    var startingPointKartView2 = CGPoint()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        startingPointKartView0 = kartView0.center
        startingPointKartView3 = kartView3.center
        startingPointKartView2 = kartView2.center
        
    }

    @IBAction func onPanGesture(_ panGesture: UIPanGestureRecognizer) {
        let location = panGesture.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        
        let kartView = panGesture.view!
        
        kartView.center = location
    }
    
    
    @IBAction func onPinchGesture(_ pinchGesture: UIPinchGestureRecognizer) {
        let scale = pinchGesture.scale
        
        let kartView = pinchGesture.view!
        kartView.transform = CGAffineTransform.init(scaleX: scale, y:scale)
        print("scale: \(scale)")
        
    }
    
    
    
    @IBAction func onRotationGesture(_ rotationGesture: UIRotationGestureRecognizer) {
        
        let rotation = rotationGesture.rotation
        
        let kartView = rotationGesture.view!
        kartView.transform = CGAffineTransform.init(rotationAngle: rotation)
        print("rotation: \(rotation)")
        
    }
    
    @IBAction func onTapGesture(_ tapGesture: UITapGestureRecognizer) {
        
        print("Double tap recognized")
        let kartView = tapGesture.view!
        
        //kartView.center.x += 50
        UIView.animate(withDuration: 0.5) {
           // Closure body
           kartView.center.x += 400
        }
        
        
    }
    
    
    @IBAction func onLongPress(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 0.8){
            self.kartView0.center = self.startingPointKartView0
            self.kartView3.center = self.startingPointKartView3
            self.kartView2.center = self.startingPointKartView2
            
            
            self.kartView0.transform = CGAffineTransform.identity
            self.kartView3.transform = CGAffineTransform.identity
            self.kartView2.transform = CGAffineTransform.identity
        }
        
    }
    
    
    
    
    
    
}

