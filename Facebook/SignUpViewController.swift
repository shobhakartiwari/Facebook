//
//  SignUpViewController.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/15/25.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("view did load sign up")
        let navigationStack = self.navigationController?.viewControllers
        print(navigationStack)
        
        self.navigationController?.navigationBar.isHidden = true
    }
        
    // Called before the view appears on screen.
    // Update UI with latest data, start animations, or adjust layout.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let navigationStack = self.navigationController?.viewControllers
        print(navigationStack)
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
    
    @IBAction func navigateToLoginScreen(_ sender: Any) {
        navigateToNextScreen()
    }
    
    func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let signUpVC = storyboard.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC {
            self.navigationController?.pushViewController(signUpVC, animated: true)
        }
    }
}
