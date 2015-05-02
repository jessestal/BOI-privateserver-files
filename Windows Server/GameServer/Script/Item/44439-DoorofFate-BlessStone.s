	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-22
	//		Author:???
	//		TaskName:44439-DoorofFate-BlessStone.s
	//		TaskID:?????????????????
	//
	//****************************************
	
function OnUseItem(){

		//???????????
		$Have = GetPlayerVar(-1,241)
		if $Have >= 1
			BC("screen","player",-1,"You already have a Fate Goddess Relic!")
			BC("chat","player",-1,"You already have a Fate Goddess Relic!")
			return
		endif
	
		//??????
		$count = GetPlayerInfo(-1,"item",44439)
		if $count < 10
			BC("screen","player",-1,"You don't have enough Stones of Blessing.")
			BC("chat","player",-1,"You don't have enough Stones of Blessing.")
			return
		endif
		
//	  //???????
//	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//	  if $bag_count < 1
//	     BC( "chat", "player", -1, "GUID:05372000004" )
//	     return
//	  endif		
		
	  //???????
	  $del_count = SubPlayerInfo( -1, "item", 44439, 10 )
	  //??????????,????????
	  if $del_count != 0
	     return
	  endif

  	//----------?????????-----------
  	//?????? 11027 1 
  	//??????
		$result = AddTrump(-1, 11027, 1 )
		BC("screen","player",-1,"Congratulations! You've received a Fate Goddess Relic.")
		BC("chat","player",-1,"Congratulations! You've received a Fate Goddess Relic.")
		SetPlayerVar(-1,241,1)
		PlayEffect(0,"common\Yanhua\tx_aixin\tx_aixin.ini")

}