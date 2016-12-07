//
//  ViewController.swift
//  VIPERS-Converter-Protocol
//
//  Created by Jan Bartel on 04/13/2016.
//  Copyright (c) 2016 Jan Bartel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
        let alertController = UIAlertController(title: "Wanne know how it works?", message: "Have a look on my tests", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)
    }

}

