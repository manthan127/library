//
//  File.swift
//  
//
//  Created by Home on 10/02/24.
//

import SwiftUI

protocol Doc {
    //Mark: Alert
    /// Display alert on the screen.
    /// - Parameters:
    ///     - title: The title of the alert. Use this string to get the user’s attention and communicate the reason for the alert.
    ///     - message: Descriptive text that provides additional details about the reason for the alert.
    ///     - style: The style to use when presenting the alert controller. Use this parameter to configure the alert controller as an action sheet or as a modal alert. (default style is .alert)
    ///     - actions: for the buttons in popup.
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func displayAlert(
        title: String?, message: String, style: UIAlertController.Style,
        actions: [UIAlertAction],
        animated: Bool, completion: (() -> Void)?
    )
    
    
    /// Display alert on the screen.
    /// - Parameters:
    ///     - title: The title of the alert. Use this string to get the user’s attention and communicate the reason for the alert.
    ///     - error: Descriptive text that provides additional details about the reason for the alert.
    ///     - style: The style to use when presenting the alert controller. Use this parameter to configure the alert controller as an action sheet or as a modal alert. (default style is .alert)
    ///     - actions: for the buttons in popup.
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func display(
        title: String?, error: Error, style: UIAlertController.Style,
        actions: [UIAlertAction],
        animated: Bool, completion: (() -> Void)?
    )
    
    /// Display alert on the screen.
    /// - Parameters:
    ///     - alert: An object that can displays an alert message to the user.
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func display(alert: UIAlertController, animated: Bool, completion: (() -> Void)?)

    //Mark: Sheet
    /// Present sheet on the screen.
    /// - Parameters:
    ///     - view: A SwiftUIView to display on sheet.
    ///     - dismissOnSwipe: Pass true to dismiss on swipe-down the presentation; otherwise, pass false.
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func present<content: View>(
        view: content, dismissOnSwipe: Bool,
        animated: Bool, completion: (() -> Void)?
    )
    
    /// Present sheet on the screen.
    /// - Parameters:
    ///     - dismissOnSwipe: Pass true to dismiss on swipe-down the presentation; otherwise, pass false.
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    ///     - view: A SwiftUIView builder to display view on sheet
    func present<content: View>(
        dismissOnSwipe: Bool,
        animated: Bool, completion: (() -> Void)?,
        @ViewBuilder view: () -> content
    )
    
    /// Present sheet on the screen.
    /// - Parameters:
    ///     - viewController: An UIViewController to display on sheet
    ///     - dismissOnSwipe: Pass true to dismiss on swipe-down the presentation; otherwise, pass false.
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the presentation finishes. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func present(
        viewController: UIViewController, dismissOnSwipe: Bool,
        animated: Bool, completion: (() -> Void)?
    )
    
    /// dismiss sheet or alert on the screen.
    /// - Parameters:
    ///     - animated: Pass true to animate the presentation; otherwise, pass false.
    ///     - completion: The block to execute after the view or view controller is dismissed. This block has no return value and takes no parameters. You may specify nil for this parameter.
    func dismiss(animated: Bool, completion: (() -> Void)?)

}
