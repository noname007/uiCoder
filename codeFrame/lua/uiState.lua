[<File_doc|ui|/src/app/base/ui/uiState.lua|replace>]
local uiState = class("uiState")
----------------------------------------------
--@param data Table {{node, x, y, scaleX, scaleY, rotation, alpha, width, height}, ...}
function uiState:ctor(host, data)
    self.stateName=nil
    self.host = host
    self.node2prop = {}
    self.scaling = false
    if data then
        for _, item in pairs(data) do
            local node = item[1]
            self:register(node, "x", item[2])
            self:register(node, "y", item[3])
            self:register(node, "scaleX", item[4])
            self:register(node, "scaleY", item[5])
            self:register(node, "rotation", item[6])
            self:register(node, "alpha", item[7])
            self:register(node, "width", item[8])
            self:register(node, "height", item[9])
        end 
    end
    self.uiControl=uiControl:getInstance()
    self.actionUtils=actionUtils:getInstance()
    self.displayUtils=displayUtils:getInstance()
end

function uiState:register(node, propName, propValue)
    local prop = self.node2prop[node]
    if prop == nil then
        prop = {}
        self.node2prop[node] = prop
    end 
    prop[propName] = propValue
end

function uiState:activate(playAnimation, duration, easeType)
    if playAnimation == nil then playAnimation = true end
    duration = duration or 0.3
    for node, prop in pairs(self.node2prop) do
        local function moveComplete()
            self.uiControl:waitSub()
        end
        local function scaleComplete()
            self.scaling = false
            self.uiControl:waitSub()
        end
        local function rotateComplete()
            self.uiControl:waitSub()
        end
        local function fadeComplete()
            local alpha = prop["alpha"]
            if alpha then
                if alpha < 0.1 then 
                    visible = false 
                else 
                    visible = true
                end
            end
            self.uiControl:waitSub()
        end

        local _x, _y = node:getPosition()
        local x, y = prop["x"] or _x, prop["y"] or _y
        --if node.alignBoo then x, y = _x, _y end
        local _opacitySupport=true
        if node.isMotionStreak then
            _opacitySupport=false
        end

        local _opacity 
        local opacity 
        local alpha 
        if _opacitySupport then
            _opacity = node:getOpacity()
            opacity = _opacity
            alpha = prop["alpha"]
            if alpha then opacity = 255 * alpha end
        end

        local _scaleX
        local _scaleY
        local scaleX
        local scaleY

        if node.isSp9==true then
            local _tempRotationSave=node:getRotation()
            node:setRotation(0)
            local _currentSize=node:getContentSize()
            _scaleX = _currentSize.width/node.sourceWidth
            _scaleY = _currentSize.height/node.sourceHeight
            node:setRotation(_tempRotationSave)
            scaleX = prop["scaleX"] or _scaleX
            scaleY = prop["scaleY"] or _scaleY
        else
            _scaleX = node:getScaleX()
            _scaleY = node:getScaleY()
            scaleX = prop["scaleX"] or _scaleX
            scaleY = prop["scaleY"] or _scaleY
        end

        local size = node:getContentSize()
        local _width= size.width
        local _height = size.height
        local width = prop["width"] or _width
        local height = prop["height"] or _height

        local _rotation=node:getRotation()
        local rotation= prop["rotation"] or rotation
        
        if playAnimation then
            local rotate
            if math.abs(rotation - _rotation) > 1 then
                rotate = cc.RotateTo:create(duration,rotation)
                rotate = self.actionUtils:easeActionByType(rotate, easeType)
                rotate = cc.Sequence:create(rotate, cc.CallFunc:create(rotateComplete))
                node:runAction(rotate) 
                self.uiControl:waitAdd()
            end 

            local fade
            if _opacitySupport then
                if math.abs(opacity - _opacity) > 1 then
                    fade = cc.FadeTo:create(duration, opacity)
                    fade = self.actionUtils:easeActionByType(fade, easeType)
                    fade = cc.Sequence:create(fade, cc.CallFunc:create(fadeComplete))
                    node:runAction(fade)
                    self.uiControl:waitAdd()
                end
            end
            local move
            if math.abs(x - _x) > 1 or math.abs(y - _y) > 1 then
                move = cc.MoveTo:create(duration, cc.vertex2F(x, y))
                move = self.actionUtils:easeActionByType(move, easeType)
                move = cc.Sequence:create(move, cc.CallFunc:create(moveComplete))
                node:runAction(move) 
                self.uiControl:waitAdd()
            end 

            local scale
            if (math.abs(scaleX - _scaleX) > 0.05 or math.abs(scaleY - _scaleY) > 0.05) then
                scale = cc.ScaleTo:create(duration, scaleX, scaleY)
                scale = self.actionUtils:easeActionByType(scale, easeType)
                scale = cc.Sequence:create(scale, cc.CallFunc:create(scaleComplete))
                if node.isSp9==true then
                    local function update()
                        local size = {}
                        size.width = node.sourceWidth * node.spriteIn:getScaleX()
                        size.height = node.sourceHeight * node.spriteIn:getScaleY()
                        node:setContentSize(size)
                        if self.scaling then self.actionUtils:nodeDelayCall(node,0.05,update)  end
                    end
                    self.actionUtils:nodeDelayCall(node,0.05,update)
                    node.spriteIn:runAction(scale) 
                    self.scaling = true
                else
                    node:runAction(scale) 
                end
                self.uiControl:waitAdd()
            end        

            if fade or move or scale  then node:setVisible(true) end
        else
            self.displayUtils:place(node,x,y,rotation,scaleX,scaleY,alpha)
            -- if node.isSp9==true then
            --     node:setContentSize(cc.size(node.sourceWidth * scaleX,node.sourceHeight * scaleY))
            -- else
            --     node:setScaleX(scaleX)
            --     node:setScaleY(scaleY)
            -- end
            -- node:setPosition(x, y)
            -- if _opacitySupport then
            --     node:setOpacity(opacity)
            -- end
            -- local alpha = prop["alpha"]
            -- if alpha then
            --     if alpha < 0.05 then 
            --         node:setVisible(false)
            --     else 
            --         node:setVisible(true)
            --     end
            -- end

            -- node:setRotation(rotation)
        end
    end
end
function uiState:onDelete()
    self.displayUtils=nil
    self.host = nil
    self.node2prop = nil
    self.uiControl = nil
    self.actionUtils = nil
end

return uiState