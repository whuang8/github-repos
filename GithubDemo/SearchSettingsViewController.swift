//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by William Huang on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    @IBOutlet weak var minimumStarsSlider: UISlider!
    @IBOutlet weak var minimumStarsLabel: UILabel!
    var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumStarsSlider.value = Float(settings.minStars)
        minimumStarsLabel.text = "\(Int(minimumStarsSlider.value))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.delegate?.didSaveSettings(settings: settings)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSliderValueChanged(_ sender: Any) {
        minimumStarsLabel.text = "\(Int(minimumStarsSlider.value))"
        settings.minStars = Int(minimumStarsSlider.value)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


