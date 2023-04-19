//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by ranek on 3/19/23.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests,expecting: RMGetAllCharactersResponse.self) { result in
            switch result{
            case .success(let model):
//                print(String(describing: model))
                print("Total: "+String(model.info.count))
                print("Total: "+String(model.info.pages))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
