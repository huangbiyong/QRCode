//
//  GeneratorQRViewController.swift
//  二维码综合
//
//  Created by huangbiyong on 2018/1/5.
//  Copyright © 2018年 com.chase. All rights reserved.
//

import UIKit

class GeneratorQRViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "生成", style: .plain, target: self, action: #selector(generator))
    }

    @objc func generator() {
        textView.endEditing(true)
        
        
        let str = textView.text ?? ""
        let centerImage = UIImage(named: "head.jpg")
        let image = BYQRCodeTool.generatorQRCode(sourceStr: str, centerImage: centerImage)
        
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
