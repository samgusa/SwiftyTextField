//
//  File.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import Foundation
import SwiftUI

internal enum TextFieldType {
    case normal
    case secure
    case phoneNumber
}
internal enum ImageLocation {
    case left
    case right
}

public protocol ButtonTypeProtocol {
    // Define any required properties or methods here
    // ...
}

public enum ButtonType {
    case image
    case text
}
internal enum ErrorLocation {
    case top
    case bottom
}
