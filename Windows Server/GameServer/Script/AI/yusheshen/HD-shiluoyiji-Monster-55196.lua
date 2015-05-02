	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:HD-shiluoyiji-Monster-55196.lua
	--		Remark:??????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:Say("Who woke me up? ")
			AI:PlayAction( "specialidle" , 20 ,0 )
			AI:SetTimer(1,8000,5)
		end
		if nIndex == 1 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("Why unseal me without my agreement? Are you attacking me?")
				AI:PlayAction( "specialidle" , 20 ,0 )
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("You must have heard of the Ragnarok. Even a god's world can be destroyed.")
				AI:PlayAction( "specialidle" , 20 ,0 )
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:Say("You don't believe me!? Then prepare to suffer, traitor!")
				AI:ScreenText("Quetzalcoatl glows with power!", 2 )
				AI:PlayAction( "specialidle" , 20 ,0 )
				AI:SetArray(2,3)
			elseif a == 3 then
		     	AI:Say("You discovered my secret, but no one can live knowing that. Prepare to die!")
		     	AI:PlayAction( "attack1" , 20 ,0 )
		     	AI:PlayEffect("skill\\Taoist\\bingfengzhou\\fire\\tx_taoist_bingfengzhou_fire.ini")
				AI:SetArray(2,4)
			elseif a == 4 then
		     	AI:Say("How dare you, take this!")
		     	AI:PlayEffect("skill\\Taoist\\bingfengzhou\\fire\\tx_taoist_bingfengzhou_fire.ini")
		     	AI:PlayAction( "specialidle" , 20 ,0 )
				AI:SetArray(2,5)
				AI:SetAIState(0)
				mapid = AI:GetMapID()
				lv = AI:GetEctypeVarInteger( mapid , 110 )
				AI:SummonLevelMonsterByPos(55197, 49 , lv , 157, 167 )
				AI:SelfMurder()
		    end
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then
			AI:ScreenText("The ruins begin to shake around you. Quetzalcoatl's shadow gradually solidifies in front of you.", 2 )
			AI:SetTimer( 0 , 3000 , 1 )
			AI:SetArray(1,1)
		end
		
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(237,157,167) 
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		 if (( PosX == 157 ) and ( PosY == 167 )) then
			
			AI:SetAIState(7)
			AI:SetDir(180)
			
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	end
	