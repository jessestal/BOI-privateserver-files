	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/12/29
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21245.lua
	--		Remark:???????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--????
			AI:Say("Destruction! ")
			AI:AddSkill(2056,1)
      AI:UseSkill(2056,1)
		end
		
		if nIndex == 1 then
			--????
			--AI:Say("GUID:02644000001")
			AI:AddSkill(2057,1)
      AI:UseSkill(2057,1)
		end
		
		if nIndex == 2 then						
			--??
			AI:ScreenText( "You will pay!!!", 1 )
			AI:AddSkill(2065,1)
      AI:UseSkill(2065,1)
    end
    
    if nIndex == 3 then						
			Yunshi(nAI)
    end
end

  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
		if t == false then
					if a > 0 then
						if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:DelTimer(2)
		    				AI:DelTimer(3)
		    		AI:SetArray(1,0)
		    		end
	    		end
    	else	
			if a == 0 then
				if HP < HPMAX then
					--????
					AI:Say("I have lived for countless ages, much longer than the gods! I alone rule this universe!")
					AI:SetTimer(1,35000,65535)
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					--AI:Say("GUID:02644000004")
					--????
					AI:AddSkill(2056,1)
      		AI:UseSkill(2056,1)
					AI:SetTimer(0,20000,65535)
					AI:SetArray(1,2)
				end
			end
			if a == 2 then
				if HP < HPMAX * 0.75 then
					--??????
    			AI:SetTimer(3,500,1)
    			AI:SetArray(1,3)
    		end
    	end
    	if a == 3 then
				if HP < HPMAX * 0.65 then
					--??????
					local id = AI:GetPlayerIDByIndex(1)
    			local x = AI:GetPlayerX(id)
    			local y = AI:GetPlayerY(id)
					r = math.random( 3 , 5 )
    			AI:ScreenText( "Where are my loyal servants? Kill them already! ", 1 )
    			AI:SummonMonsterByPos( 21247 , x+r , y )
    			AI:SummonMonsterByPos( 21247 , x-r , y )
    			AI:SetArray(1,4)
    		end
    	end
    	if a == 4 then
				if HP < HPMAX * 0.5 then
					--????
					AI:ScreenText( "I will char your flesh!", 1 )
					local id = AI:GetPlayerIDByIndex(1)
    			local x = AI:GetPlayerX(id)
    			local y = AI:GetPlayerY(id)
    			AI:SummonMonsterByPos( 21248 , x , y )
    			AI:SetArray(1,5)
    		end
    	end
    	if a == 5 then
				if HP < HPMAX * 0.40 then
					--??????
    			AI:SetTimer(3,500,1)
    			AI:SetArray(1,6)
    		end
    	end
    	if a == 6 then
				if HP < HPMAX * 0.3 then
					--??????
					local id = AI:GetPlayerIDByIndex(1)
    			local x = AI:GetPlayerX(id)
    			local y = AI:GetPlayerY(id)
					r = math.random( 3 , 5 )
    			AI:ScreenText( "Where are my loyal servants? Kill them already! ", 1 )
    			AI:SummonMonsterByPos( 21247 , x+r , y )
    			AI:SummonMonsterByPos( 21247 , x-r , y )
    			AI:SetArray(1,7)
    		end
    	end
    	if a == 7 then
				if HP < HPMAX * 0.2 then
					--????
					AI:ScreenText( "I will char your flesh!", 1 )
					local id = AI:GetPlayerIDByIndex(1)
    			local x = AI:GetPlayerX(id)
    			local y = AI:GetPlayerY(id)
					--r = math.random( 3 , 5 )
    			AI:SummonMonsterByPos( 21248 , x , y )
    			--AI:SummonMonsterByPos( 21248 , x-r , y )
    			AI:SetArray(1,8)
    		end
    	end
    	if a == 8 then
				if HP < HPMAX * 0.15 then
					--??
					AI:ScreenText( "You will pay!!!", 1 )
					AI:AddSkill(2065,1)
      		AI:UseSkill(2065,1)
					AI:SetTimer(2,60000,65535)
					AI:SetArray(1,9)
				end
			end
			if a == 9 then
				if HP < HPMAX * 0.1 then
					--??????
    			AI:SetTimer(3,500,1)
    			AI:SetArray(1,10)
    		end
    	end
   end
end
    	
  function Yunshi(nAI)
		local AI = GetMonsterAI(nAI)
    	local id = AI:GetPlayerIDByIndex(1)
    	local posX = AI:GetPlayerX(id)
    	local posY = AI:GetPlayerY(id)

    	local n = 0
    	while n < 5 do
    		local x = AI:GetRand(14)
    		x = x + posX
    		x = x - 7
    		local y = AI:GetRand(14)
    		y = y + posY
    		y = y - 7
    		AI:SummonMonsterByPos(21246 , x , y) 
    		n = n + 1	
    	end
    
	end  			
    
	