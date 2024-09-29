//
//  ViewController.swift
//  Foca
//
//  Created by Liu on 26/09/23.
//

import UIKit

class CameraViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraView = UIImagePickerController()
            cameraView.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
            cameraView.sourceType = .camera
            self.present(cameraView, animated: true, completion: nil)
        }
    }
}

class CalendarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calenderView = UICalendarView(frame: UIScreen.main.bounds)
        let greCalender = Calendar(identifier: .gregorian)
        calenderView.calendar = greCalender

        self.view.addSubview(calenderView)
    }
}

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
