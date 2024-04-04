//
//  HomeVC.swift
//  SignIn
//
//  Created by Thirupathi Eluvaka on 4/3/24.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet weak var usernameTF: UITextField!
    
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBOutlet weak var signInBTN: UIButton!
    
    
    @IBAction func signin(_ sender: UIButton) {
        guard let user = usernameTF.text, let pass = passwordTF.text, !pass.isEmpty, !user.isEmpty else { return }
        performSegue(withIdentifier: "logintodetail", sender: self)
        
    }
    
    @IBAction func username(_ sender: UITextField) {
        guard let user = usernameTF.text, !user.isEmpty else { passwordTF.isEnabled=false
            return }
        passwordTF.isEnabled=true
    }
    
    @IBAction func password(_ sender: UITextField) {
        guard let pass = passwordTF.text, !pass.isEmpty else { passwordTF.isEnabled=false
            return  }
        signInBTN.isEnabled=true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dest = segue.destination as? ActionItemsTableVC else { return  }
        dest.user = usernameTF.text
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        passwordTF.isEnabled=false
        signInBTN.isEnabled=false
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
