package Diabeticoss;
import robocode.*;
//import java.awt.Color;

//Integrantes do grupo: Bryan, Caio, Diogo e Vinicius Fernandes

// API help : http://robocode.sourceforge.net/docs/robocode/robocode/Robot.html

/**
 * Spicegirl - a robot by (your name here)
 */
public class Spicegirl extends Robot
{
	/**
	 * run: Spicegirl's default behavior
	 */
	public void run() {
		// Initialization of the robot should be put here

		// After trying out your robot, try uncommenting the import at the top,
		// and the next line:

		// setColors(Color.red,Color.blue,Color.green); // body,gun,radar

		// Robot main loop
		while(true) {
			// Replace the next 4 lines with any behavior you would like
			ahead(100);
			turnGunRight(180);
			turnRight(180);
		}
	}

	/**
	 * onScannedRobot: What to do when you see another robot
	 */
	public void onScannedRobot(ScannedRobotEvent e) {
		// Replace the next line with any behavior you would like
		fire(1);
	}

	/**
	 * onHitByBullet: What to do when you're hit by a bullet
	 */
	public void onHitByBullet(HitByBulletEvent e) {
		// Replace the next line with any behavior you would like
		back(10);
		fire(1);
	}
	
	/**
	 * onHitWall: What to do when you hit a wall
	 */
	public void onHitWall(HitWallEvent e) {
		// Replace the next line with any behavior you would like
		turnLeft(45);
		back(50);
	}	
}
