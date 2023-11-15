package Playmobil;
import robocode.*;
import java.awt.Color;

/**************************************************************************
 * Participantes: Eduardo, Guilherme O. Reis, Pedro Paulo, Carlos
 * Escola: ETEC de MaUÁ 
 */


public class Lego extends Robot
{
	double turnDirection = 1; // 1 = sentido horario, -1 = sentido anti-horario

	public void run() 
	{
	
	setColors(Color.red,Color.blue,Color.yellow,Color.yellow,Color.lightGray);
	
		while (true) {
			turnRight(turnDirection * 5 );
		}
	}

	public void onScannedRobot(ScannedRobotEvent e) {
		
	double distance = e.getDistance();

        if(distance < 200){
           fire(3);
        }
        else if (distance<500){
           fire(2);
        }
        else {
           fire(1);
        }


		if (e.getBearing() >= 0) {
			turnDirection = 1;
		} 
		else {
			turnDirection = -1;
		}

		turnRight(e.getBearing());
		
		ahead(e.getDistance() - 150);
		}
		
	public void onHitRobot(HitRobotEvent e) {
	
		turnRight(e.getBearing());

		fire(3);
			
		back(5);
	}
}
