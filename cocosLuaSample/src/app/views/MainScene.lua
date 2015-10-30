local MainScene = class("MainScene", cc.load("mvc").ViewBase)
function MainScene:onCreate()
	self:addChild(uiControl:getInstance().stageContainer)
	uiControl:getInstance():jumpTo("sample","main"):init({}})
end

return MainScene