//
//  OrangeViewController.swift
//  NavSample
//
//  Created by MF839-008 on 2016. 5. 31..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBAction func buttonClicked(sender: AnyObject) {
//        popToRootViewControllerAnimated . VC의 RootView로 이동하라
//        self.navigationController?.popToRootViewControllerAnimated(true)
        
//      viewControllers[Index] . Index번째 화면으로 이동하라
        self.navigationController?.popToViewController((navigationController?.viewControllers[1])!, animated: true)
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
