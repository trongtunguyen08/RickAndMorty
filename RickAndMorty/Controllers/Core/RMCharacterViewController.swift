//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

import UIKit

/// Controller to show and search for Characters
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Characters"
        
        let request = RMRequest(endpoint: .character, pathComponents: ["1"])
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case .success(let character):
                print(character)
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
