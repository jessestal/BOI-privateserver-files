	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			mapid = AI:GetMapID()
			a = AI:GetEctypeVarShort( mapid, 21 )
			if a >= 21	then
				AI:SetEctypeVarShort( mapid, 39, 2 )
				AI:SummonMonsterByPos( 51596, 207, 153 )
			end
			AI:SetTimer( 1, 1000, 1 )
		end
		
		if nIndex == 1	then
	   		AI:Exit()
		end
		if nIndex == 2	then
	   		AI:Exit()
		end
		if nIndex == 3	then
	   		AI:SetArray( 1, 0 )
		end
	end   

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
        mapid = AI:GetMapID()
        lock = AI:GetArray( 2 )
        if lock == 0	then
        	t = AI:GetEctypeVarShort( mapid, 39 )
        	AI:SetArray( 2, t )
        end
        
        index = AI:GetArray( 2 )

        switch = AI:GetArray( 0 )
        if switch == 1 	then
        	AI:SelfMurder()
        end

        if index == 1 	then
        	AI:PlayEffect( "skill\\Common\\heidong\\tx_common_heidong_keep.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 2 	then
        	--??????????
        	AI:ScreenText( "The Metal Mechanism is opened, if the block isn't broken, check the other Metal Mechanism.", 2 )
        	AI:PlayEffect( "skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 3 	then
        	AI:PlayEffect( "skill\\Monster\\anyinglaolong\\fire\\tx_anyinglaolong_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 4 	then
        	AI:PlayEffect( "skill\\Monster\\boss\\shengguangshu\\hit\\tx_shengguangshu_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 5	 then
        	AI:ScreenText( "I see your sins...", 2 )
        	AI:PlayEffect( "skill\\Monster\\boss\\haidaoqunzhen\\fire\\tx_haidaoqunzhen_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 6 	then 	
        	AI:PlayEffect( "skill\\Monster\\jianwufang2\\fire\\tx_jianwufang2_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 7 	then
        	AI:ScreenText( "The Metal Mechanism is opened, if the block isn't broken, check the other Metal Mechanism.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 8 	then
        	AI:ScreenText( "You switched on the organs in the wrong order, the Light Rift will punish you.", 2 )
        	AI:PlayEffect( "skill\\Taoist\\hanbingzhang\\hit\\tx_taoist_hanbingzhang_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 9 	then
        	AI:ScreenText( "Metal Mechanism: Light Rift is activated, observe the order of Light Rift glimmers.", 2 ) 
        	AI:PlayEffect( "skill\\Common\\common_feisheng\\tx_lingjian_fire.ini" )	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 10	 then
        	AI:ScreenText( "Metal Mechanism: Light Rift has been activated, to click again according to the order.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 11	 then
        	AI:ScreenText( "Latamantis: Funny human.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 12	 then
        	AI:ScreenText( "Shattered Mirror of Reality: I feel you...Latamantis' pet....come here and I shall guide you.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 13	 then
        	AI:ScreenText( "Repaired Mirror: To the east is the Seven Sins Wraith Pond. Control yourself and don't fall into the abyss.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 14	 then
        	AI:ScreenText( "Failed too many times. Open the Light Rift at the Metal Mechanism again.", 2 )
        	AI:PlayEffect( "skill\\Taoist\\hanbingzhang\\hit\\tx_taoist_hanbingzhang_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 15 	then
        	AI:ScreenText( "Latamantis: Alright, it's time to kill you!", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 16	 then
        	AI:ScreenText( "Latamantis: I can make you into some funny plants and animals...", 2 )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 17 	then
        	AI:ScreenText( "Latamantis: Don't you feel hot?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 18 	then
        	AI:ScreenText( "Latamantis plays hide-and seek with you.", 2 )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 19 	then
        	AI:ScreenText( "Latamantis: Game over? Play time is so short...", 2 ) 
        	AI:PlayEffect( "skill\\Monster\\boss\\xinlingkongju\\fire\\tx_xinlingkongju_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 20	 then
        	AI:ScreenText( "Latamantis: These creatures are smarter than you", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 21 	then	
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "common\\leitingzhili\\hit2\\tx_leitingzhili_hit2.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 22 	then	
        	AI:PlayEffect( "skill\\Monster\\boss\\molifengbao\\fire\\tx_molifengbao_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 23 	then	
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "skill\\Monster\\boss\\shenshengguangyao\\fire\\tx_boss_shenshengguangyao_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 24 	then
        	--AI:ScreenText( "GUID:02551000016", 2 ) 
        	AI:PlayEffect( "skill\\Common\\heidong\\tx_common_heidong_keep.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 25 	then
        	AI:ScreenText( "Latamantis: How would Hades feel if he knew what happened here?", 2 ) 
        	AI:SetArray( 0, 1 )
        end
        
        if index == 26	 then
        	AI:ScreenText( "Latamantis: If you want to open the path you must use the switch, are you smart enough to figure it out?", 2 ) 
        	AI:SetArray( 0, 1 )
        end
        
        if index == 27	 then
        	AI:PlayEffect( "skill\\Monster\\boss\\xinlingkongju\\fire\\tx_xinlingkongju_fire.ini" )
        	AI:SetArray( 0, 1 )
        end

        if index == 28 	then
        	AI:PlayEffect( "skill\\Taoist\\hanbingzhang\\hit\\tx_taoist_hanbingzhang_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 29 	then
        	AI:PlayEffect( "skill\\Taoist\\bingfengzhou\\fire\\tx_taoist_bingfengzhou_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 31 	then
        	AI:PlayEffect( "skill\\Monster\\boss\\xinlingkongju\\fire\\tx_xinlingkongju_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 32 	then
        	AI:PlayEffect( "common\\story\\seelbreak2\\fire\\tx_seelbreak2_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
		
        if index == 33 	then
        	AI:PlayEffect( "skill\\Monster\\boss\\shengguangshu\\hit\\tx_shengguangshu_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
     
        if index == 34 	then
        	AI:ScreenText( "Latamantis: Pitiful...you belong with the Seven Sins", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 35	 then
        	AI:ScreenText( "Heart of Monster Will: You shouldn't come here, you can't stop us, Nergal is mine.", 2 )
        	AI:PlayEffect( "skill\\Monster\\boss\\xinlingkongju\\fire\\tx_xinlingkongju_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 36 	then
        	AI:ScreenText( "Latamantis: Alfsol, I have good news, my friend walks toward you with a big blade.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 37 	then
        	AI:ScreenText( "Latamantis hides in a Statue!", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 38 	then
        	--AI:ScreenText( "GUID:02551000023", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 40	 then
        	AI:ScreenText( "Latamantis: Look at your feet.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 41	 then
        	AI:ScreenText( "Latamantis: Oh, must be hot.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 42 	then
        	AI:ScreenText( "Latamantis: Dance, my clown.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 43 	then
        	AI:ScreenText( "Latamantis: Where is this place?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 44	 then
        	AI:ScreenText( "Latamantis: Where is this place again?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 45 	then
        	AI:ScreenText( "Latamantis: Are you dizzy?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 46	 then
        	AI:ScreenText( "Latamantis: hahahaha, isn't this funny?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 47 	then
        	AI:ScreenText( "Latamantis: Enough, I am dizzy", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 48 	then
        	AI:ScreenText( "Latamantis: We're near the end...", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 49 	then
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "skill\\Monster\\boss\\shengguangshu\\hit\\tx_shengguangshu_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 50	 then	
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "common\\leitingzhili\\hit2\\tx_leitingzhili_hit2.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 51	 then
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "skill\\Taoist\\hanbingzhang\\hit\\tx_taoist_hanbingzhang_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 52 	then	
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "skill\\Taoist\\jueduilingdu\\hit\\tx_taoist_jueduilingdu_hit.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 53	 then
        	AI:PlayEffect( "skill\\Monster\\boss\\yuanlingzhinu\\fire\\tx_yuanlingzhinu_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 54 	then
        	AI:PlayEffect( "skill\\Monster\\boss\\yemu\\fire\\tx_yemu_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        --????
        if index == 73 	then
        	AI:PlayEffect( "skill\\Common\\common_feisheng\\tx_lingjian_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 55 	then
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "skill\\Taoist\\shunyi\\fire\\tx_taoist_shunyi_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 56 	then	
        	AI:PlayEffect( "skill\\Taoist\\jueduilingdu\\fire\\tx_taoist_jueduilingdu_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 57 	then
        	AI:ScreenText( "Alfsol: Blade? Do you think a piece of metal can scare me?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 58	 then
        	AI:ScreenText( "Latamantis: Humans call this blade Gramr.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 59 	then
        	AI:ScreenText( "Alfsol: What? Gramr! Why is it here?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 60 	then
        	AI:ScreenText( "Latamantis: They said you were afraid of nothing...", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 61 	then
        	AI:ScreenText( "Alfsol: No! stay away! I will protect this place!", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 62 	then
        	AI:ScreenText( "Latamantis: This game becomes interesting.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 63 	then
        	AI:ScreenText( "Mirror of Reality: Latamantis, according to your promise you will set me free after this game has ended?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 64	then
        	AI:ScreenText( "Latamantis: Freedom? You call this freedom?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 65 	then
        	AI:ScreenText( "Mirror of Reality: ....", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 66	then
        	AI:ScreenText( "Latamantis: If my little friend amuses me, maybe I will.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 67	then
        	AI:ScreenText( "Mirror of Reality: You promised me.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 68 then
        	AI:ScreenText( "Latamantis: Shut up! No one will stand between me and my fun.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 69	then
        	AI:ScreenText( "Mirror of Reality: I'm done with your game, Latamantis, live up to your promise!", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
		if index == 70	then
        	AI:ScreenText( "Latamantis: What promise?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 71	then
        	AI:ScreenText( "Mirror of Reality: Release my bondage, let me be free.", 2 ) 	
        	AI:SetArray( 0, 1 )
        end

        if index == 72	then
        	AI:ScreenText( "Latamantis: I don't remember promising you, are you kidding?", 2 ) 	
        	AI:SetArray( 0, 1 )
        end
        
        if index == 74	then
        	AI:PlayEffect( "skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 75	then
        	AI:PlayEffect( "skill\\Knight\\dantichaofeng\\fire\\tx_knight_dantichaofeng_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 76	then
        	AI:PlayEffect( "skill\\Knight\\dantichaofeng\\fire\\tx_knight_dantichaofeng_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 77	then
        	AI:PlayEffect( "skill\\Monster\\boss\\shenshengguangyao\\fire\\tx_boss_shenshengguangyao_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 78	then
        	AI:PlayEffect( "skill\\Monster\\boss\\shengguangshu\\fire\\tx_shengguangshu_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 79	then
        	AI:PlayEffect( "skill\\Taoist\\huoyanchongji\\fire\\tx_taoist_huoyanchongji_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 80	then
        	--AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
        	AI:PlayEffect( "skill\\Taoist\\shunyi\\fire\\tx_taoist_shunyi_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 81	then
        	AI:PlayEffect( "common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 82	then	
        	AI:PlayEffect( "common\\leitingzhili\\hit2\\tx_leitingzhili_hit2.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 83	then
        	step = AI:GetArray( 1 )
        	if step == 0 then
        		AI:SetTimer( 0, 1000, 1 )
        		AI:PlayEffect( "skill\\Common\\common_feisheng\\tx_lingjian_fire.ini" )
        		AI:SetArray( 1, 1 )
        	end
        end
        
        if index == 84	then	
        	AI:PlayEffect( "skill\\Monster\\boss\\haidaomabi\\fire\\tx_boos_haidaomabi_fire.ini" )
        	AI:SetArray( 0, 1 )
        end
        
        if index == 85	then
        	step = AI:GetArray( 1 )
        	if step == 0 then
        		AI:SetTimer( 2, 4500, 1 )
        		AI:PlayEffect( "skill\\pet\\DefenceIce\\keep\\Pet_keep_DefenceIce.ini" )
        		AI:SetArray( 1, 1 )
        	end
        end
        
        if index == 86	then
        	step = AI:GetArray( 1 )
        	if step == 0 	then
	        	AI:PlayEffect( "skill\\Common\\Xpjihuo_shengjiebai\\keep\\tx_Xpjihuo_shengjiebai_keep.ini" )
	        	AI:SetArray( 1, 1 )
	        	AI:SetTimer( 3, 2000, 1 )
	        end
        end
        
        if index == 87	then
        	AI:ScreenText( "Alfsol: Enough Latamantis. You will pay for your levity.", 2 )
        	AI:SetArray( 0, 1 )
        end
	end