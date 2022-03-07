//
//  UIView+Ext.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//

import MapKit

extension UIView {
    
    // MARK: - Properties
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
