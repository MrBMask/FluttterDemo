//
//  ViewController.swift
//  MyApp_flutter
//
//  Created by 郝靓 on 2021/12/7.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        button.setTitle("show flutter", for: UIControl.State.normal)
        button.frame = CGRect(x: 80, y: 210, width: 160, height: 40)
        button.backgroundColor = UIColor.blue
        self.view .addSubview(button)
    }
    
    @objc func showFlutter() {
        
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine:flutterEngine, nibName: nil, bundle:nil)
        present(flutterViewController, animated: true, completion: nil)
    }


}

