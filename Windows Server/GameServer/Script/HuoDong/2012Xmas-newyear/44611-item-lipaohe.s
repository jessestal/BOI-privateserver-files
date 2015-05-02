	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/15
	//		Author:???
	//		TaskName:
	//		TaskID:44611-item-lipaohe.s
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
  $del_count = SubPlayerInfo( -1, "item", 44611, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif


  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44564, 2 ) 
  
  
}