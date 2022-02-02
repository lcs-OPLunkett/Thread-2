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
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.highPerformance = false

// Black background
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Create dark blue colour
let darkBlue = Color(hue: 240, saturation: 100, brightness: 55, alpha: 100)

// Draw top line
canvas.drawLine(from: Point(x: 0, y: 400), to: Point(x: 400, y: 400))

// Draw first set of triangles
canvas.drawShapesWithFill = true
canvas.fillColor = darkBlue

for xpositionTriangle1 in stride(from: 0, through: 400, by: 100) {
    for ypositionTriangle1 in stride(from: 100, through: 400, by: 200) {
        
        var Triangle1: [Point] = []
        Triangle1.append(Point(x: xpositionTriangle1 + 50, y: ypositionTriangle1 + 0))
        Triangle1.append(Point(x: xpositionTriangle1 + 0, y: ypositionTriangle1 + 100))
        Triangle1.append(Point(x: xpositionTriangle1 + 0 + 100, y: ypositionTriangle1 + 100))
        canvas.drawCustomShape(with: Triangle1)
        
    }
}

// Draw second set of triangles

for xpositionTriangle2 in stride(from: 0, through: 400, by: 100) {
    for ypositionTriangle2 in stride(from: 0, through: 300, by: 200) {
        
        var Triangle2: [Point] = []
        Triangle2.append(Point(x: xpositionTriangle2 + 0, y: ypositionTriangle2 + 0))
        Triangle2.append(Point(x: xpositionTriangle2 + 50, y: ypositionTriangle2 + 100))
        Triangle2.append(Point(x: xpositionTriangle2 + 100, y: ypositionTriangle2 + 0))
        canvas.drawCustomShape(with: Triangle2)
        
    }
}

// Write Fivio Foreign
canvas.lineColor = darkBlue
canvas.drawText(message: "Fivio Foreign", at: Point(x: 25, y: 437), size: 10, kerning: 5)




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
