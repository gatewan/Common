//
//  BundetHelper.swift
//  GameSubmission
//
//  Created by Wawan Beneran on 25/09/21.
//

import Foundation
import FileProviderUI

public struct Tools {
  
  public init() { }
  
  public func changeDateFormat(dateString: String?, fromFormat: String, toFormat: String) -> String {
    
    let inputDateFormatter = DateFormatter()
    inputDateFormatter.dateFormat = fromFormat
    let date = inputDateFormatter.date(from: dateString ?? "2021-04-17")
    
    let outputDateFormatter = DateFormatter()
    outputDateFormatter.dateFormat = toFormat
    
    if let validDate = date, dateString != nil {
      return outputDateFormatter.string(from: validDate)
    } else {
      return "n/a"
    }
    
  }
}


