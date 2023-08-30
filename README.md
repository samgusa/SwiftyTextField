# SwiftyTextField

![](https://img.shields.io/badge/license-MIT-green) ![](https://img.shields.io/badge/maintained%3F-Yes-green) ![](https://img.shields.io/badge/swift-5.4-green) ![](https://img.shields.io/badge/iOS-15-red) ![](https://img.shields.io/badge/release-v1.0.1-blue)


**SwiftyTextField** is a series of TextFields created in SwiftUI.

Visually appealing and interactive TextFields, each with a different design and ease of use. 

Whether you're designing a modern login screen, a stylish user profile form, or a captivating sign-up page, **SwiftyTextField** empowers you to elevate any user experience with a collection of 3 different Textfields and 2 different ViewModifiers.

Using modern Swift design and animation **SwiftyTextField** offers a fine-tuned appearance and behavior for your TextFields, and SecureFields to help any app's aesthetic. Each TextField and ViewModifier is totally customizable to your preferrences, and some **SwiftyTextField** modifiers and TextFields can be combined.

Explore the possibilities and unleash your creativity with **SwiftyTextField**. Elevate your app's user interface to the next level, with stunning TextFields that leave a lasting impression.

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


<a name="Installation"></a>
## Installation

**Swift Package Manager** (Xcode 11 and above)

1. Select **File** > **Swift Packages** > **Add Package Dependency…** from the **File** menu.
2. Paste `https://github.com/samgusa/SwiftyTextField.git` in the dialog box.
3. Follow the Xcode's instruction to complete the installation.

Only supports Swift Package Manager at this time. 


## Usage 

There are a 5 different Textfields that can be used with **SwiftyTextField**, in 2 different categories: CustomViews and ViewModifiers, with different parameters for each of them

### CustomViews:

* **HideSeeTextView** - A SecureField that has a closed eye button that when pressed reveals the text in a SecureField:
  * text: Required. Used for the text in the SecureField
  * placeholder: The placeholder text for the SecureField
  * foregroundColor: In the spirit of SwiftyTextField, the color of the text and eye button is customizable. Default value is **.gray**.

* **MovingTextField** - A Custom TextField that has moving placeholder text when the you start typing.
  * image: Required. Choose a systemImage for the image
  * placeholder: Required. The placeholder text for any TextField
  * textFieldType: Optional. Uses 3 different types of textfield.
    * **normal** - a normal TextField. **Default value**.
    * **secure** - a SecureField,
    * **phoneNumber** - a phoneNumber keyboard
  * imageLocation: Optional. The location of the image on the TextField, totally up to your preference.
    * **left** of the TextField. **Default value**.
    * **right** of the TextField
  * restColor: Optional. The color of the image and placeholder when there is no text in the TextField. Default value is .gray.
  * activeColor: Optional. The color of the image and text when there is text in the TextField. Default value is .primary.
  * text: Required. The Binding for the text of the TextField. 

* **ScreenedTextField** - A Textfield that looks like there is a colored screen over the TextField
  * text: Required. The Binding for the text of the TextField.
  * isValid: Required: The Binding for determining the validity of the TextField. Start it off as True.
  * errorLocation: Optional. The location for the error text.
    * **top** for the top of the TextField.
    * **bottom** for the bottom of the TextField. **Default value**.
  * textFieldType: Optional. Uses 3 different types of textfield.
    * **normal** - a normal TextField. **Default value**.
    * **secure** - a SecureField,
    * **phoneNumber** - a phoneNumber keyboard
  * errorColor: Optional. The color that the TextField turns into when there is an error. Default value is **.red**.
  * mainColor: Optional. The main color of the TextField, until there is an error. Default value is **.green**.
  * placeholder: Required. The placeholder text for the TextField
  * errorMessage: Required. The error message that appears along with the color change of the TextField.
 
### View Modifiers:

* **clearTextFieldViewModifier** - a clear button that is at the end of a TextField or SecureField. When there is no text the button disappears.
  * text: Required. The Binding text for the TextField.
  * buttonType: Optional. The button to clear the text of the TextField can be either:
    * **image** - A systemImage for the image. **Default value**.
    * **text**. - Instead of an image, it is text
  * buttonImage: Optional. The systemImage for the image buttonType. Default value is **"xmark.circle.fill"**.
  * buttonText: Optional. The text for the button as a text buttontype. Default value is **"Clear"**.
  * foregroundColor: Optional. The foregroundColor for the TextField and button. Default value is *.placeholderText*.
  * onClearHandler: Optional. For any extra logic when the clear button is pressed
 
* **validationModifier** - An image that shows up when a condition is triggered. Has 2 animated images, a check and a cross.
  * text. Required. The Binding text for the TextField
  * showValidImage: Required. The Bool used for determining the different validation image that will appear at the end of the TextField.
  * frameHeight: Optional. CGFloat. The size of the validation image. Default value is **28**.
  * showImage: Required. The Bool to determine when the validation image appears. Not the same as showValidImage.


## Using SwiftyTextField

```swift

// Basic
HideSeeTextField(text: $globalText, placeholder: "Enter")
                    .padding([.horizontal, .bottom, .top])

// Customized
HideSeeTextField(text: $globalText, placeholder: "Enter", foregroundColor: .red)
                    .padding([.horizontal, .bottom, .top])
```
<img width="336" alt="Screenshot 2023-08-29 at 9 07 28 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/3d589bce-f267-4eb6-a6b7-4a9439f94474">
<img width="338" alt="Screenshot 2023-08-29 at 9 07 35 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/869f6be6-0698-44ba-8b22-79dc1cdeca5c">
<img width="340" alt="Screenshot 2023-08-29 at 5 28 54 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/5235f095-2e6a-4142-8cda-f205109e4dd4"> 
<img width="345" alt="Screenshot 2023-08-29 at 5 50 28 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/269c4942-5f11-4ebe-9acb-27bab72ba481">

```swift

// Basic
MovingTextField(image: "envelope", placeholder: "Email", text: $globalText)

// Customize

MovingTextField(image: "envelope",
                placeholder: "Email",
                textFieldType: .phoneNumber,
                restColor: .blue,
                activeColor: .red,
                text: $globalText
```
<img width="345" alt="Screenshot 2023-08-29 at 9 09 45 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/d919c8a6-9efe-4c17-9e26-64235ac96287">
<img width="338" alt="Screenshot 2023-08-29 at 9 09 32 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/7cd6de5e-5dfd-46a6-9938-0519bca4a930">
<img width="343" alt="Screenshot 2023-08-29 at 5 47 56 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/117447b9-84dc-4735-8d14-ef0fd3fbda8b">
<img width="337" alt="Screenshot 2023-08-29 at 5 48 12 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/cdfb47c0-efcc-4319-aada-03e403ec14e6">


```swift

// Basic

ScreenedTextField(text: $globalText,
                                  isValid: $isValid2,
                                  placeholder: "Enter Text Here",
                                  errorMesage: "Error: Please try again")
                    .padding([.horizontal, .top, .bottom])

//Customized

ScreenedTextField(text: $globalText,
                                  isValid: $isValid2,
                                  errorLocation: .top,
                                  textFieldType: .phoneNumber,
                                  errorColor: .blue,
                                  mainColor: .yellow,
                                  placeholder: "Enter Text Here",
                                  errorMesage: "Error: Please try again")
                    .padding([.horizontal, .top, .bottom])
```
<img width="345" alt="Screenshot 2023-08-29 at 9 12 46 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/b451976c-1267-47c0-8786-3dfb5bc7cb5c">
<img width="343" alt="Screenshot 2023-08-29 at 9 12 59 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/d58428fb-6ffc-4889-be04-9776c68937c6">
<img width="342" alt="Screenshot 2023-08-29 at 8 54 47 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/33ee4bcd-8964-427e-803c-cfd6dd24a4cd">
<img width="344" alt="Screenshot 2023-08-29 at 8 55 00 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/50db9185-d14c-4bb2-b065-4356c60e0e05">

```swift

// Basic

TextField("Enter Text", text: $globalText)
                    .clearTextFieldViewModifier(text: $globalText)
                    .padding(5)
                    .border(.black)
                    .padding()


// Customized

TextField("Enter Text", text: $globalText)
                    .clearTextFieldViewModifier(text: $globalText,
                                                buttonType: .image,
                                                buttonImage: "xmark", 
                                                buttonText: "Delete",
                                                foregroundColor: .red,
                                                onClearHandler: {
                        print("Cleared")
                    })
                    .padding(5)
                    .border(.black)
                    .padding()

```
<img width="342" alt="Screenshot 2023-08-29 at 8 58 28 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/c9daf7f0-7872-4f0c-a919-5fda67f3c147">
<img width="343" alt="Screenshot 2023-08-29 at 9 11 34 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/77aa8512-467f-4d9e-9efd-f0446093e489">
<img width="339" alt="Screenshot 2023-08-29 at 8 58 50 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/39577ab5-1a02-4791-bcd9-5c9d279ef780">

```swift
TextField("Enter Text", text: $globalText)
                    .validationModifier(text: $globalText, showValidImage: isInputValid, showImage: $isBtnPressed)
                    .padding(3)
                    .border(.black)
                    .padding([.horizontal, .top, .bottom])

```
<img width="345" alt="Screenshot 2023-08-29 at 9 00 53 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/3f9dd76b-30b5-4dbb-bfea-f26375d88a79">
<img width="336" alt="Screenshot 2023-08-29 at 9 01 14 PM" src="https://github.com/samgusa/SwiftyTextField/assets/45985527/42c6d5f0-4d20-48e0-8941-7cef79a9bb22">




