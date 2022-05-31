//
//  UIView+Extensions.swift
//  AirBnb
//
//  Created by 송태환 on 2022/05/28.
//

import UIKit.UIView

extension UIView {
  // MARK: - Border
  func addTopBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
    let border = UIView()

    border.backgroundColor = color
    border.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
    border.frame = CGRect(
      x: 0,
      y: 0,
      width: frame.size.width,
      height: borderWidth
    )

    addSubview(border)
  }

  func addBottomBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
    let border = UIView()

    border.backgroundColor = color
    border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
    border.frame = CGRect(
      x: 0,
      y: frame.size.height - borderWidth,
      width: frame.size.width, height: borderWidth
    )

    addSubview(border)
  }

  func addLeftBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
    let border = UIView()

    border.backgroundColor = color
    border.autoresizingMask = [.flexibleHeight, .flexibleRightMargin]
    border.frame = CGRect(
      x: 0,
      y: 0,
      width: borderWidth,
      height: frame.size.height
    )

    addSubview(border)
  }

  func addRightBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
    let border = UIView()

    border.backgroundColor = color
    border.autoresizingMask = [.flexibleHeight, .flexibleLeftMargin]
    border.frame = CGRect(
      x: frame.size.width - borderWidth,
      y: 0, width: borderWidth,
      height: frame.size.height
    )

    addSubview(border)
  }
}
