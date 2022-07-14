# Unit 2
Starting SwiftUI

**Lectures**
- [x] Day 16
- [ ] Day 17
- [ ] Day 18
- [ ] Day 19
- [ ] Day 20
- [ ] Day 21
- [ ] Day 22
- [ ] Day 23
- [ ] Day 24

**Consolidation**
- [ ] Day 25

**Code**
- [ ] Project 1
- [ ] Project 2
- [ ] Project 3

**Review** 
- TODO

## Notable Notes:
* Project 1 Topics:
  * "In this project we’re going to be building a check-splitting app that you might use after eating at a restaurant – you enter the cost of your food, select how much of a tip you want to leave, and how many people you’re with, and it will tell you how much each person needs to pay."
* Forms:
  * Only holds up to 10 rows of text. Any additional throws errors. 
    * Holding up to 10 items is a common trend in SwiftUI
  * Can use 'Group' to hold more than 10 items. Looks no different, but is a workaround to the 10-row limitation
  * Use 'Section' if you want the items to be split into chunks
* State
  * 'the active collection of settisn that describe how the app is right now'
  * Declare state variables/constants with: '@State var/let ...'
    * These state vars must be called with 'self.'
  * Allows to work around the limitations of a struct being immutable
  * $ is used to denote two-way binding for properties that get updated in real time
    * a property called 'name' in a textfield would be referenced as: '$name'
    * Only used for when variables are to be read AND written, but if read-only (e.g. outputting the text of a textfield somewhere else), that is read only, so 'name' is used instead of '$name'
  * Constants (e.g. certain properties or arrays) won't require @State because they are constants, and will not need to be overwritten/updated
* ForEach
  * Running a ForEach allows to bypass the 10-view limit of SwiftUI
  * The shorthand syntax applies to ForEach since each ForEach is a closure
    * I.e. can use the $0, $1, $x ... notation
  * 'id: \.self' is commonly used in ForEach loops
    * Allows SwiftUI to identify views uniquely when things change
    *  \.self refers to the key path of the property rather than it's value
      * Allows the properties to be perceived as 'unique' even if duplicate values exist. 
* Picker
  * ForEach is especially effective for Picker view
  * Picker allows users to select among many options, often with the options stored as state proprties.
