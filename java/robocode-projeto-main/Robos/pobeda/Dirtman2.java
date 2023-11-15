//Rogério, Rafael e Gabriel

package pobeda;

import robocode.Robot;
import robocode.ScannedRobotEvent;
import static robocode.util.Utils.normalRelativeAngleDegrees;

import java.awt.*;



public class Dirtman2 extends Robot {
	static int corner = 0; // Which corner we are currently using
	boolean stopWhenSeeRobot = false; // See goCorner()

	/**
	 * run:  Corners' main run function.
	 */
	public void run() {
		// Set colors
		setBodyColor(Color.red);
		setGunColor(Color.black);
		setRadarColor(Color.yellow);
		setBulletColor(Color.green);
		setScanColor(Color.green);

		// Move to a corner
		goCorner();

		int gunIncrement = 3;

		while (true) {
			for (int i = 0; i < 30; i++) {
				turnGunLeft(gunIncrement);
			}
			gunIncrement *= -1;
		}
	}

	/**
	 * goCorner:  A very inefficient way to get to a corner.  Can you do better?
	 */
	public void goCorner() {
		stopWhenSeeRobot = false;
		turnRight(normalRelativeAngleDegrees(corner - getHeading()));
		stopWhenSeeRobot = true;
		ahead(5000);
		turnLeft(90);
		ahead(5000);
		turnGunLeft(90);
	}

	/**
	 * onScannedRobot:  Stop and fire!
	 */
	public void onScannedRobot(ScannedRobotEvent e) {
		if (stopWhenSeeRobot) {
			stop();
			smartFire(e.getDistance());
			scan();
			resume();
		} else {
			smartFire(e.getDistance());
		}
	}

	public void smartFire(double robotDistance) {
		if (robotDistance > 200 || getEnergy() < 15) {
			fire(1);
		} else if (robotDistance > 50) {
			fire(2);
		} else {
			fire(3);
		}
	}
}