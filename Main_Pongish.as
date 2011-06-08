package
{
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.events.Event;

	public class Main_Pongish extends MovieClip
	{
		var glitchtime:uint;
		var randy:uint;
		var vx:int;
		var speed:uint;
		var ba:Number;
		var bxs:Number;
		var bys:Number;
		var bs:Number;
		var gameover:Boolean;
		var score:uint;
		var lvl:uint;
		var blockmove:Number;
		var blockspeed:uint;
		var reset:Boolean;
		var billy_bob:Boolean;
		var us:uint;
		var time:uint;
		var panicing:Boolean;
		var panic:uint;
		var lb:Boolean;
		var rb:Boolean;
		var shifttime:uint;
		var shiftcounter:uint;
		var framep:uint;
		var framel:uint;
		var frameg:uint;
		var sp:uint;
		var sl:uint;
		var sg:uint;
		var mp:uint;
		var ml:uint;
		var mg:uint;
		var hp:uint;
		var hl:uint;
		var hg:uint;
		var timestr:String;
		var fpS:String;
		var spS:String;
		var mpS:String;
		var hpS:String;
		var fgS:String;
		var mgS:String;
		var sgS:String;
		var hgS:String;
		var flS:String;
		var mlS:String;
		var slS:String;
		var hlS:String;
		public function Main_Pongish()
		{
			init_variables();
			init_listeners();
			init();
		}
		function init():void
		{
			fpS="";
			spS="";
			fgS="";
			sgS="";
			flS="";
			slS="";
			mlS="";
			hlS="";
			mgS="";
			hgS="";
			mpS="";
			hpS="";
			randy=0;
			billy_bob=false;
			timestr="";
			framep=0;
			sp=0;
			mp=0;
			hp=0;
		}
		function init_variables():void
		{
			frameg=0;
			sg=0;
			mg=0;
			hg=0;
			shifttime=0;
			lvl_image.visible=false;
			reset=false;
			time=0;
			left.visible=false;
			ai.visible=false;
			right.visible=false;
			top.visible=false;
			bottom.visible=false;
			lvl_image.x=0;
			lvl_image.y=0;
			vx=0;
			gameover=false;
			score=0;
			lvl=1;
			lifeleft.gotoAndStop(13);
			//blocks
			//block placement
			//ROW 1
			AA.y=-275;
			AB.y=-275;
			AC.y=-275;
			AD.y=-275;
			AE.y=-275;
			AF.y=-275;
			AG.y=-275;
			AH.y=-275;
			AI.y=-275;
			AJ.y=-275;
			//ROW 2
			BA.y=-250;
			BB.y=-250;
			BC.y=-250;
			BD.y=-250;
			BE.y=-250;
			BF.y=-250;
			BG.y=-250;
			BH.y=-250;
			BI.y=-250;
			BJ.y=-250;
			//ROW 3
			CA.y=-225;
			CB.y=-225;
			CC.y=-225;
			CD.y=-225;
			CE.y=-225;
			CF.y=-225;
			CG.y=-225;
			CH.y=-225;
			CI.y=-225;
			CJ.y=-225;
			//ROW 4
			DA.y=-200;
			DB.y=-200;
			DC.y=-200;
			DD.y=-200;
			DE.y=-200;
			DF.y=-200;
			DG.y=-200;
			DH.y=-200;
			DI.y=-200;
			DJ.y=-200;
			//ROW 5
			EA.y=-175;
			EB.y=-175;
			EC.y=-175;
			ED.y=-175;
			EE.y=-175;
			EF.y=-175;
			EG.y=-175;
			EH.y=-175;
			EI.y=-175;
			EJ.y=-175;
			//ROW 6
			FA.y=-150;
			FB.y=-150;
			FC.y=-150;
			FD.y=-150;
			FE.y=-150;
			FF.y=-150;
			FG.y=-150;
			FH.y=-150;
			FI.y=-150;
			FJ.y=-150;
			//ROW 7
			GA.y=-125;
			GB.y=-125;
			GC.y=-125;
			GD.y=-125;
			GE.y=-125;
			GF.y=-125;
			GG.y=-125;
			GH.y=-125;
			GI.y=-125;
			GJ.y=-125;
			//ROW 8
			HA.y=-100;
			HB.y=-100;
			HC.y=-100;
			HD.y=-100;
			HE.y=-100;
			HF.y=-100;
			HG.y=-100;
			HH.y=-100;
			HI.y=-100;
			HJ.y=-100;
			//ROW 9
			IA.y=-75;
			IB.y=-75;
			IC.y=-75;
			ID.y=-75;
			IE.y=-75;
			IF.y=-75;
			IG.y=-75;
			IH.y=-75;
			II.y=-75;
			IJ.y=-75;
			//ROW 10
			JA.y=-50;
			JB.y=-50;
			JC.y=-50;
			JD.y=-50;
			JE.y=-50;
			JF.y=-50;
			JG.y=-50;
			JH.y=-50;
			JI.y=-50;
			JJ.y=-50;
			//ROW 11
			KA.y=-25;
			KB.y=-25;
			KC.y=-25;
			KD.y=-25;
			KE.y=-25;
			KF.y=-25;
			KG.y=-25;
			KH.y=-25;
			KI.y=-25;
			KJ.y=-25;
			//ROW 12
			LA.y=0;
			LB.y=0;
			LC.y=0;
			LD.y=0;
			LE.y=0;
			LF.y=0;
			LG.y=0;
			LH.y=0;
			LI.y=0;
			LJ.y=0;
			//ROW 13
			MA.y=25;
			MB.y=25;
			MC.y=25;
			MD.y=25;
			ME.y=25;
			MF.y=25;
			MG.y=25;
			MH.y=25;
			MI.y=25;
			MJ.y=25;
			//ROW 14
			NA.y=50;
			NB.y=50;
			NC.y=50;
			ND.y=50;
			NE.y=50;
			NF.y=50;
			NG.y=50;
			NH.y=50;
			NI.y=50;
			NJ.y=50;
			//ROW 15
			OA.y=75;
			OB.y=75;
			OC.y=75;
			OD.y=75;
			OE.y=75;
			OF.y=75;
			OG.y=75;
			OH.y=75;
			OI.y=75;
			OJ.y=75;
			//ROW 16
			PA.y=100;
			PB.y=100;
			PC.y=100;
			PD.y=100;
			PE.y=100;
			PF.y=100;
			PG.y=100;
			PH.y=100;
			PI.y=100;
			PJ.y=100;
			//ROW 10
			Spawn.startspawn(JA);
			Spawn.startspawn(JB);
			Spawn.startspawn(JC);
			Spawn.startspawn(JD);
			Spawn.startspawn(JE);
			Spawn.startspawn(JF);
			Spawn.startspawn(JG);
			Spawn.startspawn(JH);
			Spawn.startspawn(JI);
			Spawn.startspawn(JJ);
			//ROW 11
			Spawn.startspawn(KA);
			Spawn.startspawn(KB);
			Spawn.startspawn(KC);
			Spawn.startspawn(KD);
			Spawn.startspawn(KE);
			Spawn.startspawn(KF);
			Spawn.startspawn(KG);
			Spawn.startspawn(KH);
			Spawn.startspawn(KI);
			Spawn.startspawn(KJ);
			//ROW 12
			Spawn.startspawn(LA);
			Spawn.startspawn(LB);
			Spawn.startspawn(LC);
			Spawn.startspawn(LD);
			Spawn.startspawn(LE);
			Spawn.startspawn(LF);
			Spawn.startspawn(LG);
			Spawn.startspawn(LH);
			Spawn.startspawn(LI);
			Spawn.startspawn(LJ);
			//ROW 13
			Spawn.startspawn(MA);
			Spawn.startspawn(MB);
			Spawn.startspawn(MC);
			Spawn.startspawn(MD);
			Spawn.startspawn(ME);
			Spawn.startspawn(MF);
			Spawn.startspawn(MG);
			Spawn.startspawn(MH);
			Spawn.startspawn(MI);
			Spawn.startspawn(MJ);
			//ROW 14
			Spawn.startspawn(NA);
			Spawn.startspawn(NB);
			Spawn.startspawn(NC);
			Spawn.startspawn(ND);
			Spawn.startspawn(NE);
			Spawn.startspawn(NF);
			Spawn.startspawn(NG);
			Spawn.startspawn(NH);
			Spawn.startspawn(NI);
			Spawn.startspawn(NJ);
			//ROW 15
			Spawn.startspawn(OA);
			Spawn.startspawn(OB);
			Spawn.startspawn(OC);
			Spawn.startspawn(OD);
			Spawn.startspawn(OE);
			Spawn.startspawn(OF);
			Spawn.startspawn(OG);
			Spawn.startspawn(OH);
			Spawn.startspawn(OI);
			Spawn.startspawn(OJ);
			//ROW 16
			Spawn.startspawn(PA);
			Spawn.startspawn(PB);
			Spawn.startspawn(PC);
			Spawn.startspawn(PD);
			Spawn.startspawn(PE);
			Spawn.startspawn(PF);
			Spawn.startspawn(PG);
			Spawn.startspawn(PH);
			Spawn.startspawn(PI);
			Spawn.startspawn(PJ);
			//ROW 1
			AA.stop();
			AB.stop();
			AC.stop();
			AD.stop();
			AE.stop();
			AF.stop();
			AG.stop();
			AH.stop();
			AI.stop();
			AJ.stop();
			//ROW 2
			BA.stop();
			BB.stop();
			BC.stop();
			BD.stop();
			BE.stop();
			BF.stop();
			BG.stop();
			BH.stop();
			BI.stop();
			BJ.stop();
			//ROW 3
			CA.stop();
			CB.stop();
			CC.stop();
			CD.stop();
			CE.stop();
			CF.stop();
			CG.stop();
			CH.stop();
			CI.stop();
			CJ.stop();
			//ROW 4
			DA.stop();
			DB.stop();
			DC.stop();
			DD.stop();
			DE.stop();
			DF.stop();
			DG.stop();
			DH.stop();
			DI.stop();
			DJ.stop();
			//ROW 5
			EA.stop();
			EB.stop();
			EC.stop();
			ED.stop();
			EE.stop();
			EF.stop();
			EG.stop();
			EH.stop();
			EI.stop();
			EJ.stop();
			//ROW 6
			FA.stop();
			FB.stop();
			FC.stop();
			FD.stop();
			FE.stop();
			FF.stop();
			FG.stop();
			FH.stop();
			FI.stop();
			FJ.stop();
			//ROW 7
			GA.stop();
			GB.stop();
			GC.stop();
			GD.stop();
			GE.stop();
			GF.stop();
			GG.stop();
			GH.stop();
			GI.stop();
			GJ.stop();
			//ROW 8
			HA.stop();
			HB.stop();
			HC.stop();
			HD.stop();
			HE.stop();
			HF.stop();
			HG.stop();
			HH.stop();
			HI.stop();
			HJ.stop();
			//ROW 9
			IA.stop();
			IB.stop();
			IC.stop();
			ID.stop();
			IE.stop();
			IF.stop();
			IG.stop();
			IH.stop();
			II.stop();
			IJ.stop();
			shiftcounter=0;
			init_variables_lifestart();
		}
		function init_variables_lifestart():void
		{
			framel=0;
			sl=0;
			ml=0;
			hl=0;
			panicing=false;
			ai.x=0;
			ai.y=0;
			blockmove=0;
			paddle.x=275;
			paddle.y=390;
			ball.x=275;
			ball.y=380;
			lb=false;
			rb=false;
			initr();
		}
		function initr():void
		{
			us=Math.floor(Math.sqrt(lvl_image.y));
			if (us >= 1)
			{
				speed=us;
				blockspeed=2* us;
				bs=1.25* us;
			}
			else 
			{
				speed = 1;
				blockspeed =1;
				bs=1.25;
			}
			ba=Math.round(Math.random()*100)/100*Math.PI+Math.PI;
			//trace ((ba - Math.PI)/Math.PI)
			if (ba==Math.PI||ba==3*Math.PI/2||ba==2*Math.PI)
			{
				//trace ("it worked!")
				initr();
			}
			bys=Math.round(Math.sin(ba)*100000000000000)/100000000000000*bs;
			bxs=Math.round(Math.cos(ba)*100000000000000)/100000000000000*bs;
			panic=0;
			//trace (bxs+","+bys)
		}
		function init_listeners():void
		{
			//Add event listeners
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		function onKeyDown(event:KeyboardEvent):void
		{
			if (event.keyCode==Keyboard.LEFT)
			{
				vx=-speed;
				lb=true;
			}
			else if (event.keyCode == Keyboard.RIGHT)
			{
				vx=speed;
				rb=true;
			}
			if (event.keyCode == Keyboard.SPACE)
			{
				if (billy_bob==false)
				{
					billy_bob=true;
				}
				else
				{
					billy_bob=false;
				}
			}
		}
		function onKeyUp(event:KeyboardEvent):void
		{
			//trace ("paddle location = " + paddle.x)
			if (event.keyCode==Keyboard.LEFT)
			{
				lb=false;
				if(rb==false)
				{
					vx=0;
				}
			}
			else if (event.keyCode==Keyboard.RIGHT)
			{
				rb=false;
				if(lb==false)
				{
					vx=0;
				}
			}
			if (event.keyCode==Keyboard.SHIFT)
			{
				if(shiftcounter<4)
				{
					shiftcounter+=1;
				}
				if(shiftcounter==4)
				{
					gameover=true;
				}
				if (gameover==true)
				{
					init_variables();
				}
			}
			else if (event.keyCode==Keyboard.SPACE)
			{
				shiftcounter=0;
			}
		}
		function onEnterFrame(event:Event):void
		{
			if(shiftcounter==0)
			{
				controls.text="Controls:\nspace - pause\nleft - left\nright - right\nto restart hit\nshift four\ntimes";
			}
			else if(shiftcounter==1)
			{
				controls.text="Controls:\nspace - pause\nleft - left\nright - right\nto restart hit\nshift three\ntimes";
			}
			else if(shiftcounter==2)
			{
				controls.text="Controls:\nspace - pause\nleft - left\nright - right\nto restart hit\nshift two\ntimes";
			}
			else if(shiftcounter==3)
			{
				controls.text="Controls:\nspace - pause\nleft - left\nright - right\nto restart hit\nshift one\ntimes";
			}
			else if(shiftcounter==4)
			{
				controls.text="NEW GAME!!!\nNEW GAME!!!\nNEWGAME!!!\nNEW GAME!!!\nNEW GAME!!!\nNEWGAME!!!";
			}
			if(shiftcounter>=1&&shiftcounter<4)
			{
				shifttime+=1;
				if(shifttime==10*120)
				{
					shiftcounter=0;
				}
			}
			if(shiftcounter==0)
			{
				shifttime=0;
			}
			if (billy_bob==false&&panicing==false)
			{
				if(ball.hitTestObject(left))
				{
					glitchtime+=1;
				}
				else if(ball.hitTestObject(top))
				{
					glitchtime+=1;
				}
				else if(ball.hitTestObject(right))
				{
					glitchtime+=1;
				}
				else if(ball.hitTestObject(paddle))
				{
					glitchtime+=1;
				}
				else
				{
					glitchtime=0;
				}
				framel+=1;
				frameg+=1;
				framep+=1;
				if (framel==120)
				{
					sl+=1;
					if(sl==60)
					{
						ml+=1;
						if(ml==60)
						{
							hl+=1;
							ml=0;
						}
						sl=0;
					}
					framel=0;
				}
				if (frameg==120)
				{
					sg+=1;
					if(sg==60)
					{
						mg+=1;
						if(mg==60)
						{
							hg+=1;
							mg=0;
						}
						sg=0;
					}
					frameg=0;
				}
				if (framep==120)
				{
					sp+=1;
					if(sp==60)
					{
						mp+=1;
						if(mp==60)
						{
							hp+=1;
							mp=0;
						}
						sp=0;
					}
					framep=0;
				}
				//useless...
				/*if(mp==1)
				{
					mpS="minute";
				}
				else
				{
					mpS="minutes";
				}
				if(mg==1)
				{
					mgS="minute";
				}
				else
				{
					mgS="minutes";
				}
				if(ml==1)
				{
					mlS="minute";
				}
				else
				{
					mlS="minutes";
				}
				if(hp==1)
				{
					hpS="hour";
				}
				else
				{
					hpS="hours";
				}
				if(hg==1)
				{
					hgS="hour";
				}
				else
				{
					hgS="hours";
				}
				if(hl==1)
				{
					hlS="hour";
				}
				else
				{
					hlS="hours";
				}
				if(framep==1)
				{
					fpS="frame";
				}
				else
				{
					fpS="frames";
				}
				if(frameg==1)
				{
					fgS="frame";
				}
				else
				{
					fgS="frames";
				}
				if(framel==1)
				{
					flS="frame";
				}
				else
				{
					flS="frames";
				}
				if(sp==1)
				{
					spS="second";
				}
				else
				{
					spS="seconds";
				}
				if(sg==1)
				{
					sgS="second";
				}
				else
				{
					sgS="seconds";
				}
				if(sl==1)
				{
					slS="second";
				}
				else
				{
					slS="seconds";
				}
				timestr="Time playing\nthis session:\n"+hp+hpS+"\n"+mp+mpS+"\n"+sp+spS"\n"+framep+fpS+"\nTime playing\nthis game:\n"+hg+hgS+"\n"+mg+mgS+"\n"+sg+sgS+"\n"+frameg+fgS+"Time playing\nthis life:\n"+hl+hlS+"\n"+ml+mlS+"\n"+sl+slS+"\n"+framel+flS;*/
				timetxt.text=timestr;
				if (lvl_image.visible==true)
				{
					time+=1;
					if (blockmove - 1 > 0)
					{
						blockmove-=1;
					}
				}
				if (blockmove>=1)
				{
					blockmove=blockmove-1;
					if (Math.ceil(Math.random()*2)==1)
					{
						//ROW 1
						Spawn.spawn(lvl_image,AA);
						Spawn.spawn(lvl_image,AB);
						Spawn.spawn(lvl_image,AC);
						Spawn.spawn(lvl_image,AD);
						Spawn.spawn(lvl_image,AE);
						Spawn.spawn(lvl_image,AF);
						Spawn.spawn(lvl_image,AG);
						Spawn.spawn(lvl_image,AH);
						Spawn.spawn(lvl_image,AI);
						Spawn.spawn(lvl_image,AJ);
						//ROW 2
						Spawn.spawn(lvl_image,BA);
						Spawn.spawn(lvl_image,BB);
						Spawn.spawn(lvl_image,BC);
						Spawn.spawn(lvl_image,BD);
						Spawn.spawn(lvl_image,BE);
						Spawn.spawn(lvl_image,BF);
						Spawn.spawn(lvl_image,BG);
						Spawn.spawn(lvl_image,BH);
						Spawn.spawn(lvl_image,BI);
						Spawn.spawn(lvl_image,BJ);
						//ROW 3
						Spawn.spawn(lvl_image,CA);
						Spawn.spawn(lvl_image,CB);
						Spawn.spawn(lvl_image,CC);
						Spawn.spawn(lvl_image,CD);
						Spawn.spawn(lvl_image,CE);
						Spawn.spawn(lvl_image,CF);
						Spawn.spawn(lvl_image,CG);
						Spawn.spawn(lvl_image,CH);
						Spawn.spawn(lvl_image,CI);
						Spawn.spawn(lvl_image,CJ);
						//ROW 4
						Spawn.spawn(lvl_image,DA);
						Spawn.spawn(lvl_image,DB);
						Spawn.spawn(lvl_image,DC);
						Spawn.spawn(lvl_image,DD);
						Spawn.spawn(lvl_image,DE);
						Spawn.spawn(lvl_image,DF);
						Spawn.spawn(lvl_image,DG);
						Spawn.spawn(lvl_image,DH);
						Spawn.spawn(lvl_image,DI);
						Spawn.spawn(lvl_image,DJ);
						//ROW 5
						Spawn.spawn(lvl_image,EA);
						Spawn.spawn(lvl_image,EB);
						Spawn.spawn(lvl_image,EC);
						Spawn.spawn(lvl_image,ED);
						Spawn.spawn(lvl_image,EE);
						Spawn.spawn(lvl_image,EF);
						Spawn.spawn(lvl_image,EG);
						Spawn.spawn(lvl_image,EH);
						Spawn.spawn(lvl_image,EI);
						Spawn.spawn(lvl_image,EJ);
						//ROW 6
						Spawn.spawn(lvl_image,FA);
						Spawn.spawn(lvl_image,FB);
						Spawn.spawn(lvl_image,FC);
						Spawn.spawn(lvl_image,FD);
						Spawn.spawn(lvl_image,FE);
						Spawn.spawn(lvl_image,FF);
						Spawn.spawn(lvl_image,FG);
						Spawn.spawn(lvl_image,FH);
						Spawn.spawn(lvl_image,FI);
						Spawn.spawn(lvl_image,FJ);
						//ROW 7
						Spawn.spawn(lvl_image,GA);
						Spawn.spawn(lvl_image,GB);
						Spawn.spawn(lvl_image,GC);
						Spawn.spawn(lvl_image,GD);
						Spawn.spawn(lvl_image,GE);
						Spawn.spawn(lvl_image,GF);
						Spawn.spawn(lvl_image,GG);
						Spawn.spawn(lvl_image,GH);
						Spawn.spawn(lvl_image,GI);
						Spawn.spawn(lvl_image,GJ);
						//ROW 8
						Spawn.spawn(lvl_image,HA);
						Spawn.spawn(lvl_image,HB);
						Spawn.spawn(lvl_image,HC);
						Spawn.spawn(lvl_image,HD);
						Spawn.spawn(lvl_image,HE);
						Spawn.spawn(lvl_image,HF);
						Spawn.spawn(lvl_image,HG);
						Spawn.spawn(lvl_image,HH);
						Spawn.spawn(lvl_image,HI);
						Spawn.spawn(lvl_image,HJ);
						//ROW 9
						Spawn.spawn(lvl_image,IA);
						Spawn.spawn(lvl_image,IB);
						Spawn.spawn(lvl_image,IC);
						Spawn.spawn(lvl_image,ID);
						Spawn.spawn(lvl_image,IE);
						Spawn.spawn(lvl_image,IF);
						Spawn.spawn(lvl_image,IG);
						Spawn.spawn(lvl_image,IH);
						Spawn.spawn(lvl_image,II);
						Spawn.spawn(lvl_image,IJ);
						//ROW 10
						Spawn.spawn(lvl_image,JA);
						Spawn.spawn(lvl_image,JB);
						Spawn.spawn(lvl_image,JC);
						Spawn.spawn(lvl_image,JD);
						Spawn.spawn(lvl_image,JE);
						Spawn.spawn(lvl_image,JF);
						Spawn.spawn(lvl_image,JG);
						Spawn.spawn(lvl_image,JH);
						Spawn.spawn(lvl_image,JI);
						Spawn.spawn(lvl_image,JJ);
						//ROW 11
						Spawn.spawn(lvl_image,KA);
						Spawn.spawn(lvl_image,KB);
						Spawn.spawn(lvl_image,KC);
						Spawn.spawn(lvl_image,KD);
						Spawn.spawn(lvl_image,KE);
						Spawn.spawn(lvl_image,KF);
						Spawn.spawn(lvl_image,KG);
						Spawn.spawn(lvl_image,KH);
						Spawn.spawn(lvl_image,KI);
						Spawn.spawn(lvl_image,KJ);
						//ROW 12
						Spawn.spawn(lvl_image,LA);
						Spawn.spawn(lvl_image,LB);
						Spawn.spawn(lvl_image,LC);
						Spawn.spawn(lvl_image,LD);
						Spawn.spawn(lvl_image,LE);
						Spawn.spawn(lvl_image,LF);
						Spawn.spawn(lvl_image,LG);
						Spawn.spawn(lvl_image,LH);
						Spawn.spawn(lvl_image,LI);
						Spawn.spawn(lvl_image,LJ);
						//ROW 13
						Spawn.spawn(lvl_image,MA);
						Spawn.spawn(lvl_image,MB);
						Spawn.spawn(lvl_image,MC);
						Spawn.spawn(lvl_image,MD);
						Spawn.spawn(lvl_image,ME);
						Spawn.spawn(lvl_image,MF);
						Spawn.spawn(lvl_image,MG);
						Spawn.spawn(lvl_image,MH);
						Spawn.spawn(lvl_image,MI);
						Spawn.spawn(lvl_image,MJ);
						//ROW 14
						Spawn.spawn(lvl_image,NA);
						Spawn.spawn(lvl_image,NB);
						Spawn.spawn(lvl_image,NC);
						Spawn.spawn(lvl_image,ND);
						Spawn.spawn(lvl_image,NE);
						Spawn.spawn(lvl_image,NF);
						Spawn.spawn(lvl_image,NG);
						Spawn.spawn(lvl_image,NH);
						Spawn.spawn(lvl_image,NI);
						Spawn.spawn(lvl_image,NJ);
						//ROW 15
						Spawn.spawn(lvl_image,OA);
						Spawn.spawn(lvl_image,OB);
						Spawn.spawn(lvl_image,OC);
						Spawn.spawn(lvl_image,OD);
						Spawn.spawn(lvl_image,OE);
						Spawn.spawn(lvl_image,OF);
						Spawn.spawn(lvl_image,OG);
						Spawn.spawn(lvl_image,OH);
						Spawn.spawn(lvl_image,OI);
						Spawn.spawn(lvl_image,OJ);
						//ROW 16
						Spawn.spawn(lvl_image,PA);
						Spawn.spawn(lvl_image,PB);
						Spawn.spawn(lvl_image,PC);
						Spawn.spawn(lvl_image,PD);
						Spawn.spawn(lvl_image,PE);
						Spawn.spawn(lvl_image,PF);
						Spawn.spawn(lvl_image,PG);
						Spawn.spawn(lvl_image,PH);
						Spawn.spawn(lvl_image,PI);
						Spawn.spawn(lvl_image,PJ);
					}
				}
				blockmove+=blockspeed/120;
				//Move the paddle
				paddle.x+=vx;

				//Collision.anglec(lvl_image,ball,ai,...OH ****, NOT AGAIN! GOD **** IT!.....) TIME!!!!!!!!!!!
				//ROW 1
				Collision.anglec(lvl_image,ball,ai,AA);
				Collision.anglec(lvl_image,ball,ai,AB);
				Collision.anglec(lvl_image,ball,ai,AC);
				Collision.anglec(lvl_image,ball,ai,AD);
				Collision.anglec(lvl_image,ball,ai,AE);
				Collision.anglec(lvl_image,ball,ai,AF);
				Collision.anglec(lvl_image,ball,ai,AG);
				Collision.anglec(lvl_image,ball,ai,AH);
				Collision.anglec(lvl_image,ball,ai,AI);
				Collision.anglec(lvl_image,ball,ai,AJ);
				//ROW 2
				Collision.anglec(lvl_image,ball,ai,BA);
				Collision.anglec(lvl_image,ball,ai,BB);
				Collision.anglec(lvl_image,ball,ai,BC);
				Collision.anglec(lvl_image,ball,ai,BD);
				Collision.anglec(lvl_image,ball,ai,BE);
				Collision.anglec(lvl_image,ball,ai,BF);
				Collision.anglec(lvl_image,ball,ai,BG);
				Collision.anglec(lvl_image,ball,ai,BH);
				Collision.anglec(lvl_image,ball,ai,BI);
				Collision.anglec(lvl_image,ball,ai,BJ);
				//ROW 3
				Collision.anglec(lvl_image,ball,ai,CA);
				Collision.anglec(lvl_image,ball,ai,CB);
				Collision.anglec(lvl_image,ball,ai,CC);
				Collision.anglec(lvl_image,ball,ai,CD);
				Collision.anglec(lvl_image,ball,ai,CE);
				Collision.anglec(lvl_image,ball,ai,CF);
				Collision.anglec(lvl_image,ball,ai,CG);
				Collision.anglec(lvl_image,ball,ai,CH);
				Collision.anglec(lvl_image,ball,ai,CI);
				Collision.anglec(lvl_image,ball,ai,CJ);
				//ROW 4
				Collision.anglec(lvl_image,ball,ai,DA);
				Collision.anglec(lvl_image,ball,ai,DB);
				Collision.anglec(lvl_image,ball,ai,DC);
				Collision.anglec(lvl_image,ball,ai,DD);
				Collision.anglec(lvl_image,ball,ai,DE);
				Collision.anglec(lvl_image,ball,ai,DF);
				Collision.anglec(lvl_image,ball,ai,DG);
				Collision.anglec(lvl_image,ball,ai,DH);
				Collision.anglec(lvl_image,ball,ai,DI);
				Collision.anglec(lvl_image,ball,ai,DJ);
				//ROW 5
				Collision.anglec(lvl_image,ball,ai,EA);
				Collision.anglec(lvl_image,ball,ai,EB);
				Collision.anglec(lvl_image,ball,ai,EC);
				Collision.anglec(lvl_image,ball,ai,ED);
				Collision.anglec(lvl_image,ball,ai,EE);
				Collision.anglec(lvl_image,ball,ai,EF);
				Collision.anglec(lvl_image,ball,ai,EG);
				Collision.anglec(lvl_image,ball,ai,EH);
				Collision.anglec(lvl_image,ball,ai,EI);
				Collision.anglec(lvl_image,ball,ai,EJ);
				//ROW 6
				Collision.anglec(lvl_image,ball,ai,FA);
				Collision.anglec(lvl_image,ball,ai,FB);
				Collision.anglec(lvl_image,ball,ai,FC);
				Collision.anglec(lvl_image,ball,ai,FD);
				Collision.anglec(lvl_image,ball,ai,FE);
				Collision.anglec(lvl_image,ball,ai,FF);
				Collision.anglec(lvl_image,ball,ai,FG);
				Collision.anglec(lvl_image,ball,ai,FH);
				Collision.anglec(lvl_image,ball,ai,FI);
				Collision.anglec(lvl_image,ball,ai,FJ);
				//ROW 7
				Collision.anglec(lvl_image,ball,ai,GA);
				Collision.anglec(lvl_image,ball,ai,GB);
				Collision.anglec(lvl_image,ball,ai,GC);
				Collision.anglec(lvl_image,ball,ai,GD);
				Collision.anglec(lvl_image,ball,ai,GE);
				Collision.anglec(lvl_image,ball,ai,GF);
				Collision.anglec(lvl_image,ball,ai,GG);
				Collision.anglec(lvl_image,ball,ai,GH);
				Collision.anglec(lvl_image,ball,ai,GI);
				Collision.anglec(lvl_image,ball,ai,GJ);
				//ROW 8
				Collision.anglec(lvl_image,ball,ai,HA);
				Collision.anglec(lvl_image,ball,ai,HB);
				Collision.anglec(lvl_image,ball,ai,HC);
				Collision.anglec(lvl_image,ball,ai,HD);
				Collision.anglec(lvl_image,ball,ai,HE);
				Collision.anglec(lvl_image,ball,ai,HF);
				Collision.anglec(lvl_image,ball,ai,HG);
				Collision.anglec(lvl_image,ball,ai,HH);
				Collision.anglec(lvl_image,ball,ai,HI);
				Collision.anglec(lvl_image,ball,ai,HJ);
				//ROW 9
				Collision.anglec(lvl_image,ball,ai,IA);
				Collision.anglec(lvl_image,ball,ai,IB);
				Collision.anglec(lvl_image,ball,ai,IC);
				Collision.anglec(lvl_image,ball,ai,ID);
				Collision.anglec(lvl_image,ball,ai,IE);
				Collision.anglec(lvl_image,ball,ai,IF);
				Collision.anglec(lvl_image,ball,ai,IG);
				Collision.anglec(lvl_image,ball,ai,IH);
				Collision.anglec(lvl_image,ball,ai,II);
				Collision.anglec(lvl_image,ball,ai,IJ);
				//ROW 10
				Collision.anglec(lvl_image,ball,ai,JA);
				Collision.anglec(lvl_image,ball,ai,JB);
				Collision.anglec(lvl_image,ball,ai,JC);
				Collision.anglec(lvl_image,ball,ai,JD);
				Collision.anglec(lvl_image,ball,ai,JE);
				Collision.anglec(lvl_image,ball,ai,JF);
				Collision.anglec(lvl_image,ball,ai,JG);
				Collision.anglec(lvl_image,ball,ai,JH);
				Collision.anglec(lvl_image,ball,ai,JI);
				Collision.anglec(lvl_image,ball,ai,JJ);
				//ROW 11
				Collision.anglec(lvl_image,ball,ai,KA);
				Collision.anglec(lvl_image,ball,ai,KB);
				Collision.anglec(lvl_image,ball,ai,KC);
				Collision.anglec(lvl_image,ball,ai,KD);
				Collision.anglec(lvl_image,ball,ai,KE);
				Collision.anglec(lvl_image,ball,ai,KF);
				Collision.anglec(lvl_image,ball,ai,KG);
				Collision.anglec(lvl_image,ball,ai,KH);
				Collision.anglec(lvl_image,ball,ai,KI);
				Collision.anglec(lvl_image,ball,ai,KJ);
				//ROW 12
				Collision.anglec(lvl_image,ball,ai,LA);
				Collision.anglec(lvl_image,ball,ai,LB);
				Collision.anglec(lvl_image,ball,ai,LC);
				Collision.anglec(lvl_image,ball,ai,LD);
				Collision.anglec(lvl_image,ball,ai,LE);
				Collision.anglec(lvl_image,ball,ai,LF);
				Collision.anglec(lvl_image,ball,ai,LG);
				Collision.anglec(lvl_image,ball,ai,LH);
				Collision.anglec(lvl_image,ball,ai,LI);
				Collision.anglec(lvl_image,ball,ai,LJ);
				//ROW 13
				Collision.anglec(lvl_image,ball,ai,MA);
				Collision.anglec(lvl_image,ball,ai,MB);
				Collision.anglec(lvl_image,ball,ai,MC);
				Collision.anglec(lvl_image,ball,ai,MD);
				Collision.anglec(lvl_image,ball,ai,ME);
				Collision.anglec(lvl_image,ball,ai,MF);
				Collision.anglec(lvl_image,ball,ai,MG);
				Collision.anglec(lvl_image,ball,ai,MH);
				Collision.anglec(lvl_image,ball,ai,MI);
				Collision.anglec(lvl_image,ball,ai,MJ);
				//ROW 14
				Collision.anglec(lvl_image,ball,ai,NA);
				Collision.anglec(lvl_image,ball,ai,NB);
				Collision.anglec(lvl_image,ball,ai,NC);
				Collision.anglec(lvl_image,ball,ai,ND);
				Collision.anglec(lvl_image,ball,ai,NE);
				Collision.anglec(lvl_image,ball,ai,NF);
				Collision.anglec(lvl_image,ball,ai,NG);
				Collision.anglec(lvl_image,ball,ai,NH);
				Collision.anglec(lvl_image,ball,ai,NI);
				Collision.anglec(lvl_image,ball,ai,NJ);
				//ROW 15
				Collision.anglec(lvl_image,ball,ai,OA);
				Collision.anglec(lvl_image,ball,ai,OB);
				Collision.anglec(lvl_image,ball,ai,OC);
				Collision.anglec(lvl_image,ball,ai,OD);
				Collision.anglec(lvl_image,ball,ai,OE);
				Collision.anglec(lvl_image,ball,ai,OF);
				Collision.anglec(lvl_image,ball,ai,OG);
				Collision.anglec(lvl_image,ball,ai,OH);
				Collision.anglec(lvl_image,ball,ai,OI);
				Collision.anglec(lvl_image,ball,ai,OJ);
				//ROW 16
				Collision.anglec(lvl_image,ball,ai,PA);
				Collision.anglec(lvl_image,ball,ai,PB);
				Collision.anglec(lvl_image,ball,ai,PC);
				Collision.anglec(lvl_image,ball,ai,PD);
				Collision.anglec(lvl_image,ball,ai,PE);
				Collision.anglec(lvl_image,ball,ai,PF);
				Collision.anglec(lvl_image,ball,ai,PG);
				Collision.anglec(lvl_image,ball,ai,PH);
				Collision.anglec(lvl_image,ball,ai,PI);
				Collision.anglec(lvl_image,ball,ai,PJ);
				
				if (ai.x==1)
				{
					//trace ("hit right")
					bxs=- bxs;
					ai.x=0;
				}
				if (ai.x==-1)
				{
					//trace ("hit left")
					bxs=- bxs;
					ai.x=0;
				}
				if (ai.y==1)
				{
					//trace ("hit up")
					bys=- bys;
					ai.y=0;
				}
				if (ai.y==-1)
				{
					//trace ("hit down")
					bys=- bys;
					ai.y=0;
				}

				//make ball bounce off of sides and paddle
				if ((ball.hitTestObject(paddle) && ball.y < 390 - bys && bys > 0) && reset == true)
				{
					reset=false;
					//trace ("ball hit paddle")
					initr();
				}
				else if (ball.hitTestObject(paddle) && ball.y < 390 - bys && bys > 0)
				{
					//trace ("ball hit paddle")
					bys=- bys;
				}
				if (ball.hitTestObject(left)&&bxs<0)
				{
					//trace ("ball hit left")
					bxs=- bxs;
				}
				if (ball.hitTestObject(top)&&bys<0)
				{
					//trace ("ball hit top")
					bys=- bys;
				}
				if (ball.hitTestObject(right)&&bxs>0)
				{
					//trace ("ball hit right")
					bxs=- bxs;
				}

				ball.x+=bxs;
				ball.y+=bys;

				//make boarders useful for paddle
				Collision.block(paddle, left);
				Collision.block(paddle, right);

				//make lives lost
				if (ball.hitTestObject(bottom))
				{
					lifelost();
				}
				//make score and lvl and what not do stuff and what not...
				if (lvl_image.x<30)
				{
					lvl_image.y=1;
				}
				else if (lvl_image.x < 30 + 40)
				{
					lvl_image.y=2;
				}
				else if (lvl_image.x < 30 + 40 + 50)
				{
					lvl_image.y=3;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60)
				{
					lvl_image.y=4;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60 + 70)
				{
					lvl_image.y=5;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60 + 70 + 80)
				{
					lvl_image.y=6;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60 + 70 + 80 + 90)
				{
					lvl_image.y=7;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60 + 70 + 80 + 90 + 100)
				{
					lvl_image.y=8;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60 + 70 + 80 + 90 + 100 + 110)
				{
					lvl_image.y=9;
				}
				else if (lvl_image.x < 30 + 40 + 50 + 60 + 70 + 80 + 90 + 100 + 110 + 120)
				{
					lvl_image.y=10;
				}
				else
				{
					lvl_image.y=Math.floor(Math.log(lvl_image.x)*Math.LOG2E);
				}
				if (lvl_image.y>lvl)
				{
					blockmove+=25+lvl_image.y*10+lvl*5;
					reset=true;
					randy = Math.ceil(Math.random()*10);
					if (randy == 10)
					{
						if (lifeleft.currentFrame != 1)
						{
							lifeleft.gotoAndStop(lifeleft.currentFrame-1);
						}
					}
					if (randy >= 5)
					{
						if (lifeleft.currentFrame != 1)
						{
							lifeleft.gotoAndStop(lifeleft.currentFrame-1);
						}
					}
				}
				score=lvl_image.x;
				lvl=lvl_image.y;
				scoret.text="Points: "+score+"\nLevel: "+lvl;
				if (bys==0||bxs==0||glitchtime==120)
				{
					dontpanic.text="Don't\nPanic.";
					panicing=true;
				}
			}
			if (panicing==true)
			{
				panic=Math.round(Math.random()*200);
			}
			if (panic==100)
			{
				panicing=false;
				dontpanic.text="";
			}
		}
		function lifelost():void
		{
			if (lifeleft.currentFrame==17)
			{
				gameover=true;
				init_variables();
			}
			else
			{
				lifeleft.gotoAndStop(lifeleft.currentFrame + 1);
				init_variables_lifestart();
			}
		}
	}
}