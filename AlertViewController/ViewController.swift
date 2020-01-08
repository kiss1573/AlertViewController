//
//  ViewController.swift
//  AlertViewController
//
//  Created by kishore on 09/12/19.
//  Copyright © 2019 kishore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Warning...", message: "Error Occured", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (error) in
            self.dismiss(animated: true, completion: nil)
        }))
        let abc = storyboard?.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController
        alert.addAction(UIAlertAction(title: "NextView", style: .default, handler: { (error) in
            self.navigationController?.pushViewController(abc!, animated: true)
    }))
            self.present(alert, animated: true, completion: nil)
    }
    @IBAction func button(_ sender: Any) {
        let abc = storyboard?.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController
        navigationController?.pushViewController(abc!, animated: true)
        
    }
}

