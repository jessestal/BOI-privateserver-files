	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/5/18
	//		Author��¬��
	//		TaskName��zodiac-enter-npc9007.s
	//		TaskID��us only zodiac gauntlet(NPC ID 9007)
	//
	//****************************************


	function OnCreate(){
		$id = GetEctypeID( -1, 292 )

		$addboss = AddMonsterByFloat( 56008, 1, $id, 168, 172, 0 )
		$revaluet = DeleteNPC(9008 , -1)

	}
