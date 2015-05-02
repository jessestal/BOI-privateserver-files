	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-22
	//		Author:???
	//		TaskName:44441-ElfAltar-CreatorRunes.s
	//		TaskID:???? ????? ???? ?????
	//
	//****************************************
	
function OnUseItem(){

//		//???????????
//		$Have = GetPlayerVar(-1,241)
//		if $Have >= 1
//			BC("screen","player",-1,"GUID:05374000000")
//			BC("chat","player",-1,"GUID:05374000001")
//			return
//		endif
		
//	  //???????
//	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//	  if $bag_count < 1
//	     BC( "chat", "player", -1, "GUID:05374000002" )
//	     return
//	  endif		
		
	  //???????
	  $del_count = SubPlayerInfo( -1, "item", 44441, 1 )
	  //??????????,????????
	  if $del_count != 0
	     return
	  endif

  	//----------?????????-----------
  	//?????? 11026 1 
  	//??????
		$result = AddTrump(-1, 11026, 1 )
		BC("screen","player",-1,"Congratulations! Received Creator's Shield relic.")
		BC("chat","player",-1,"Congratulations! Received Creator's Shield relic.")
//		SetPlayerVar(-1,241,1)
		PlayEffect(0,"common\Yanhua\tx_aixin\tx_aixin.ini")

}