
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/22
	//		Author:??
	//		TaskName:Item-hesuiEXP-59615.s
	//		TaskID:?????
	//
	//****************************************
	
	

	function OnUseItem(){
	
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 20
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
		
		$info = SubPlayerInfo ( -1 , "item" , 59615 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 , "exp" , $exp )
		
		$lvlf = GetFieldLevel(-1)
		if $lvlf > 0
			AddFieldExp(-1,88)
		endif
		BC("screen","player",-1,"You used the New Year's EXP Card and got a lot of EXP.")
	}