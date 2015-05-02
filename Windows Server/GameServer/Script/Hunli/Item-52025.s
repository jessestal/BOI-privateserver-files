	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:??
	//		TaskName:Item-52021.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$a = GetMarriageLevel(-1)
		$b = GetLoveLevel(-1)
		$n = GetGlobalVar( 1 )
		$m = GetGlobalVar( 959 )
		$x = GetGlobalVar( 960 )
				
		BC( "chat", "player", -1, "Your marriage level is " ,$a )
		BC( "chat", "player", -1, "Your happiness level is ",$b )
		BC( "chat", "player", -1, "Nemo has been killed",$n,"times" )
		BC( "chat", "player", -1, "contribute roses",$m,"times" )
		BC( "chat", "player", -1, "get EXP Orb",$x,"times" )
		$op =  SetGlobalVar(1,0)		
		}