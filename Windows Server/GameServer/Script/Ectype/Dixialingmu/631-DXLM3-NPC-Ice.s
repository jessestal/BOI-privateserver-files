	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08
	//		Author:???
	//		TaskName:???????
	//		TaskID:631
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){


				BC( "screen", "player", -1, "The power of the Pangaea Sword shields you from ice!" )
				AddStatus( -1, 10569, 1 )
				PlayEffect( -1, "skill\Taoist\bingdun\fire\tx_taoist_bingdun_fire.ini" )


		
	}