# SFConfetti

A configurable confetti animaiton

@Metadata {
    @PageColor(red)
    @CallToAction( purpose: link, url: "https://github.com/simibac/ConfettiSwiftUIDemo")
}

## Overview

@Row {
    @Column(size: 1) {
        SFConfetti is a captivating and user-friendly effect from the SwiftFlex library, specifically designed for SwiftUI. It offers an easy way to integrate and customize confetti animations in your SwiftUI projects. With SFConfetti, you can add a touch of celebration and engagement to your app by creating delightful confetti explosions.
        
        
        > Important:
        > SFConfetti originated from [ConfettiSwiftUI](https://github.com/simibac/ConfettiSwiftUI/tree/master) (MIT) by [Simon Bachmann](https://github.com/simibac). 
        > If you find SFConfetti enjoyable, consider leaving a star to show your appreciation.
        
        ### Features
        - Built with pure SwiftUI: SFConfetti is seamlessly integrated into SwiftUI, ensuring compatibility and a native feel.
        - Shape Variety: Choose from default confetti shapes or inject emojis as text for a personalized and expressive touch.
        - Customizable Explosion: Easily configure the radius and angles of the confetti explosion to achieve the desired visual effect.
        - State Triggered Animation: Initiate the animation with a single state change and reuse it multiple times for an interactive experience.
    }
    
    @Column {
        ![Simulator screenshot](sf-confetti-header~light)
    }
}

### Usage
1. Import SFConfetti: Begin by importing SwiftFlex into every Swift file where you intend to use SFConfetti.
2. Configure with State Variable: Define an integer as a state variable (counter in the example). Any change to this variable will trigger a new confetti animation.
3. Call `.sfConfettiCannon(counter: Binding<Int>)` on your Button

```swift
import SwiftFlex
import SwiftUI

struct ContentView: View {
    
    @State private var counter:  Int = 0
    
    var body: some View {
        Button("🎉") {
            counter += 1
        }
        .sfConfettiCannon(counter: $counter)
    }
}
```

### List of parameters

| Parameter          | Rype           | Description                                           | Default                                                                                              |
| ------------------ | -------------- | ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| counter            | `Binding<Int>`   | on any change of this variable triggers the animation | `0`                                                                                                    |
| num                | `Int`            | amount of confettis                                   | `20`                                                                                                   |
| confettis          | `[ConfettiType]` | list of shapes and text                               | `[.shape(.circle), .shape(.triangle), .shape(.square), .shape(.slimRectangle), .shape(.roundedCross)]` |
| colors             | `[SFColor]`      | list of colors applied to the default shapes          | `[.blue, .red, .green, .yellow, .pink, .purple, .orange]`                                              |
| confettiSize       | `CGFloat`        | size that confettis and emojis are scaled to          | `10.0`                                                                                                 |
| rainHeight         | `CGFloat`        | vertical distance that confettis pass                 | `600.0`                                                                                                |
| fadesOut           | `Bool`           | size that confettis and emojis are scaled to          | `true`                                                                                                 |
| opacity            | `Double`         | maximum opacity during the animation                  | `1.0`                                                                                                  |
| openingAngle       | `Angle`          | boundary that defines the opening angle in degrees    | `Angle.degrees(60)`                                                                                    |
| closingAngle       | `Angle`          | boundary that defines the closing angle in degrees    | `Angle.degrees(120)`                                                                                   |
| radius             | `CGFloat`        | explosion radius                                      | `300.0`                                                                                                |
| repetitions        | `Int`            | number of repetitions for the explosion               | `0`                                                                                                    |
| repetitionInterval | `Double`         | duration between the repetitions                      | `1.0                                                                                                  |


## See also
