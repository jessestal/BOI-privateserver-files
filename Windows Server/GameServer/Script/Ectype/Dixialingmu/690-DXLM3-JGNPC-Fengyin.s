	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????
	//		TaskID:DXLM2-JGNPC-Fengyin-690.s
	//
	//****************************************

  	function OnRequest(){
  
  	//???????????
  	$is = GetEctypeVar(-1, 14)
  	if $is == 1
  		DisableNpcOption(0)
  	endif
  	
  	}	
  	
  	function OnOption0(){
  
  	//???? ??id 479, ????var 14-0?1?, ?????id 621, ????id 616 617 618 619 620
  	//???? ????51781 51782 ?? ??51828 ????51829
  	//????? 51851
  	$ectype_id = GetEctypeID(-1, 479)
  	
  	//????????,??
  	AddNPC(621, $ectype_id)
//  	AddNPC(616, $ectype_id)
//  	AddNPC(617, $ectype_id)
//  	AddNPC(618, $ectype_id)
//  	AddNPC(619, $ectype_id)
//  	AddNPC(620, $ectype_id)

		//?????
		DeleteNPC(607 , $ectype_id)
		DeleteNPC(608 , $ectype_id)
		DeleteNPC(609 , $ectype_id)
		DeleteNPC(610 , $ectype_id)
		DeleteNPC(611 , $ectype_id)
		DeleteNPC(612 , $ectype_id)
		DeleteNPC(613 , $ectype_id)
		DeleteNPC(614 , $ectype_id)
		DeleteNPC(615 , $ectype_id)
		
  	
  	//????
  	AddMonsterByFloat(51828 , 1,$ectype_id, 123, 186, 0)
  	AddMonsterByFloat(51828 , 1,$ectype_id, 125, 184, 0)
  	AddMonsterByFloat(51828 , 1,$ectype_id, 125, 188, 0)
  	AddMonsterByFloat(51828 , 1,$ectype_id, 122, 186, 0)
  	AddMonsterByFloat(51828 , 1,$ectype_id, 123, 184, 0)
  	AddMonsterByFloat(51828 , 1,$ectype_id, 123, 188, 0)
  
//  	AddMonsterByFloat(51829 , 1,$ectype_id, 121, 186, 0)
  	
  	AddMonsterByFloat( 51781, 1, $ectype_id, 264, 210, 0)
  	AddMonsterByFloat( 51781, 1, $ectype_id, 260, 218, 0)
  	AddMonsterByFloat( 51781, 1, $ectype_id, 268, 215, 0)
  	AddMonsterByFloat( 51780, 1, $ectype_id, 265, 230, 0)
  	AddMonsterByFloat( 51780, 1, $ectype_id, 268, 220, 0)
  	AddMonsterByFloat( 51782, 1, $ectype_id, 260, 227, 0)
  	AddMonsterByFloat( 51782, 1, $ectype_id, 265, 223, 0)
  	AddMonsterByFloat( 51782, 1, $ectype_id, 266, 218, 0)
  	AddMonsterByFloat( 51782, 1, $ectype_id, 294, 151, 0)
  	AddMonsterByFloat( 51781, 1, $ectype_id, 297, 152, 0)


  	AddMonsterByFloat(51781, 1, $ectype_id, 268, 186, 0)
  	AddMonsterByFloat(51781, 1, $ectype_id, 266, 156, 0)
  	AddMonsterByFloat(51782, 1, $ectype_id, 280, 158, 0)
  	AddMonsterByFloat(51782, 1, $ectype_id, 266, 168, 0)
  	AddMonsterByFloat(51781, 1, $ectype_id, 282, 154, 0)
  	AddMonsterByFloat(51781, 1, $ectype_id, 273, 160, 0)
  	AddMonsterByFloat(51782, 1, $ectype_id, 270, 163, 0)
  	AddMonsterByFloat(51782, 1, $ectype_id, 267, 177, 0)

		AddMonsterByFloat(51851, 1, $ectype_id, 299, 195, 0)

  	
  	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
  	BC("screen","map",$ectype_id, "Your guilt has been acquitted. The Effigy of Pride has appeared so that you may show your humility.")
  	BC("chat","player",-1, "Your guilt has been acquitted. The Effigy of Pride has appeared so that you may show your humility.")
  	//??????????1
  	SetEctypeVar(-1, 14, 1)	
	
}