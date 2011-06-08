package
{
	import flash.display.MovieClip;
	import flash.geom.Point;
	
	public class Spawn
	{
		public function Spawn()
		{
		}
		static public function spawn(objectA:MovieClip,objectB:MovieClip):void
		{
			var rand:uint = Math.ceil(Math.random() * 13);
			var lvl:uint = objectA.y;
			var meh:Boolean = false;
			objectB.y += 1;
			if (objectB.y >= 400 - 75) 
			{
				objectB.y -=25*16;
				meh = true;
			}
			if (objectB.y == 400 -25*(19) || meh == true)
			{
				if (lvl == 1)
				{
					if (rand <= 9)
					{
						objectB.gotoAndStop(1);
					}
					else
					{
						objectB.gotoAndStop(4);
					}
				}
				else if (lvl == 2)
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(3);
					}
					else if (rand <= 9)
					{
						objectB.gotoAndStop(1);
					}
					else
					{
						objectB.gotoAndStop(4);
					}
				}
				else if (lvl == 3)
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(1);
					}
					else if (rand <= 9)
					{
						objectB.gotoAndStop(3);
					}
					else
					{
						objectB.gotoAndStop(4);
					}
				}
				else if (lvl == 4)
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(4);
					}
					else if (rand <= 10)
					{
						objectB.gotoAndStop(3);
					}
					else if (rand <= 12)
					{
						objectB.gotoAndStop(1);
					}
					else
					{
						objectB.gotoAndStop(2);
					}
				}
				else if (lvl == 5)
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(3);
					}
					else if (rand <= 10)
					{
						objectB.gotoAndStop(4);
					}
					else if (rand <= 12)
					{
						objectB.gotoAndStop(1);
					}
					else
					{
						objectB.gotoAndStop(2);
					}
				}
				else if (lvl == 6)
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(1);
					}
					else if (rand <= 10)
					{
						objectB.gotoAndStop(3);
					}
					else if (rand <= 12)
					{
						objectB.gotoAndStop(4);
					}
					else
					{
						objectB.gotoAndStop(2);
					}
				}
				else if (lvl == 7)
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(1);
					}
					else if (rand <= 10)
					{
						objectB.gotoAndStop(2);
					}
					else if (rand <= 12)
					{
						objectB.gotoAndStop(3);
					}
					else
					{
						objectB.gotoAndStop(4);
					}
				}
				else if (lvl == 10)
				{
					objectB.gotoAndStop(3);
				}
				//add more lvls here
				else
				{
					if (rand <= 6)
					{
						objectB.gotoAndStop(2);
					}
					else if (rand <= 10)
					{
						objectB.gotoAndStop(1);
					}
					else if (rand <= 12)
					{
						objectB.gotoAndStop(3);
					}
					else
					{
						objectB.gotoAndStop(4);
					}
				}
				meh = false;
			}
		}
		static public function startspawn(objectA:MovieClip):void
		{
			var rand:uint = Math.ceil(Math.random() * 13);
			if (rand <= 9)
			{
				objectA.gotoAndStop(1);
			}
			else
			{
				objectA.gotoAndStop(4);
			}
		}
		static public function upy(a:MovieClip):void
		{
			if (a.visible == false)
			{
				a.y += 1;
				a.visible = true;
			}
		}
	}
}