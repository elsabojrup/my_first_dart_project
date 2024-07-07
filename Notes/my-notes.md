# Notes about anything releated to Dart
# Create a new project 
This will create a new folder that contains a basic Dart project structure.

    dart create <name-of-project>  

# Dart: Main File and Main Method

## Main Method
- **Required Entry Point**: Dart programs require a `main` function as the entry point. The `main` function is where the execution starts.
- **Signature**: The `main` function can either have no parameters or accept a single parameter of type `List<String>` for command-line arguments.

Example with no parameters:
```dart
void main() {
  print('Hello, Dart!');
}
```

Example with parameters: 
```dart
void main(List<String> args) {
  print('Arguments: $args');
}
```

# Dart: Data Types and Keywords

## Data Types

### Numeric
- **`int`**: Integer  
  Example: `int age = 30;`

- **`double`**: Floating point number  
  Example: `double price = 19.99;`

### Text
- **`String`**: Text strings  
  Example: `String greeting = "Hello, Dart!";`

### Boolean
- **`bool`**: True or false  
  Example: `bool isActive = true;`

### Lists
- **`List`**: A collection of objects, ordered sequentially  
  Example: `List<String> fruits = ['Apple', 'Banana', 'Cherry'];`

### Maps
- **`Map`**: Key-value pairs  
  Example: `Map<String, int> scores = {'Alice': 90, 'Bob': 85};`

### Sets
- **`Set`**: Unique objects  
  Example: `Set<String> colors = {'Red', 'Green', 'Blue'};`

### Runes
- **`Runes`**: Handles Unicode characters  
  Example: `var heartSymbol = '\u{2764}';`

### Symbol
- **`Symbol`**: Unique identifiers  
  Example: `Symbol symbol = Symbol('mySymbol');`

## Keywords

### Control Flow
- **`if`**, **`else`**: Conditional logic
- **`switch`**, **`case`**, **`default`**: Switch statements
- **`while`**, **`do`**, **`for`**: Loops
- **`break`**, **`continue`**: Loop control
- **`return`**: Exit a function

### Error Handling
- **`try`**, **`catch`**, **`throw`**, **`finally`**, **`rethrow`**: Handle exceptions

### Classes and Functions
- **`class`**: Define a class
- **`extends`**: Inherit from another class
- **`implements`**: Implement an interface
- **`abstract`**: Abstract classes
- **`interface`**: Define an interface (used via `implements`)
- **`mixin`**: Reuse code in multiple classes
- **`static`**: Static member
- **`new`**: Create new instances (optional, can be omitted)
- **`const`**, **`final`**: Constant and final variables
- **`void`**: No return type
- **`dynamic`**: Dynamic type
- **`this`**: Refer to the current instance
- **`super`**: Call superclass members

### Others
- **`is`**: Type check
- **`as`**: Type cast
- **`assert`**: Ensure condition
- **`enum`**: Define enumerated types
- **`typedef`**: Define a type alias
- **`await`**, **`async`**: Asynchronous programming
- **`yield`**: Generate values (in generators)
- **`import`**, **`export`**, **`library`**, **`part`**, **`deferred`**: Manage modules and libraries
- **`factory`**: Factory constructor

# Dart: Access Control and Visibility
In Dart, there is not traditional access modifiers such as `public`, `private`, `protected` etc. This is handled in another way.
## Visibility in Dart

### Private Members
To mark a member as private in Dart, use an underscore (`_`) as a prefix to the name. This makes the member private to the library where it is defined.

Example:
```dart
class MyClass {
  int _privateVariable = 0; // This is a private variable

  void _privateMethod() { // This is a private method
    print('This is a private method');
  }
  
  void publicMethod() {
    print('This is a public method');
  }
}

void main() {
  var myClass = MyClass();
  myClass.publicMethod(); // Accessible
  // myClass._privateMethod(); // Not accessible, will cause an error
  // print(myClass._privateVariable); // Not accessible, will cause an error
}
```

