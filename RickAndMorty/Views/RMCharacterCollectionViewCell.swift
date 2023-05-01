//
//  RMCharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by ranek on 4/30/23.
//

import UIKit
/// Single Cell for a charachter
final class RMCharacterCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "RMCharacterCollectionViewCell"
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints(){
        super.prepareForReuse()
        
    }
    
    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel){
        
    }
    
}
