//
//  DetailsVC.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/19/25.
//

import UIKit

class DetailsVC: UIViewController {
    
    // called when the view controller is created
//    override func loadView() {
//        super.loadView()
//    }
    
    // called after the view is loaded into the memory
    // best place to
    // 1. do one time setup
    // 2. iniatilize data
    // 3. Configure UI elements
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigationStack = self.navigationController?.viewControllers
        for vc in navigationStack ?? [] {
            print(vc)
        }
    }
    
    // Called before the view appears on screen.
    // Update UI with latest data, start animations, or adjust layout.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // Update frames or constraints before layout.
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    //Adjust final layouts, animations, or dynamic changes.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    // Called right after the view appears.
    // Good for starting tasks that require the view to be visible (e.g., start animations, tracking, network calls)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    // Called right before the view goes offscreen.
    // Save data, cancel tasks, or hide keyboard.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // Called after the view disappears.
    // Release heavy resources, stop timers, or stop animations.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}
