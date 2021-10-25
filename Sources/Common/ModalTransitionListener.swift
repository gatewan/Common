//
//  ModalTransitionListener.swift
//  GameSubmission
//
//  Created by Wawan Beneran on 05/10/21.
//

import Foundation

public protocol ModalTransitionListener {
  func popoverDismissed()
}

public class ModalTransitionMediator {

  public class var instance: ModalTransitionMediator {
    struct Static {
      static let instance: ModalTransitionMediator = ModalTransitionMediator()
    }
    return Static.instance
  }
  
  private var listener: ModalTransitionListener?

  public func setListener(listener: ModalTransitionListener) {
    self.listener = listener
  }
  
  public func sendPopoverDismissed(modelChanged: Bool) {
    listener?.popoverDismissed()
  }
}
