	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/5/18
	//		Author£ºÂ¬öÎ
	//		TaskName£ºzodiac-enter-npc9007.s
	//		TaskID£ºus only zodiac gauntlet(NPC ID 9007)
	//
	//****************************************


	function OnCreate(){
		$id = GetEctypeID( -1, 292 )

		$addboss = AddMonsterByFloat( 56008, 1, $id, 168, 172, 0 )
		$revaluet = DeleteNPC(9008 , -1)

	}
