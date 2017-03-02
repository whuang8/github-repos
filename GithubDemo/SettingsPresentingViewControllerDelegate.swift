//
//  SettingsPresentingViewControllerDelegate.swift
//  GithubDemo
//
//  Created by William Huang on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

protocol SettingsPresentingViewControllerDelegate: class {
        func didSaveSettings(settings: GithubRepoSearchSettings)
        func didCancelSettings()
}
