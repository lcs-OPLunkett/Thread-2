//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 480
let preferredHeight = 480
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

// Draw Background
canvas.fillColor = .blue
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)

// Turn off fill
canvas.drawShapesWithFill = true

// Draw Left Ear
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 160, y: 340), width: 60, height: 70)

// Draw Right Ear
canvas.drawEllipse(at: Point(x: 320, y: 340), width: 60, height: 70)

//Draw head
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 240, y: 240), width: 250, height: 250)

//Draw the left eye
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 185, y: 280), width: 50, height: 50)

//Draw the right eye
canvas.drawEllipse(at: Point(x: 290, y: 280), width: 50, height: 50)

//Draw the nose
canvas.drawEllipse(at: Point(x: 240, y: 230), width: 50, height: 40)

//Draw the mouth under the nose
canvas.drawLine(from: Point(x: 200, y: 180), to: Point(x: 280, y: 180))

//Draw puplie
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 195, y: 270), width: 15, height: 20)

//Draw right eye
canvas.drawEllipse(at: Point(x: 280, y: 272), width: 15, height: 20)

// Draw Panda Body
canvas.drawEllipse(at: Point(x: 240, y: 10), width: 340, height: 210)


