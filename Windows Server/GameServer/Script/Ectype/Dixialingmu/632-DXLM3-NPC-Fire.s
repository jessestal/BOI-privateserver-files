	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08
	//		Author:???
	//		TaskName:???????
	//		TaskID:632
	//
	//****************************************
	
	function OnRequest(){
	

}
	
	
	function OnOption0(){
	
			BC( "screen", "player", -1, "The power of the Pangaea Sword shields you from fire!" )

			AddStatus( -1, 10570, 1 )
			PlayEffect( -1, "skill\Taoist\huoyandun\fire\tx_taoist_huoyandun_fire.ini" )

		
}