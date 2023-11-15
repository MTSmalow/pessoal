package batalha_tpaa;
import robocode.*;
import java.awt.Color;

// API help : https://robocode.sourceforge.io/docs/robocode/robocode/Robot.html

/**
 * Cosmos - a robot by (Nicole, Júlia, Heitor)
 */
public class Garibaldo extends AdvancedRobot
{
	/**
	 * run: Cosmos's default behavior
	 */
	public void run() {
		// Initialization of the robot should be put here

		// After trying out your robot, try uncommenting the import at the top,
		// and the next line:

		// setColors(Color.red,Color.blue,Color.green); // body,gun,radar

		// Robot main loop
		setGunColor(Color.red);
		setRadarColor(Color.blue);
		setScanColor(Color.red);
		while(true) {
			// Replace the next 4 lines with any behavior you would like
			setAhead(100);
			turnGunRight(90);
			setBack(100);
			turnGunRight(90);
			setFire (1);
		}
	}

	/**
	 * onScannedRobot: What to do when you see another robot
	 */
	public void onScannedRobot(ScannedRobotEvent e) {
		// Replace the next line with any behavior you would like
		if (tiro_ac == true) {
			fire(3);
			tiro_ac = false;
			} else
			fire(1); 
	}

	/**
	 * onHitByBullet: What to do when you're hit by a bullet
	 */
	public void onHitByBullet(HitByBulletEvent e) {
		// Replace the next line with any behavior you would like
		back(40);
		turnLeft(80);
		ahead(40);
	}
	
	/**
	 * onHitWall: What to do when you hit a wall
	 */
	public void onHitWall(HitWallEvent e) {
		// Replace the next line with any behavior you would like
		back(10);
	}	
}
