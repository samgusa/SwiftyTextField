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

enum ErrorLocation {
    case top
    case bottom
}

struct ErrorLocationWrapper {
    private let location: ErrorLocation

    static var top: ErrorLocationWrapper {
        return ErrorLocationWrapper(location: .top)
    }

    static var bottom: ErrorLocationWrapper {
        return ErrorLocationWrapper(location: .bottom)
    }

    // Additional methods and properties to enhance usability
    // ...

    static func == (lhs: ErrorLocationWrapper, rhs: ErrorLocation) -> Bool {
        return lhs.location == rhs
    }
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

