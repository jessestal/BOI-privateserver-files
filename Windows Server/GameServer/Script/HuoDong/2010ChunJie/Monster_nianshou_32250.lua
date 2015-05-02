	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/07/27
	--		Author:??
	--		AIName:Monster_nianshou_32250.lua
	--		AIID:2010????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    
	  	if nIndex == 0 then   --???????
	  		HP = AI:GetHP()
    			HPMAX = AI:GetHPMax()
			AI:Say("Super Barrier! Haha! You can't hurt me now. ")
			AI:ScreenText( "The beast has Buddha's Protection! Ignite the firecracker now! ", 2 )
			AI:AddSkill(2078,1)
     			AI:UseSkill(2078,1)
     			--?????50%?????????????
     			if HP < HPMAX * 0.5 then
     				rand = AI:GetRand( 10000 )
     				rand = 20000 + rand
     				AI:SetTimer(1, rand , 1 )
     			end
		end
		
		
		if nIndex == 1 then   --?????
			
			fenshen = AI:GetRand( 9 ) 
    			
			if fenshen < 6 then  --60%?????? ?????? --
				AI:SetTimer(3, 2000 , 1 )--????????????
				AI:ScreenText( "The beast is generating shadows. Be careful, and find the real one. ", 2 )
				map = AI:GetMapID()
				level = AI:GetLevel()
				x = AI:GetPosX()
    				y = AI:GetPosY()
    				AI:SummonLevelMonsterByPos(32253, 77, level, x, y )
				--AI:PlayEffect( "common\\fuhuo\\tx_fuhuo_01.ini" )
				
			end
		end
		
		
		
		if nIndex == 2 then  --??aoe??
			AI:Say("My anger will consume you like an inferno!")
			AI:PlayEffect( "skill\\Monster\\yuansuhuan\\fire\\huohuan\\tx_huohuan_fire.ini" )
			AI:AddSkill(2083,1)  --??aoe
  			AI:UseSkill(2083,1)
		end
		
		
		if nIndex == 3 then  --??--????hp --???? --
				HP = AI:GetHP()
    				HPMAX = AI:GetHPMax()
				nowhp = HPMAX - HP
				map = AI:GetMapID()
				level = AI:GetLevel()
				x = AI:GetPosX()
    				y = AI:GetPosY()
    				r = math.random( 2 , 3 )
    				

    			
				AI:SetEctypeVarInteger( map, 111, nowhp )  --?hp??????
				--AI:Say("GUID:04749000004")
				AI:SummonLevelMonsterByPos(32251, 77, level, x+r, y+r )
				AI:SummonLevelMonsterByPos(32251, 77, level, x-r, y-r )
				AI:AddSkill(2082,1)  --??
  				AI:UseSkill(2082,1)
  		end
	  
	  end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	
		HP = AI:GetHP()
    		HPMAX = AI:GetHPMax()
  		a = AI:GetArray(1)
  		--??????????
  		b = AI:GetArray(2)
  		
  	--???????
  		if a == 0 then
  			if HP < HPMAX then
  				AI:Say("The new year has come. Let's enjoy it together. ")
  				AI:SetTimer(2,25000,65535)  --??aoe?????
  				AI:SetArray(1,1)
  			end
  		end
  		
  		
  	--????90%?,?40??????????
  		if a == 1 then
  			if HP < HPMAX * 0.9 then
  				--?30???????
  				AI:AddSkill(2078,1)
  				AI:SetTimer(0,40000,65535)
  				AI:SetArray(1,2)
  			end
  		end
  		
  		
  		
  		
  	--????10%?,????aoe???15?????
  		if a == 2 then
  			if HP < HPMAX * 0.1 then
  				--??2????
  				AI:DelTimer(2)
  				AI:Say("Curse you! You are tougher than I imagined! Time to get serious!")
  				AI:SetTimer(2,12000,65535)  --??aoe?????
  				AI:SetArray(1,3)
  			end
  		end
  			
  			
 ------------ 	--?????? ???,????70%????,????40%????,????20%????
  		
  		if b == 0 then
  			if HP < HPMAX * 0.8 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,1)
  			end
  		end
  			
  		
  		if b == 1 then
  			if HP < HPMAX * 0.7 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,2)
  			end
  		end
  		
  		
  		if b == 2 then
  			if HP < HPMAX * 0.6 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,3)
  			end
  		end
  		
  		if b == 3 then
  			if HP < HPMAX * 0.5 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,4)
  			end
  		end
  		
  		if b == 4 then
  			if HP < HPMAX * 0.4 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,5)
  			end
  		end
  		
  		
  		 if b == 5 then
  			if HP < HPMAX * 0.3 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,6)
  			end
  		end
  		
  		
  		 if b == 6 then
  			if HP < HPMAX * 0.2 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,7)
  			end
  		end
  		
  		
  		 if b == 7 then
  			if HP < HPMAX * 0.1 then
  				AI:Say("Transform! It is the year of hare. What a joyous occasion!")
  				AI:AddSkill(2081,1)
  				AI:UseSkill(2081,1)
  				AI:ScreenText( "Can't cast spells in rabbit form. Use a firecracker! ", 2 )
  				AI:SetArray(2,8)
  			end
  		end
  		
 ----------- ----??----?????? ???,????70%????,????40%????,????10%????
	
	end 
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		local AI = GetMonsterAI(nAI)	
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		AI:Say("I will be back next year! ")
	end
	