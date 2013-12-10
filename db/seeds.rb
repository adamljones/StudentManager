# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

form1 = Form.create(name: "Form 1", description: "1st Form")

form1.steps.create(description: "Hands in Set Position, Feet together, Bow")
form1.steps.create(description: "Step out directly to the left into a bow stance and perform a side first punch with right hand, left hand in guard position")

form2 = Form.create(name: "Form 2", description: "2nd Form")

form2.steps.create(description: "Hands in set position, feet together, bow to the front.")
form2.steps.create(description: "Step out to the left into a bow stance, perform side fist punch to the front with right hand, left hand is in guard position at right elbow.")
form2.steps.create(description: "Right leg drawn up to a cat stance (10% weight in right foot) at the same time the right hand performs a chin'nau to the front, left hand remains in guard position at right elbow (fingers pointing in at elbow).")
form2.steps.create(description: "Left hand drawn back to set position, then right hand performs the first pun'que, the right leg steps out into a bow stance as the second pun'que finishes.")
form2.steps.create(description: "Twist into a bow stance, perform side fist punch to the front with left hand, right hand is in guard position at left elbow.")
#form2.steps.create(description: "")
#form2.steps.create(description: "")



Form.create(name: "Form 3", description: "9 Star")
Form.create(name: "Form 4", description: "Jong Mien Su Sup Ji Kun - Small Cross Pattern Form")
Form.create(name: "Form 5", description: "Chow Sot Staff Form")
Form.create(name: "Form 6", description: "Su Moi Far - Small Plum Blossum")
