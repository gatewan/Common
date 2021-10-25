//
//  File.swift
//  
//
//  Created by Wawan Beneran on 21/10/21.
//

import Foundation

extension String {
  private var htmlToAttributedString: NSAttributedString? {
    guard let data = data(using: .utf8) else { return nil }
    do {
      return try NSAttributedString(
        data: data,
        options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue],
        documentAttributes: nil
      )
    } catch {
      return nil
    }
  }
  
  public var htmlToString: String {
    return htmlToAttributedString?.string ?? ""
  }
}
