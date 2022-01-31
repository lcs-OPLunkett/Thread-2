//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */



canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.highPerformance = true

//Create drak blue colour
let darkBlue = Color(hue: 240, saturation: 100, brightness: 55, alpha: 100)
//
////gradient for window
//for value in stride(from: 0, through: 480, by: 1) {
//
//    canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
//
//    // Change the "value" to a value in a different range
//    let currentHue = map(value: Double(value), fromLower: 0.0, fromUpper: 480.0, toLower: 0.0, toUpper: 60.0)
//
//    // Create a new color
//    let currentColor = Color(hue: Int(currentHue), saturation: 80, brightness: 90, alpha: 100)
//
//    // Set the line color
//    canvas.lineColor = currentColor
//
//
//}



//for _ in stride(from: 0, through: 600, by: 200){
//    for _ in stride(from: 0, through: 400, by: 100){
//
//
//    }
//}
// Draw left row of Triangles (left to right)
// Repete of 50 and 0 in from line of code
canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 50, y: 100))
canvas.drawLine(from: Point(x: 50, y: 100), to: Point(x: 100, y: 0))
canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 50, y: 100))
canvas.drawLine(from: Point(x: 50, y: 100), to: Point(x: 100, y: 200))
canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 50, y: 300))
canvas.drawLine(from: Point(x: 50, y: 300), to: Point(x: 100, y: 200))
canvas.drawLine(from: Point(x:0, y: 400), to: Point(x: 50, y: 300))
canvas.drawLine(from: Point(x: 50, y: 300), to: Point(x: 100, y: 400))
canvas.drawLine(from: Point(x: 0, y: 400), to: Point(x: 100, y: 400))


// Draw second row of Triangles

canvas.drawLine(from: Point(x: 150, y: 100), to: Point(x: 100, y: 0))
canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 150, y: 100))
canvas.drawLine(from: Point(x: 100, y: 200), to: Point(x: 150, y: 100))
canvas.drawLine(from: Point(x: 150, y: 100), to: Point(x: 200, y: 200))
canvas.drawLine(from: Point(x: 150, y: 300), to: Point(x: 200, y: 200))
canvas.drawLine(from: Point(x: 100, y: 200), to: Point(x: 150, y: 300))
canvas.drawLine(from: Point(x: 100, y: 400), to: Point(x: 150, y: 300))
canvas.drawLine(from: Point(x: 150, y: 300), to: Point(x: 200, y: 400))



//Draw third line of Triangles









// Draw top line

canvas.drawLine(from: Point(x: 0, y: 400), to: Point(x: 400, y: 400))







canvas.highPerformance = false




// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .blue)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
