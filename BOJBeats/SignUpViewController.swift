//
//  SignUpViewController.swift
//  BOJBeats
//
//  Created by Jared Lopez on 10/18/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true , completion: nil)
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
                       
        user.signUpInBackground { (success, error) in
            if success{
                self.performSegue(withIdentifier: "loginsSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    

    
        
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
