//
//  DetectorQRViewController.swift
//  二维码综合
//
//  Created by huangbiyong on 2018/1/5.
//  Copyright © 2018年 com.chase. All rights reserved.
//

import UIKit

class DetectorQRViewController: UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBAction func detector(_ sender: Any) {
        
        // .1 获取需要识别的图片
        guard let image = imgView.image else {return}
        
        
        let result = BYQRCodeTool.detectorQRCodeImage(image: image, isDrawQRCodeFrame: true)
        
        
        // 结果字符串
        let strs = result.resultStrs
        
        print(strs)
        
        // 描绘好边框的图片
        imgView.image = result.resultImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
