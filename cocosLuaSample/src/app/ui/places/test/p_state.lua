--imports----------------------------------------------------------
local C_uibtn = require("src.app.ui.controls.uiBtn.c_uibtn")

local uiState=require("src.app.base.ui.uiState")
local p_state = {}

function p_state:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.btn_state_s2_s1=C_uibtn.new();
	referUI_.btn_state_s2_s1.name="btn_state_s2_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s2_s1,container_,0.00,0.00,0,531.9,0,1,1,1,17)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s2_s1)
	du:setLogicParent(referUI_.btn_state_s2_s1,referUI_)
	referUI_.btn_state_s3_s1=C_uibtn.new();
	referUI_.btn_state_s3_s1.name="btn_state_s3_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s3_s1,container_,0.00,0.00,155,469.85,0,1,1,1,18)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s3_s1)
	du:setLogicParent(referUI_.btn_state_s3_s1,referUI_)
	referUI_.btn_state_s1=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_state_s1.name="btn_state_s1"
	du:setBtnText(referUI_.btn_state_s1,lu:tansWord("DisBtn"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	--du:setBtnText(referUI_.btn_state_s1,lu:tansWord("DisBtn"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	--du:setBtnText(referUI_.btn_state_s1,lu:tansWord("DisBtn"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_state_s1,container_,0.50,0.50,-5.05,1000.6,0,2,2,1,6)
	referUI_.btn_state_s1:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_state_s1:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_state_s1")
			uc:doUIOperationByInfo(uc:specialBtnAnalyse("btn_state_s1",false))
		end
	)
	du:setLogicParent(referUI_.btn_state_s1,referUI_)
	referUI_.btn_state_s2=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_state_s2.name="btn_state_s2"
	du:setBtnText(referUI_.btn_state_s2,lu:tansWord("DisBtn"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	--du:setBtnText(referUI_.btn_state_s2,lu:tansWord("DisBtn"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	--du:setBtnText(referUI_.btn_state_s2,lu:tansWord("DisBtn"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_state_s2,container_,0.50,0.50,0,464,0,2,2,1,8)
	referUI_.btn_state_s2:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_state_s2:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_state_s2")
			uc:doUIOperationByInfo(uc:specialBtnAnalyse("btn_state_s2",false))
		end
	)
	du:setLogicParent(referUI_.btn_state_s2,referUI_)
	referUI_.fntTexta=cc.Label:createWithBMFont(lu:tansFnt("testFnt.fnt"),lu:tansWord("BMFontTextText"))
	referUI_.fntTexta.name="fntTexta"
	du:placeAndAddChildToContainer(referUI_.fntTexta,container_,0.50,0.50,-0.05,464,0,1,1,1,7)
	referUI_.fntTexta.isFntText=true
	du:setLogicParent(referUI_.fntTexta,referUI_)
	referUI_.instance3= cc.Sprite:create("greenPic.png")
	referUI_.instance3.name="instance3"
	du:placeAndAddChildToContainer(referUI_.instance3,container_,1.00,1.00,43.15,424.05,0,1,1,1,1)
	du:setLogicParent(referUI_.instance3,referUI_)
	referUI_.instance5= cc.Sprite:create("redPic.png")
	referUI_.instance5.name="instance5"
	du:placeAndAddChildToContainer(referUI_.instance5,container_,0.50,0.00,-6.85,424.05,0,1,1,1,2)
	du:setLogicParent(referUI_.instance5,referUI_)
	referUI_.instance7= cc.Sprite:create("greenPic.png")
	referUI_.instance7.name="instance7"
	du:placeAndAddChildToContainer(referUI_.instance7,container_,1.00,1.00,143.15,524.05,0,1,1,1,3)
	du:setLogicParent(referUI_.instance7,referUI_)
	referUI_.instance9= cc.Sprite:create("redPic.png")
	referUI_.instance9.name="instance9"
	du:placeAndAddChildToContainer(referUI_.instance9,container_,0.50,0.00,93.15,324.05,0,1,1,1,4)
	du:setLogicParent(referUI_.instance9,referUI_)
	referUI_.instance11= cc.Sprite:create("btnUp.png")
	referUI_.instance11.name="instance11"
	du:placeAndAddChildToContainer(referUI_.instance11,container_,0.50,0.50,0,464,0,1,1,1,5)
	du:setLogicParent(referUI_.instance11,referUI_)
	referUI_.instance21= cc.Sprite:create("redPic.png")
	referUI_.instance21.name="instance21"
	du:placeAndAddChildToContainer(referUI_.instance21,container_,0.50,0.00,0,414,0,1,1,1,9)
	du:setLogicParent(referUI_.instance21,referUI_)
	referUI_.instance23= cc.Sprite:create("greenPic.png")
	referUI_.instance23.name="instance23"
	du:placeAndAddChildToContainer(referUI_.instance23,container_,1.00,1.00,50,514,0,1,1,1,10)
	du:setLogicParent(referUI_.instance23,referUI_)
	referUI_.instance25= cc.Sprite:create("bluePic.png")
	referUI_.instance25.name="instance25"
	du:placeAndAddChildToContainer(referUI_.instance25,container_,0.00,1.00,-50,514,0,1,1,1,11)
	du:setLogicParent(referUI_.instance25,referUI_)
	referUI_.instance27= cc.Sprite:create("redPic.png")
	referUI_.instance27.name="instance27"
	du:placeAndAddChildToContainer(referUI_.instance27,container_,0.50,0.00,0,414,0,1,1,1,12)
	du:setLogicParent(referUI_.instance27,referUI_)
	du:setBlendToDisplay(referUI_.instance27,"screen")
	referUI_.instance29= cc.Sprite:create("greenPic.png")
	referUI_.instance29.name="instance29"
	du:placeAndAddChildToContainer(referUI_.instance29,container_,1.00,1.00,50,514,0,1,1,1,13)
	du:setLogicParent(referUI_.instance29,referUI_)
	du:setBlendToDisplay(referUI_.instance29,"overlay")
	referUI_.instance31= cc.Sprite:create("bluePic.png")
	referUI_.instance31.name="instance31"
	du:placeAndAddChildToContainer(referUI_.instance31,container_,0.00,1.00,-50,514,0,1,1,1,14)
	du:setLogicParent(referUI_.instance31,referUI_)
	du:setBlendToDisplay(referUI_.instance31,"multiply")
	referUI_.sz=cc.Scale9Sprite:create("btnUp.png", cc.rect(0,0,80.00,40.00), cc.rect(36.55,15.65,12.50,12.50))
	referUI_.sz.name="sz"
	du:placeAndAddChildToContainer(referUI_.sz,container_,0.00,1.00,-317.9,958.6,0,1,1,1,19)
	referUI_.sz:setContentSize(cc.size(139.55, 851.80))
	du:setLogicParent(referUI_.sz,referUI_)
	referUI_.sz.isSp9=true
	du:setSp9Info(referUI_.sz,"btnUp.png")
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 2 
	referUI_.instance33=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("元件包裹，锚点按照元件内坐标设置"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance33.name="instance33"
	referUI_.instance33:enableOutline(cc.c4b(0,0,0,255)) 
	du:textSet(referUI_.instance33,255,255,255,351.85,32)
	du:placeAndAddChildToContainer(referUI_.instance33,container_,0.50,0.50,0,464,0,1,1,1,15)
	referUI_.instance33.isText=true
	du:setLogicParent(referUI_.instance33,referUI_)
	referUI_.moveStreak=cc.MotionStreak:create(0.6,5,15,cc.c3b(255,255,255),"blade.png")
	referUI_.moveStreak.name="moveStreak"
	referUI_.moveStreak.isMotionStreak=true
	du:placeAndAddChildToContainer(referUI_.moveStreak,container_,0.53,1.28,2.5,476,0,1,1,1,16)
	du:setLogicParent(referUI_.moveStreak,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------s1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance3,43.15,424.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance5,-6.85,424.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance7,143.15,524.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance9,93.15,324.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance11,-167.90,298.10,7.35,4.00,90.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,-438.35,669.25,2.00,2.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.fntTexta,-154.90,737.75,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,219.90,669.25,2.00,2.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance21,-166.45,287.10,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance23,-116.45,245.30,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance25,-216.45,522.10,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance27,-166.45,224.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance29,-116.45,182.25,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance31,-216.45,455.10,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance33,123.95,371.10,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.moveStreak,270.50,828.65,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-27.95,577.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,114.95,577.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.sz,-319.80,955.85,7.99,1.29,0.00,1.00})
    
    referUI_.s1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s1.stateName="s1"
    table.insert(referUI_.uiStates,referUI_.s1)
    referUI_:stateAniPreset("s1",true,0.3,53)
    ---------------------------------------------------------------s2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance3,43.15,424.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance5,-6.85,424.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance7,143.15,524.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance9,93.15,324.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance11,52.90,869.70,7.35,4.00,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,232.85,658.05,2.00,2.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.fntTexta,255.55,737.75,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,-455.45,648.85,2.00,2.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance21,-6.85,821.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance23,163.80,921.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance25,-179.90,921.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance27,50.00,821.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance29,238.85,921.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance31,-116.45,921.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance33,106.95,219.65,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.moveStreak,-220.40,563.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,13.10,472.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,156.00,472.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.sz,-177.65,962.70,10.65,3.49,90.00,1.00})
    
    referUI_.s2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s2.stateName="s2"
    table.insert(referUI_.uiStates,referUI_.s2)
    referUI_:stateAniPreset("s2",true,0.3,53)
    ---------------------------------------------------------------s3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance3,43.15,424.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance5,-6.85,424.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance7,143.15,524.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance9,93.15,324.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance11,52.90,869.70,7.35,4.00,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,456.85,658.05,2.00,2.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.fntTexta,61.00,866.75,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,456.85,578.05,2.00,2.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance21,-41.85,705.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance23,21.80,733.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance25,-168.95,821.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance27,-63.95,641.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance29,-32.10,688.85,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance31,-145.40,763.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance33,6.95,308.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.moveStreak,246.55,563.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-69.75,472.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,73.15,472.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.sz,376.85,962.70,10.65,3.49,90.00,1.00})
    
    referUI_.s3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s3.stateName="s3"
    table.insert(referUI_.uiStates,referUI_.s3)
    referUI_:stateAniPreset("s3",true,0.3,53)
    

	-----special keys----------------------------------------------------------
    referUI_.alignMode='B'
    
end


return p_state