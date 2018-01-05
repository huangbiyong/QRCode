//
//  ScanQRViewController.swift
//  二维码综合
//
//  Created by huangbiyong on 2018/1/5.
//  Copyright © 2018年 com.chase. All rights reserved.
//

import UIKit

class ScanQRViewController: UIViewController {

    @IBOutlet weak var scanBackView: UIView!
    @IBOutlet weak var chongjiboImageView: UIImageView!
    @IBOutlet weak var toBottom: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startScanAnimation()
        startScan()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        BYQRCodeTool.shared.stopScan()
    }
    
    
    func startScan() {
        
        print( scanBackView.frame)
        
        BYQRCodeTool.shared.setRectInterest(orignRect: scanBackView.frame)
        
        BYQRCodeTool.shared.scanQRCode(inView: view, isDrawFrame: true) { (resultStrs) in
            print(resultStrs)
        }
        
    }
    
    func startScanAnimation() -> () {
        
        toBottom.constant = scanBackView.frame.size.height
        view.layoutIfNeeded()
        
        toBottom.constant = -scanBackView.frame.size.height
        
        UIView.animate(withDuration: 1) {
            UIView.setAnimationRepeatCount(MAXFLOAT)
            self.view.layoutIfNeeded()
        }
    }
    
    
    func removeScanAnimation() {
        
        chongjiboImageView.layer.removeAllAnimations()
        
        
    }

}
