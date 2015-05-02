//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/15
	//		Author:???
	//		TaskName:?????
	//		TaskID:44623-item-caishen.s
	//
	//****************************************


function OnUseItem(){
	
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif


  //---------?????????------------????888	5	59557
//??????	5	44093

  
  AddPlayerInfo(-1, "item", 59557, 5 ) 
  AddPlayerInfo(-1, "item", 44093, 5 ) 
  PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao3.ini" )

  
}
