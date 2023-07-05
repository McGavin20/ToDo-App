//
//  ThemesModel.swift
//  ToDo App
//
//  Created by Sharma on 04/07/2023.
//

import Foundation
import SwiftUI

// MARK: - THEME MODEL

struct Theme: Identifiable {
  let id: Int
  let themeName: String
  let themeColor: Color
}
