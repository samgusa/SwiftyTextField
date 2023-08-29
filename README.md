# SwiftyTextField

![](https://img.shields.io/badge/license-MIT-green) ![](https://img.shields.io/badge/maintained%3F-Yes-green) ![](https://img.shields.io/badge/swift-5.4-green) ![](https://img.shields.io/badge/iOS-15-red) ![](https://img.shields.io/badge/release-v1.0.1-blue)


**SwiftyTextField** is a series of TextFields created in SwiftUI.

There are a 5 different Textfields that can be used with **SwiftyTextField**, in 2 different categories: CustomViews and ViewModifiers

<img height="300" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/5395734d-a8e4-4e7f-92a2-420e460ab640">
&nbsp;&nbsp;&nbsp
<img height="300" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/a5145c58-e887-4921-b758-aad43b2d364b">
&nbsp;&nbsp;&nbsp
<img height="300" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/dcd9f504-5761-432c-b809-863dfbe0881f">
&nbsp;&nbsp;&nbsp
<img height="300" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/2e13572f-24f2-4984-8789-dcf770cb2408">
&nbsp;&nbsp;&nbsp
<img height="300" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/440c10d4-2654-4265-9379-733d96b88583">
&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp


## CustomViews 

There are a 5 different Textfields that can be used with **SwiftyTextField**, in 2 different categories: CustomViews and ViewModifiers, with different parameters for each of them

### CustomViews:

* **HideSeeTextView** - A SecureField that has a closed eye button that when pressed reveals the text in a SecureField:
  * text: Required. Used for the text in the SecureField
  * isSecure: Not required. Don't need to use this
  * titleKey: The placeholder text for the SecureField
  * foregroundColor: In the spirit of SwiftyTextField, the color of the text and eye button is customizable.

* **MovingTextField** - A Custom TextField that has moving placeholder text when the you start typing.
  * image: Required. Choose a systemImage for the image
  * title: Required. The text for any TextField
  * textFieldType: Optional. Uses 3 different types of textfield.
    * **normal** - a normal TextField.
    * **secure** - a SecureField,
    * **phoneNumber** - a phoneNumber keyboard
  * imageLocation: Optional. The location of the image on the TextField, totally up to your preference.
    * **left** of the TextField
    * **right** of the TextField
  * restColor: Optional. The color of the image and placeholder when there is no text in the TextField.
  * activeColor: Optional. The color of the image and placeholder when there is text in the TextField.
  * value: Required. The Binding for the text of the TextField. 

* **ScreenedTextField** - A Textfield that looks like there is a colored screen over the TextField
  * text: Required. The Binding for the text of the TextField.
  * isValid: Required: The Binding for determining the validity of the TextField. Start off as True.
  * errorLocation: Optional. The location for the error text.
    * **top** for the top of the TextField.
    * **bottom** for the bottom of the TextField.
  * errorColor: Optional. The color that the TextField turns into when there is an error.
  * mainColor: Optional. The main color of the TextField, until there is an error.
  * placeholder: Required. The placeholder text for the TextField
  * errorMessage: Required. The error message that appears along with the color change of the TextField.
 
### View Modifiers:

* **clearTextFieldViewModifier** - a clear button that is at the end of a TextField or SecureField. When there is no text the button disappears.
  * text: Required. The Binding text for the TextField.
  * buttonType: Optional. The button to clear the text of the TextField can be either:
    * **image** - A systemImage for the image
    * **text**. - Instead of an image, ir is text
  * buttonImage: Optional. The systemImage for the image buttonType.
  * buttonText: Optional. The text for the button as a text buttontype
  * foregroundColor: Optional. The foregroundColor for the TextField and button.
  * onClearHandler: Optional. For any extra logic when the clear button is pressed
 
* **validationModifier** - An image that shows up when a condition is triggered. Has 2 animated images, a check and a cross.
  * text. Required. The Binding text for the TextField
  * isInputValue: Required. The Bool used for determining the different validation image that will appear at the end of the TextField.
  * frameHeight: Optional. CGFloat. The size of the validation image.
  * isButtonPressed: Required. The Bool to determine when the validation image appears. Not the same as isInputValue 


<a name="Installation"></a>
## Installation

**Swift Package Manager** (Xcode 11 and above)

1. Select **File** > **Swift Packages** > **Add Package Dependency…** from the **File** menu.
2. Paste `https://github.com/Appracatappra/CircularProgressGauge.git` in the dialog box.
3. Follow the Xcode's instruction to complete the installation.

Only supports Swift Package Manager at this time. 

