	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Main-90-Saisi-55057.lua
	--		Backup:90???????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("Horus? You think you are worthy? ")
				AI:SetArray(1,1)
				AI:SetTimer( 1 , 8000 , 6 )
			end
		end
		if nIndex == 1 then
		--	
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("I thought you had keen eyesight! I was sleeping right here and you didn't even see me!")
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("I don't care about them!")
				AI:ScreenText("Set is scornful. ",2)
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:Say("You came here to fight me for some mere humans? ")
				AI:SetArray(2,3)
			elseif a == 3 then
			    AI:Say("You could not defeat me before, and now you are even weaker! ")
				AI:SetArray(2,4)
			elseif a == 4 then
			   	AI:Say("Darkness will envelop the world! ")
			    AI:SetArray(2,5)
			elseif a == 5 then
			   	AI:Say("Guards, wake up! ")
			   	AI:ScreenText("Set is calling his guards! ",2)
			   	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
			   	AI:SummonMonsterByPos( 55058 , 243 , 220 )
				AI:SummonMonsterByPos( 55058 , 247 , 220 )
			    AI:SetArray(2,6)
				AI:SetTimer(2, 10000, 4 )
				AI:SetTimer(3, 60000, 1 )
			end
			
		end
     	if nIndex == 2 then
		--	
			a = AI:GetArray(3)
			if  a == 0 then
				AI:SummonMonsterByPos( 55058 , 231 , 220 )
				AI:SummonMonsterByPos( 55058 , 261 , 220 )
				AI:SetArray(3,1)
			elseif a == 1 then	
				AI:SummonMonsterByPos( 55114 , 231 , 220 )
				AI:SummonMonsterByPos( 55114 , 233 , 220 )
				AI:SummonMonsterByPos( 55114 , 236 , 220 )
				AI:SummonMonsterByPos( 55114 , 254 , 220 )
				AI:SummonMonsterByPos( 55114 , 257 , 220 )
				AI:SummonMonsterByPos( 55114 , 261 , 220 )
				AI:SetArray(3,2)
			elseif a == 2 then	
				AI:SummonMonsterByPos( 55115 , 231 , 220 )
				AI:SummonMonsterByPos( 55115 , 233 , 220 )
				AI:SummonMonsterByPos( 55115 , 236 , 220 )
				AI:SummonMonsterByPos( 55115 , 243 , 216 )
			
				AI:SummonMonsterByPos( 55116 , 247 , 216 )
				AI:SummonMonsterByPos( 55116 , 254 , 220 )
				AI:SummonMonsterByPos( 55116 , 257 , 220 )
				AI:SummonMonsterByPos( 55116 , 261 , 220 )
				AI:SetArray(3,3)
			end
		end
		-----????
		if nIndex == 3 then
		--	
			AI:SetAIState(0)
			AI:ChangeFaction(4)
			AI:Say("Good! Let's fight! ")
			AI:SetArray(14,1)
		end
		
		if nIndex == 4 then
	        --
	        AI:Say("I am empowered with darkness! ") 
	        AI:AddSkill(8751,2)
	        AI:UseSkill(8751,2)
    	end
	    if nIndex == 5 then
	        --
	        AI:Say("Cover your ears so you don't go deaf!")
	        AI:AddSkill(8722,8)
	        AI:UseSkill(8722,8)
	    end
	    if nIndex == 6 then
	        --???? 
	        AI:Say("Wraiths have appeared! ") 
	        AI:AddSkill(8722,10) 
	        AI:UseSkill(8722,10)
	    end
	    if nIndex == 7 then
	        --??
	        AI:Say("Nightfall, the keeper of the secrets of Darkness! ") 
	        AI:AddSkill(8722,6) 
	        AI:UseSkill(8722,6)
	    end
	    if nIndex == 8 then
	        --
	        AI:Say("Wake up, bodyguards! ")
	        AI:SummonMonsterByPos( 55058 , 243 , 220 )
			AI:SummonMonsterByPos( 55058 , 245 , 220 )
			AI:SummonMonsterByPos( 55058 , 247 , 220 )
	    end 
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(14)
		if a == 1 then
			t = AI:HaveAttackTarget()
		    if t == false then
		        AI:DelTimer(4)
		        AI:DelTimer(5)
		        AI:DelTimer(6)
		        AI:DelTimer(7)
		        AI:DelTimer(8) 
		        AI:SetArray(5,0)
		    else
		        HP = AI:GetHP()
		        HPMAX = AI:GetHPMax() 
		        a = AI:GetArray(5)
		        if a == 0 then
		            if HP < HPMAX then
		                AI:Say("Horus, I will defeat you! ")
		                AI:SetTimer(4,60000,65535) 
		                AI:SetTimer(5,15000,65535)
		                AI:SetTimer(6,60000,65535)
		                AI:SetTimer(7,8000,65535)
		                AI:SetTimer(8,30000,65535)
		                AI:SetArray(5,1)
		            end
		        end
		    end
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    	 
	    AI:AddSeekPos( 243 , 245 , 218)
	    AI:AddSeekPos( 243 , 246 , 226 )
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 245 ) and ( PosY == 218 )) then
	    	AI:SetAIState(7)
	    	AI:SetDir(90)
	    	AI:SetTimer( 0,3000,1 )
	    elseif (( PosX == 246 ) and ( PosY == 226 )) then
	        AI:Say("I think you will stay forever! ")
	        AI:SetAIState(0)
		end
		
	end
	
	
	
	