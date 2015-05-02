        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51285.lua
	--		Backup:
	---------------------------------------------        
    --????
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --????
            AI:Say("Mortals, taste my Fury of Shadow! ")
            AI:AddSkill(8861,4)
            AI:UseSkill(8861,4)
            AI:SetTimer(1,20000,1)
        end
        
        if nIndex == 1 then
            --????
            AI:Say("Mortals, taste my Fury of Ice! ")
            AI:AddSkill(8861,5)
            AI:UseSkill(8861,5)
            AI:SetTimer(0,20000,1)
        end

        if nIndex == 2 then
            --????
            AI:ScreenText("Netherworld Evil Dragon unleashed Shadow Trap",1)
            AI:Say("Netherworld Evil Dragon unleashed Shadow Trap")
            AI:AddSkill(8861,6)
            AI:UseSkill(8861,6)
            AI:SetTimer(3,5000,1)     
        end
        
        if nIndex == 3 then
        --???????????
            AI:ScreenText("Latamantis's Spiritual Shards appeared. Smash them to break the shackles of the Shadow Trap! ",1)
            
            id = AI:SummonSingleMonster(51303)
            --???id
            AI:SetArray(5,id)
        end
        
        if nIndex == 4 then
            --??????
            AI:ScreenText("Netherworld Evil Dragon unleashed the Magic Ring empowered with dark energy.",1)
            
            --????
            n = AI:GetEnmityCount()
            random = math.random( 0 , n-1 )
            id = AI:GetPlayerIDByIndex( random )
            x = AI:GetPlayerX(id)
            y = AI:GetPlayerY(id)
            AI:SummonMonsterByPos(51301,x,y)
        end
        
        if nIndex == 5 then
            --??????
            AI:ScreenText("Netherworld Evil Dragon released the Magic Ball empowered with dark energy.",1)
            AI:SummonMonster(51302,1)
        end
        
        if nIndex == 6 then
            --?????
            z = AI:GetAttackTargetPro()
            if z == 1 then
                --???? 
                AI:Say("Ridiculous Berzerker, beat it! ")
                AI:AddSkill(8861,13)
                AI:UseSkill(8861,13)
            end
            if z == 2 then
                --???? 
                AI:Say("Absurd Champion, you are too fragile! ")
                AI:AddSkill(8861,12)
                AI:UseSkill(8861,12)
            end
            if z == 3 then
                --???? 
                AI:Say("Cowardly Slayer, your shadow is too tiny to see.")
                AI:AddSkill(8861,14)
                AI:UseSkill(8861,14)
            end
            if z == 4 then
                --???? 
                AI:Say("Trivial Elemental Force, I'll show you how it's done!")
                AI:AddSkill(8861,15)
                AI:UseSkill(8861,15)
            end
            if z == 5 then
                --???? 
                AI:Say("Flimsy Shadow Force, try my storm on for size!")
                AI:AddSkill(8861,16)
                AI:UseSkill(8861,16)
            end
        end
        
        
        if nIndex == 7 then
        	--????id,??<0??????
        	id = AI:GetArray(5)
        	if id < 0 then
        		hp = AI:GetMonsterHP(id)
        		if hp == 0 then
        			AI:Say("Latamantis's Spiritual Shards debuffed Shadow Trap! ")
        			AI:ScreenText("Latamantis's Spiritual Shards debuffed Shadow Trap! ",2)
        			AI:AddSkill(8861,7)
             			AI:UseSkill(8861,7)
        			--????,id??
        			AI:SetArray(5,0)
        		end
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
        					AI:DelTimer(3)
        					AI:DelTimer(4)
        					AI:DelTimer(5)
        					AI:DelTimer(6)
        					AI:DelTimer(7)
                	AI:SetArray(1,0)
                	AI:SetArray(5,0)
                end
        else
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
         
            z = AI:GetAttackTargetPro()
            a = AI:GetArray(1)
            if a == 0 then
                if HP < HPMAX then
                    AI:Say("At last, I am free from the Pharaoh's grasp.  As a gift, I shall bury you eternal darkness!") 
                    AI:SetTimer(0,20000,1)
                    AI:SetTimer(2,41000,65535)
                    AI:SetTimer(4,20000,65535)
                    AI:SetTimer(6,20000,65535)
                    AI:SetTimer(7,2000,65535)
                    AI:SetArray(1,1)  
                end
            end
            if a == 1 then
                if HP < HPMAX * 0.4 then
                    AI:Say("I need to take you seriously from now on!")
                    AI:SetTimer(5,20000,65535)
                    AI:SetArray(1,2)  
                end
            end
        end
    end
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:ScreenText("Netherworld Evil Dragon has been defeated and retreats to Endless Abyss.",2)
	end
	
                                                                               