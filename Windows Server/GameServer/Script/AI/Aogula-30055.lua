function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
   	
   	if nIndex == 0	then
   		x = AI:GetPosX()
	    y = AI:GetPosY()
	    AI:ScreenText( "Okula released Lighting, you should avoid it.", 2 )

		AI:SummonMonsterByPos( 30057, x, y )
		AI:SummonMonsterByPos( 51723, x+2, y+2 )
		AI:SummonMonsterByPos( 51723, x-2, y-2 )
		AI:SummonMonsterByPos( 51723, x+2, y-2 )
		AI:SummonMonsterByPos( 51723, x-2, y+2 )
		        
		AI:SummonMonsterByPos( 51723, x+2, y )
		AI:SummonMonsterByPos( 30057, x+4, y )
		AI:SummonMonsterByPos( 51723, x+6, y )
		AI:SummonMonsterByPos( 30057, x+8, y )
		AI:SummonMonsterByPos( 51723, x+10, y )
		        
		AI:SummonMonsterByPos( 51723, x-2, y )
		AI:SummonMonsterByPos( 30057, x-4, y )
		AI:SummonMonsterByPos( 51723, x-6, y )
		AI:SummonMonsterByPos( 30057, x-8, y )
		AI:SummonMonsterByPos( 51723, x-10, y )
		        
		AI:SummonMonsterByPos( 51723, x, y+2 )
		AI:SummonMonsterByPos( 30057, x, y+4 )
		AI:SummonMonsterByPos( 51723, x, y+6 )
		AI:SummonMonsterByPos( 30057, x, y+8 )
		        
		AI:SummonMonsterByPos( 51723, x, y-2 )
		AI:SummonMonsterByPos( 30057, x, y-4 )
		AI:SummonMonsterByPos( 51723, x, y-6 )
		AI:SummonMonsterByPos( 30057, x, y-8 )
		step = AI:GetArray( 1 )
		step = step + 1
		AI:SetArray(1,step)
		if step == 3 	then
			AI:SetTimer(1,8000,1)
			AI:SetArray(1,0)
		end
   	end
   	
   	if nIndex == 1	then
   		AI:ScreenText( "Okula changed into a Vampire Bat.", 2 )
		AI:AddStatus( -1, 6050, 1 )
		AI:SetTimer(2,5000,1)
		AI:SetTimer(3,4000,5)
	end
	
	if nIndex == 2	then
		x = AI:GetPosX()
	    y = AI:GetPosY()
	    AI:SummonMonsterByPos( 30058, x+7, y )
	    AI:SummonMonsterByPos( 30058, x-7, y )
	    AI:SetTimer(4,20000,1)
	end
	
	if nIndex == 3	then
		AI:AddSkill( 2027, 1 )
		AI:UseSkill( 2027, 1 )
	end
	
	if nIndex == 4	then
		--AI:Say("Change Human")
		AI:SetTimer(0,15000,3)
	end

end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)   
        
	mapid = AI:GetMapID()
    n = AI:GetEnmityCount()
    if n < 1 then
        AI:Exit()
	else
	    a = AI:GetArray(0)
	    if a == 0	then
	        AI:SetTimer(0,15000,3)
	        AI:SetArray(0,1)
	    end
	        
	end
end