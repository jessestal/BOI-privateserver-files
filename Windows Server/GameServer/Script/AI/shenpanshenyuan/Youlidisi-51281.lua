--  Copyright: PERFECT WORLD
--  Modified: 2009/11/13
--  Author: ???
--  Class: Lua
--  File Name: Youlidisi-51281.lua
--  Remarks: ????????

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
            AI:Say("Shadow Howl! ") 
            AI:AddSkill(8708,1)
            AI:UseSkill(8708,1)
        end
        
        
        if nIndex == 1 then
        --???? 
            AI:Say("My resentment makes me unable to control myself! ") 
            AI:ScreenText("Summon Eurydice's Bitterness!",1)
            
            x = AI:GetPosX()
    	    y = AI:GetPosY()
            
            AI:SummonMonsterByPos( 51305 , x+8 , y )
            AI:SummonMonsterByPos( 51305 , x-8 , y )
            AI:SummonMonsterByPos( 51305 , x , y+8 )
            AI:SummonMonsterByPos( 51305 , x , y-8 )
        end
        
        
        if nIndex == 2 then
        --???? 
            AI:Say("Beware, I cannot control the agony within me!") 
            AI:ScreenText("Summon Eurydice's Heart!",1)
            
            for i=1,12 do
            	x = AI:GetPosX()
    		y = AI:GetPosY()
            	ranx = math.random( x-6 , x+6 )
            	rany = math.random( y-6 , y+6 )
            	AI:SummonMonsterByPos(51306,ranx,rany)
            end
        end
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
        
        
        v = AI:HaveAttackTarget()
        if v == false then
      	  n = AI:GetEnmityCount()
      	  if n < 1 then
        		AI:DelTimer(0)
        		AI:DelTimer(1)
        		AI:DelTimer(2)
       	  end
        end
        
        
	a = AI:GetArray(1)
        if a == 0 then
        	HP = AI:GetHP()
           	HPMAX = AI:GetHPMax()
          	if HP < HPMAX then
        		AI:Say("Please help me! ")
                	--???? 
                	AI:AddSkill(8708,1)
            		AI:UseSkill(8708,1)
            	
                	AI:SetTimer(0,40000,65535)
                	AI:SetArray(1,1)
                end
        end

	if a == 1 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.9 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,2)
            end
        end
	
	if a == 2 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.85 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,3)
            end
        end

	if a == 3 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.8 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,4)
            end
        end
	
	if a == 4 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.75 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,5)
            end
        end

	if a == 5 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.7 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,6)
            end
        end
	
	if a == 6 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.65 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,7)
            end
        end
	
	if a == 7 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.6 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,8)
            end
        end
	
	if a == 8 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.55 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,9)
            end
        end
        
        
	if a == 9 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.5 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,10)
            end
        end
	
	if a == 10 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.45 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,11)
            end
        end
        
        if a == 11 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.4 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,12)
            end
        end
	
	if a == 12 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.35 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,13)
            end
        end
        
        if a == 13 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.3 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,14)
            end
        end
	
	if a == 14 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.25 then
            	AI:SetTimer(1,1000,1)
            	AI:SetArray(1,15)
            end
        end
	
	if a == 15 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.2 then
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,16)
            end
        end
	
	if a == 16 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.15 then
            	AI:SetTimer(1,1000,1)
            	AI:SetTimer(2,1000,1)
            	AI:SetArray(1,17)
            end
        end
	
        if a == 17 then
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            if HP < HPMAX * 0.15 then
                AI:Say("I can feel the struggle within! ")
                AI:ScreenText("Eurydice is furious!",1)
                AI:AddSkill(8871,2)
                AI:UseSkill(8871,2)
                AI:SetArray(1,18)
            end
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    
end