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



// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let lightBlue = Color(hue: 193, saturation: 99, brightness: 86, alpha: 100)

let pink = Color(hue: 312, saturation: 63, brightness: 66, alpha: 100)
// background colour
canvas.fillColor = lightBlue
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

//white circles
for someValue in stride(from: 40, through: 400, by: 50){
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders = true
    canvas.borderColor = .white
    canvas.defaultBorderWidth = 12
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: 400 - someValue, height: 400 - someValue)
}

for someValue in stride(from: 40, through: 400, by: 50){
    canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders = true
    canvas.borderColor = pink
    canvas.defaultBorderWidth = 12
    canvas.drawEllipse(at: Point(x: 200, y: 500), width: 400 - someValue, height: 400 - someValue)
}




// draw text

canvas.drawText(message: "superdrag", at: Point(x: 20, y: 88), size: 48)
canvas.drawText(message: "with", at: Point(x: 25, y: 48), size: 8)
canvas.drawText(message: "the shambles", at: Point(x: 25, y: 38), size: 8)
canvas.drawText(message: "and lifter", at: Point(x: 25, y: 28), size: 8)
canvas.drawText(message: "thursday", at: Point(x: 118, y: 48), size: 8)
canvas.drawText(message: "june 13 1996/ 8:30", at: Point(x: 118, y: 38), size: 8)
canvas.drawText(message: "no age limit", at: Point(x: 118, y: 28), size: 8)
canvas.drawText(message: "at brick by brick", at: Point(x: 298, y: 48), size: 8)
canvas.drawText(message: "1130 buenos avenue", at: Point(x: 298, y: 38), size: 8)
canvas.drawText(message: "san diego, ca", at: Point(x: 298, y: 28), size: 8)
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
