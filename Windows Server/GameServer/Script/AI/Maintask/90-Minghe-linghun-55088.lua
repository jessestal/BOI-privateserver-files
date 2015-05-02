	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:90-Minghe-linghun-55088.lua
	--		Remark:90?????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("Try this one...It's so cold...I think hell actually did freeze over. Ha! Get it? Because we are heading to the underworld, and it's so cold here. Brrr, it really is....")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("A cold joke, isn't it? Since it is so cold here I can only tell these kinds of jokes! ")
				AI:SetArray(1,2)
				AI:SetAIState(0)
			elseif a == 2 then
				AI:Say("Haha, why aren't you laughing?...Huh? The Hands of the Dead...")
				AI:SetArray(3,0)
				AI:SetTimer(2,2000,10)
				AI:SetArray(1,3)
			elseif a == 3 then
		     	AI:Say("It seems the dead really like my jokes. Look, they keep clutching at me.")
		     	AI:PlayAction( "struggle" , 20 ,0 )
		     	AI:SetArray(3,0)
				AI:SetTimer(2,2000,10)
				AI:SetArray(1,4)
		   	elseif a == 4 then
		   	   	AI:Say("It has returned! ")
		   	   	AI:SetArray(3,0)
				AI:SetTimer(2,2000,10)
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:SetArray(1,5)
			elseif a == 5 then
		   	   	AI:Say("If you don't like my jokes, I will stop!")
		   	   	AI:SetArray(3,0)
				AI:SetTimer(2,2000,10)
				AI:SetArray(1,6)
		    end
		end
		
		if nIndex == 1 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("The Soul Purifying Agent appears!")
				AI:SummonMonsterByPos( 55124 , 80 , 160 )
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:SummonMonsterByPos( 55124 , 80 , 158 )
				AI:SummonMonsterByPos( 55124 , 80 , 162 )
				AI:SummonMonsterByPos( 55124 , 78 , 160 )
				AI:SummonMonsterByPos( 55124 , 82 , 160 )
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:SummonMonsterByPos( 55124 , 80 , 156 )
				AI:SummonMonsterByPos( 55124 , 80 , 164 )
				AI:SummonMonsterByPos( 55124 , 76 , 160 )
				AI:SummonMonsterByPos( 55124 , 84 , 160 )
				AI:SetArray(2,3)
			elseif a == 3 then
				mapid = AI:GetMapID()
				AI:AddNpcByPos( 434 , mapid , 80 , 160 , 300 )
				AI:SetArray(2,4)
	       		AI:Exit()
			end
		end
		
		if nIndex == 2 then
		-- 	
			
			a = AI:GetArray(3)
			if a == 0 then
				AI:Say("...I've been caught by the Hands of the Dead. Help!")
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:SetArray(3,1)
			elseif a == 1 then
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:SetArray(3,2)
			elseif a == 2 then	
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:Say("How repugnant!")
				AI:SetArray(3,3)
			elseif a == 3 then	
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:PlayEffect("common\\story\\absolve\\fire\\tx_absolve_fire.ini")
				AI:SetArray(3,4)
			elseif a == 4 then	
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:ScreenText("The Soul is enraged! ", 2 )
				AI:SetArray(3,5)	
			elseif a == 5 then
				AI:Say("...")
				AI:SetArray(3,6)
			elseif a == 6 then
				AI:Say("Why do they try to stop me?")
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:SetArray(3,7)
			elseif a == 7 then
				AI:PlayAction( "struggle" , 20 ,0 )
				AI:SetArray(3,8)
			elseif a == 8 then
				AI:Say("Finally, I got away from it.")
				AI:SetArray(3,9)
			elseif a == 9 then
				AI:SetArray(3,10)
				AI:SetAIState(0)
			end
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(244,120,183)  --???
	    AI:AddSeekPos(244,124,173)  --????,????
	    AI:AddSeekPos(244,117,165)  --
	    AI:AddSeekPos(244,107,179)  --
	    AI:AddSeekPos(244,100,174)  --????,????
	    AI:AddSeekPos(244,97,165)   --????,????
	    AI:AddSeekPos(244,85,168)   --????,????
	    AI:AddSeekPos(244,81,160)   --??
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 120 ) and ( PosY == 183 )) then
	    	
			AI:SummonMonsterByPos( 55201 , 124 , 175 )
			AI:Say("Do you like jokes? I love jokes.")
			AI:SetAIState(7)
			AI:SetTimer(0,12000,2)
	    elseif (( PosX == 124 ) and ( PosY == 173 )) then
			AI:SummonMonsterByPos( 55201 , 100 , 172 )
	        AI:Say("How about this one? It's so cold...I'm crying icicles instead of tears! Well, I would if I could still cry, but I'm dead now, and don't have tear ducts anymore....")
	        AI:ScreenText("The soul is talking to itself! ", 2 )
	        AI:SetAIState(7)
	        AI:SetTimer(0,10000,1)
		elseif (( PosX == 100 ) and ( PosY == 174 )) then
		
			AI:SummonMonsterByPos( 55201 , 98 , 165 )
			AI:Say("I don't want to tell jokes anymore....")
	    	AI:SetAIState(7)
	        AI:SetTimer(0,5000,1)
		elseif (( PosX == 97 ) and ( PosY == 165 )) then
		
			AI:SummonMonsterByPos( 55201 , 83 , 168 )
	        AI:Say("Alright.")
	        AI:SetAIState(7)
	        AI:SetTimer(0,5000,1)
		elseif (( PosX == 85 ) and ( PosY == 168 )) then
	        AI:Say("What, are my jokes not funny enough?")
	        AI:SetAIState(7)
	        AI:SetTimer(0,5000,1)
		elseif (( PosX == 81 ) and ( PosY == 160 )) then
	    	AI:SetAIState(7)
	        AI:Say("Finally, this is the right place! Are you alright?")
	        AI:SetTimer(1,4000,4)
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:ScreenText("The soul was dragged away by the Hands of the Dead!", 2 )
    	AI:Say("My soul will go back to the place where we met. I'll wait for you there.")
	end
	