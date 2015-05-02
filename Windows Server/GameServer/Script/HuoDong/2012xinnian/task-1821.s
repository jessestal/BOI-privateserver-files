		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-12
		//		Author:???
		//		TaskName:????
		//		TaskID:
		//
		//****************************************

	function OnTaskDone(){
		

	}

	function OnTaskFailedDone(){

//(lvl+35)^3*2
		$lvl = GetPlayerInfo(-1,"level")
		$exp0 = $lvl + 35
		$exp1 = $exp0 * $exp0
		$exp1 = $exp1 * $exp0
		$exp1 = $exp1 * 2
//(lvl+60)^2*35
		$lvlf = GetFieldLevel(-1)
		$exp2 = $lvlf + 60
		$exp2 = $exp2 * $exp2
		$exp2 = $exp2 * 35
		AddPlayerInfo(-1,"exp",$exp1)
		if $lvlf > 0
			AddFieldExp(-1,$exp2)
		endif
		BC("chat","player",-1,"You finished Happy Spring Festival, earning a lot of EXP.")

	}

	function OnTaskAccept(){

		$playerid = GetPlayerID()

	}