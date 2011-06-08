package
{
	import flash.display.MovieClip;
	import flash.geom.Point;
	
	public class Collision
	{
		public function Collision()
		{
		}
		static public function block(objectA:MovieClip,objectB:MovieClip):void
		{
			var objectA_Halfwidth:Number = objectA.width / 2;
			var objectA_Halfheight:Number = objectA.height / 2;
			var objectB_Halfwidth:Number = objectB.width / 2;
			var objectB_Halfheight:Number = objectB.height / 2;
			var dx:Number = objectB.x - objectA.x;
			var ox:Number = objectB_Halfwidth + objectA_Halfwidth - Math.abs(dx);
			if (ox > 0)
			{
				var dy:Number = objectA.y - objectB.y;
				var oy:Number = objectB_Halfheight + objectA_Halfheight - Math.abs(dy);
				if (oy > 0)
				{
					if (ox < oy)
					{
						if (dx < 0)
							{
							//trace("Collision on Right")
							oy = 0;
						}
						else
						{
							//trace("Collision on Left")
							ox *= -1;
							oy = 0;
						}
					}
					else
					{
						if (dy < 0)
						{
							//trace("Collision on Top")
							ox = 0;
							oy *= -1;
						}
						else
						{
							//trace("Collision on Bottom")
							ox = 0;
						}
					}
					
					//Use the calculated x and y overlaps to Move objectA out of the collision
				
					objectA.x += ox;
					objectA.y += oy;
				}
			}
		}
		static public function anglec(objectD:MovieClip,objectA:MovieClip,objectB:MovieClip,objectC:MovieClip):void
		{
			if (objectC.currentFrame == 1 || objectC.currentFrame == 2 || objectC.currentFrame >= 5)
			{
				var objectA_Halfwidth:Number = objectA.width / 2;
				var objectA_Halfheight:Number = objectA.height / 2;
				var objectC_Halfwidth:Number = objectC.width / 2;
				var objectC_Halfheight:Number = objectC.height / 2;
				var dx:Number = (objectC.x + objectC_Halfwidth) - objectA.x;
				var ox:Number = objectC_Halfwidth + objectA_Halfwidth - Math.abs(dx);
				var dy:Number = objectA.y - (objectC.y + objectC_Halfheight);
				var oy:Number = objectC_Halfheight + objectA_Halfheight - Math.abs(dy);
				if (ox > 0 && oy > 0)
				{
					if (ox < oy)
					{
						if (dx <= 0)
						{
							//trace("Collision on Right")
							objectD.x += 1;
							if (objectC.currentFrame <= 6)
							{
								objectB.x = 1;
							}
							if (objectC.currentFrame == 2)
							{
								objectC.gotoAndStop(1);
							}
							else
							{
								objectC.gotoAndStop(4);
							}
						}
						if (dx >= 0)
						{
							//trace("Collision on Left")
							objectD.x += 1;
							if (objectC.currentFrame <= 5 || objectC.currentFrame == 7)
							{
								objectB.x = -1;
							}
							if (objectC.currentFrame == 2)
							{
								objectC.gotoAndStop(1);
							}
							else
							{
								objectC.gotoAndStop(4);
							}
						}
					}
					else
					{
						if (dy < 0)
						{
							//trace("Collision on Top")
							if (objectC.currentFrame <= 2 || objectC.currentFrame == 8 || objectC.currentFrame == 9)
							{
								objectB.y = 1;
							}
							objectD.x += 1;
							if (objectC.currentFrame == 2)
							{
								objectC.gotoAndStop(1);
							}
							else
							{
								objectC.gotoAndStop(4);
							}
						}
						else
						{
							//trace("Collision on Bottom")
							if (objectC.currentFrame <= 2 || objectC.currentFrame == 8 || objectC.currentFrame == 10)
							{
								objectB.y = -1;
							}
							objectD.x += 1;
							if (objectC.currentFrame == 2)
							{
								objectC.gotoAndStop(1);
							}
							else
							{
								objectC.gotoAndStop(4);
							}
						}
					}
				}
			}
			else if ((objectA.hitTestObject(objectC)) && (objectC.currentFrame == 3))
			{
				objectD.x += 1;
				objectC.gotoAndStop(4);
			}
		}
		//Other collision fuctions here...
	}
}