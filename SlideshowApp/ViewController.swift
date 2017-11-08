//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 岡山将也 on 2017/11/06.
//  Copyright © 2017年 shouya.okayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stButton: UIButton!
    @IBOutlet weak var prButton: UIButton!
    @IBOutlet weak var nxButton: UIButton!
    
    var timer:Timer!
    var timer_sec: Float = 0
    var dispImageNo = 0
    var name = ""
    
    @IBAction func susumu(_ sender: Any) {
        dispImageNo += 1
        
        displayImage()
    }
    @IBAction func modoru(_ sender: Any) {
        dispImageNo -= 1
        
        displayImage()
    }
    @IBAction func start(_ sender: Any) {
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            stButton.setTitle("再生", for: .normal)
            prButton.isEnabled = true
            nxButton.isEnabled = true
        }
        else{
            stButton.setTitle("停止", for: .normal)
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer), userInfo: nil, repeats: true)
            prButton.isEnabled = false
            nxButton.isEnabled = false
        }
    }
    
    
    @IBAction func Tapimage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            stButton.setTitle("再生", for: .normal)
            prButton.isEnabled = true
            nxButton.isEnabled = true
        }
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "4336112.jpg")
        imageView.image = image
    }
    func displayImage(){
        
        let imageNameArray = [
            "4336112.jpg",
            "4336111.jpg",
            "4336110.jpg",
            ]
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        
        name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }
    func onTimer(timer: Timer) {
        
        
        dispImageNo += 1
        
        
        displayImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
                    resultViewController.name = name
            }

}

