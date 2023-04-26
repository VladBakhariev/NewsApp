//
//  ViewController.swift
//  NewsApp
//
//  Created by user on 26.04.2023.
//

import UIKit

// TavleView
// Custom Cell
// API Caller
// Open the News Story
// Search for News Stories 

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "News"
        view.backgroundColor = .systemBackground
        
        APICaller.shared.getTopStories { result in
            
        }
    }


}

