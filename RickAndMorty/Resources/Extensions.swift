//
//  Extensions.swift
//  RickAndMorty
//
//  Created by ranek on 4/29/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
