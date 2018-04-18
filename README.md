# SimpleCurrencies
SimpleCurrencies is a Swift framework that allows the iOS developers to use the currencies in a simplier way.

## Requirements

- iOS 8.0+
- Swift 4.1+
- Xcode 9.3+

## Integration

### CocoaPods (iOS 8.0+)

You can use [CocoaPods](http://cocoapods.org/) to install `SimpleCurrencies` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!

target 'MyApp' do
    pod 'SimpleCurrencies', '~> 1.0'
end
```

## Usage

### Initialization

```swift
import SimpleCurrencies
```
Import the framework to the files where you want use the *SimpleCurrencies* capabilities.

### Get all the currencies
You are able to retrieve all the currencies available on the iOS device by calling *SimpleCurrencies.all*. This class variable will return an array of *SimpleCurrency* objects.

### Get the current currency
You can also get the current currency selected by default in the iOS device mapped as a *SimpleCurrency* object. In order to do this, just call *SimpleCurrencies.current*.

### Get a currency for a specific code
If you want to retrieve a currency as a *SimpleCurrency* object, you can call the class function *SimpleCurrencies.currency(for code: String)* and it will return a *SimpleCurrency* object if the currency is found or nil.

```swift
SimpleCurrencies.currency(for: "EUR")
```

### Convert a number to a string based on a currency
In order to display a price to the users, you can call one of the two *format* methods. Those methods will allow you to get a string based on a number and a *SimpleCurrency* object or a currency code and the current locale of the iOS device.

Example:

```swift
let currency = SimpleCurrencies.currency(for: "EUR")
let value = SimpleCurrencies.format(currency: currency, value: 33.52)
print(value) // will print 33,52 € if the current locale is French
```

```swift
let value = SimpleCurrencies.format(for: "USD", value: 33.52)
print(value) // will print 33,52 $US if the current locale is French
```

### The Currency class
In order to retrieve the metadata of a currency, you will manipulate the *SimpleCurrency* class.

```swift

public class SimpleCurrency {
    public var name: String
    public var symbol: String
    public var code: String
    public var codeNumber: Int?
    public var description: String
}

```

## Contribute

If you have any suggestion or problem, feel free to open an issue.

