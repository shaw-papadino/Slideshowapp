//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 岡山将也 on 2017/11/07.
//  Copyright © 2017年 shouya.okayama. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var dispImageNo = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let imageNameArray = [
            "4336112.jpg",
            "4336111.jpg",
            "4336110.jpg",
            ]
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
