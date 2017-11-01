//
//  ViewController.swift
//  example_qualtiyOfService_and_priorities
//
//  Created by Ammy Pandey on 14/08/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //qualtiyOfService()
        //qualtiyOfService1()
        qualtiyOfService2()
    }
    
    // Quality of service and priorities with class "userInitiated"
    func qualtiyOfService(){
        let queue1 = DispatchQueue(label: "com.load.web1", qos: DispatchQoS.userInitiated)
        let queue2 = DispatchQueue(label: "com.load.web2", qos: DispatchQoS.userInitiated)
        
        queue1.async {
            for i in 1..<10{
                print("🚗",i)
            }
        }
        queue2.async {
            for i in 100..<110{
                print("🛵",i)
            }
        }
    }

    // Quality of service and priorities with class "userInitiated" & "Utility
    func qualtiyOfService1(){
        let queue1 = DispatchQueue(label: "com.load.web1", qos: DispatchQoS.userInitiated)
        let queue2 = DispatchQueue(label: "com.load.web2", qos: DispatchQoS.utility)
        
        queue1.async {
            for i in 1..<10{
                print("🚗",i)
            }
        }
        queue2.async {
            for i in 100..<110{
                print("🛵",i)
            }
        }
    }

    // Quality of service and priorities with class "Utility" and "background"
    func qualtiyOfService2(){
        let queue1 = DispatchQueue(label: "com.load.web1", qos: DispatchQoS.background)
        let queue2 = DispatchQueue(label: "com.load.web2", qos: DispatchQoS.utility)
        
        queue1.async {
            for i in 1..<10{
                print("🚗",i)
            }
        }
        queue2.async {
            for i in 100..<110{
                print("🛵",i)
            }
        }
    }

    
}

