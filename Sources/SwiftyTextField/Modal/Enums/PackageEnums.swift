//
//  File.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import Foundation
import SwiftUI

public enum TextFieldType {
    case normal
    case secure
    case phoneNumber
}
public enum ImageLocation {
    case left
    case right
}

public enum ButtonType {
    case image
    case text
}




// Internal cases:

internal extension ButtonType {
    static var internalImage: ButtonType {
        .image
    }

    static var internalText: ButtonType {
        .text
    }
}

