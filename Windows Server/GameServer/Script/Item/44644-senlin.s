					

function prepare(){
#cardname = "Forest Goddess Card"
$indexFALL = 1
$indexWALL = 16
$luckybuffALL = 10000

}
function checkbuff(){
if $indexF == 1
$freeID = 59323
$freeGive = 2
endif






if $indexW == 1
$giftitem = 60031
#giftname = "Medium Pet Gem"
$luckybuff = 700
$itemgive = 2
$isBC = 0
endif

if $indexW == 2
$giftitem = 59812
#giftname = "Bound Salary Card"
$luckybuff = 2000
$itemgive = 1
$isBC = 0
endif

if $indexW == 3
$giftitem = 5
#giftname = "Major Fortify Crystal"
$luckybuff = 5853
$itemgive = 2
$isBC = 0
endif

if $indexW == 4
$giftitem = 44613
#giftname = "Ancient Coin"
$luckybuff = 1200
$itemgive = 2
$isBC = 0
endif

if $indexW == 5
$giftitem = 44467
#giftname = "Holy Fortification Fragment"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 6
$giftitem = 18
#giftname = "Fresh Flower x99"
$luckybuff = 100
$itemgive = 1
$isBC = 0
endif

if $indexW == 7
$giftitem = 64247
#giftname = "LV4 Gem Chest"
$luckybuff = 25
$itemgive = 1
$isBC = 1
endif

if $indexW == 8
$giftitem = 5564
#giftname = "Charmstone LV4"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 9
$giftitem = 2135
#giftname = "Super Gem Talisman"
$luckybuff = 50
$itemgive = 1
$isBC = 0
endif

if $indexW == 10
$giftitem = 60722
#giftname = "(Battle Of"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 11
$giftitem = 62628
#giftname = "Forest Goddess Egg"
$luckybuff = 2
$itemgive = 1
$isBC = 1
endif

if $indexW == 12
$giftitem = 64181
#giftname = "Pet Skill Removal Charm"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 13
$giftitem = 5384
#giftname = "Critical Strike Stone LV4"
$luckybuff = 3
$itemgive = 1
$isBC = 1
endif

if $indexW == 14
$giftitem = 60099
#giftname = "LV13 Chalice Coupon"
$luckybuff = 2
$itemgive = 1
$isBC = 1
endif

if $indexW == 15
$giftitem = 63789
#giftname = "Avatar Energy Stone"
$luckybuff = 50
$itemgive = 1
$isBC = 0
endif

if $indexW == 16
$giftitem = 44084
#giftname = "Dimensional Core"
$luckybuff = 2
$itemgive = 1
$isBC = 1
endif
















}

function OnUseItem(){		
	$playerid = GetPlayerID	
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )	
	call prepare()	
	//??????????(???????+1)	
	$bag_need = $indexFALL + 1	
	if $bag_count < $bag_need	
		BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
		return
	endif	
	$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )	
	//??????????(??????????- -)	
	if $bag_count1 < 1	
		BC( "screen", "player", -1, "Insufficient material bag slots!" )
		return
	endif		
	//-------------------------------------------		
	$key1 = GetPlayerInfo( -1, "item", 64266 )		
	$key2 = GetPlayerInfo( -1, "item", 63287 )		
	if $key1 == 0		
		if $key2 == 0	
			BC( "screen", "player", -1, "You need a Starwish Charm to activate this!" )
			return
		else	
			$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
		endif	
	else		
		$del_count = SubPlayerInfo( -1, "item", 64266, 1 )	
	endif		
	$itemid = GetItemID()		
	$del_count = SubPlayerInfo(-1,"item",$itemid,1)		
	if $del_count != 0	
		return
	endif	
	//-------------------------------------------	
	$randombuff = RandomNumber(1,$luckybuffALL)	
	$giftbuffpre = 0	
	//??:$giftbuffpre??????????0??,???????????????	
	//??:$giftbuff??????,??????????,????,?????	
	$indexF = 1	
	while $indexF <= $indexFALL	
		$freeID = 0
		$freeGive = 0
		call checkbuff()
		AddPlayerInfo(-1,"item",$freeID,$freeGive)
		$indexF += 1
	endwhile	
	$indexW = 1		
	while $indexW <= $indexWALL		
		$giftitem = 0	
		#giftname = " "	
		$luckybuff = 0	
		$itemgive = 0	
		$isBC = 0	
		if $giftbuff > $luckybuffALL	
			BC("screen","player",-1,"R1")
			return
		endif	
		call checkbuff()	
		//-------------------------	
		$giftbuff = $giftbuffpre + $luckybuff	
		if $randombuff > $giftbuffpre	
			if $randombuff <= $giftbuff
				AddPlayerInfo($playerid,"item",$giftitem,$itemgive)	
				if $isBC == 1	
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name,"  used the",#cardname,"and was lucky enough to receive:",#giftname)
					BC("chat","servergroup",-1,"Player",#name,"  used the",#cardname,"and was lucky enough to receive:",#giftname)
				endif	
			endif		
		endif			
		$giftbuffpre = $giftbuff			
		//-------------------------			
		$indexW += 1			
	endwhile				
	//??				
//	BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)				
}					
