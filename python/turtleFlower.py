import turtle

turtle.bgcolor('black')
turtle.pencolor('purple')
turtle.speed(0)

for i in range(320):
    turtle.circle(190-i, 90)
    turtle.left(90)
    turtle.circle(190-i, 90)
    turtle.left(18)
    if i > 190:
        turtle.pensize(3)
turtle.exitonclick()