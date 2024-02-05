from turtle import *
t = Turtle()
bgcolor('black')
t.pencolor('purple')
t.speed(0)

for i in range(320):
    t.circle(190-i, 90)
    t.left(90)
    t.circle(190-i, 90)
    t.left(18)
    if i > 190:
        t.pensize(3)