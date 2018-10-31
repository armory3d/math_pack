package iron.math;

class Helper {

	/**
	* Returns angle in radians between 2 vectors perpendicular to the z axis.
	*/
	public static function getAngle(va:Vec4, vb:Vec4):Float {
		var vn = Vec4.zAxis();
		var dot = va.dot(vb);
		var det = va.x * vb.y * vn.z +
				  vb.x * vn.y * va.z +
				  vn.x * va.y * vb.z -
				  va.z * vb.y * vn.x -
				  vb.z * vn.y * va.x -
				  vn.z * va.y * vb.x;
		return Math.atan2(det, dot);
	}
}
