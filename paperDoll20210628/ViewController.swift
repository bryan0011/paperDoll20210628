//
//  ViewController.swift
//  paperDoll20210628
//
//  Created by Bryan Kuo on 2021/6/28.
//

import UIKit

class ViewController: UIViewController {
    
//    部位細項選擇區5個部位的View
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var faceView: UIView!
    @IBOutlet weak var faceHairView: UIView!
    @IBOutlet weak var glassView: UIView!
    @IBOutlet weak var poseView: UIView!
    
//    展示區5個部位的ImageView
    @IBOutlet weak var head: UIImageView!
    @IBOutlet weak var pose: UIImageView!
    @IBOutlet weak var face: UIImageView!
    @IBOutlet weak var glass: UIImageView!
    @IBOutlet weak var faceHair: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headView.isHidden = true
        faceView.isHidden = true
        faceHairView.isHidden = true
        glassView.isHidden = true
        poseView.isHidden = false
        
        
        // Do any additional setup after loading the view.
    }

//    Scroll View 5個部位Button 控制顯示部位View
    @IBAction func selectHead(_ sender: UIButton) {
        headView.isHidden = false
        faceView.isHidden = true
        faceHairView.isHidden = true
        glassView.isHidden = true
        poseView.isHidden = true
    }
    @IBAction func selectFace(_ sender: UIButton) {
        headView.isHidden = true
        faceView.isHidden = false
        faceHairView.isHidden = true
        glassView.isHidden = true
        poseView.isHidden = true
    }
    @IBAction func selectFaceHair(_ sender: UIButton) {
        headView.isHidden = true
        faceView.isHidden = true
        faceHairView.isHidden = false
        glassView.isHidden = true
        poseView.isHidden = true
    }
    @IBAction func selectGlass(_ sender: UIButton) {
        headView.isHidden = true
        faceView.isHidden = true
        faceHairView.isHidden = true
        glassView.isHidden = false
        poseView.isHidden = true
    }
    @IBAction func selectPose(_ sender: UIButton) {
        headView.isHidden = true
        faceView.isHidden = true
        faceHairView.isHidden = true
        glassView.isHidden = true
        poseView.isHidden = false
    }
    
    @IBAction func changeHead(_ sender: UIButton) {
        let headImage = sender.currentImage
        head.image = headImage
        
    }
    @IBAction func changePose(_ sender: UIButton) {
        let poseImage = sender.currentImage
        pose.image = poseImage
        
    }
    @IBAction func changeFace(_ sender: UIButton) {
        let faceImage = sender.currentImage
        face.image = faceImage
        
    }
    @IBAction func changeGlass(_ sender: UIButton) {
        let glassImage = sender.currentImage
        glass.image = glassImage
        
    }
    @IBAction func changeFaceHair(_ sender: UIButton) {
        let faceHairImage = sender.currentImage
        faceHair.image = faceHairImage
        
    }
    @IBAction func randomSelect(_ sender: UIButton) {
        let poses : [UIImage?] = [UIImage(named: "blazer-1"),UIImage(named: "blazer-3"),UIImage(named: "easing-1"),UIImage(named: "resting-1"),UIImage(named: "resting-2"),UIImage(named: "shirt-1"),UIImage(named: "walking-1"),UIImage(named: "walking-2"),UIImage(named: "walking-3")]
        
        let glasses : [UIImage?] = [UIImage(named: "Eyepatch"),UIImage(named: "Glasses 2"),UIImage(named: "Glasses"),UIImage(named: "Glasses 3"),UIImage(named: "Glasses 4"),UIImage(named: "Glasses 5"),UIImage(named: "Sunglasses 2"),UIImage(named: "Sunglasses")]
        
        let heads : [UIImage?] = [UIImage(named: "Afro"),UIImage(named: "Bangs"),UIImage(named: "Bantu Knots"),UIImage(named: "Bun 2"),UIImage(named: "Cornrows 2"),UIImage(named: "Flat Top"),UIImage(named: "hat-hip"),UIImage(named: "Short 1"),UIImage(named: "Short 4")]
        
        let faces : [UIImage?] = [UIImage(named: "Angry with Fang"),UIImage(named: "Awe"),UIImage(named: "Blank"),UIImage(named: "Driven"),UIImage(named: "Eyes Closed"),UIImage(named: "Old"),UIImage(named: "Smile LOL"),UIImage(named: "Tired"),UIImage(named: "Very Angry")]
        
        let faceHairs : [UIImage?] = [UIImage(named: "Chin"),UIImage(named: "Full 2"),UIImage(named: "Full 3"),UIImage(named: "Full"),UIImage(named: "Moustache 1"),UIImage(named: "Moustache 2"),UIImage(named: "Moustache 3"),UIImage(named: "Moustache 6"),UIImage(named: "Moustache 9")]
        
        let number = Int.random(in: 0...8)
        let number1 = Int.random(in: 0...7)
        
        pose.image = poses[number]
        head.image = heads[number]
        face.image = faces[number]
        faceHair.image = faceHairs[number]
        glass.image = glasses[number1]
        
        
    }
}

