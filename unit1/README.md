# Unit 1
Introduction to Swift & Syntax (Review for Me)
Note: Skipping on the first few projects/checkpoints because this unit is mostly oriented around introducing syntax (i.e. concepts I familiar with but reviewing)

**Prologue**
- [x] Day 0

**Lectures**
- [x] Day 1
- [x] Day 2
- [x] Day 3
- [x] Day 4
- [x] Day 5
- [x] Day 6
- [x] Day 7 
- [x] Day 8
- [x] Day 9
- [x] Day 10
- [x] Day 11
- [x] Day 12
- [x] Day 13
- [ ] Day 14

**Consolidation**
- [ ] Day 15

**Code**
- [x] Checkpoint 4
- [x] Checkpoint 5
- [x] Checkpoint 6
- [x] Checkpoint 7
- [ ] Checkpoint 8
- [ ] Checkpoint 9


## Notable Notes:
* Enums
* Case+Switch Statements
* Continue (and breaks) in loops
* Tuples and Sets
* Customizing function parameter labels
  * Omit '\_'
    * Removes the parameter when calling the function
  * for/in
    * Replaces the first parameter with the key word 'for'/'in'
  * Default parameter values
  * Overall adds readability
* Error handling
  * Do, Catch, and Try
    * Try implies that the function can throw a function, whereas not using try on a function means that the function should not be capable of throwing an error.
* Closures (see day 9 for hella notes)
  * So much info
  * Can be used to add custom sorting via .sorted(by: __SORTING_CLOSURE__)
  * 'in' as a keyword to show the parameters of a closure, since the parameters are within the curly brackets
  * $0, $1, $x as shorthand for string inputs in sorting closures to GREATLY reduce clutter
  * Closures apply greatly to .filter and .map as well as a majority of SwiftUI (next unit)
* Functions as parameters
  * See day 9 part 3 for notes.
* Structs
  * Computed properties
    * TLDR functions but as properties
  * Identifying property changes
    * didSet
    * willSet
  * Custom Initializer
    * Extension to keep the default memberwise initialiser AND add a custom
  * Using 'mutating' func key word for functions that alter the stored values of properties
  * Static properties+methods
    * Applies to the struct itself rather than all of the instances
* Classes
  * Reference types unlike structs
  * deinit to clear up memory space
  * Always requires custom init() and/or default property values
  * Inheritance
    * Subclass must call super.init
    * 'override' existing functions for subclasses
    * key word 'final' to prevent the creation of additional subclasses
  * 'mutating' keyword not used unlike structs 
* Protocols
  * 'Contracts' (maybe similar to Java interfaces?)
  * Provides a blueprint/skeleton of a 'bare minimum' for classes, regarding properties and methods
  * For properties
    * Must declare with 'var'
    * Must define if it is readable '{get}' or readable+writeable '{get set}' (no comma between get and set btw)
* Opaque return types (review this again maybe)
  * 'some' keyword to declare return type in a concise manner
    * Most used e.g. 'some View' -->  “this is going to send back some kind of view to lay out, but I don’t want to write out the exact thing – you figure it out for yourself.”
* Extensions
  * Affords you to add more functionality to already existing types, even including Apple's already existing built-in types e.g. String, Array
  * Extensions may offer more affordances of convenience compared to global functions
    * Using . (period) brings up all the functions that exist of a certain type, including your extended functions
      * Global functions in comparison are harder to find / keep track of / manage, especially if you write many functions
    * Allows you to access internal properties / data of that type
  * If you add properties, must always be computed properties; never stored properties
  * Extensions allow you to keep memberwise initializers by writing custom initializers in an Extension
  * Can **NOT** override existing methods/properties via extensions
* Protocol Extensions 
  * Applying/Building an Extension on the Protocol type
  * Can build protocol extensions to create 'default' outputs for protocol functions
