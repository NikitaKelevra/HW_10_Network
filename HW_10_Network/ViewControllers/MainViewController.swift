//
//  MainViewController.swift
//  HW_10_Network
//
//  Created by Admin on 01.05.2021.
//

import UIKit

enum URLExamples: String {
    case imageAudiURL = "https://cdn-0.autotk.com/photos/project/4370/19495/origin.jpg"
    case linkOne = "https://evilinsult.com/generate_insult.php?lang=ru&type=json"
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBOutlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - IBActions
    @IBAction func showMeImageAudi() {
        performSegue(withIdentifier: "showImage", sender: nil)
    }
    
    @IBAction func jsonButton() {
        guard let url = URL(string: URLExamples.linkOne.rawValue) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error description")
                return
        }
            print(response)
            
            do {
                let json = try JSONDecoder().decode(Link.self, from: data)
                //self.successAlert()
                print(json)
                DispatchQueue.main.async {
                self.textView.text = json.insult
                }
            } catch let error {
                self.failedAlert()
                print(error.localizedDescription)
            }
        }.resume()
    }
        
        // MARK: - Private Methods
        private func successAlert() {
            DispatchQueue.main.async {
                let alert = UIAlertController(
                    title: "Success",
                    message: "You can see the results in the Debug aria",
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "OK", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
            }
        }
        
        private func failedAlert() {
            DispatchQueue.main.async {
                let alert = UIAlertController(
                    title: "Failed",
                    message: "You can see error in the Debug aria",
                    preferredStyle: .alert
                )
                
                let okAction = UIAlertAction(title: "OK", style: .default)
                alert.addAction(okAction)
                self.present(alert, animated: true)
            }
        }
    }
