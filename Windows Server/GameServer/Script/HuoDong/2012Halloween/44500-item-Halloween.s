//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-16
	//		Author:???
	//		TaskName:?????-??????
	//		TaskID:44500
	//
	//****************************************
	function OnUseItem(){
		
		$PlayerVar = GetPlayerVar(-1,263)
		$GlobalVar = GetGlobalVar( 84 )
	

		BC("screen","player",-1,"The Halloween Gift Pack is full of amazing gifts! Come and try your luck!")
		
		if $GlobalVar == 300
			BC("screen","server",-1,"A hero has obtained the 1st prize of the Halloween Gift Pack, the Halloween Dragon's Wings. Congratulations!")
			ReqAward(-1,29,1)
		else
			ReqAward(-1,28,1)
		endif
		if $PlayerVar == 0
		  $GlobalVar = $GlobalVar + 1
		  SetGlobalVar( 84 , $GlobalVar)
		  SetPlayerVar(-1, 263, 1)
		  return
		 endif

	}