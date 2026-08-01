local info = debug.getinfo
debug.getinfo = function(t, k, v)
    local q = info(t, k, v)
    if q then
        q.source = ""
        print("file: nil")
    end
    return q
end

local KeyBoardI = {}
local H= {}

local sendMessage = ShellInterface.sendMessage
ShellInterface.sendMessage = function(self, messageType, msgData)
    msgData.senderUserId = tostring(Game:getPlatformUserId())
    sendMessage(self, messageType, json.encode(msgData))
end




    -- Rename Loader.lua- back to Loader.lua
  
 local UIGMControlPanel = class("GUIGMControlPanel", IGUILayout)
 
 function UIGMControlPanel:isShowAnim()
 return true
 end

---@private
function KeyBoardI:init()
    if Platform.isWindow() and CGame.requireKeyboardEvent then
        CGame.Instance():requireKeyboardEvent()
        CEvents.KeyUpEvent:registerCallBack(self.onKeyUp)
        CEvents.KeyUpEvent:registerCallBack(self.onEventHold)
    end
end

function KeyBoardI:OnUpdate() 
        local player = PlayerManager:getClientPlayer()
        if player == nil then
            return
        end
        local pos = player.Player:getPosition()
        MsgSender.sendTopTips(1, string.format("XYZ: %s / %s / %s", tostring(math.floor(pos.x)), tostring(math.floor(pos.y)), tostring(math.floor(pos.z))))
    end
    
function KeyBoardI.onKeyUp(keyName, keyCode)
    A = not A
    if keyName == "F" then
    GUIGMControlPanel:show()
	UIHelper.showToast("^FF00EEPanel Open")
	if A then
    GUIGMControlPanel:hide()
	UIHelper.showToast("^FF00EEPanel Closed")
end
	return
end
    if keyName == "R" then
    PacketSender:getSender():sendRebirth()
	return
end
    if keyName == "M" then
    local moveDir = VectorUtil.newVector3(0.0, 1.35, 0.0)
    local player = PlayerManager:getClientPlayer()
    player.Player:setAllowFlying(true)
    player.Player:setFlying(true)
    player.Player:moveEntity(moveDir)
	PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(1500)
	return
end
    local idx = tonumber(keyName)
    return true
end
_G["dumb"] = 777

function Game:init()
    MsgSender.sendMsg("^E91A1Ahaha")
    LuaTimer:schedule(function()
        MsgSender.sendMsg("^2D9FE1")
        LuaTimer:schedule(function()
            MsgSender.sendMsg("^32CD32")
            LuaTimer:schedule(function()
                MsgSender.sendMsg("^FFA500")
                
                LuaTimer:schedule(function()
                    for i = 1, 10 do
                        MsgSender.sendMsg("^800080AHH PANEL")
                    end
                end, 10000)
            end, 5000)
        end, 5000)
    end, 5000)
GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
ClientHelper.putBoolPrefs("DisableRenderClouds", true)
  ClientHelper.putBoolPrefs("EnableDoubleJumps", true)
ClientHelper.putBoolPrefs("IsShowItemDurability", true)
ClientHelper.putBoolPrefs("setSwordBreakBlock", true)
ClientHelper.putBoolPrefs("IsCreatureBloodBar", true)
ClientHelper.putBoolPrefs("IsCreatureCollision", false)
ClientHelper.putIntPrefs("HurtProtectTime", 0)
ClientHelper.putBoolPrefs("IsShowCrafting", true)
ClientHelper.putBoolPrefs("banClickCD", true)
ClientHelper.putBoolPrefs("BlockCustomMeta", true)
ClientHelper.putBoolPrefs("IsCanSprint", true)
GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
GUIManager:getWindowByName("PlayerInfo-Health"):SetVisible(true)
ClientHelper.putFloatPrefs("EntityReachDistance", 7)
ClientHelper.putFloatPrefs("BlockReachDistance", 10)
ClientHelper.putBoolPrefs("DisStepSound", true)
    self.CGame = CGame.Instance()
 self.doubleJumpCount = 100000
    self.GameType = CGame.Instance():getGameType()
    self.EnableIndie = CGame.Instance():isEnableIndie(true)
    self.Blockman = Blockman.Instance()
    self.World = Blockman.Instance():getWorld()
    self.LowerDevice = CGame.Instance():isLowerDevice()
    EngineWorld:setWorld(self.World)
    LuaTimer:scheduleTimer(function()
    cBlockManager.cGetBlockById(66):setNeedRender(false)
    cBlockManager.cGetBlockById(253):setNeedRender(false)
    for blockId = 1, 40000 do
        local block = BlockManager.getBlockById(blockId)
        if block then
            block:setHardness(0)
    end
	    end
	 
	end, 5, 200)
    GMHelper:telnetServer()
    GMHelper:XYZ()
	GMHelper:NewGUI()
	GMHelper:GUIButton2()
	GMHelper:GUIButton()
    GMHelper:HitBoxButton()
end

function Game:isOpenGM()
   return isClient
end



local Settings = {}
GMSetting = {}



function GMSetting:addTab(tab_name, index)
    for _, setting in pairs(Settings) do
        if setting.name == tab_name then
            setting.items = {}
            return
        end
    end
    index = index or #Settings + 1
    table.insert(Settings, index, { name = tab_name, items = {} })
end

function GMSetting:addItem(tab_name, item_name, func_name, ...)
    local settings
    for _, group in pairs(Settings) do
        if group.name == tab_name then
            settings = group
        end
    end
    if not settings then
        GMSetting:addTab(tab_name)
        GMSetting:addItem(tab_name, item_name, func_name, ...)
        return
    end
    table.insert(settings.items, { name = item_name, func = func_name, params = { ... } })
end

function GMSetting:getSettings()
    return Settings
end


GMSetting:addTab("^E91A1AVerySpecial", 1)
GMSetting:addItem("^E91A1AVerySpecial", "^2D9FE1TeleportAllToMe", "TPALLPLAYERTOME")
GMSetting:addItem("^E91A1AVerySpecial", "^2CABFFStuckAllToMe", "STUCKALLPLAYERS")
GMSetting:addItem("^E91A1AVerySpecial", "^27A5FEChangelog", "sndkkss")
GMSetting:addItem("^E91A1AVerySpecial", "^229FFFChatOFF", "OffChat")
GMSetting:addItem("^E91A1AVerySpecial", "^1D9AFFChatON", "OnChat")
GMSetting:addItem("^E91A1AVerySpecial", "^1895FFWarnHP", "addHpLvl")
GMSetting:addItem("^E91A1AVerySpecial", "^138FFFWarnHP2", "WarnTP")
GMSetting:addItem("^E91A1AVerySpecial", "^0E8AFFInstantRespawn", "InstantRespawn")
GMSetting:addItem("^E91A1AVerySpecial", "^0985FFSpamRespawn", "SpamRespawn")
GMSetting:addItem("^E91A1AVerySpecial", "^0480FFAutoClicker", "ggg2228")
GMSetting:addItem("^E91A1AVerySpecial", "^007AFFCredits", "credits")
GMSetting:addItem("^E91A1AVerySpecial", "^0075FFAdjustSpeed", "AdjustSpeedBasedOnDistance")
GMSetting:addItem("^E91A1AVerySpecial", "^006FFFPlayersINFO", "ShowPlayersInfo")
GMSetting:addItem("^E91A1AVerySpecial", "^006AFFDoubleJumps", "DoubleJumps")
GMSetting:addItem("^E91A1AVerySpecial", "^0065FFDupeRank", "Reward")

GMSetting:addTab("^E91A1AMainCheats", 2)
GMSetting:addItem("^E91A1AMainCheats", "^00FF00ArrowSpeedBow", "updateBedWarArrowSpeed")  -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33Respawn", "Respawn")                      -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66Tracer", "Tracer")                        -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99StopTracer", "DelAllGUIDEArrow")          -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00BowSpeed", "BowSpeed", 1000)              -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33AttackCD", "BanClickCD")                  -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66HitBox", "HitBox")                        -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99Rvanka", "Rvanka")                        -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00Reach", "Reach")                          -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33SetUpBuild", "SetUpBuild")                -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66HealthBar", "ShowHealthBar")              -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99InfoBar", "testHui")                      -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00InfoXYZ", "MyLocation")                   -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33TurnHead", "AFKmode")                     -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66ShowHP", "showHP")                        -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99SetMaxFPS", "SetMaxFPS")                  -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00SetFOV", "SetFOV")                        -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33PlayersInfo", "GetAllInfoT")              -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66FunctionOFF", "FunctionOFF")              -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99FunctionON", "FunctionON")                -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00ShowAllCobtrol", "ShowAllCobtrolXD")      -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33Fly", "DoubleJumps")                      -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66TpClick", "TpClick")                      -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99JetPack", "JetPack")                      -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00Scaffold", "Scaffold")                    -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33ScaffoldX3", "Scaffold3")                 -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66ScaffoldX5", "Scaffold5")                 -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99ScaffoldX7", "Scaffold7")                 -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00StopScaffold", "StopScaffold")            -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33Parachute", "startParachute")             -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66FlyParachute", "FlyParachute")            -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99SettingLongjump", "SettingLongjump")      -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00DevNoClip", "DevnoClip")                  -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33WaterPush", "WaterPush")                  -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66SharpFly", "SharpFly")                    -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99Speed", "SpeedManager")                   -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00NoFall", "NoFall")                        -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33NoFall (Set)", "NoFallSet")               -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66LockBodyRotation", "LockBodyRotation")    -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99Y+", "inTheAirCheat")                     -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00Y+(Set)", "AdvancedUp")                   -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33X+(Set)", "AdvancedIn")                   -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66Z+(Set)", "AdvancedOn")                   -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99XYZ(Set)", "AdvancedDirect")              -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00X+", "GoTO10Blocks")                      -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33X-", "GoTO10BlocksDown")                  -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66DevFly", "DevFlyI")                       -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99LongJump", "LongJump")                    -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00/tp", "tpPos")                            -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33QuickPlaceBlock", "quickblock")           -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66Noclip", "Noclip")                        -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99RunScript", "RunScript")                  -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00SpamChat", "SpamChat")                    -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33Head Text", "HeadText")                   -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66ViewBobbing", "ViewBobbing")              -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99Fog", "Fog")                              -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00WWE_Camera", "WWE_Camera")                -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33Boy", "changePlayerActor", 1)             -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66Girl", "changePlayerActor", 2)            -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99JailBreakBypass", "JailBreakBypass")      -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00Freecam", "Freecam")                      -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33ChangeNick", "ChangeNick")                -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66HideArm", "HideHoldItem")                 -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99ChangeScale", "changeScale")              -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00XRayManagerON", "XRayManagerON")          -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33XRayManagerOFF", "XRayManagerOFF")        -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66TeleportByUID", "TeleportByUID")          -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99HideArmor", "SetHideAndShowArmor")        -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00ChangeActorForMe", "ChangeActorForMe")    -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33TreasureHunterNoClip", "NoclipOP")        -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66Treasure Reset", "MineReset")             -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99SpeedLine", "SpeedLineMode")              -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00DisableSpeedLine", "SpeedLineModeDisable")-- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33TorchPattern", "PatternTorchMode")        -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66DisableTorchPattern", "PatternTorchModeOFF") -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99FlipCamera", "CameraFlipModeON")          -- Even Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^00FF00ResetFlipCamera", "CameraFlipModeRESET")  -- Green
GMSetting:addItem("^E91A1AMainCheats", "^33FF33openDebug", "openDebug")                  -- Light Green
GMSetting:addItem("^E91A1AMainCheats", "^66FF66closeDebug", "closeDebug")                -- Lighter Green
GMSetting:addItem("^E91A1AMainCheats", "^99FF99BreakSpeed", "FastBreakBlockMode")        

GMSetting:addTab("^E91A1AUnderTest", 3)
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1TeleportAuraBroken", "teleportAuraWafex")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1TpKill", "tpkill")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1Rvanka2", "Rvanka2")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1REMOVEALLGUI", "openScreenRecord")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1TestAI", "testAI")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1LAGSERVER", "lagServer")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1DDOS2", "LagServer2")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1HidePanel", "makeGMButtonTran")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1UseSmallVBO", "setUseSmallVBO")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1setClearColorDisabled", "setClearColorDisabled")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1DisableGraphicAPIAndTestCPU", "DisableGraphicAPIAndTestCPU")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1DisableGraphicAPIAndTestGPU", "DisableGraphicAPIAndTestGPU")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1DisableGraphicAPIAndDrawCallTest", "DisableGraphicAPIAndDrawCallTest")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1changeLuaHotUpdate", "changeLuaHotUpdate")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1changeOpenEventDialog", "changeOpenEventDialog")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1setOutputUIName", "setOutputUIName")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1telnetClient", "telnetClient")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1telnetServer", "telnetServer")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1setGlobalShowText", "setGlobalShowText")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1setEnableMergeBlock", "setEnableMergeBlock")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1AnvilToObj", "AnvilToObj")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1inTheAirCheat", "inTheAirCheat")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1testModiyScript", "testModiyScript")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1testinValidEffect", "testinValidEffect")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1outputItemLangFile", "outputItemLangFile")
GMSetting:addItem("^E91A1AUnderTest", "^2D9FE1DoubleJumps", "DoubleJumps")

GMSetting:addTab("^E91A1ACombat", 4)
GMSetting:addItem("^E91A1ACombat", "^2D9FE1ArrowSpeedBow", "updateBedWarArrowSpeed")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1Respawn", "Respawn")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1Tracer", "Tracer")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1StopTracer", "DelAllGUIDEArrow")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1BowSpeed", "BowSpeed", 1000)
GMSetting:addItem("^E91A1ACombat", "^2D9FE1AttackCD", "BanClickCD")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1HitBox", "HitBox")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1Rvanka", "Rvanka")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1Reach", "Reach")
GMSetting:addItem("^E91A1ACombat", "^2D9FE1SetUpBuild", "SetUpBuild")

GMSetting:addTab("^E91A1AInformation", 5)
GMSetting:addItem("^E91A1AInformation", "^2D9FE1HealthBar", "ShowHealthBar")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1InfoBar", "testHui")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1InfoXYZ", "MyLocation")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1TurnHead", "AFKmode")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1ShowHP", "showHP")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1SetMaxFPS", "SetMaxFPS")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1SetFOV", "SetFOV")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1PlayersInfo", "GetAllInfoT")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1FunctionOFF", "FunctionOFF")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1FunctionON", "FunctionON")
GMSetting:addItem("^E91A1AInformation", "^2D9FE1ShowAllCobtrol", "ShowAllCobtrolXD")

GMSetting:addTab("^E91A1AMovements", 6)
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Fly", "DoubleJumps")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1TpClick", "TpClick")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1JetPack", "JetPack")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Scaffold", "Scaffold")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1ScaffoldX3", "Scaffold3")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1ScaffoldX5", "Scaffold5")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1ScaffoldX7", "Scaffold7")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1StopScaffold", "StopScaffold")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Parachute", "startParachute")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1FlyParachute", "FlyParachute")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1SettingLongjump", "SettingLongjump")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1DevNoClip", "DevnoClip")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1WaterPush", "WaterPush")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1SharpFly", "SharpFly")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Speed", "SpeedManager")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1NoFall", "NoFall")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1NoFall (Set)", "NoFallSet")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1LockBodyRotation", "LockBodyRotation")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Y+", "inTheAirCheat")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Y+(Set)", "AdvancedUp")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1X+(Set)", "AdvancedIn")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Z+(Set)", "AdvancedOn")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1XYZ(Set)", "AdvancedDirect")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1X+", "GoTO10Blocks")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1X-", "GoTO10BlocksDown")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1DevFly", "DevFlyI")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1LongJump", "LongJump")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1/tp", "tpPos")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1QuickPlaceBlock", "quickblock")
GMSetting:addItem("^E91A1AMovements", "^2D9FE1Noclip", "Noclip")

GMSetting:addTab("^E91A1AMiscellanious", 7)
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1RunScript", "RunScript")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1SpamChat", "SpamChat")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1Head Text", "HeadText")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1ViewBobbing", "ViewBobbing")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1Fog", "Fog")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1WWE_Camera", "WWE_Camera")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1Boy", "changePlayerActor", 1)
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1Girl", "changePlayerActor", 2)
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1JailBreakBypass", "JailBreakBypass")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1Freecam", "Freecam")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1ChangeNick", "ChangeNick")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1HideArm", "HideHoldItem")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1ChangeScale", "changeScale")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1XRayManagerON", "XRayManagerON")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1XRayManagerOFF", "XRayManagerOFF")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1TeleportByUID", "TeleportByUID")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1HideArmor", "SetHideAndShowArmor")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1ChangeActorForMe", "ChangeActorForMe")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1TreasureHunterNoClip", "NoclipOP")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1Treasure Reset", "MineReset")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1SpeedLine", "SpeedLineMode")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1DisableSpeedLine", "SpeedLineModeDisable")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1TorchPattern", "PatternTorchMode")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1DisableTorchPattern", "PatternTorchModeOFF")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1FlipCamera", "CameraFlipModeON")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1ResetFlipCamera", "CameraFlipModeRESET")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1openDebug", "openDebug")
GMSetting:addItem("^E91A1AMiscellanious", "^2D9FE1closeDebug", "closeDebug")

GMSetting:addTab("^7803FFTeleport", 8)
GMSetting:addItem("^7803FFTeleport", "^7803FFHunger Games Map1", "EnterGame", "m1001_1", "g1001")
GMSetting:addItem("^7803FFTeleport", "^7803FFHunger Games Map2", "EnterGame", "m1001_2", "g1001")
GMSetting:addItem("^7803FFTeleport", "^7803FFHunger Games Map3", "EnterGame", "m1001_3", "g1001")
GMSetting:addItem("^7803FFTeleport", "^7803FFHunger Games Map4", "EnterGame", "m1001_4", "g1001")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Wars Map1", "EnterGame", "m1002_1", "g1002")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Wars Map2", "EnterGame", "m1002_2", "g1002")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Wars Map2", "EnterGame", "m1002_3", "g1002")
GMSetting:addItem("^7803FFTeleport", "^7803FFBow Spleef Map1", "EnterGame", "m701", "g1007")
GMSetting:addItem("^7803FFTeleport", "^7803FFBow Spleef Map2", "EnterGame", "m702", "g1007")
GMSetting:addItem("^7803FFTeleport", "^7803FFBed War", "EnterGame", "m1008_2", "g1008")
GMSetting:addItem("^7803FFTeleport", "^7803FFMurder Mystery", "EnterGame", "m901", "g1009")
GMSetting:addItem("^7803FFTeleport", "^7803FFTnt Run", "EnterGame", "m1001", "g1010")
GMSetting:addItem("^7803FFTeleport", "^7803FFSnowBall Battle Map1", "EnterGame", "m1101", "g1011")
GMSetting:addItem("^7803FFTeleport", "^7803FFSnowBall Battle Map2", "EnterGame", "m1102", "g1011")
GMSetting:addItem("^7803FFTeleport", "^7803FFSnowBall Battle Map3", "EnterGame", "m1103", "g1011")
GMSetting:addItem("^7803FFTeleport", "^7803FFZombie Infecting", "EnterGame", "m1301", "g1013")
GMSetting:addItem("^7803FFTeleport", "^7803FFJail Break", "EnterGame", "m1401", "g1014")
GMSetting:addItem("^7803FFTeleport", "^7803FFTreasure Hunter", "EnterGame", "m1501_1", "g1015")
GMSetting:addItem("^7803FFTeleport", "^7803FFPUBG", "EnterGame", "m1601", "g1016")
GMSetting:addItem("^7803FFTeleport", "^7803FFHide and seak", "EnterGame", "m1701", "g1017")
GMSetting:addItem("^7803FFTeleport", "^7803FFEgg Wars Map1", "EnterGame", "m1018_1", "g1018")
GMSetting:addItem("^7803FFTeleport", "^7803FFEgg Wars Map2", "EnterGame", "m1018_2", "g1018")
GMSetting:addItem("^7803FFTeleport", "^7803FFEgg Wars Map3", "EnterGame", "m1018_3", "g1018")
GMSetting:addItem("^7803FFTeleport", "^7803FFEgg Wars Map4", "EnterGame", "m1018_4", "g1018")
GMSetting:addItem("^7803FFTeleport", "^7803FFEgg Wars Map5", "EnterGame", "m1018_5", "g1018")
GMSetting:addItem("^7803FFTeleport", "^7803FFAliens Attack", "EnterGame", "m1019_1", "g1019")
GMSetting:addItem("^7803FFTeleport", "^7803FFMini Town", "EnterGame", "m1020_1", "g1020")
GMSetting:addItem("^7803FFTeleport", "^7803FFRainbow parkour Map1", "EnterGame", "m1021_1", "g1021")
GMSetting:addItem("^7803FFTeleport", "^7803FFRainbow parkour Map2", "EnterGame", "m1021_2", "g1021")
GMSetting:addItem("^7803FFTeleport", "^7803FFRainbow parkour Map3", "EnterGame", "m1021_3", "g1021")
GMSetting:addItem("^7803FFTeleport", "^7803FFCapture The Flag", "EnterGame", "m1022_1", "g1022")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild Battle", "EnterGame", "m1023_1", "g1023")
GMSetting:addItem("^7803FFTeleport", "^7803FFGem Knight", "EnterGame", "m1024_1", "g1024")
GMSetting:addItem("^7803FFTeleport", "^7803FFHero Tycoon 2", "EnterGame", "m1025_1", "g1025")
GMSetting:addItem("^7803FFTeleport", "^7803FFTnt Tag Map1", "EnterGame", "m1026_1", "g1026")
GMSetting:addItem("^7803FFTeleport", "^7803FFTnt Tag Map2", "EnterGame", "m1026_2", "g1026")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Royale", "EnterGame", "m1027_1", "g1027")
GMSetting:addItem("^7803FFTeleport", "^7803FFUltimate Fighting", "EnterGame", "m1028_2", "g1028")
GMSetting:addItem("^7803FFTeleport", "^7803FFMega Walls Map1", "EnterGame", "m1029_1", "g1029")
GMSetting:addItem("^7803FFTeleport", "^7803FFMega Walls Map2", "EnterGame", "m1029_2", "g1029")
GMSetting:addItem("^7803FFTeleport", "^7803FFSnowman Defender Map1", "EnterGame", "m1030_1", "g1030")
GMSetting:addItem("^7803FFTeleport", "^7803FFSnowman Defender Map2", "EnterGame", "m1030_2", "g1030")
GMSetting:addItem("^7803FFTeleport", "^7803FFSnowman Defender Map3", "EnterGame", "m1030_3", "g1030")
GMSetting:addItem("^7803FFTeleport", "^7803FFRanchers", "EnterGame", "m1031_1", "g1031")
GMSetting:addItem("^7803FFTeleport", "^7803FFBlockman Strike Lobby", "EnterGame", "m1032_1", "g1032")
GMSetting:addItem("^7803FFTeleport", "^7803FFBlockman Strike Map1", "EnterGame", "m1033_2", "g1033")
GMSetting:addItem("^7803FFTeleport", "^7803FFBlockman Strike Map2", "EnterGame", "m1033_3", "g1033")
GMSetting:addItem("^7803FFTeleport", "^7803FFBlockman Strike Map3", "EnterGame", "m1033_4", "g1033")
GMSetting:addItem("^7803FFTeleport", "^7803FFEnder Vs Slender Map1", "EnterGame", "m1036_1", "g1036")
GMSetting:addItem("^7803FFTeleport", "^7803FFEnder Vs Slender Map2", "EnterGame", "m1036_2", "g1036")
GMSetting:addItem("^7803FFTeleport", "^7803FFHide And Seek2", "EnterGame", "m1037_1", "g1037")
GMSetting:addItem("^7803FFTeleport", "^7803FFHide And Seek2 Map1", "EnterGame", "m1038_1", "g1038")
GMSetting:addItem("^7803FFTeleport", "^7803FFHide And Seek2 Map2", "EnterGame", "m1038_2", "g1038")
GMSetting:addItem("^7803FFTeleport", "^7803FFHide And Seek2 Map3", "EnterGame", "m1039_1", "g1039")
GMSetting:addItem("^7803FFTeleport", "^7803FFHide And Seek2 Map4", "EnterGame", "m1039_2", "g1039")
GMSetting:addItem("^7803FFTeleport", "^7803FFBird Simulator", "EnterGame", "m1041_2", "g1041")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1042_1", "g1042")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1043_1", "g1043")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1043_2", "g1043")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1043_3", "g1043")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1043_4", "g1043")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1044_1", "g1044")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1044_2", "g1044")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1044_3", "g1044")
GMSetting:addItem("^7803FFTeleport", "^7803FFBuild And Shoot", "EnterGame", "m1044_4", "g1044")
GMSetting:addItem("^7803FFTeleport", "^7803FFBed War Lobby", "EnterGame", "m1046_2", "g1046")
GMSetting:addItem("^7803FFTeleport", "^7803FFRealm City", "EnterGame", "m1047_1", "g1047")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Block", "EnterGame", "m1048_1", "g1048")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Block Mining", "EnterGame", "m1049_2", "g1049")
GMSetting:addItem("^7803FFTeleport", "^7803FFSky Block Product", "EnterGame", "m1050_1", "g1050")
GMSetting:addItem("^7803FFTeleport", "^7803FFWalking Dead", "EnterGame", "m1051_1", "g1051")
GMSetting:addItem("^7803FFTeleport", "^7803FFBlock Fort", "EnterGame", "m1052", "g1052")
GMSetting:addItem("^7803FFTeleport", "^7803FFBattle Royale", "EnterGame", "m1053_1", "g1053")
GMSetting:addItem("^7803FFTeleport", "^7803FFLucky Block Sky war", "EnterGame", "m1054_1", "g1054")
GMSetting:addItem("^7803FFTeleport", "^7803FFLucky Block Sky war", "EnterGame", "m1054_2", "g1054")
GMSetting:addItem("^7803FFTeleport", "^7803FFWWE", "EnterGame", "m1055_1", "g1055")
GMSetting:addItem("^7803FFTeleport", "^7803FFAngry Pets", "EnterGame", "m1056_1", "g1056")
GMSetting:addItem("^7803FFTeleport", "^7803FFAngry Pets", "EnterGame", "m1057_1", "g1057")
GMSetting:addItem("^7803FFTeleport", "^7803FFLucky Blocks", "EnterGame", "m1058_1", "g1058")
GMSetting:addItem("^7803FFTeleport", "^7803FFBed wars", "EnterGame", "m1061_1", "g1061")
GMSetting:addItem("^7803FFTeleport", "^7803FFBed wars", "EnterGame", "m1062_1", "g1062")
GMSetting:addItem("^7803FFTeleport", "^7803FFBed wars", "EnterGame", "m1063_1", "g1063")
GMSetting:addItem("^7803FFTeleport", "^7803FFBullets fly", "EnterGame", "m1064_1", "g1064")
GMSetting:addItem("^7803FFTeleport", "^7803FFBed wars 10vs10", "EnterGame", "m1065_1", "g1065")

GMSetting:addTab("^E91A1ACustomSky", 9)
GMSetting:addItem("^E91A1ACustomSky", "^2D9FE1Night", "Night")
GMSetting:addItem("^E91A1ACustomSky", "^2D9FE1Day", "Day")
GMSetting:addItem("^E91A1ACustomSky", "^2D9FE1Evening", "Evening")

GMSetting:addTab("^E91A1APlayerMisc", 10)
GMSetting:addItem("^E91A1APlayerMisc", "^2D9FE1BlockReach", "BlockReach")
GMSetting:addItem("^E91A1APlayerMisc", "^2D9FE1AttackReach", "AttackReach")
GMSetting:addItem("^E91A1APlayerMisc", "^2D9FE1JumpHeight", "JumpHeight")

GMSetting:addTab("^E91A1ARenderWorld", 11)
GMSetting:addItem("^E91A1ARenderWorld", "^2D9FE1SetRenderWorld", "RenderWorld")
GMSetting:addItem("^E91A1ARenderWorld", "^2D9FE1CloudsStop", "CloudsOFF", true)
GMSetting:addItem("^E91A1ARenderWorld", "^2D9FE1BreakParticles", "BreakParticles")
GMSetting:addItem("^E91A1ARenderWorld", "^2D9FE1OFFDARK", "OFFDARK")

GMSetting:addTab("^E91A1ASpecial", 12)
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SetTime", "SetTime")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1Day", "ChangeTime", false)
GMSetting:addItem("^E91A1ASpecial", "^2D9FE11Night", "ChangeTime", true)
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1Start/Stop cycle", "StartTime")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SetYaw", "setYaw")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SpawnNPC", "SpawnNPC")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SpawnItem", "SpawnItem")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SetBlockToAir", "SetBlockToAir")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SpawnBlock", "SpawnBlock")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SpawnCar", "spawnCar")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SpYaw", "SpYaw")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1SpYawSet", "SpYawSet")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeHair", "ChangeHair")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeFace", "ChangeFace")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeTops", "ChangeTops")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangePants", "ChangePants")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeWing", "ChangeWing")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeScarf", "ChangeScarf")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeGlasses", "ChangeGlasses")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeShoes", "ChangeShoes")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeHat", "ChangeHat")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeHat(Dec)", "ChangeDecHat")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeTail", "ChangeTail")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeBagl", "ChangeBagI")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1ChangeCrown", "ChangeCrown")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1CreateGUIDEArrow", "CreateGUIDEArrow")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1DelAllGUIDEArrow", "DelAllGUIDEArrow")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1EasyWay", "EasyWay")
GMSetting:addItem("^E91A1ASpecial", "^2D9FE1WatchMode", "WatchMode")

GMSetting:addTab("^E91A1AINFO", 13)
GMSetting:addItem("^E91A1AINFO", "^2D9FE1ShowRegion", "ShowRegion")
GMSetting:addItem("^E91A1AINFO", "^2D9FE1ShowGameID", "GameID")
GMSetting:addItem("^E91A1AINFO", "^2D9FE1AllInfoPlayer", "GetAllInfoT")
GMSetting:addItem("^E91A1AINFO", "^2D9FE1CopyLogInfo", "LogInfo")

GMSetting:addTab("^E91A1AGUI", 14)
GMSetting:addItem("^E91A1AGUI", "^2D9FE1SetNewGUI", "NewGUI")
GMSetting:addItem("^E91A1AGUI", "^2D9FE1SetXPos", "SetXPos")
GMSetting:addItem("^E91A1AGUI", "^2D9FE1SetYPos", "SetYPos")

GMSetting:addTab("^E91A1ANoBlocks", 15)
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoEndStone", "NoEndStone1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoWood", "NoWool1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoWool", "NoOakPlanks1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoObsidian", "NoObsidian1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoGlass", "NoGlass1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoDiamondBomb", "NoBomb1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoIronDoor", "NoIDoor1")
GMSetting:addItem("^E91A1ANoBlocks", "^2D9FE1NoQuartzBlock", "NoQuartz1")

GMSetting:addTab("^E91A1AActionXD", 16)
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1ResetXD", "ResetXD")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1ActionSet", "ActionSet")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1Sneak", "SneakXD")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1gun", "WalkSMG")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1Sit1", "SitXD")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1Sit2", "SitXD2")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1Sit3", "SitXD3")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1Fride_dragon", "rideDragonXD")
GMSetting:addItem("^E91A1AActionXD", "^2D9FE1swim", "SwimXD")

GMSetting:addTab("^E91A1ARealmCityWings", 17)
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Rainbow", "RainbowWings")
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Gold Wings", "XLGoldWings")
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Ice Wings", "IceWings")
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Fire Wings", "FireWings")
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Yellow Wings", "YellowWings")
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Pink Wings", "PinkWings")
GMSetting:addItem("^E91A1ARealmCityWings", "^2D9FE1Blue Wings", "ShareWings")

GMSetting:addTab("^E91A1ABlockHelper", 18)
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockToword", "SpawnBlockToword")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockTowordv1", "SpawnBlockTowordv1")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockSize", "SpawnBlockSize")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1BlockPosition", "pingtai")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockfillSize", "SpawnBlockfillSize")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1CloneBlocksMove", "CloneBlocksMove")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1CloneBlocks", "CloneBlocks")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1", "AddBlocks")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1AddBlocksMove", "AddBlocksMove")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockClone", "SpawnBlockClone")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockNoclip", "SpawnBlockNoclip")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockOFF", "SpawnBlockOFF")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlockON", "SpawnBlockON")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlocktimeSize", "SpawnBlocktimeSize")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnBlocktimeSize1", "SpawnBlocktimeSize1")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnCube", "SpawnCube")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnSphere", "SpawnSphere")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnPyramid", "SpawnPyramid")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1SpawnRhombus", "SpawnRhombus")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1HideST", "HideST")
GMSetting:addItem("^E91A1ABlockHelper", "^2D9FE1ShowST", "ShowST")

GMSetting:addTab("^E91A1ADanger", 19)
GMSetting:addItem("^E91A1ADanger", "^2D9FE1checkLuaMemoryBegin", "checkLuaMemoryBegin")
GMSetting:addItem("^E91A1ADanger", "^2D9FE1checkLuaMemoryEnd", "checkLuaMemoryEnd")
GMSetting:addItem("^E91A1ADanger", "^2D9FE1outputAppDress", "outputAppDress")

GMSetting:addTab("^E91A1ATextures", 20)
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Reset", "ChangeBlockTextures", "")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture1", "ChangeBlockTextures", "package_01_64.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture2", "ChangeBlockTextures", "package_02_32.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture3", "ChangeBlockTextures", "package_03_32.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture4", "ChangeBlockTextures", "package_04_64.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture5", "ChangeBlockTextures", "package_05_64.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture6", "ChangeBlockTextures", "package_06_64.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture7", "ChangeBlockTextures", "package_07_64.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture8", "ChangeBlockTextures", "package_08_64.zip")
GMSetting:addItem("^E91A1ATextures", "^2D9FE1Texture9", "ChangeBlockTextures", "package_09_64.zip")

GMSetting:addTab("^E91A1ALuaInjection", 21)
GMSetting:addItem("^E91A1ALuaInjection", "^2D9FE1PutBoolPrefs", "putBoolPrefs")
GMSetting:addItem("^E91A1ALuaInjection", "^2D9FE1PutFloatPrefs", "putFloatPrefs")
GMSetting:addItem("^E91A1ALuaInjection", "^2D9FE1PutIntPrefs", "putIntPrefs")
GMSetting:addItem("^E91A1ALuaInjection", "^2D9FE1PutStringPrefs", "putStringPrefs")


---@private



GMHelper = {}

function GMHelper:enableGM()
    ---@type UIGMControlPanel
    GUIGMControlPanel = UIHelper.newEngineGUILayout("GUIGMControlPanel", "GMControlPanel.json")
    GUIGMControlPanel:show()
    ---@type UIGMMain
    
end


---@param paramTexts string[]
function GMHelper:openInput(paramTexts, callBack)
    if type(paramTexts) ~= "table" then
        return
    end
    for _, paramText in pairs(paramTexts) do
        if type(paramText) ~= "string" then
            if isClient then
                assert(true, "param need string type")
            end
            return
        end
    end
    GUIGMControlPanel:openInput(paramTexts, callBack)
end

function GMHelper:callCommand(name, ...)
    local func = self[name]
    if type(func) == "function" then
        func(self, ...)
    end
    local data = { name = name, params = { ... } }
    table.remove(data.params)
end

function GMHelper:openDebug()
    CGame.Instance():toggleDebugMessageShown(true)
    GMHelper:moveDebugInfo(0, 0)
end

function GMHelper:closeDebug()
    CGame.Instance():toggleDebugMessageShown(false)
end

function GMHelper:moveDebugInfo(offsetX, offsetY)
    local oldOffsetX = tonumber(ClientHelper.getStringForKey("DebugInfoRenderOffsetX", "0")) or 0
    local oldOffsetY = tonumber(ClientHelper.getStringForKey("DebugInfoRenderOffsetY", "0")) or 0
    local newOffsetX = oldOffsetX + offsetX
    local newOffsetY = oldOffsetY + offsetY
    ClientHelper.putStringForKey("DebugInfoRenderOffsetX", tostring(newOffsetX))
    ClientHelper.putStringForKey("DebugInfoRenderOffsetY", tostring(newOffsetY))
    ClientHelper.putFloatPrefs("DebugInfoRenderOffsetX", newOffsetX)
    ClientHelper.putFloatPrefs("DebugInfoRenderOffsetY", newOffsetY)
end


function GMHelper:XYZ()
     LuaTimer:scheduleTimer(function()
     local player = PlayerManager:getClientPlayer()
        if player == nil then
            return
        end
        local pos = player.Player:getPosition()
        MsgSender.sendTopTips(1, string.format("XYZ: %s / %s / %s", tostring(math.floor(pos.x)), tostring(math.floor(pos.y)), tostring(math.floor(pos.z))))
   
        end, 5, 10000000)
        
end


function GMHelper:GUIButton2()
    GUIManager:getWindowByName("Main-Parachute"):SetVisible(true)
    GUIManager:getWindowByName("Main-Parachute"):SetHeight({0, 60})
    GUIManager:getWindowByName("Main-Parachute"):SetWidth({0, 60})
    GUIManager:getWindowByName("Main-Parachute"):SetXPosition({0, 815})
    GUIManager:getWindowByName("Main-Parachute"):SetYPosition({0, 118})
    GUIManager:getWindowByName("Main-Cannon"):SetYPosition({0, -315})
    GUIManager:getWindowByName("Main-Cannon"):SetXPosition({0, -25})
    GUIManager:getWindowByName("Main-Cannon"):SetHeight({0, 60})
    GUIManager:getWindowByName("Main-Cannon"):SetWidth({0, 60})
    GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetHeight({0, 40})
    GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetWidth({0, 40})
end

function GMHelper:AimBot()
    AIM = not AIM
    LuaTimer:cancel(self.timer)
    UIHelper.showToast("AimBot Disabled")
    
    if AIM then
        UIHelper.showToast("AimBot Enabled")
        self.timer = LuaTimer:scheduleTimer(function()
            local me = PlayerManager:getClientPlayer()
            
            if me then
                local myPos = me.Player:getPosition()
                local players = PlayerManager:getPlayers()

                local closestDistance = math.huge
                local closestPlayer = nil

                for _, player in pairs(players) do
                    if player ~= me then
                        local playerPos = player:getPosition()
                        local distance = MathUtil:distanceSquare2d(playerPos, myPos)
                        
                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = player
                        end
                    end
                end

                if closestPlayer ~= nil and closestDistance < 500 then
                   
                    local health = math.min(closestPlayer:getHealth(), 50.0)
                    
                    local locationString = string.format("Closest player's health: %.1f", health)

                    
                    UIHelper.showToast(locationString)

                    local camera = SceneManager.Instance():getMainCamera()
                    local pos = camera:getPosition()
                    local dir = VectorUtil.sub3(closestPlayer:getPosition(), pos)

                    local yaw = math.atan2(dir.x, dir.z) / math.pi * -180
                    local calculate = math.sqrt(dir.x * dir.x + dir.z * dir.z)
                    local pitch = -math.atan2(dir.y, calculate) / math.pi * 180

                    me.Player.rotationYaw = yaw or 0
                    me.Player.rotationPitch = pitch or 0
                end
            end
        end, 1, 99999)
    end
end

function GMHelper:NewGUI()
    local buttonSpeed = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-speedButton")
        buttonSpeed:SetHorizontalAlignment(HorizontalAlignment.Center)
        buttonSpeed:SetVerticalAlignment(VerticalAlignment.Center)
        buttonSpeed:SetHeight({ 0, 60 })
        buttonSpeed:SetWidth({ 0, 100 })
        buttonSpeed:SetLevel(1)
        buttonSpeed:SetTouchable(true)
        GUISystem.Instance():GetRootWindow():AddChildWindow(buttonSpeed)
        buttonSpeed:SetText("Speed")
        buttonSpeed:SetBackgroundColor({0, 0, 0, 0.6})
        buttonSpeed:SetVisible(false)
        buttonSpeed:SetYPosition({0, -165})
        buttonSpeed:SetXPosition({0, 0})
    
        local buttonHitbox = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-hitboxButton")
        buttonHitbox:SetHorizontalAlignment(HorizontalAlignment.Center)
        buttonHitbox:SetVerticalAlignment(VerticalAlignment.Center)
        buttonHitbox:SetHeight({ 0, 60 })
        buttonHitbox:SetWidth({ 0, 100 })
        buttonHitbox:SetLevel(1)
        buttonHitbox:SetTouchable(true)
        GUISystem.Instance():GetRootWindow():AddChildWindow(buttonHitbox)
        buttonHitbox:SetText("Hitbox")
        buttonHitbox:SetBackgroundColor({0, 0, 0, 0.6})
        buttonHitbox:SetVisible(false)
        buttonHitbox:SetYPosition({0, -165})
        buttonHitbox:SetXPosition({0, -105})
    
        local buttonBlink = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-blinkButton")
        buttonBlink:SetHorizontalAlignment(HorizontalAlignment.Center)
        buttonBlink:SetVerticalAlignment(VerticalAlignment.Center)
        buttonBlink:SetHeight({ 0, 60 })
        buttonBlink:SetWidth({ 0, 100 })
        buttonBlink:SetLevel(1)
        buttonBlink:SetTouchable(true)
        GUISystem.Instance():GetRootWindow():AddChildWindow(buttonBlink)
        buttonBlink:SetText("Blink")
        buttonBlink:SetBackgroundColor({0, 0, 0, 0.6})
        buttonBlink:SetVisible(false)
        buttonBlink:SetYPosition({0, -165})
        buttonBlink:SetXPosition({0, -210})
        
        
          local buttonJetPack = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-JetPackButton")
    buttonJetPack:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonJetPack:SetVerticalAlignment(VerticalAlignment.Center)
    buttonJetPack:SetHeight({ 0, 60 })
    buttonJetPack:SetWidth({ 0, 100 })
    buttonJetPack:SetLevel(1)
    buttonJetPack:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonJetPack)
    buttonJetPack:SetText("JetPack")  -- Change the button text to "JetPack"
    buttonJetPack:SetBackgroundColor({0, 0, 0, 0.6})
    buttonJetPack:SetVisible(false)
    buttonJetPack:SetYPosition({0, -165})
    buttonJetPack:SetXPosition({0, -315})
    
          local buttonReach = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-ReachButton")
    buttonReach:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonReach:SetVerticalAlignment(VerticalAlignment.Center)
    buttonReach:SetHeight({ 0, 60 })
    buttonReach:SetWidth({ 0, 100 })
    buttonReach:SetLevel(1)
    buttonReach:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonReach)
    buttonReach:SetText("Reach")
    buttonReach:SetBackgroundColor({0, 0, 0, 0.6})
    buttonReach:SetVisible(false)
    buttonReach:SetYPosition({0, -165})
    buttonReach:SetXPosition({0, -420})

    local buttonFly = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-FlyButton")
    buttonFly:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonFly:SetVerticalAlignment(VerticalAlignment.Center)
    buttonFly:SetHeight({ 0, 60 })
    buttonFly:SetWidth({ 0, 100 })
    buttonFly:SetLevel(1)
    buttonFly:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonFly)
    buttonFly:SetText("Fly")
    buttonFly:SetBackgroundColor({0, 0, 0, 0.6})
    buttonFly:SetVisible(false)
    buttonFly:SetYPosition({0, -90})
    buttonFly:SetXPosition({0, 0})

    local buttonPlaceUp = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-PlaceUpButton")
    buttonPlaceUp:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonPlaceUp:SetVerticalAlignment(VerticalAlignment.Center)
    buttonPlaceUp:SetHeight({ 0, 60 })
    buttonPlaceUp:SetWidth({ 0, 100 })
    buttonPlaceUp:SetLevel(1)
    buttonPlaceUp:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonPlaceUp)
    buttonPlaceUp:SetText("PlaceUp")
    buttonPlaceUp:SetBackgroundColor({0, 0, 0, 0.6})
    buttonPlaceUp:SetVisible(false)
    buttonPlaceUp:SetYPosition({0, -90})
    buttonPlaceUp:SetXPosition({0, -105})

    local buttonNodelay = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-NodelayButton")
    buttonNodelay:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonNodelay:SetVerticalAlignment(VerticalAlignment.Center)
    buttonNodelay:SetHeight({ 0, 60 })
    buttonNodelay:SetWidth({ 0, 100 })
    buttonNodelay:SetLevel(1)
    buttonNodelay:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonNodelay)
    buttonNodelay:SetText("Nodelay")
    buttonNodelay:SetBackgroundColor({0, 0, 0, 0.6})
    buttonNodelay:SetVisible(false)
    buttonNodelay:SetYPosition({0, -90})
    buttonNodelay:SetXPosition({0, -210})

    local buttonNoFall = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-NoFallButton")
    buttonNoFall:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonNoFall:SetVerticalAlignment(VerticalAlignment.Center)
    buttonNoFall:SetHeight({ 0, 60 })
    buttonNoFall:SetWidth({ 0, 100 })
    buttonNoFall:SetLevel(1)
    buttonNoFall:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonNoFall)
    buttonNoFall:SetText("NoFall")
    buttonNoFall:SetBackgroundColor({0, 0, 0, 0.6})
    buttonNoFall:SetVisible(false)
    buttonNoFall:SetYPosition({0, -90})
    buttonNoFall:SetXPosition({0, -315})

    local buttonAttack = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-AttackButton")
    buttonAttack:SetHorizontalAlignment(HorizontalAlignment.Center)
    buttonAttack:SetVerticalAlignment(VerticalAlignment.Center)
    buttonAttack:SetHeight({ 0, 75 })
    buttonAttack:SetWidth({ 0, 150 })
    buttonAttack:SetLevel(1)
    buttonAttack:SetTouchable(true)
    GUISystem.Instance():GetRootWindow():AddChildWindow(buttonAttack)
    buttonAttack:SetText("AttackButton")
    buttonAttack:SetBackgroundColor({0, 0, 0, 0.6})
    buttonAttack:SetVisible(false)
    buttonAttack:SetYPosition({0, -90})
    buttonAttack:SetXPosition({0, -450})

    local btnSpeed = false
    local btnHitbox = false
    local btnBlink = false
    local btnJetPack = false
    local btnReach = false
    local btnFly = false
    local btnPlaceUp = false
    local btnNodelay = false
    local btnNoFall = false
    local btnAttack = false

    buttonSpeed:registerEvent(GUIEvent.ButtonClick, function()
        btnSpeed = not btnSpeed
        if btnSpeed then
            PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(2000)
            buttonSpeed:SetBackgroundColor({0, 1, 0, 0.6})
           SoundUtil.playSound(7)
        else
            PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(1)
            buttonSpeed:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)
    
    
    buttonHitbox:registerEvent(GUIEvent.ButtonClick, function()
        btnHitbox = not btnHitbox
        local players = PlayerManager:getPlayers()
        for _, player in pairs(players) do
            local entity = player.Player
            if player ~= PlayerManager:getClientPlayer() then
                if btnHitbox then
                    entity.height = 2.5
                    entity.width = 5
                    entity.length = 5
                else
                    entity.height = 1.8
                    entity.width = 0.6
                    entity.length = 0.6
                end
            end
        end
        if btnHitbox then
            ClientHelper.putFloatPrefs("EntityReachDistance", 4)
            buttonHitbox:SetBackgroundColor({0, 1, 0, 0.6})
            SoundUtil.playSound(7)
        else
            buttonHitbox:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)
    

    buttonBlink:registerEvent(GUIEvent.ButtonClick, function()
        btnBlink = not btnBlink
        if btnBlink then
        
        
       SoundUtil.playSound(7)
            ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
            buttonBlink:SetBackgroundColor({0, 1, 0, 0.6})
        else
            ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
            buttonBlink:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)
    
    buttonJetPack:registerEvent(GUIEvent.ButtonClick, function()
        btnJetPack = not btnJetPack
        if not self.timer then
        local JetPack = true
    
        self.timer = LuaTimer:scheduleTimer(function()
          local yaw = PlayerManager:getClientPlayer().Player:getYaw()
          local pitch = PlayerManager:getClientPlayer().Player:getPitch()
    
          local yawRadians = math.rad(yaw)
          local pitchRadians = math.rad(pitch)
    
          local speed = 2
          local x = -speed * math.cos(pitchRadians) * math.sin(yawRadians)
          local y = -speed * math.sin(pitchRadians)
          local z = speed * math.cos(pitchRadians) * math.cos(yawRadians)
    
          local velocity = VectorUtil.newVector3(x, y, z)
          PlayerManager:getClientPlayer().Player:setVelocity(velocity)
        end, 5, 200000)
    
        JetPack = not JetPack
      else
        LuaTimer:cancel(self.timer)
        self.timer = nil
      end
        if btnJetPack then
            buttonJetPack:SetBackgroundColor({0, 1, 0, 0.6})
            SoundUtil.playSound(7)
        else
            buttonJetPack:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)
    
    buttonReach:registerEvent(GUIEvent.ButtonClick, function()
        btnReach = not btnReach
        if btnReach then
            ClientHelper.putFloatPrefs("EntityReachDistance", 6.5)
            ClientHelper.putFloatPrefs("BlockReachDistance", 999)
            buttonReach:SetBackgroundColor({0, 1, 0, 0.6})
           SoundUtil.playSound(7)
        else
            ClientHelper.putFloatPrefs("EntityReachDistance", 4)
            ClientHelper.putFloatPrefs("BlockReachDistance", 6)
            buttonReach:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)

    buttonFly:registerEvent(GUIEvent.ButtonClick, function()
        btnFly = not btnFly
        if btnFly then
            ClientHelper.putBoolPrefs("EnableDoubleJumps", true)
            buttonFly:SetBackgroundColor({0, 1, 0, 0.6})
           SoundUtil.playSound(7)
        else
            ClientHelper.putBoolPrefs("EnableDoubleJumps", false)
            buttonFly:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)

    buttonPlaceUp:registerEvent(GUIEvent.ButtonClick, function()
        btnPlaceUp = not btnPlaceUp
        if btnPlaceUp then
            ClientHelper.putIntPrefs("QuicklyBuildBlockNum", 10)
            buttonPlaceUp:SetBackgroundColor({0, 1, 0, 0.6})
           SoundUtil.playSound(7)
        else
            ClientHelper.putIntPrefs("QuicklyBuildBlockNum", 1)
            buttonPlaceUp:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end)
    
    buttonNodelay:registerEvent(GUIEvent.ButtonClick, function()
        btnNodelay = not btnNodelay
        if btnNodelay then
            ClientHelper.putBoolPrefs("BanClickCD", true)
            buttonNodelay:SetBackgroundColor({0, 1, 0, 0.6})
           SoundUtil.playSound(7)
        else
            ClientHelper.putBoolPrefs("BanClickCD", false)
            buttonNodelay:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end) 

    buttonNoFall:registerEvent(GUIEvent.ButtonClick, function()
        btnNoFall = not btnNoFall
        if btnNoFall then
            ClientHelper.putIntPrefs("SprintLimitCheck", 7)
            buttonNoFall:SetBackgroundColor({0, 1, 0, 0.6})
           SoundUtil.playSound(7)
        else
            ClientHelper.putIntPrefs("SprintLimitCheck", 0)
            buttonNoFall:SetBackgroundColor({0, 0, 0, 0.6})
            SoundUtil.playSound(70)
        end
    end) 

    buttonAttack:registerEvent(GUIEvent.ButtonClick, function()
        btnAttack = not btnAttack
        if btnAttack then
        GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(true)
        buttonAttack:SetBackgroundColor({0, 1, 0, 0.6})
        SoundUtil.playSound(7)
        else
        GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(false)
        buttonAttack:SetBackgroundColor({0, 0, 0, 0.6})
        SoundUtil.playSound(70)
        end
    end) 

    CenterToastg2 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-xuy2")
     CenterToastg2:SetHorizontalAlignment(HorizontalAlignment.Center)
     CenterToastg2:SetVerticalAlignment(VerticalAlignment.Center)
            --CenterToastg:SetTextHorzAlign(HorizontalAlignment.Center)
            --CenterToastg:SetTextVertAlign(VerticalAlignment.Center)
            CenterToastg2:SetHeight({ 0, 50 })
            CenterToastg2:SetWidth({ 0, 100 })
            CenterToastg2:SetLevel(1)
            CenterToastg2:SetTouchable(true)
            GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg2)
            CenterToastg2:SetText("skibidi")
           CenterToastg2:SetBackgroundColor({0, 0, 0, 0.6})
            CenterToastg2:SetVisible(true)
            CenterToastg2:SetYPosition({0, -165})
            CenterToastg2:SetXPosition({0, 585})
          CenterToastg2:registerEvent(GUIEvent.ButtonClick, function()
          A = not A 
          buttonSpeed:SetVisible(false)
          buttonBlink:SetVisible(false)
          buttonHitbox:SetVisible(false)
          buttonReach:SetVisible(false)
          buttonJetPack:SetVisible(false)
          buttonFly:SetVisible(false)
          buttonPlaceUp:SetVisible(false)
          buttonNodelay:SetVisible(false)
          buttonNoFall:SetVisible(false)
          buttonAttack:SetVisible(false)
          if A then
          buttonJetPack:SetVisible(true)
          buttonSpeed:SetVisible(true)
          buttonBlink:SetVisible(true)
          buttonHitbox:SetVisible(true)
          buttonReach:SetVisible(true)
          buttonFly:SetVisible(true)
          buttonPlaceUp:SetVisible(true)
          buttonNodelay:SetVisible(true)
          buttonNoFall:SetVisible(true)
          buttonAttack:SetVisible(true)
        end
    end)

CenterToastg2 = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-GM1")
 CenterToastg2:SetHorizontalAlignment(HorizontalAlignment.Center)
 CenterToastg2:SetVerticalAlignment(VerticalAlignment.Center)
        --CenterToastg:SetTextHorzAlign(HorizontalAlignment.Center)
        --CenterToastg:SetTextVertAlign(VerticalAlignment.Center)
        CenterToastg2:SetHeight({ 0, 70 })
        CenterToastg2:SetWidth({ 0, 70 })
        CenterToastg2:SetTouchable(true)
        
        GUISystem.Instance():GetRootWindow():AddChildWindow(CenterToastg2)
        CenterToastg2:SetVisible(true)
        CenterToastg2:SetYPosition({0, -65})
        CenterToastg2:SetXPosition({0, 385})
        CenterToastg2:SetNormalImage("set:gui_inventory_icon.json image:icon_bookrack")
        CenterToastg2:SetPushedImage("set:gui_inventory_icon.json image:icon_bookrack")
              
    
      CenterToastg2:registerEvent(GUIEvent.TouchMove, function()
      timer.cipka = LuaTimer:scheduleTimer(function()
         if not Blockman.Instance().m_gameSettings:isMouseMoving() then
           local mousePos = Blockman.Instance().m_gameSettings:getMousePos()
            CenterToastg2:SetXPosition({0, mousePos.x / 1.5 - 640 })
            CenterToastg2:SetYPosition({0, mousePos.y / 1.5 - 355 })
         end
      end,5,250) end)
      CenterToastg2:registerEvent(GUIEvent.ButtonClick, function()
      isTest = true
      GUIGMControlPanel:show()
      LuaTimer:scheduleTimer(function()
      
      end, 5, 100)
      isTest = false
end)
local buttonfpsping = GUIManager:createGUIWindow(GUIType.Button, "GUIRoot-fpspingbutton")
buttonfpsping:SetHorizontalAlignment(HorizontalAlignment.Center)
buttonfpsping:SetVerticalAlignment(VerticalAlignment.Center)
buttonfpsping:SetHeight({ 0, 45 })
buttonfpsping:SetWidth({ 0, 160 })
buttonfpsping:SetLevel(1)
buttonfpsping:SetTouchable(false)
GUISystem.Instance():GetRootWindow():AddChildWindow(buttonfpsping)
LuaTimer:scheduleTimer(function()
buttonfpsping:SetText("Fps: ".. Root.Instance():getFPS().." Ping: ".. ClientNetwork.Instance():getRaknetPing())
end, 1, 999999)
buttonfpsping:SetBackgroundColor({0, 0, 0, 0.4})
buttonfpsping:SetVisible(true)
buttonfpsping:SetYPosition({0, 325})
buttonfpsping:SetXPosition({0, 535})


end
      

function GMHelper:SetYPos()
    GMHelper:openInput({ "" }, function(YPos)
        if CenterToastg2 then
        CenterToastg2:SetYPosition({0, YPos})
    end
    end)
end

function GMHelper:SetXPos()
   GMHelper:openInput({ "" }, function(XPos)
        if CenterToastg2 then
        CenterToastg2:SetXPosition({0, XPos})
    end
    end)
end


function GMHelper:HitBox()
   GMHelper:openInput({ "height", "width", "lenght" }, function(Num1, Num2, Num3)
   local players = PlayerManager:getPlayers()
      for _, player in pairs(players) do
        local entity = player.Player

         if player ~= PlayerManager:getClientPlayer() then
             entity.height = Num1
             entity.width = Num2
             entity.lenght = Num3
          end
      end
end)
end

function GMHelper:HitBoxButton()
    GUIManager:getWindowByName("Main-Parachute"):registerEvent(GUIEvent.ButtonClick, function()
    AIM = not AIM
    LuaTimer:cancel(self.ja)
    UIHelper.showToast("^565F5FAimBot Disabled")
    
    if AIM then
        UIHelper.showToast("^565F5FAimBot Enabled")
       
        self.ja = LuaTimer:scheduleTimer(function()
            local me = PlayerManager:getClientPlayer()
            
            if me then
                local myPos = me.Player:getPosition()
                local players = PlayerManager:getPlayers()

                local closestDistance = math.huge
                local closestPlayer = nil

                for _, player in pairs(players) do
                    if player ~= me then
                        local playerPos = player:getPosition()
                        local distance = MathUtil:distanceSquare2d(playerPos, myPos)
                        
                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = player
                        end
                    end
                end

                if closestPlayer ~= nil and closestDistance < 500 then             
                    local health = math.min(closestPlayer:getHealth(), 50.0)
                    local locationString = string.format("^565F5FClosest player's health: %.1f", health)

                    
                    UIHelper.showToast(locationString)

                    local camera = SceneManager.Instance():getMainCamera()
                    local pos = camera:getPosition()
                    local dir = VectorUtil.sub3(closestPlayer:getPosition(), pos)

                    local yaw = math.atan2(dir.x, dir.z) / math.pi * -180
                    local calculate = math.sqrt(dir.x * dir.x + dir.z * dir.z)
                    local pitch = -math.atan2(dir.y +1.5, calculate) / math.pi * 180

                    me.Player.rotationYaw = yaw or 0
                    me.Player.rotationPitch = pitch or 0
                    CGame.Instance():handleTouchClick(650,400)
                end
            end
        end, 1, 99999)
    end
end)
GUIManager:getWindowByName("Main-BuildWar-Block"):registerEvent(GUIEvent.ButtonClick, function()
local win = PlayerManager:getClientPlayer()
    if win and win.Player then
        local pitch = win.Player:getPitch()
        local yaw = win.Player:getYaw()

        local pitchRad = pitch * math.pi / 180
        local yawRad = yaw * math.pi / 180

        -- Zamiana znaków dla pitch i yaw
        speed = 3
        local x = -speed * math.cos(pitchRad) * math.sin(yawRad)
        local y = -speed * math.sin(pitchRad)
        local z = speed * math.cos(pitchRad) * math.cos(yawRad)

        local newPos = VectorUtil.newVector3(x, y, z)
        win.Player:setVelocity(newPos)
        SoundUtil.playSound(313)
    end
end)
end


function GMHelper:ShowHealthBar()
    LuaTimer:scheduleTimer(function()
        local players = PlayerManager:getPlayers()
        local healthColors = {
            ["0"] = "▢FFFF0000",   -- черный цвет для мертвого игрока
            ["5"] = "▢FFFF3300",   -- оранжевый цвет
            ["10"] = "▢FFFF6600",
            ["15"] = "▢FF66FF00",
            ["20"] = "▢FF00FF00",
            -- добавьте остальные цвета здесь
        }
        local maxPlayers = 20
        local healthBar = ""

        for i = 1, maxPlayers do
            local player = players[i]
            local color = healthColors["0"] -- устанавливаем черный цвет по умолчанию

            if player then
                local health = player:getHealth()

                for h = 20, 0, -5 do -- начинаем с 20 и уменьшаемся на 5
                    if health >= h then
                        color = healthColors[tostring(h)]
                        break
                    end
                end
            end

            healthBar = healthBar .. (color or healthColors["0"]) .. "♥️" -- используем оператор "или" для предотвращения ошибки, если переменная color равна nil
        end

        MsgSender.sendTopTips(1, healthBar)
    end, 10, -1)
end

function GMHelper:testHui()
    local colors = {
        0xFFFF0000, -- Красный
        0xFFFF8000, -- Оранжевый
        0xFFFFFF00, -- Желтый
        0xFF00FF00, -- Зеленый
        0xFF00FFFF, -- Голубой
        0xFF0000FF, -- Синий
        0xFF8000FF  -- Фиолетовый
    }
    local currentIndex = 1

    -- Функция для формирования цветной строки "X: / Y: / Z:"
    local function getRainbowPositionString(pos)
        local positionString = string.format("X: %.2f / Y: %.2f / Z: %.2f", pos.x, pos.y, pos.z)
        local positionStringLength = #positionString
        local rainbowString = {}

        -- Применяем разные цвета к каждой букве в строке
        for i=1, positionStringLength do
            rainbowString[i] = colors[currentIndex]
            currentIndex = currentIndex < #colors and currentIndex + 1 or 1
        end

        -- Создаем окончательный цветной текст
        local assembledText = ""
        for i=1, #rainbowString do
            assembledText = assembledText .. "▢" .. string.format("%X", rainbowString[i]) .. string.sub(positionString, i, i)
        end

        -- Сдвигаем цвета для следующего интервала.
        local lastColor = table.remove(rainbowString, #rainbowString)
        table.insert(rainbowString, 1, lastColor)
        return assembledText
    end

    LuaTimer:scheduleTimer(function()
        local me = PlayerManager:getClientPlayer()
        if me then
            local myPos = me.Player:getPosition()
            local players = PlayerManager:getPlayers()

            local closestDistance = math.huge
            local closestPlayer = nil
            local nearestDistance = math.huge
            local nearestPlayer = nil

            -- Находим ближайшего игрока и игрока, находящегося на минимальном расстоянии
            for _, player in pairs(players) do
                if player ~= me then
                    local playerPos = player:getPosition()
                    local distance = MathUtil:distanceSquare2d(playerPos, myPos)
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                    if distance < nearestDistance then
                        nearestDistance = distance
                        nearestPlayer = player
                    end
                end
            end

            if closestPlayer ~= nil and closestDistance < 10 then -- Проверяем, что есть ближайший игрок и он находится на расстоянии менее 10 блоков
                local health = math.min(closestPlayer:getHealth(), 50.0) -- Получаем текущее здоровье и ограничиваем его до максимального значения 50.0
                local sexString = closestPlayer:getSex() == 1 and "▢FF00FFFF██▢FFFFFFFF" or "▢FFFF1B89██▢FFFFFFFF"
                local locationString = string.format("%s ¦ %.1f ▢FFFF0000♥️▢FFFFFFFF ¦ %s ¦ %s", closestPlayer.name, health, sexString, getRainbowPositionString(closestPlayer:getPosition()))
                UIHelper.showToast(locationString)
            end

            if nearestPlayer ~= nil then
                local distanceString = string.format("Ты находишься на расстоянии от ближайшего игрока на %.1f блоков", nearestDistance)
                MsgSender.sendCenterTips(1, string.format(" \nDistance: %.1f blocks\n \n\n%s", nearestDistance, closestPlayer.userId))
            end
        end
    end, 100, -1)
end

function GMHelper:GUIPositionX()
    GMHelper:openInput({ "" }, function(Number)
    GUIManager:getWindowByName("Main-Jump"):SetXPosition({0, Number})
    end)
end

function GMHelper:GUIPositionY()
    GMHelper:openInput({ "" }, function(Number)
    GUIManager:getWindowByName("Main-JumpControls"):SetYPosition({0, Number})
    end)
end


function GMHelper:BlockReach()
    GMHelper:openInput({ "" }, function(Number)
    ClientHelper.putFloatPrefs("BlockReachDistance", Number)
    end)
end

function GMHelper:AttackReach()
    GMHelper:openInput({ "" }, function(Number)
    ClientHelper.putFloatPrefs("EntityReachDistance", Number)
    end)
end

function GMHelper:SpamChat()
    A = not A
    LuaTimer:cancel(self.timer)
    UIHelper.showToast("Disabled")
    if A then
    GMHelper:openInput({ "" }, function(wiadomosc)
    self.timer = LuaTimer:scheduleTimer(function()
    GUIManager:getWindowByName("Chat-Input-Box"):SetProperty("Text", wiadomosc)
    end, 5, 1000000)
    end)
    UIHelper.showToast("Enabled") 
    end
end


function GMHelper:GUIButton()
   local A = false

   GUIManager:getWindowByName("Main-Cannon"):registerEvent(GUIEvent.ButtonClick, function()
      A = not A
      local player = PlayerManager:getClientPlayer().Player

      if A then
         local moveDir = VectorUtil.newVector3(0.0, 1.35, 0.0)
         player:setAllowFlying(true)
         player:setFlying(true)
         player:setSpeedAdditionLevel(2000)
         player:moveEntity(moveDir)
      else
         player:setSpeedAdditionLevel(1)
         player:setAllowFlying(false)
         player:setFlying(false)
      end
   end)
end

function GMHelper:LockBodyRotation()
    PlayerManager:getClientPlayer().Player:setDead(true)
end


function GMHelper:setYaw(yawNum, Sub)
    if Sub then
        PlayerManager:getClientPlayer().Player.rotationYaw = PlayerManager:getClientPlayer().Player.rotationYaw - yawNum
        return
    end
    PlayerManager:getClientPlayer().Player.rotationYaw = PlayerManager:getClientPlayer().Player.rotationYaw + yawNum
end

function GMHelper:setYaw()
   GMHelper:openInput({ "" }, function(Number)
        PlayerManager:getClientPlayer().Player.rotationYaw = Number
        UIHelper.showToast("^565F5FChanged")
   end)
end

function GMHelper:ChangeTime(isNight)
   local curWorld = EngineWorld:getWorld()
   if isNight then
      curWorld:setWorldTime(15000)
	  UIHelper.showToast("^00FF00Now Night!")
      return
   end
   curWorld:setWorldTime(6000)
   UIHelper.showToast("^00FF00Now Day!")
   end
   
function GMHelper:SetTime()
   GMHelper:openInput({ "" }, function(Number)
        local curWorld = EngineWorld:getWorld()
		curWorld:setWorldTime(Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end

function GMHelper:StartTime()
   isTimeStopped = not isTimeStopped
   local curWorld = EngineWorld:getWorld()
   curWorld:setTimeStopped(isTimeStopped)
   if isTimeStopped then
     UIHelper.showToast("^FF0000Start/Stop Time: disabled!")
     return
   end
   UIHelper.showToast("^00FF00Start/Stop Time: enabled!")
end

function GMHelper:getConfig()
   MsgSender.sendMsg("Time:" .. tostring(ModsConfig.time))
   MsgSender.sendMsg("Show pos:" .. tostring(ModsConfig.showPos))
   MsgSender.sendMsg("Hp warn:" .. tostring(ModsConfig.lhwarn))
   MsgSender.sendMsg("Hp warn level:" .. tostring(ModsConfig.hpwarn))
   MsgSender.sendMsg("Hide player names:" .. tostring(ModsConfig.hpn))
end





function GMHelper:addHpLvl(amount, sub)
  if sub then
    if ModsConfig.hpwarn == 0 then
	return
    end
    ModsConfig.hpwarn = ModsConfig.hpwarn - 1
    MsgSender.sendMsg("Hp warn level:" .. tostring(ModsConfig.hpwarn))
    return
  end
  if ModsConfig.hpwarn == PlayerManager:getClientPlayer().Player:getHealth() then
    return
  end
  ModsConfig.hpwarn = ModsConfig.hpwarn + 1
  MsgSender.sendMsg("Hp warn level:" .. tostring(ModsConfig.hpwarn))
end



---@param player SBasePlayer
function GMHelper:addGMPlayer(player, isAllPlayer)
    if not isClient then
        return
    end
    if isAllPlayer then
        for _, c_player in pairs(PlayerManager:getPlayers()) do
            c_player:sendPacket({ pid = "openGMHelper" })
            table.insert(GmIds, c_player.userId)
        end
    else
        local players = PlayerManager:getPlayers()
        local minDis = 99999999
        local player = PlayerManager:getClientPlayer().Player
        ---@type SBasePlayer
        local nearestPlayer
        for _, c_player in pairs(players) do
            local distance = MathUtil:distanceSquare3d(c_player:getPosition(), player:getPosition())
            if minDis > distance and c_player ~= player then
                minDis = distance
                nearestPlayer = c_player
            end
        end
        if nearestPlayer and not PlayerManager:isAIPlayer(nearestPlayer) then
            nearestPlayer:sendPacket({ pid = "openGMHelper" })
            table.insert(GmIds, nearestPlayer.userId)
        end
    end
        GUIGMControlPanel:hide()
end

function GMHelper:openCommonPacketDebug()
    CommonDataEvents.isDebug = true
end

function GMHelper:closeCommonPacketDebug()
    CommonDataEvenpisDebug = false
end

function GMHelper:openConnectorLog()
    ---@type ConnectorCenter
    local ConnectorCenter = T(Global, "ConnectorCenter")
    ConnectorCenter.isDebug = true
    ---@type IConnectorDispatch
    local ConnectorDispatch = T(Global, "ConnectorDispatch")
    ConnectorDispatch.isDebug = true
end

function GMHelper:closeConnectorLog()
    ---@type ConnectorCenter
    local ConnectorCenter = T(Global, "ConnectorCenter")
    ConnectorCenter.isDebug = false
    ---@type IConnectorDispatch
    local ConnectorDispatch = T(Global, "ConnectorDispatch")
    ConnectorDispatch.isDebug = false
end

function GMHelper:sendTestConnectorMsg(type)
    local data = {}
    data.a = 1
    data.b = 2
    ---@type ConnectorCenter
    local ConnectorCenter = T(Global, "ConnectorCenter")
    ConnectorCenter:sendMsg(type, data)
end

function GMHelper:SetEnabledRenderFrameTimer(value)
    PerformanceStatistics.SetEnabledRenderFrameTimer(value)
    GUIGMControlPanel:hide()
end

function GMHelper:updateAllShaders()
    Blockman.Instance().m_gameSettings:updateAllShaders()
    GUIGMControlPanel:hide()
end

function GMHelper:setNeedMonitorShader()
    Blockman.Instance().m_gameSettings:setNeedMonitorShader(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setDrawCallDisabled()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setDrawCallDisabled(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setMinimumGeometry()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setMinimumGeometry(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setColorBlendDisabled()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setColorBlendDisabled(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setZTestDisabled()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setZTestDisabled(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setZWriteDisabled()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setZWriteDisabled(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setUseSmallTexture()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setUseSmallTexture(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setUseSmallViewport()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setUseSmallViewport(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setUseSmallVBO()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setUseSmallVBO(true)
    GUIGMControlPanel:hide()
end

function GMHelper:setClearColorDisabled()
    PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    RenderExperimentSwitch.Instance():setClearColorDisabled(true)
    GUIGMControlPanel:hide()
end

function GMHelper:DisableGraphicAPI()
    Blockman.disableGraphicAPI()
end

function GMHelper:DisableGraphicAPIAndTestCPU()
    GUIGMControlPanel:hide()
    LuaTimer:schedule(function()
        Blockman.disableGraphicAPI()
        PerformanceStatistics.SetCPUTimerEnabled(true)
        PerformanceStatistics.SetGPUTimerEnabled(false)
        LuaTimer:schedule(function()
            PerformanceStatistics.PrintResults(30)
        end, 5100)
    end, 200)

end

function GMHelper:FunctionOFF()
    Off = 10000
    UIHelper.showToast("^00FF00本栏持续运行功能中断")
    end
    
    function GMHelper:FunctionON()
    Off = 0
    UIHelper.showToast("^FF0000需要持续运行的功能可重新开启")
    end



function GMHelper:DisableGraphicAPIAndTestGPU()
    GUIGMControlPanel:hide()
    LuaTimer:schedule(function()
        Blockman.disableGraphicAPI()
        PerformanceStatistics.SetCPUTimerEnabled(false)
        PerformanceStatistics.SetGPUTimerEnabled(true)
        LuaTimer:schedule(function()
            PerformanceStatistics.PrintResults(30)
        end, 5100)
    end, 200)
end

function GMHelper:DisableGraphicAPIAndDrawCallTest()
    GUIGMControlPanel:hide()
    LuaTimer:schedule(function()
        Blockman.disableGraphicAPI()
        PerformanceStatistics.SetEnabledRenderFrameTimer(true)
    end, 200)
end

function GMHelper:openScreenRecord()
    local names = { "Main-PoleControl-Move", "Main-PoleControl", "Main-FlyingControls", "Main-Fly" }
    local window = GUISystem.Instance():GetRootWindow()
    window:SetXPosition({ 0, 10000 })
    local Main = GUIManager:getWindowByName("Main")
    local count = Main:GetChildCount()
    for i = 1, count do
        local child = Main:GetChildByIndex(i - 1)
        local name = child:GetName()
        if not TableUtil.tableContain(names, name) then
            child:SetXPosition({ 0, 10000 })
            child:SetYPosition({ 0, 10000 })
        end
    end
    ClientHelper.putFloatPrefs("MainControlKeyAlphaNormal", 0)
    ClientHelper.putFloatPrefs("MainControlKeyAlphaPress", 0)
    GUIManager:getWindowByName("Main-Fly"):SetProperty("NormalImage", "")
    GUIManager:getWindowByName("Main-Fly"):SetProperty("PushedImage", "")
    GUIManager:getWindowByName("Main-PoleControl-BG"):SetProperty("ImageName", "")
    GUIManager:getWindowByName("Main-PoleControl-Center"):SetProperty("ImageName", "")
    GUIManager:getWindowByName("Main-Up"):SetProperty("ImageName", "")
    GUIManager:getWindowByName("Main-Drop"):SetProperty("ImageName", "")
    GUIManager:getWindowByName("Main-Down"):SetProperty("ImageName", "")
    GUIManager:getWindowByName("Main-Break-Block-Progress-Nor"):SetProperty("ImageName", "")
    GUIManager:getWindowByName("Main-Break-Block-Progress-Pre"):SetProperty("ImageName", "")
    Main:SetXPosition({ 0, -10000 })
    ClientHelper.putBoolPrefs("RenderHeadText", false)
    PlayerManager:getClientPlayer().Player:setActorInvisible(true)
end

function GMHelper:changeLuaHotUpdate(update)
    startLuaHotUpdate()
    HU.CanUpdate = update
end

function GMHelper:changeOpenEventDialog(isOpen)
    GUIGMMain:changeOpenEventDialog(isOpen)
end

function GMHelper:showUserRegion()
    UIHelper.showToast("游戏大区=" .. Game:getRegionId()
            .. "   玩家区域=" .. Game:getUserRegion())
end

---@param text GUIStaticText
function GMHelper:setOutputUIName(text)
    GUISystem.Instance():SetOutputUIName(not GUISystem.Instance():IsOutputUIName())
    text:SetText("打印UI(" .. (GUISystem.Instance():IsOutputUIName() and "开)" or "关)"))
end

function GMHelper:Pizda()
    local server = ts.create()
    local port = 10524  -- Wybierz port na którym serwer będzie nasłuchiwać

    ts.listen(server, "192.168.31.34", port)
       local sock = ts.accept(server)  
local client = ts.newserver(sock)
          
    UIHelper.showToast("Success")
end



function GMHelper:setGlobalShowText()
    Root.Instance():setShowText(not Root.Instance():isShowText())
end

function GMHelper:Respawn()
   PacketSender:getSender():sendRebirth()
end

function GMHelper:JetPack()
  if not self.timer then
    local JetPack = true

    self.timer = LuaTimer:scheduleTimer(function()
      local yaw = PlayerManager:getClientPlayer().Player:getYaw()
      local pitch = PlayerManager:getClientPlayer().Player:getPitch()

      local yawRadians = math.rad(yaw)
      local pitchRadians = math.rad(pitch)

      local speed = 1.5
      local x = -speed * math.cos(pitchRadians) * math.sin(yawRadians)
      local y = -speed * math.sin(pitchRadians)
      local z = speed * math.cos(pitchRadians) * math.cos(yawRadians)

      local velocity = VectorUtil.newVector3(x, y, z)
      PlayerManager:getClientPlayer().Player:setVelocity(velocity)
    end, 5, 200000)

    JetPack = not JetPack
  else
    LuaTimer:cancel(self.timer)
    self.timer = nil
  end
end
    




function GMHelper:copyClientLog()
    if Platform.isWindow() then
        return
    end
    local path = Root.Instance():getWriteablePath() .. "client.log"
    local file = io.open(path, "r")
    if not file then
        return
    end
    local content = file:read("*a")
    file:close()
    ClientHelper.onSetClipboard(content)
    UIHelper.showToast("拷贝成功，请粘贴到钉钉上自动生成文件发送到群里")
end

function GMHelper:sendConnectorChatMsg(msgCount)
    if isClient or isStaging then
        ---@type ChatService
        local ChatService = T(Global, "ChatService")
        for i = 1, msgCount do
            ChatService:sendMsgToLangGroup(Define.ChatMsgType.TextMsg, { content = "Test:" .. i })
        end
    end
end

function GMHelper:queryBoolKey()
    GMHelper:openInput({ "" }, function(key)
        CustomDialog.builder()
                    .setContentText(key .. "=" .. tostring(ClientHelper.getBoolForKey(key)))
                    .setHideLeftButton()
                    .show()
        GUIGMControlPanel:hide()
    end)
end

function GMHelper:queryStringKey()
    GMHelper:openInput({ "" }, function(key)
        CustomDialog.builder()
                    .setContentText(key .. "=" .. ClientHelper.getStringForKey(key))
                    .setHideLeftButton()
                    .setRightText("复制到粘贴板")
                    .setRightClickListener(function()
            ClientHelper.onSetClipboard(ClientHelper.getStringForKey(key))
            UIHelper.showToast("复制成功")
        end)
                    .show()
        GUIGMControlPanel:hide()
    end)
end

function GMHelper:makeGmButtonTran()
    GUIGMMain:setTransparent()
end

function GMHelper:setRenderMainScreenSeparate(enable)
    Root.Instance():setRenderMainScreenSeparate(enable)
end

function GMHelper:setEnableMergeBlock(enable)
    Root.Instance():setEnableMergeBlock(true)
    UIHelper.showToast("1")
end

function GMHelper:AnvilToObj()
    local centerPos = VectorUtil.newVector3()
    local chunkWidth = 32
    AnvilToObj.doTranslate(centerPos, chunkWidth)
end

function GMHelper:inTheAirCheat()
    LuaTimer:scheduleTimer(function()
        local moveDir = VectorUtil.newVector3(0.0, 3.0, 0.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    end, 5, 20)
end

function GMHelper:GoTO10BlocksDown()
    LuaTimer:scheduleTimer(function()
        local moveDir = VectorUtil.newVector3(0.0, 0.0, 1.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    end, 5, 20)
end

function GMHelper:GoTO10Blocks()
    LuaTimer:scheduleTimer(function()
        local moveDir = VectorUtil.newVector3(1.0, 0.0, 0.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    end, 5, 20)
end

function GMHelper:testModiyScript()
    ClientHttpRequest.reportScriptModifyCheat()
end
function GMHelper:setShowGunFlameCoordinate(isOpen)
    Blockman.Instance():setShowGunFlameCoordinate(isOpen)
    if isOpen then
        GUIGMControlPanel:setBackgroundColor(Color.TRANS)
    else
        GUIGMControlPanel:setBackgroundColor({ 0, 0, 0, 0.784314 })
    end
end

function GMHelper:changeGunFlameParam(key, value)
    ClientHelper.putFloatPrefs(key, ClientHelper.getFloatPrefs(key) + value)
end

function GMHelper:copyShowGunFlameParam(view)
    local front = ClientHelper.getFloatPrefs("GunFlameFrontOff" .. view)
    local right = ClientHelper.getFloatPrefs("GunFlameRightOff" .. view)
    local down = ClientHelper.getFloatPrefs("GunFlameDownOff" .. view)
    local scale = ClientHelper.getFloatPrefs("GunFlameScale" .. view)
    front = math.floor(front * 100) / 100
    right = math.floor(right * 100) / 100
    down = math.floor(down * 100) / 100
    scale = math.floor(scale * 100) / 100
    local param = front .. "#" .. right .. "#" .. down .. "#" .. scale
    ClientHelper.onSetClipboard(param)
    UIHelper.showToast("拷贝成功")
end

function GMHelper:testinValidEffect()
    local templateName = "01_face_boy.mesh"
    local position = VectorUtil.newVector3(100.0, 10.0, 100.0)
    WorldEffectManager.Instance():addSimpleEffect(templateName, position, 1, 1, 1, 1, 1)
    UIHelper.showToast("测试 非法 特效 完成")
end

function GMHelper:BedWarsBypass()
  ClientHelper.putIntPrefs("ClientHelper.RunLimitCheck",5)
	UIHelper.showToast("^FF00EESuccess")
end

function GMHelper:outputItemLangFile()
    if not isClient then
        return
    end
    local items = {}
    for id = 1, 6000 do
        local item = Item.getItemById(id)
        if item then
            local lang = Lang:getItemName(id, 0)
            if lang == "" then
                lang = item:getUnlocalizedName()
            end
            items[tostring(id)] = lang
        end
    end
    local file = io.open(GameType .. "_item_name.json", "w")
    file:write(json.encode(items))
    file:close()
end

function GMHelper:MyLoveFly(text)
   A = not A
    ClientHelper.putBoolPrefs("EnableDoubleJumps", true)
   if A then
	UIHelper.showToast("^00FF00FLy ON")
     return
   end
    ClientHelper.putBoolPrefs("EnableDoubleJumps", false)
	UIHelper.showToast("^FF0000FLy OFF")
end

function GMHelper:GUISkyblockTest1()
    UIHelper.showGameGUILayout("GUIChristmas", 1)
	GUIGMControlPanel:hide()
end

function GMHelper:Night()
   HostApi.setSky("fanxing")
end

function GMHelper:Day()
   HostApi.setSky("Qing")
end

function GMHelper:Evening()
   HostApi.setSky("Wanxia")
end

function GMHelper:Nightserver()
    HostApi.setSky("fanxing")
 end
 
 function GMHelper:Dayserver()
    HostApi.setSky("Qing")
 end
 
 function GMHelper:Eveningserver()
    HostApi.setSky("Wanxia")
 end

function GMHelper:RunScript()
   GMHelper:openInput({""}, function(command)
   pcall(load(command))
   end)
end


function GMHelper:GUISkyblockTest2()
    UIHelper.showGameGUILayout("GUIGameTool")
	GUIGMControlPanel:hide()
end

function GMHelper:GUISkyblockTest3()
    UIHelper.showGameGUILayout("GUIRewardDetail", self.rewardId)
	GUIGMControlPanel:hide()
end

function GMHelper:Reach()
   A = not A
    ClientHelper.putFloatPrefs("BlockReachDistance", 1000000)
	ClientHelper.putFloatPrefs("EntityReachDistance", 1000)
   if A then
	UIHelper.showToast("^00FF00REACH ON")
     return
   end
    ClientHelper.putFloatPrefs("BlockReachDistance", 10)
	ClientHelper.putFloatPrefs("EntityReachDistance", 10)
	UIHelper.showToast("^00FF00REACH OFF")
end

function GMHelper:ViewBobbing()
   A = not A
    ClientHelper.putBoolPrefs("IsViewBobbing", false)
   if A then
	UIHelper.showToast("^FF0000ViewBobbing: OFF")
     return
   end
    ClientHelper.putBoolPrefs("IsViewBobbing", true)
	UIHelper.showToast("^00FF00ViewBobbing: ON")
end

function GMHelper:BlockmanCollision()
   A = not A
	ClientHelper.putBoolPrefs("IsCreatureCollision", true)
    ClientHelper.putBoolPrefs("IsBlockmanCollision", true)
   if A then
	UIHelper.showToast("^00FF00BlockmanCollision: ON")
     return
   end
    ClientHelper.putBoolPrefs("IsBlockmanCollision", false)
	UIHelper.showToast("^FF0000BlockmanCollision: OFF")
	ClientHelper.putBoolPrefs("IsCreatureCollision", false)
end

function GMHelper:RenderWorld()
   GMHelper:openInput({ "" }, function(Number)
        ClientHelper.putIntPrefs("BlockRenderDistance", Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end


local function getHitPointInfo()
    local camera = SceneManager.Instance():getMainCamera()
    local mousePos = Blockman.Instance().m_gameSettings:getMousePos()

    local pos = camera:getPosition()
    local dir = camera:getDirection()
    local real 
    local hitInfo = HitInfo.new()
    local ray = Ray.new(pos, dir)
    camera:getCameraRay(ray, mousePos)
    local selfPos = PlayerManager:getClientPlayer().Player:getPosition()
    local y = selfPos.y - 1.6
    local plane = Plane.new(VectorUtil.UNIT_Y, -y)
    ray:hitPlane(plane, real, hitInfo)

    hitInfo.hitPos = VectorUtil.newVector3(hitInfo.hitPos.x, hitInfo.hitPos.y+2, hitInfo.hitPos.z)
    return hitInfo
end

function GMHelper:Ezee()

end

function GMHelper:TpClick()


        Listener.registerCallBack(CEvents.ClickToBlockEvent, function(event)
            local pos = event
            nigga = PlayerManager:getClientPlayer().Player
            nigga:setPosition(VectorUtil.newVector3(pos.x + 0.4, pos.y + 3, pos.z + 0.4))    
        end)
        UIHelper.showToast("Sucess")
        GUIGMControlPanel:hide()
end

function GMHelper:Fog()
   A = not A
    ClientHelper.putBoolPrefs("DisableFog", true)
   if A then
	UIHelper.showToast("^FF0000Fog Disabled!")
     return
   end
    ClientHelper.putBoolPrefs("DisableFog", false)
	UIHelper.showToast("^00FF00Fog Enabled!")
end

function GMHelper:WWE_Camera()
   A = not A
    ClientHelper.putBoolPrefs("IsSeparateCamera", true)
   if A then
	UIHelper.showToast("^00FF00SeparateCamera: Enabled")
     return
   end
    ClientHelper.putBoolPrefs("IsSeparateCamera", false)
	UIHelper.showToast("^FF0000SeparateCamera: Disabled")
end

function GMHelper:ResetXD()
    ClientHelper.putStringPrefs("RunSkillName", "run")
	GUIGMControlPanel:hide()
end

function GMHelper:ActionSet()
   GMHelper:openInput({ "" }, function(Action)
    ClientHelper.putStringPrefs("RunSkillName", Action)
    end)
end

function GMHelper:WalkSMG()
    ClientHelper.putStringPrefs("RunSkillName", "smg_walk")
	GUIGMControlPanel:hide()
end

function GMHelper:SneakXD()
    ClientHelper.putStringPrefs("RunSkillName", "sneak")
	GUIGMControlPanel:hide()
end

function GMHelper:SitXD()
    ClientHelper.putStringPrefs("RunSkillName", "sit1")
	GUIGMControlPanel:hide()
end

function GMHelper:SitXD2()
    ClientHelper.putStringPrefs("RunSkillName", "sit2")
	GUIGMControlPanel:hide()
end

function GMHelper:SitXD3()
    ClientHelper.putStringPrefs("RunSkillName", "sit3")
	GUIGMControlPanel:hide()
end

function GMHelper:rideDragonXD()
    ClientHelper.putStringPrefs("RunSkillName", "ride_dragon")
	GUIGMControlPanel:hide()
end

function GMHelper:SwimXD()
    ClientHelper.putStringPrefs("RunSkillName", "swim")
	GUIGMControlPanel:hide()
end

function GMHelper:ArmSpeed()
   GMHelper:openInput({ "" }, function(Number)
        ClientHelper.putIntPrefs("ArmSwingAnimationEnd", Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end

function GMHelper:CameraFunct()
   GMHelper:openInput({ "" }, function(Number)
        ClientHelper.putFloatPrefs("ThirdPersonDistance", Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end

function GMHelper:CloudsOFF()
    ClientHelper.putBoolPrefs("DisableRenderClouds", true)
	UIHelper.showToast("^FF0000Clouds Stop")
	GUIGMControlPanel:hide()
end

function GMHelper:BowSpeed()
	ClientHelper.putFloatPrefs("BowPullingSpeedMultiplier", 1000)
	ClientHelper.putFloatPrefs("BowPullingFOVMultiplier", 0)
	UIHelper.showToast("^00FF00BowSpeed:ON")
	GUIGMControlPanel:hide()
end

function GMHelper:HeadText()
   A = not A
   ClientHelper.putBoolPrefs("RenderHeadText", true)
   if A then
	UIHelper.showToast("^00FF00Head text render now ON")
     return
   end
   ClientHelper.putBoolPrefs("RenderHeadText", false)
	UIHelper.showToast("^FF0000Head text render now OFF")
end

function GMHelper:changePlayerActor(sex)
    if isGameStart then
        if sex == 1 then
            ClientHelper.putStringPrefs("BoyActorName", "boy.actor")
            ClientHelper.putStringPrefs("GirlActorName", "boy.actor")
        else
            ClientHelper.putStringPrefs("BoyActorName", "girl.actor")
            ClientHelper.putStringPrefs("GirlActorName", "girl.actor")
        end
    else
        if sex == 1 then
            ClientHelper.putStringPrefs("BoyActorName", "boy.actor")
            ClientHelper.putStringPrefs("GirlActorName", "boy.actor")
        else
            ClientHelper.putStringPrefs("BoyActorName", "girl.actor")
            ClientHelper.putStringPrefs("GirlActorName", "girl.actor")
        end
    end
    local players = PlayerManager:getPlayers()
    for _, player in pairs(players) do
        if player.Player then
            player.Player.m_isPeopleActor = false
            EngineWorld:restorePlayerActor(player)
        end
    end
	UIHelper.showToast("^00FF00Success!")
	GUIGMControlPanel:hide()
end
--destroyAllEntityActor()
function GMHelper:BanClickCD(text)
   A = not A
    ClientHelper.putBoolPrefs("banClickCD", true)
   if A then
	UIHelper.showToast("^FF0000done, bedwars click: 0FF")
     return
   end
    ClientHelper.putBoolPrefs("banClickCD", false)
	UIHelper.showToast("^00FF00done, bedwars click: 0N")
end

function GMHelper:ShowAllCobtrolXD()
    RootGuiLayout.Instance():showMainControl()
end

function GMHelper:PersonView()
   GMHelper:openInput({ "" }, function(Number)
        Blockman.Instance():setPersonView(Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end

function GMHelper:BreakParticles()
   GMHelper:openInput({ "" }, function(Number)
        ClientHelper.putIntPrefs("BlockDestroyEffectSize", Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end

function GMHelper:JailBreakBypass()
    RootGuiLayout.Instance():showMainControl()
	GUIGMControlPanel:hide()
end

function GMHelper:SpeedLineMode()
    local strength = 1
    local interval = 0.01
    Blockman.Instance().m_gameSettings:setPatternSpeedLine(strength, interval)
	UIHelper.showToast("^00FF00Speed Line = Enable!")
	GUIGMControlPanel:hide()
end

function GMHelper:SpeedLineModeDisable()
    local strength = 0
    local interval = 0
    Blockman.Instance().m_gameSettings:setPatternSpeedLine(strength, interval)
	UIHelper.showToast("^FF0000Speed Line = Disabled!")
	GUIGMControlPanel:hide()
end

function GMHelper:PatternTorchMode()
    local strength = 1
    Blockman.Instance().m_gameSettings:setPatternTorchStrength(strength)
	UIHelper.showToast("^00FF00PatternTorch = Enabled!")
	GUIGMControlPanel:hide()
end

function GMHelper:PatternTorchModeOFF()
    local strength = 0
    Blockman.Instance().m_gameSettings:setPatternTorchStrength(strength)
	UIHelper.showToast("^FF0000PatternTorch = Disabled!")
	GUIGMControlPanel:hide()
end

function GMHelper:CameraFlipModeRESET()
    Blockman.Instance().m_gameSettings:setFovSetting(1)
	GUIGMControlPanel:hide()
end

function GMHelper:CameraFlipModeON()
    Blockman.Instance().m_gameSettings:setFovSetting(90)
	GUIGMControlPanel:hide()
end

function GMHelper:Iikj(player)
    local pos = player:getPosition()
    pos.y = pos.y + 0.5
    local yaw = player:getYaw()
    player:teleportPosWithYaw(pos, yaw)
	GUIGMControlPanel:hide()
end

function GMHelper:GUItest1()
    MsgSender.sendMsg(10007, "IikjLol")
	MsgSender.sendMsg(10006, "IikjLol")
	MsgSender.sendMsg(10005, "IikjLol")
	MsgSender.sendMsg(10004, "IikjLol")
	MsgSender.sendMsg(10003, "IikjLol")
	MsgSender.sendMsg(10002, "IikjLol")
	MsgSender.sendMsg(10001, "IikjLol")
    MsgSender.sendMsg(10000, "IikjLol")
    MsgSender.sendMsg(1, "IikjLol")
end

function GMHelper:FastBreakBlockMode()
    ---设置轨道不渲染
    cBlockManager.cGetBlockById(66):setNeedRender(false)
    cBlockManager.cGetBlockById(253):setNeedRender(false)
    for blockId = 1, 40000 do
        local block = BlockManager.getBlockById(blockId)
        if block then
            block:setHardness(0)
	UIHelper.showToast("^00FF00Turned ON")
	GUIGMControlPanel:hide()
    end
	    end
end

function GMHelper:FlyDev()
    GUIManager:hideWindowByName("Main.binary")
    GUIManager:hideWindowByName("Main.json")
	GUIGMControlPanel:hide()
end

function GMHelper:HideHP()
    GUIManager:getWindowByName("ClientSetting-TabList"):SetVisible(true)
end

function GMHelper:ShowHP()
    GUIManager:getWindowByName("PlayerInfo-Health"):SetVisible(true)
end

function GMHelper:showHP()
    LuaTimer:scheduleTimer(function()
      local players = PlayerManager:getPlayers()
    
      for _, player in ipairs(players) do
        local entity = player.Player
    
        local showName = entity:getShowName()
        local curHp = math.floor(entity:getHealth() + 0.5)
    
        if self.lastShowHP == curHp and self.lastShowName == showName then
          return
        end
    
        self.lastShowHP = curHp
        local nameList = StringUtil.split(showName, "\n")
    
        if string.find(showName, "♥") then
          table.remove(nameList)
        end
    
        local hpText = "▢FFFFFFFF" .. tostring(curHp) .. "▢FFFF1F1F  ♥  "
        table.insert(nameList, hpText)
    
        self.lastShowName = table.concat(nameList, "\n")
        entity:setShowName(self.lastShowName)
      end
    
    
      end, 20, 9999999)
    end

function GMHelper:FlyDev2()
    for blockId = 1, 40000 do
        local block = BlockManager.getBlockById(blockId)
        if block then
    Blockman.Instance():setBloomEnable(true)
    Blockman.Instance():enableFullscreenBloom(true)
    Blockman.Instance():setBlockBloomOption(100)
    Blockman.Instance():setBloomIntensity(100)
    Blockman.Instance():setBloomSaturation(100)
    Blockman.Instance():setBloomThreshold(100)
	UIHelper.showToast("^00FF00Speed Break Block = 0")
	GUIGMControlPanel:hide()
end
end
end

function GMHelper:FlyDev3()
    GUIManager:showWindowByName("PlayerInventory-DesignationTab")
	GUIManager:getWindowByName("PlayerInventory-DesignationTab"):SetVisible(true)
	GUIManager:showWindowByName("PlayerInventory-MainInventoryTab")
	GUIManager:getWindowByName("PlayerInventory-MainInventoryTab"):SetVisible(true)
	GUIManager:getWindowByName("PlayerInventory-MainInventoryTab"):SetArea({ 1, 1 }, { 1, 0 }, { 0, 1 }, { 0, 1 })
	GUIManager:getWindowByName("PlayerInventory-DesignationTab"):SetArea({ 0, 0 }, { 0, 0 }, { 0.3, 0 }, { 0.3, 0 })
    GUIManager:getWindowByName("PlayerInventory-ToggleInventoryButton"):SetVisible(true)
	GUIManager:showWindowByName("PlayerInventory-ToggleInventoryButton")
	GUIGMControlPanel:hide()
end

function GMHelper:MyLocation()
    --wafex
        LuaTimer:scheduleTimer(function()
            local me = PlayerManager:getClientPlayer()
            if me then
                local myPos = me.Player:getPosition()
                local locationString2 = string.format("X = ▢FFFFA500%.2f▢FFFFFFFF / Y = ▢FFFFA500%.2f▢FFFFFFFF / Z = ▢FFFFA500%.2f▢FFFFFFFF", myPos.x, myPos.y, myPos.z)
                UIHelper.showToast(locationString2)
            end
        end, 500, -1)
    end

function GMHelper:Freecam()
    GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:TntTag()
    GUIManager:showWindowByName("Main-throwpot-Controls")
	GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:SetBobbing()
   GMHelper:openInput({ "" }, function(Number)
        ClientHelper.putFloatPrefs("PlayerBobbingScale", Number)
        UIHelper.showToast("^00FF00Changed")
   end)
end

function GMHelper:test200()
	MsgSender.sendMsg(Messages:gameResetTimeHint())
	GUIGMControlPanel:hide()
end



function GMHelper:test600()
	    local players = PlayerManager:getPlayers()
    for _, player in pairs(players) do
        if player.Player then
            player.Player.m_isPeopleActor = false
            EngineWorld:restorePlayerActor(player)
        end
    end
 	UIHelper.showToast("^00FF00yes")
	GUIGMControlPanel:hide()
end

function GMHelper:JustClick()
    LuaTimer:scheduleTimer(function()
        local moveDir = VectorUtil.newVector3(0.0, 30.0, 0.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    end, 5, 200000000000000000000000000000000000)
end

function GMHelper:JustClick2()
    LuaTimer:scheduleTimer(function()
        local moveDir = VectorUtil.newVector3(0.0, 300.0, 0.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    end, 5, 200000000000000000000000000000000000)
end

function GMHelper:OffChat()
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(false)
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(false)
end

function GMHelper:OnChat()
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(true)
	GUIManager:getWindowByName("Main-Chat-Message"):SetVisible(true)
end

function GMHelper:Noclip()
   A = not A
    for blockId = 1, 40000 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Noclip = true")
     return
   end
    for blockId = 1, 40000 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Noclip = false")
end

function GMHelper:NoclipOP()
   A = not A
    for blockId = 3, 133 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00TreasureHunterNoClip = Enabled")
     return
   end
    for blockId = 3, 133 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000TreasureHunterNoClip = Disabled")
end

function GMHelper:SetMaxFPS()
    GMHelper:openInput({""}, function(FPS)
        CGame.Instance():SetMaxFps(FPS)
    end)
end

function GMHelper:SetFOV()
    GMHelper:openInput({ "" }, function(data)
         Blockman.Instance().m_gameSettings:setFovSetting(data)
         UIHelper.showToast("success")
    end)
 end

function GMHelper:NoObsidian1()
   A = not A
    for blockId = 49, 50 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 49, 50 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoOakPlanks1()
   A = not A
    for blockId = 5, 6 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 5, 6 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoGlass1()
   A = not A
    for blockId = 94, 95 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 94, 95 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoEndStone1()
   A = not A
    for blockId = 120, 121 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 120, 121 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoWool1()
   A = not A
    for blockId = 1441, 1444 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 1441, 1444 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoBomb1()
   A = not A
    for blockId = 593, 594 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 593, 594 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoIDoor1()
   A = not A
    for blockId = 241, 242 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 241, 242 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end

function GMHelper:NoQuartz1()
   A = not A
    for blockId = 155, 156 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
		    end
   if A then
	UIHelper.showToast("^00FF00Enabled")
     return
   end
    for blockId = 155, 156 do
        local block = BlockManager.getBlockById(blockId)
        if block then
			block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
		    end
	UIHelper.showToast("^FF0000Disabled")
end


--[[function GMHelper:test2222()
    A = not A
    LuaTimer:scheduleTimerWithEnd(function()
    PlayerManager:getClientPlayer().Player:setGlide(true)
	end, 0.2, 900000000000000000000000)
   if A then
    LuaTimer:scheduleTimerWithEnd(function()
    PlayerManager:getClientPlayer().Player:setGlide(false)
	end, 0.2, 1)
end
end]]

function GMHelper:JumpHeight()
   GMHelper:openInput({ "" }, function(Number)
    local player = PlayerManager:getClientPlayer()
    if player and player.Player then
    player.Player:setFloatProperty("JumpHeight", Number)
	UIHelper.showToast("^00FF00Success")
end
end)
end

function GMHelper:addCurrencyCustom(player)
    GMHelper:openInput(player, { "100" }, function(currency)
        currency = tonumber(currency) or 0
        player:addCurrency(currency, "GM")
    end)
end

function GMHelper:GUIOpener()
   GMHelper:openInput({ ".json" }, function(Number)
   GUIManager:showWindowByName(Number)
   end)
end

function GMHelper:GUIViewOFF()
   GMHelper:openInput({ ".json" }, function(Number)
   GUIManager:hideWindowByName(Number)
   end)
end

function GMHelper:InsideGUI()
   GMHelper:openInput({ "", "" }, function(Number, Exe)
        GUIManager:getWindowByName(Number):SetVisible(Exe)
   end)
end

function GMHelper:ChangeNick()
   GMHelper:openInput({ "" }, function(Nick)
    PlayerManager:getClientPlayer().Player:setShowName(Nick)
    UIHelper.showToast("^FF00EENickNameChanged")
   end)
end

function GMHelper:LongJump()
    LuaTimer:scheduleTimer(function()
    PlayerManager:getClientPlayer().Player:setGlide(true)
	end, 0.2, 900000000000000000000000)
end

function GMHelper:AdvancedUp()
   GMHelper:openInput({ "" }, function(Num)
        local moveDir = VectorUtil.newVector3(0.0, Num, 0.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
end)
end

function GMHelper:AdvancedIn()
   GMHelper:openInput({ "" }, function(Num)
        local moveDir = VectorUtil.newVector3(Num, 0.0, 0.0)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
end)
end

function GMHelper:AdvancedOn()
   GMHelper:openInput({ "" }, function(Num)
        local moveDir = VectorUtil.newVector3(0.0, 0.0, Num)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
end)
end

function GMHelper:AdvancedDirect()
   GMHelper:openInput({ "", "", "" }, function(Num, Num2, Num3)
        local moveDir = VectorUtil.newVector3(Num, Num2, Num3)
        PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
end)
end

function GMHelper:tpPos()
   GMHelper:openInput({ "", "", "" }, function(Num, Num2, Num3)
   LuaTimer:scheduleTimer(function()
    local playerPos = VectorUtil.newVector3(Num, Num2, Num3)
    local moveDir = VectorUtil.newVector3(1.0, 10.0, 1.0)
    PlayerManager:getClientPlayer().Player:setPosition(playerPos)
    PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    end, 100, 1000000)
end) 
end

function GMHelper:HideHoldItem()
   A = not A
    PlayerManager:getClientPlayer():setHideHoldItem(true)
    UIHelper.showToast("^FF00EETrue")
	if A then
	PlayerManager:getClientPlayer():setHideHoldItem(false)
    UIHelper.showToast("^FF00EEFalse")
end
end

function GMHelper:DevFlyI()
  A = not A
    local player = PlayerManager:getClientPlayer()
    player.Player:setAllowFlying(false)
    player.Player:setFlying(false)
    PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(100)
    UIHelper.showToast("^FF00EEDisabled")
  if A then
    local moveDir = VectorUtil.newVector3(0.0, 1.35, 0.0)
    local player = PlayerManager:getClientPlayer()
    player.Player:setAllowFlying(true)
    player.Player:setFlying(true)
    PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(2000)
    PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
    UIHelper.showToast("^FF00EEEnabled")
  end
end

function GMHelper:SharpFly()
    A = not A
    ClientHelper.putBoolPrefs("DisableInertialFly", true)
    UIHelper.showToast("^FF00EE[ON] works when you have dev flight enabled")
	if A then
	ClientHelper.putBoolPrefs("DisableInertialFly", false)
    UIHelper.showToast("^FF00EE[OFF] works when you have dev flight enabled")
end
end

function GMHelper:WaterPush()
    A = not A
    local entity = PlayerManager:getClientPlayer().Player
    entity:setBoolProperty("ignoreWaterPush", true)
    UIHelper.showToast("^FF00EEON")
	if A then
    entity:setBoolProperty("ignoreWaterPush", false)
    UIHelper.showToast("^FF00EEOFF")
end
end

function GMHelper:changeScale()
   GMHelper:openInput({ "" }, function(Scale)
    local entity = PlayerManager:getClientPlayer().Player
    entity:setScale(Scale)
    UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:BlockOFF()
   GMHelper:openInput({ "" }, function(Numer)
   local blockId = Numer
   local block = BlockManager.getBlockById(blockId)
   block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
  end)
end

function GMHelper:BlockON()
   GMHelper:openInput({ "" }, function(Numer)
   local blockId = Numer
   local block = BlockManager.getBlockById(blockId)
   block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
  end)
end

function GMHelper:SpeedManager()
  GMHelper:openInput({ "" }, function(Number)
  PlayerManager:getClientPlayer().Player:setSpeedAdditionLevel(Number)
	UIHelper.showToast("^FF00EESuccess")
  end)
end

function GMHelper:SpeedUp()
    ClientHelper.putIntPrefs("SpeedAddMax", 20000000)
	UIHelper.showToast("^FF0000[DANGER]")
end

function GMHelper:XRayManagerON()
   GMHelper:openInput({ "erase this text and write block id" }, function(Numer)
    cBlockManager.cGetBlockById(Numer):setNeedRender(false)
	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:XRayManagerOFF()
   GMHelper:openInput({ "erase this text and write block id" }, function(Numer)
    cBlockManager.cGetBlockById(Numer):setNeedRender(true)
	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:OFFDARK()
    ---设置轨道不渲染
    cBlockManager.cGetBlockById(66):setNeedRender(false)
    cBlockManager.cGetBlockById(253):setNeedRender(false)
    for blockId = 1, 40000 do
        local block = BlockManager.getBlockById(blockId)
        if block then
            block:setLightValue(150, 150, 150)
	UIHelper.showToast("^00FF00Success")
	GUIGMControlPanel:hide()
    end
	    end
end

function GMHelper:SpawnNPC()
   GMHelper:openInput({ ".actor" }, function(actor)
    local pos = PlayerManager:getClientPlayer():getPosition()  
    local yaw = PlayerManager:getClientPlayer():getYaw()  
    EngineWorld:addActorNpc(pos, yaw, actor, function(entity)
end)
end)
end

function GMHelper:spawnCar()
   GMHelper:openInput({ "Car ID (erase this text and write carID)" }, function(ID)
  local pos = PlayerManager:getClientPlayer():getPosition() 
  Blockman.Instance():getWorld():addVehicle(pos, ID, 5)
	UIHelper.showToast("^00FFEECar Spawn Success")
end)
end

function GMHelper:TeleportByUID()
   GMHelper:openInput({ "id player" }, function(ID)
  local player = PlayerManager:getClientPlayer().Player
    local Dplayer = PlayerManager:getPlayerByUserId(ID)
    if Dplayer then
        player:setPosition(Dplayer:getPosition())
    end
end)
end

function GMHelper:ChangeActorForMe()
  local entity = PlayerManager:getClientPlayer().Player
  GMHelper:openInput({ ".actor" }, function(actor)
  Blockman.Instance():getWorld():changePlayerActor(entity, actor)
  Blockman.Instance():getWorld():changePlayerActor(entity, actor)
  entity.m_isPeopleActor = false
  EngineWorld:restorePlayerActor(entity)
  UIHelper.showToast("^00FFEESuccess")
end)
end

function GMHelper:AFKmode()
   A = not A
    PlayerManager:getClientPlayer().Player.m_rotateSpeed = 1
    UIHelper.showToast("^FF00EEStart")
	if A then
	PlayerManager:getClientPlayer().Player.m_rotateSpeed = 0
    UIHelper.showToast("^FF00EEStop")
end
end

function GMHelper:DevnoClip()
   A = not A
    PlayerManager:getClientPlayer().Player.noClip = true
    UIHelper.showToast("^FF00EETurned on")
   if A then
    PlayerManager:getClientPlayer().Player.noClip = false
    UIHelper.showToast("^FF00EETurned off")
end
end

function GMHelper:StepHeight()
   GMHelper:openInput({ "StepHeight Value" }, function(data)
    PlayerManager:getClientPlayer().Player.stepHeight = data
    UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:SpYaw()
   A = not A
    PlayerManager:getClientPlayer().Player.spYaw = true
    UIHelper.showToast("^FF00EEON")
  if A then
    PlayerManager:getClientPlayer().Player.spYaw = false
    UIHelper.showToast("^FF00EEOFF")    
end
end

function GMHelper:SpYawSet()
   GMHelper:openInput({ "" }, function(data)
    PlayerManager:getClientPlayer().Player.spYawRadian = data
    UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:HairSet()
   GMHelper:openInput({ "" }, function(Data)
    PlayerManager:getClientPlayer().Player.m_isEquipWing = true
    PlayerManager:getClientPlayer().Player.m_isClothesChange = true
    PlayerManager:getClientPlayer().Player.m_isClothesChanged = true
    UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:SetHideAndShowArmor()
   A = not A
   LogicSetting.Instance():setHideArmor(true)
    UIHelper.showToast("^FF00EEON")
  if A then
   LogicSetting.Instance():setHideArmor(false)
    UIHelper.showToast("^FF00EEOFF")
end
end

--  LogicSetting.Instance():setHideArmor(true)

    --entity.m_rotateSpeed = 0

function GMHelper:SettingLongjump()
   GMHelper:openInput({ "speedglide", "drop resistance" }, function(Num1, Num2)
  local player = PlayerManager:getClientPlayer().Player
    player.m_isGlide = true
      player.m_glideMoveAddition = Num1
          player.m_glideDropResistance = Num2
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:SetAlpha()
     GMHelper:openInput({ "Gui name", "alpha" }, function(GUI, Number)
  GUIManager:getWindowByName(GUI):SetAlpha(Number)
  UIHelper.showToast("^FF00EESuccess")
end)
end
--Region Clothes -- Start
function GMHelper:ChangeHair()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_hairID = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeFace()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_faceID = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeTops()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_topsID = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangePants()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_pantsID = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeShoes()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_shoesID = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeGlasses()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_glassesId = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeScarf()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_scarfId = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeWing()
   GMHelper:openInput({ "number" }, function(Kelg)
  local player = PlayerManager:getClientPlayer().Player
		player.m_outLooksChanged = true
		player.m_wingId = Kelg
  	UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeHat()
  GMHelper:openInput({ "number" }, function(sea)
  PlayerManager:getClientPlayer().Player.m_hatId = sea
  PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
  UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:ChangeDecHat()
  GMHelper:openInput({ "number" }, function(sea)
  PlayerManager:getClientPlayer().Player.m_decorate_hatId = sea
  PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
  UIHelper.showToast("^FF00EESuccess")
end)
end


function GMHelper:ChangeTail()
  GMHelper:openInput({ "number" }, function(sea)
  PlayerManager:getClientPlayer().Player.m_tailId = sea
  PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
  UIHelper.showToast("^FF00EESuccess")
end)
end


function GMHelper:ChangeBagI()
  GMHelper:openInput({ "number" }, function(sea)
  PlayerManager:getClientPlayer().Player.m_bagId = sea
  PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
  UIHelper.showToast("^FF00EESuccess")
end)
end


function GMHelper:ChangeCrown()
  GMHelper:openInput({ "" }, function(sea)
  PlayerManager:getClientPlayer().Player.m_crownId = sea
  PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
  UIHelper.showToast("^FF00EESuccess")
end)
end

function GMHelper:CreateGUIDEArrow()
  local sss = PlayerManager:getClientPlayer():getPosition() 
  PlayerManager:getClientPlayer().Player:addGuideArrow(sss)
  UIHelper.showToast("^FF00EESuccess")
end


function GMHelper:DelAllGUIDEArrow()
  PlayerManager:getClientPlayer().Player:deleteAllGuideArrow()
  UIHelper.showToast("^FF00EESuccess")
end





function GMHelper:SetUpBuild()
  GMHelper:openInput({ "" }, function(Savesta)
  ClientHelper.putIntPrefs("QuicklyBuildBlockNum", Savesta)
  UIHelper.showToast("^FF00EESuccess")
end)
end


function GMHelper:EasyWay()
    local inv = PlayerManager:getClientPlayer():getInventory()
    inv:removeAllItemFromHotBar()
    UIHelper.showToast("^FF00EESuccess")
end


function GMHelper:WatchMode()
  A = not A
  local moveDir = VectorUtil.newVector3(0.0, 1.35, 0.0)
  PlayerManager:getClientPlayer().Player:setAllowFlying(true)
  PlayerManager:getClientPlayer().Player:setFlying(true)
  PlayerManager:getClientPlayer().Player:setWatchMode(true)
  PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
  UIHelper.showToast("^FF00EEON")
  if A then
  PlayerManager:getClientPlayer().Player:setAllowFlying(false)
  PlayerManager:getClientPlayer().Player:setFlying(false)
  PlayerManager:getClientPlayer().Player:setWatchMode(false)
  UIHelper.showToast("^FF00EEOFF")
end
end

--End Region Clothes -- End
--Region INFO --
function GMHelper:ShowRegion()
    UIHelper.showToast("RegionID=" .. Game:getRegionId())
end

function GMHelper:GameID()
    UIHelper.showToast("GameID=" .. CGame.Instance():getGameType())
end

function GMHelper:LogInfo()
  local content = HostApi.getClientInfo()
  ClientHelper.onSetClipboard(content)
  UIHelper.showToast("^FF00EESuccess")
end

function GMHelper:GetAllInfoT()
    local players = PlayerManager:getPlayers()
    for _, player in pairs(players) do
    MsgSender.sendMsg("^FF0000INFO: " .. string.format("^FF0000UserName: %s {} ID: %s {} Gender: %s", player:getName(), player.userId, player.Player:getSex()))
end
end

function GMHelper:test2300()
   GMHelper:openInput({ "" }, function(Num1)
  local player = PlayerManager:getClientPlayer().Player
    player.length = Num1
		player.isCollidedHorizontally = true
    player.isCollidedVertically = true
    player.isCollided = true
end)
end

--233-2=215
--addChatMessage
function GMHelper:test1222()
  local player = PlayerManager:getClientPlayer().Player
		player.m_canBuildBlockQuickly = true
		player.m_quicklyBuildBlock = true
  	UIHelper.showToast("2:")
end
--x364 z240
-- REGION TEST --
function GMHelper:test2222()
  local player = PlayerManager:getClientPlayer().Player
    player.m_opacity = 0.2
  	UIHelper.showToast("1:")
end

function GMHelper:spawnCar()
   GMHelper:openInput({ "Car ID (erase this text and write carID)" }, function(ID)
  local pos = PlayerManager:getClientPlayer():getPosition() 
  local yaw = PlayerManager:getClientPlayer():getYaw() 
  Blockman.Instance():getWorld():addVehicle(pos, ID, yaw)
	UIHelper.showToast("^FF00EECar Spawn Success")
end)
end

function GMHelper:SpawnItem()
       GMHelper:openInput({ "ID", "Count" }, function(Id, Count)
  local position = PlayerManager:getClientPlayer():getPosition() 
  EngineWorld:addEntityItem(Id, Count, 0, 600, position, VectorUtil.ZERO)
end)
end

--1.1

function GMHelper:BlinkBW()
    A = not A
       ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
       UIHelper.showToast("^00FF6C ON")
    if A then 
       ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
       UIHelper.showToast("^00FF6C OFF")
    end
 end

function GMHelper:BlinkOP()
   A = not A
      ClientHelper.putBoolPrefs("SyncClientPositionToServer", true)
      UIHelper.showToast("Disabled")
   if A then 
      ClientHelper.putBoolPrefs("SyncClientPositionToServer", false)
      UIHelper.showToast("Enabled")
   end
end

function GMHelper:NoFall() -- NoFall
A = not A
ClientHelper.putIntPrefs("SprintLimitCheck", 7)
if A then
UIHelper.showToast("Enabled")
return
end
ClientHelper.putIntPrefs("SprintLimitCheck", 0)
UIHelper.showToast("Disabled")
end

function GMHelper:NoFallSet()
   GMHelper:openInput({ "TypeValue" }, function(Number)
        ClientHelper.putIntPrefs("SprintLimitCheck", Number)
        UIHelper.showToast("Done, now it will have like a protection")
   end)
end

function GMHelper:MineReset()
local playerPos = VectorUtil.newVector3(536, 2.78, -136)
local moveDir = VectorUtil.newVector3(0.0, 0.0, 0.0)
PlayerManager:getClientPlayer().Player:setPosition(playerPos)
PlayerManager:getClientPlayer().Player:moveEntity(moveDir)
end

function GMHelper:quickblock()
  GMHelper:openInput({ "" }, function(Number)
  ClientHelper.putIntPrefs("QuicklyBuildBlockNum",Number)
	UIHelper.showToast("^FF00EESuccess")
  end)
end

function GMHelper:startParachute()
  PlayerManager:getClientPlayer().Player:startParachute()
end

function GMHelper:FlyParachute()
local moveDir = VectorUtil.newVector3(0.0, 1.35, 0.0)
    local player = PlayerManager:getClientPlayer()
    player.Player:setAllowFlying(true)
    player.Player:setFlying(true)
    player.Player:moveEntity(moveDir)
     PlayerManager:getClientPlayer().Player:startParachute()
    UIHelper.showToast("^FF00EESuccess")
    end

function GMHelper:SetBlockToAir()
       GMHelper:openInput({ "block Position X", "block Position Y", "block Position Z" }, function(X, Y, Z)
        local blockPos = VectorUtil.newVector3(X, Y, Z)
    EngineWorld:setBlockToAir(blockPos)
end)
end

function GMHelper:SpawnBlock()
       GMHelper:openInput({ "" }, function(martin)
    local blockPos = PlayerManager:getClientPlayer():getPosition() 
    EngineWorld:setBlock(blockPos, martin)
end)
end

--1.2
function GMHelper:ChangeBlockTextures(texturePath)
    local isChange = GMHelper.blockTextures or false
    if not isChange then
        Blockman.Instance():changeBlockTextures("./package_02_32.zip")
        GMHelper.blockTextures = true
    else
        Blockman.Instance():changeBlockTextures("")
        GMHelper.blockTextures = false
    end
    if #texturePath > 0 then
        Blockman.Instance():changeBlockTextures("Media/Textures/package/" .. texturePath)
    else
        Blockman.Instance():changeBlockTextures("")
    end
    GUIGMControlPanel:hide()
end

function GMHelper:updateBedWarArrowSpeed()
    GMHelper:openInput({ "speed" }, function(data)
        local scale = tonumber(data) or 0

        PlayerManager:getClientPlayer().Player:setFloatProperty("ArrowSpeedScale", scale)

        PlayerManager:getClientPlayer():sendPacket({
            pid = "updateBedWarArrowSpeed",
            scale = scale,
        })
    end)
end

function GMHelper:Rvanka()
    LuaTimer:scheduleTimer(function()
             local player = PlayerManager:getClientPlayer().Player
             local entity = PlayerManager:getPlayers()       
             for _, entity in pairs(entity) do
                 if entity ~= player then
                 
                     LuaTimer:scheduleTimer(function()
                         local position = VectorUtil.newVector3(entity:getPosition().x, entity:getPosition().y + (tonumber(tostring(787-777),2)), entity:getPosition().z)
                         player:setPosition(position)
                     end, (tonumber(tostring(1787-777),2)), (tonumber(tostring(1111101777-777),2)))
                 end
             end
         end, (tonumber(tostring(1111101778-777),2)), -(tonumber(tostring(778-777),2)))
 end 

function GMHelper:Tracer()
    local player = PlayerManager:getClientPlayer()
    LuaTimer:scheduleTimer(function()
        PlayerManager:getClientPlayer().Player:deleteAllGuideArrow()
        local entity = PlayerManager:getPlayers()
        for _, c_player in pairs(entity) do
            if c_player ~= player then
                PlayerManager:getClientPlayer().Player:addGuideArrow(c_player:getPosition())
            end
        end
    end, (tonumber(tostring(111110877-_G["dumb"]),2)), -(tonumber(tostring(778-_G["dumb"]),2)))
end

function GMHelper:Scaffold()
--helped tarelka089s
    A = not A
    LuaTimer:cancel(self.timer)
    UIHelper.showToast("^00FF00Scaffold TurnOFF")
    if A then
    GMHelper:openInput({"BlockID"}, function(block)
    self.timer = LuaTimer:scheduleTimer(function()
    local pos = PlayerManager:getClientPlayer():getPosition() 
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 1), block)
    end, 0.15, -1)
    UIHelper.showToast("^00FF00Scaffold TurnON")
    end)
    end
    end
 
    function GMHelper:ShowAllButton()
        GUIManager:getWindowByName("Main-Fishing"):SetVisible(true)
        GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(true)
        GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(true)
        GUIManager:getWindowByName("Main-BuildWar-Block"):SetVisible(true)
        GUIManager:getWindowByName("Main-Parachute"):SetVisible(true)
        GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
    end


    function GMHelper:HideAllButton()
        GUIManager:getWindowByName("Main-Fishing"):SetVisible(false)
        GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(false)
        GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(false)
        GUIManager:getWindowByName("Main-BuildWar-Block"):SetVisible(false)
        GUIManager:getWindowByName("Main-Parachute"):SetVisible(false)
        GUIManager:getWindowByName("Main-Cannon"):SetVisible(false)
    end

    function GMHelper:ShowPlayersInfo()
        local players = PlayerManager:getPlayers()
        for _, player in pairs(players) do
            MsgSender.sendMsgs("[Player Info] " .. string.format("Username: %s | User ID: %s | Gender: %s", player:getName(), player.userId, player.Player:getSex()))
        end
    end

    function GMHelper:SpawnBlockToword()
        GMHelper:openInput({ "","","" }, function(martin,long,r)
        local yaw = PlayerManager:getClientPlayer().Player.rotationYaw
          local directions = {"东", "东南", "南", "西南", "西", "西北", "北", "东北"}
          
          -- 映射偏航角到0-360度范围
          yaw = yaw % 360
          if yaw < 0 then
              yaw = yaw + 360
          end
          
          -- 计算方位序号
          local directionIndex = math.floor((yaw + 22.5) / 45) % 8 + 1
          local blockPos = PlayerManager:getClientPlayer():getPosition()
          if directionIndex == 1 then
          for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+r, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end
          if directionIndex == 2 then
           for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+r-z, blockPos.y-2, blockPos.z+r+z)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end
          if directionIndex == 3 then
           for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x-z, blockPos.y-2, blockPos.z+r)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end 
          if directionIndex == 4 then
          for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x-z, blockPos.y-2, blockPos.z+r-z)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end  
          if directionIndex == 5 then
          for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+r, blockPos.y-2, blockPos.z-z)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end   
           if directionIndex == 6 then
           for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+r+z, blockPos.y-2, blockPos.z+r-z)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end  
           if directionIndex == 7 then
           for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+z, blockPos.y-2, blockPos.z+r)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end                                                                           
         if directionIndex == 8 then
         for r = -1*r, r, 1 do
          for z = 1, long, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+z, blockPos.y-2, blockPos.z+r+z)
                  EngineWorld:setBlock(blockPos, martin)
                  end
                  end
                  end              
        end)
      end
      
      function GMHelper:SpawnBlockTowordv1()
        local yaw = PlayerManager:getClientPlayer().Player.rotationYaw
          local directions = {"东", "东南", "南", "西南", "西", "西北", "北", "东北"}
          
          -- 映射偏航角到0-360度范围
          yaw = yaw % 360
          if yaw < 0 then
              yaw = yaw + 360
          end
          
          -- 计算方位序号
          local directionIndex = math.floor((yaw + 22.5) / 45) % 8 + 1
          local blockPos = PlayerManager:getClientPlayer():getPosition()
          if directionIndex == 1 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end
          if directionIndex == 2 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x-z, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end
          if directionIndex == 3 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x-z, blockPos.y-2, blockPos.z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end 
          if directionIndex == 4 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x-z, blockPos.y-2, blockPos.z-z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end  
          if directionIndex == 5 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x, blockPos.y-2, blockPos.z-z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end   
           if directionIndex == 6 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+z, blockPos.y-2, blockPos.z-z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end  
           if directionIndex == 7 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+z, blockPos.y-2, blockPos.z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end                                                                           
         if directionIndex == 8 then
          for z = 1, 100, 1 do
          local blockPos = VectorUtil.newVector3(blockPos.x+z, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(blockPos, 159)
                  end
                  end              
      end
      
      function GMHelper:SpawnBlockSize()
        GMHelper:openInput({ "","" }, function(martin,Size)
          local blockPos = PlayerManager:getClientPlayer():getPosition()
       for x = -1*Size, Size, 1 do
                for z = -1*Size, Size, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, martin)
               end
            end
        end)
      end
      
      function GMHelper:pingtai()
          local blockPos = PlayerManager:getClientPlayer():getPosition()
       for x = -1, 1, 1 do
                for z = -1, 1, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-5, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, 159)
               end
            end
      end
      
      
      
      function GMHelper:SpawnBlockfillSize()
        GMHelper:openInput({ "","","","","","","" }, function(long,height,weight,endx,endy,endz,martin)
          local blockPos = PlayerManager:getClientPlayer():getPosition()
       for x = long, endx, 1 do
                for z = weight, endz, 1 do
                  for y = height, endy, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y+y, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, martin)
                  end
               end
            end
        end)
      end
      
      
      function GMHelper:CloneBlocksMove()
             -- Array to store block data
          
          GMHelper:openInput({ "", "", "", "", "", "", "", "","" }, function(long, height, weight, endx, endy, endz, X, Y, Z)
          local     stepx, stepy, stepz  -- Declare the variables here
      
              if endx >= long then 
                  stepx = 1 
              else 
                  stepx = -1 
              end
      
              if endy >= height then 
                  stepy = 1 
              else 
                  stepy = -1 
              end
      
              if endz >= weight then 
                  stepz = 1 
              else 
                  stepz = -1 
              end
              
          local  blockPos = PlayerManager:getClientPlayer():getPosition()
       LX = long
       LZ = weight
              for x = long, endx, stepx do
                  for z = weight, endz, stepz do
                      for y = height, endy, stepy do
                          local newBlockPos = VectorUtil.newVector3(blockPos.x + x, blockPos.y + y, blockPos.z + z)
                           blockId = EngineWorld:getBlockId(newBlockPos)
                           blockMeta = EngineWorld:getBlockMeta(newBlockPos)
                           BlockPos = VectorUtil.newVector3(blockPos.x + x + X, blockPos.y + y + Y, blockPos.z + z + Z)
                          -- Store block data in array
                          table.insert(blocksM, { bx = BlockPos.x, by = BlockPos.y, bz = BlockPos.z, bid = blockId, bmeta = blockMeta })
                      end
                  end
              end
      --        self:AddBlocks(blocks)  -- Call AddBlocks method with array
          end)
      end
      
      
      function GMHelper:CloneBlocks()
             -- Array to store block data
          
          GMHelper:openInput({ "", "", "", "", "", "", "", "","" }, function(long, height, weight, endx, endy, endz, X, Y, Z)
          local     stepx, stepy, stepz  -- Declare the variables here
      
              if endx >= long then 
                  stepx = 1 
              else 
                  stepx = -1 
              end
      
              if endy >= height then 
                  stepy = 1 
              else 
                  stepy = -1 
              end
      
              if endz >= weight then 
                  stepz = 1 
              else 
                  stepz = -1 
              end
              
          local  blockPos = PlayerManager:getClientPlayer():getPosition()
              
              for x = long, endx, stepx do
                  for z = weight, endz, stepz do
                      for y = height, endy, stepy do
                          local newBlockPos = VectorUtil.newVector3(blockPos.x + x, blockPos.y + y, blockPos.z + z)
                           blockId = EngineWorld:getBlockId(newBlockPos)
                           blockMeta = EngineWorld:getBlockMeta(newBlockPos)
                           BlockPos = VectorUtil.newVector3(blockPos.x + x + X, blockPos.y + y + Y, blockPos.z + z + Z)
                          -- Store block data in array
                          table.insert(blocks, { bx = BlockPos.x, by = BlockPos.y, bz = BlockPos.z, bid = blockId, bmeta = blockMeta })
                      end
                  end
              end
      --        self:AddBlocks(blocks)  -- Call AddBlocks method with array
          end)
      end
      
      function GMHelper:AddBlocks()
          for i, blockData in ipairs(blocks) do
              local BLOCKPos = VectorUtil.newVector3(blockData.bx, blockData.by, blockData.bz)
             EngineWorld:setBlock(BLOCKPos, blockData.bid, blockData.bmeta)
          end
      end
      
      function GMHelper:AddBlocksMove()
      
          for i, blockData in ipairs(blocksM) do
           self = PlayerManager:getClientPlayer():getPosition()
      LXL = LX + i
      LZL = LZ + i
           BX = self.x - blockData.bx
       BY = self.y - blockData.by
       BZ = self.z - blockData.bz
       fbx = BX + blockData.bx +  LXL
       fbz = BZ + blockData.bz + LZL
      MsgSender.sendMsg("放置坐标x: "..fbx.."放置z  "..fbz.."计数: "..i)
               BLOCKPos = VectorUtil.newVector3(fbx, blockData.by, fbz)
             EngineWorld:setBlock(BLOCKPos, blockData.bid, blockData.bmeta)
          end
      end
      
      function GMHelper:SpawnBlockClone()
         GMHelper:openInput({ "","","","","","","","","" }, function(long,height,weight,endx,endy,endz,X,Y,Z)
          local stepx, stepy, stepz  -- Declare the variables here
      
          if endx >= long then 
            stepx = 1 
          else 
            stepx = -1 
          end
      
          if endy >= height then 
            stepy = 1 
          else 
            stepy = -1 
          end
      
          if endz >= weight then 
            stepz = 1 
          else 
            stepz = -1 
          end
          local blockPos = PlayerManager:getClientPlayer():getPosition()
       for x = long, endx, stepx do
                for z = weight, endz, stepz do
                  for y = height, endy, stepy do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y+y, blockPos.z+z)
              local martin = EngineWorld:getBlockId(newBlockPos)
              local Meta = EngineWorld:getBlockMeta(newBlockPos)
                  local BlockPos = VectorUtil.newVector3(blockPos.x+x+X, blockPos.y+y+Y, blockPos.z+z+Z)
                  EngineWorld:setBlock(BlockPos, martin, Meta)
                  end
               end
            end
        end)
      end
      
      function GMHelper:SpawnBlockNoclip()
          local blockPos = PlayerManager:getClientPlayer():getPosition()
          for x = -1 ,1, 1 do
                for z = -1, 1, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, 0)
                  end
               end
               ceshiv4()
             end
             
               function ceshiv4()
               local blockPos = PlayerManager:getClientPlayer():getPosition()
               if OFF<=9999 then
          LuaTimer:schedule(function()
       for x = -2 ,2, 1 do
                for z = -2, 2, 1 do
                  for y = -1, 0, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y+y, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, 0)
                  end
               end
            end
       ceshiv4()
          end, 10)
        end
      end
      function GMHelper:SpawnBlockOFF()
      OFF = 10000
      UIHelper.showToast("^00FF00连锁搭路已被禁用")
      end
      function GMHelper:SpawnBlockON()
      OFF = 0
      UIHelper.showToast("^FF0000连锁搭路已启用")
      end
       function GMHelper:SpawnBlocktimeSize()
               local blockPos = PlayerManager:getClientPlayer():getPosition()
               if OFF<=9999 then
          LuaTimer:schedule(function()
       for x = -2 ,2, 1 do
                for z = -2, 2, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, 0)
               end
            end
             for x = -1 ,1, 1 do
                for z = -1, 1, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, 159)
               end
            end
       GMHelper:SpawnBlocktimeSize()
          end, 10)
        end
      end
      
      function GMHelper:SpawnBlocktimeSize1()
        GMHelper:openInput({ "" , ""}, function(martin,Size)
        local blockPos = PlayerManager:getClientPlayer():getPosition() 
        count = 1
        ceshiv3(blockPos,martin,Size,count)
        end)
      end
      function ceshiv3()
        if count<=99900 then
          LuaTimer:schedule(function()
            local blockPos = PlayerManager:getClientPlayer():getPosition() 
            for x = -1*Size, Size, 1 do
                for z = -1*Size, Size, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, martin)
               end
            end
            count = count + 1
            ceshiv3(blockPos,martin,Size,count)
          end, 10)
        end
      end
      function ceshi(blockPos,martin,count)
        if count<=9999 and OFF==0 then
          LuaTimer:schedule(function()
            local blockPos = PlayerManager:getClientPlayer():getPosition() 
            local newBlockPosX = VectorUtil.newVector3(blockPos.x+1, blockPos.y-2, blockPos.z)
            local newBlockPosXC = VectorUtil.newVector3(blockPos.x-1, blockPos.y-2, blockPos.z)
            local newBlockPosZ = VectorUtil.newVector3(blockPos.x, blockPos.y-2, blockPos.z+1)
            local newBlockPosZC = VectorUtil.newVector3(blockPos.x, blockPos.y-2, blockPos.z-1)
            local newBlockPos = VectorUtil.newVector3(blockPos.x, blockPos.y-2, blockPos.z)
            EngineWorld:setBlock(newBlockPos, martin)
            EngineWorld:setBlock(newBlockPosX, martin)
            EngineWorld:setBlock(newBlockPosXC, martin)
            EngineWorld:setBlock(newBlockPosZ, martin)
            EngineWorld:setBlock(newBlockPosZC, martin)
            count = count + 1
            Count = 9999 - count
            UIHelper.showToast("剩余次数:"..Count)
            ceshi(blockPos,martin,count)
          end, 10)
        end
      end
      
      
      function ceshiv2(blockPos,martin,Size,count)
        if count<=99900 and OFF==0 then
          LuaTimer:schedule(function()
            local blockPos = PlayerManager:getClientPlayer():getPosition() 
            for x = -1*Size, Size, 1 do
                for z = -1*Size, Size, 1 do
                  local newBlockPos = VectorUtil.newVector3(blockPos.x+x, blockPos.y-2, blockPos.z+z)
                  EngineWorld:setBlock(newBlockPos, martin)
               end
            end
            count = count + 1
            Count = 99900 - count
            UIHelper.showToast("剩余次数:"..Count)
            ceshiv2(blockPos,martin,Size,count)
          end, 10)
        end
      end
      
      function GMHelper:SpawnCube()
        --wafex
            LuaTimer:scheduleTimer(function()
                local pos = PlayerManager:getClientPlayer():getPosition()
                local startX = pos.x - 1
                local startY = pos.y - 1
                local startZ = pos.z - 1
        
                for x = 0, 2 do
                    for y = 0, 2 do
                        for z = 0, 2 do
                            local blockPos = VectorUtil.newVector3(startX - x, startY + y, startZ + z)
                            EngineWorld:setBlock(blockPos, 3)
                        end
                    end
                end
            end, 100, -1)
        end
        
        function GMHelper:SpawnSphere()
        --wafex
            LuaTimer:scheduleTimer(function()
            local pos = PlayerManager:getClientPlayer():getPosition()
            local radius = 2 -- Радиус сферы
        
            for x = -radius, radius do
                for y = -radius, radius do
                    for z = -radius, radius do
                        local distance = math.sqrt(x * x + y * y + z * z)
                        if distance <= radius then
                            local blockPos = VectorUtil.newVector3(pos.x - x, pos.y - y, pos.z - z)
                            EngineWorld:setBlock(blockPos, 3)
                        end
                    end
                end
            end
            end, 100, -1)
        end
        
        function GMHelper:SpawnPyramid()
        --wafex
            LuaTimer:scheduleTimer(function()
            local pos = PlayerManager:getClientPlayer():getPosition()
            local size = 3 -- Размер пирамиды (3x3 или 4x4)
        
            for y = 0, size-1 do
                for x = -y, y do
                    for z = -y, y do
                        local blockPos = VectorUtil.newVector3(pos.x + x, pos.y + (size-1) - y, pos.z + z)
                        EngineWorld:setBlock(blockPos, 3)
                    end
                end
            end
            end, 100, -1)
        end
        
        function GMHelper:SpawnRhombus()
        --wafex
            LuaTimer:scheduleTimer(function()
                local pos = PlayerManager:getClientPlayer():getPosition()
                local size = 3 -- Размер ромба (базовый треугольник 3x3 или 4x4)
        
                -- Первый треугольник
                for y = 0, size-1 do
                    for x = -y, y do
                        for z = -y, y do
                            local blockPos = VectorUtil.newVector3(pos.x + x, pos.y + (size-1) - y, pos.z + z)
                            EngineWorld:setBlock(blockPos, 3)
                        end
                    end
                end
        
                -- Второй треугольник
                for y = 1, size-1 do
                    for x = -y+1, y-1 do
                        for z = -y+1, y-1 do
                            local blockPos = VectorUtil.newVector3(pos.x + x, pos.y + (size-1) + y, pos.z + z)
                            EngineWorld:setBlock(blockPos, 3)
                        end
                    end
                end
            end, 100, -1)
        end
        
        function GMHelper:ShowST()
           local blockId = 3
           local block = BlockManager.getBlockById(blockId)
           block:setBlockBounds(0.0, 0.0, 0.0, 1.0, 1.0, 1.0)
        end
        
        function GMHelper:HideST()
           local blockId = 3
           local block = BlockManager.getBlockById(blockId)
           block:setBlockBounds(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
        end
    
        GMSetting:addTab("AddProps")
        LuaTimer:schedule(function()
            for id = 1, 20000 do
                local item = Item.getItemById(id)
                if item then
                    local name = item:getUnlocalizedName() .. ".name"
                    local lang = Lang:getString(name)
                    if lang == name then
                        name = "item." .. string.gsub(item:getUnlocalizedName(), "item.", "") .. ".name"
                        lang = Lang:getString(name)
                        if lang == name then
                            lang = "Item:" .. tostring(id)
                        else
                            lang = lang .. "(" .. tostring(id) .. ")"
                        end
                    else
                        lang = lang .. "(" .. tostring(id) .. ")"
                    end
                    GMSetting:addItem("AddProps", lang, "server9283", id)
                end
            end
            GMSetting:addItem("AddProps", "", "")
            GMSetting:addItem("AddProps", "", "")
        end, 1000)
        function GMHelper:server9283(id)
        PlayerManager:getClientPlayer().Player:getInventory():addItemToInventory(Item.getItemById(id, 1, nil, nil), 1)
        end

        function GMHelper:ggg2228()
            A = not A
            LuaTimer:cancel(self.timer)
            UIHelper.showToast("^00FF00AutoClick OFF")
            if A then
                self.timer = LuaTimer:scheduleTimer(function()
                    CGame.Instance():handleTouchClick(2035, 621)
                    UIHelper.showToast("^00FF00AutoClick ON")
                end, 0.15, -1)
            end
        end

        function GMHelper:WarnTP()    
            A = not A
           LuaTimer:cancel(self.timer)
           UIHelper.showToast("^FF0000关闭")
           if A then
           GMHelper:openInput({ "" }, function(WarnHP)
           WarnHP = tonumber(WarnHP)
           self.timer = LuaTimer:scheduleTimer(function()
           local player = PlayerManager:getClientPlayer()
             local HP = player.Player:getHealth()
             if HP <= WarnHP then
               local playerPos = PlayerManager:getClientPlayer():getPosition()
               local playerPosN = VectorUtil.newVector3(playerPos.x,0,playerPos.z)
               player.Player:setPosition(playerPosN)
               PacketSender:getSender():sendRebirth()
             end
           end, 0.2, 900000000000000000000000)
           UIHelper.showToast("^00FF00开启")
           GUIGMControlPanel:hide()
           end)
        end
         end


        function GMHelper:SpamRespawn()
            GMHelper:openInput({ "" }, function(Number)
            
            for i = 1,Number do
            PacketSender:getSender():sendRebirth()
            end
            end)
            end


        function GMHelper:InstantRespawn()
            A = not A
            LuaTimer:cancel(ArdenPro)
            UIHelper.showToast("^FF0000OFF!")
            if A then
            ArdenPro = LuaTimer:scheduleTimer(function()
            PacketSender:getSender():sendRebirth()
            end, 0.15, -1)
            UIHelper.showToast("^00FF00ON!")
            end
        end

        function GMHelper:sndkkss()
            local txt = "suck my dick uwu."
                local btn = "I will suck it uwu"
                CustomDialog.builder()
                            .setContentText(txt)
                            .setRightText(btn)
                            .setTitleText(title)
                            .setHideLeftButton()
                            .setPanelSize(600, 450)
                            .show()
                            GUIGMControlPanel:hide()
            end

            function GMHelper:AdjustSpeedBasedOnDistance()
                --wafex
                    LuaTimer:scheduleTimer(function()
                        local me = PlayerManager:getClientPlayer()
                        local myPos = me.Player:getPosition()
                        local players = PlayerManager:getPlayers()
                
                        local closestDistance = math.huge
                        local closestPlayer = nil
                
                        -- Находим ближайшего игрока
                        for _, player in pairs(players) do
                            if player ~= me then
                                local playerPos = player:getPosition()
                                local distance = MathUtil:distanceSquare2d(playerPos, myPos)
                                if distance < closestDistance then
                                    closestDistance = distance
                                    closestPlayer = player
                                end
                            end
                        end
                        if closestPlayer ~= nil then
                            if closestDistance < 10 then
                                me.Player:setSpeedAdditionLevel(1)
                            else
                                me.Player:setSpeedAdditionLevel(100000)
                            end
                        end
                    end, 500, -1)
                end
            
function GMHelper:Reward()
    local player = PlayerManager:getClientPlayer()

    if player then
        player:sendPacket({
            pid = "onWatchAdSuccess",
            type = 1,
            params = 1
        })

        player:sendPacket({
            pid = "onClickVipRespawn"
        })
    end
end

function GMHelper:RainbowWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 27
    UIHelper.showToast("^00FF00Sucess")
  end
  
  function GMHelper:XLGoldWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 26
    UIHelper.showToast("^00FF00Sucess")
  end

  function GMHelper:IceWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 24
    UIHelper.showToast("^00FF00Sucess")
  end
  

  function GMHelper:FireWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 20
    UIHelper.showToast("^00FF00Sucess")
  end

  function GMHelper:YellowWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 19
    UIHelper.showToast("^00FF00Sucess")
  end

  function GMHelper:PinkWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 18
    UIHelper.showToast("^00FF00Sucess")
  end

  function GMHelper:ShareWings()
    PlayerManager:getClientPlayer().Player.m_outLooksChanged = true
    PlayerManager:getClientPlayer().Player.m_wingId = 17
    UIHelper.showToast("^00FF00Sucess")
  end

  function GMHelper:Rvanka2()
    LuaTimer:scheduleTimer(function()
             local player = PlayerManager:getClientPlayer().Player
             local entity = PlayerManager:getPlayers()       
             for _, entity in pairs(entity) do
                 MathUtil:distanceSquare2d(entity:getPosition(), player:getPosition())
                 if entity ~= player then
                 
                     LuaTimer:scheduleTimer(function()
                         local position = VectorUtil.newVector3(entity:getPosition().x, entity:getPosition().y + (tonumber(tostring(787-777),2)), entity:getPosition().z)
                         player:setPosition(position)
                     end, (tonumber(tostring(1787-777),2)), (tonumber(tostring(1111101777-777),2)))
                 end
             end
         end, (tonumber(tostring(1111101778-777),2)), -(tonumber(tostring(778-777),2)))
 end

 function GMHelper:checkLuaMemoryBegin()
    local mri = require "engine_base.debug.MemoryReferenceInfo"
    mri.m_cConfig.m_bAllMemoryRefFileAddTime = false
    local name = "mem_check_begin"
    collectgarbage("collect")
    mri.m_cMethods.DumpMemorySnapshot("./", name, -1)
end

function GMHelper:checkLuaMemoryEnd()

    local mri = require "engine_base.debug.MemoryReferenceInfo"
    mri.m_cConfig.m_bAllMemoryRefFileAddTime = false
    local name = "mem_check_end"
    --collectgarbage("collect")
    mri.m_cMethods.DumpMemorySnapshot("./", name, -1)
    mri.m_cMethods.DumpMemorySnapshotComparedFile("./", "Compared", -1,
            string.format("./LuaMemRefInfo-All-[%s].txt", "mem_check_begin"),
            string.format("./LuaMemRefInfo-All-[%s].txt", "mem_check_end"))

end

function GMHelper:outputAppDress()
    GMHelper:openInput({ "uid" }, function(uid)
        print(uid)
        WebService.GetPlayerDecoration(tonumber(uid) or 0, function(skins)
            LogUtil.logInfo("---------------------------------------userId:" .. uid)
            LogUtil.pv(skins)
        end)
    end)
end

function GMHelper:tpkill()
    local me = PlayerManager:getClientPlayer()
    local moveDir = VectorUtil.newVector3(1.0, 1.0, 1.0)
    LuaTimer:scheduleTimer(function()
        local others = PlayerManager:getPlayers()
        for _, c_player in pairs(others) do
            if c_player ~= me then            
                me.Player:setPosition(c_player:getPosition())
                me.Player:moveEntity(moveDir)
            end
        end
    end, 119, -1)
end

function GMHelper:telnetServer()
    if not Platform.isWindow() then
        return
    end
    local misc = require("misc")
    local debugport = require "engine_base.debug.DebugPort"
    misc.win_exec("telnet.exe", "127.0.0.1 " .. debugport.port, 1, 1, true)
end

function GMHelper:telnetClient()
    if not Platform.isWindow() then
        return
    end
    local misc = require("misc")
    local debugport = require "engine_base.debug.DebugPort"
    misc.win_exec("telnet.exe", "127.0.0.1 " .. debugport.port, nil, nil, true)
end

function GMHelper:CustomPid()
    GMHelper:openInput({""}, function(packet)
    PlayerManager:getClientPlayer():sendPacket({pid = packet})
    end)
end

function GMHelper:PermaFly()
    local player = PlayerManager:getClientPlayer()
    player.sendPacket({pid="onClickVipRespawn"})
end


GMSetting:addTab("^E91A1AViewButtons")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1Show", "ShowAllButton")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1Hide", "HideAllButton")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideParachute", "HideParachute")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1ShowParachute", "ShowParachute")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideCannon", "HideCannon")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1ShowCannon", "ShowCannon")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1ShowRaket", "ShowRaket")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideRaket", "HideRaket")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1ShowFreeCam", "ShowFreeCam")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideFreeCam", "HideFreeCam")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1ShowTNTTag", "Showthrowpot")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideTNTTag", "Hidethrowpot")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1ShowFishing", "ShowFishing")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideFishing", "HideFishing")
GMSetting:addItem("^E91A1AViewButtons", "^2D9FE1HideFishing", "HideFishing")


function GMHelper:HideParachute()
    GUIManager:getWindowByName("Main-Parachute"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:ShowParachute()
    GUIManager:getWindowByName("Main-Parachute"):SetVisible(false)
	GUIGMControlPanel:hide()
end

function GMHelper:HideCannon()
    GUIManager:getWindowByName("Main-Cannon"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:ShowCannon()
    GUIManager:getWindowByName("Main-Cannon"):SetVisible(false)
	GUIGMControlPanel:hide()
end

function GMHelper:HideRaket()
    GUIManager:getWindowByName("Main-BuildWar-Block"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:ShowRaket()
    GUIManager:getWindowByName("Main-BuildWar-Block"):SetVisible(false)
	GUIGMControlPanel:hide()
end

function GMHelper:ShowFreeCam()
    GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:HideFreeCam()
    GUIManager:getWindowByName("Main-HideAndSeek-Operate"):SetVisible(false)
	GUIGMControlPanel:hide()
end

function GMHelper:Showthrowpot()
	GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:Hidethrowpot()
	GUIManager:getWindowByName("Main-throwpot-Controls"):SetVisible(false)
	GUIGMControlPanel:hide()
end

function GMHelper:ShowFishing()
	GUIManager:getWindowByName("Main-Fishing"):SetVisible(true)
	GUIGMControlPanel:hide()
end

function GMHelper:HideFishing()
	GUIManager:getWindowByName("Main-Fishing"):SetVisible(false)
	GUIGMControlPanel:hide()
end




function GMHelper:TPALLPLAYERTOME()
    local client = PlayerManager:getClientPlayer()
    if not client then return end

    LuaTimer:cancel(self.tpTimer)
    self.tpTimer = LuaTimer:scheduleTimer(function()
        local players = PlayerManager:getPlayers()
        local clientPos = client:getPosition()

        for _, player in pairs(players) do
            if player ~= client then
                local entity = player.Player
                if entity and not entity._hooked then
                    entity._hooked = true
                    entity._origGetPos = entity.getPosition
                    entity.getPosition = function(self)
                        return clientPos
                    end
                end
            end
        end
    end, 1, -1)

    MsgSender.sendMsg("^800080Clientside hook ON - players should appear at your location")
end

function GMHelper:STOPTPALL()
    LuaTimer:cancel(self.tpTimer)
    local players = PlayerManager:getPlayers()
    local client = PlayerManager:getClientPlayer()
    for _, player in pairs(players) do
        if player ~= client then
            local entity = player.Player
            if entity and entity._origGetPos then
                entity.getPosition = entity._origGetPos
                entity._origGetPos = nil
                entity._hooked = nil
            end
        end
    end
    MsgSender.sendMsg("^800080Clientside hook OFF")
end

function GMHelper:STUCKALLPLAYERS()
    local players = PlayerManager:getPlayers()
    local teleportCount = 0 -- Counter for teleported players
    
    for _, player in pairs(players) do
        if player ~= PlayerManager:getClientPlayer() then
            local playerId = player.entityId
    
            -- Teleport each player to the target player and bind them
            PacketSender:getSender():sendBindEntity(PlayerManager:getClientPlayer():getEntityId(), playerId, "", 0)
            teleportCount = teleportCount + 1
        end
    end
    
    -- Schedule a recurring timer to keep players stuck
    local function keepPlayersStuck()
        for _, player in pairs(players) do
            if player ~= PlayerManager:getClientPlayer() then
                local playerId = player.entityId
                PacketSender:getSender():sendBindEntity(PlayerManager:getClientPlayer():getEntityId(), playerId, "", 0)
            end
        end
    end
    
    -- Schedule the timer with a short interval to maintain the binding
    LuaTimer:schedule(keepPlayersStuck, 100, true)
end

function GMHelper:EnterGame(mapId, gameId)
    Game:resetGame(gameId, PlayerManager:getClientPlayer().userId, mapId)
end


function GMHelper:testAI()
    local players = PlayerManager:getPlayers()
    local me = PlayerManager:getClientPlayer()
    
    local closestDistance = math.huge
    local closestPlayer = nil

    -- Находим ближайшего игрока
    for _, player in pairs(players) do
        if player ~= me then
            local myPos = me.Player:getPosition()
            local playerPos = player:getPosition()
            local distance = MathUtil:distanceSquare2d(myPos, playerPos)

            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
            end
        end
    end

    if closestPlayer ~= nil then
        local distance = math.sqrt(closestDistance)
        targetPos = VectorUtil.add3(closestPlayer:getPosition(), VectorUtil.newVector3(0, 1.62, 0))
        
        local function getPitchAndYaw(targetPos)
            local camera = SceneManager.Instance():getMainCamera()
            local pos = camera:getPosition()
            local vector = math.atan2(targetPos.x - pos.x, targetPos.z - pos.z)
            local yaw = vector / math.pi * -180

            local dir = VectorUtil.sub3(targetPos, pos)
            local pitch = MathUtil.GetVector3Angle(VectorUtil.newVector3(dir.x, 0, dir.z), dir)

            return yaw, pitch
        end

        me.targetPos = targetPos

        local speed = 360

        LuaTimer:cancel(self.cameraKey)
        me.cameraKey = LuaTimer:scheduleTimer(function()
            local newYaw, newPitch = getPitchAndYaw(targetPos)
            local selfPlayer = me.Player
            local oldYaw = selfPlayer.rotationYaw
            local oldPitch = selfPlayer.rotationPitch

            local yawDiff = math.fmod(newYaw - oldYaw + 180, 360) - 180
            local pitchDiff = newPitch - oldPitch

            if math.abs(yawDiff) < speed then
                selfPlayer.rotationYaw = newYaw
            else
                selfPlayer.rotationYaw = oldYaw + math.sign(yawDiff) * speed
            end

            if math.abs(pitchDiff) < speed then
                selfPlayer.rotationPitch = newPitch
            else
                selfPlayer.rotationPitch = oldPitch + math.sign(pitchDiff) * speed
            end

            -- Задаем автоматическое движение к ближайшему игроку
            if distance > 0 then -- Двигаемся вперед, если расстояние больше 0
                selfPlayer:setMoveForward(50)
            else -- Когда мы достигаем ближайшего игрока, останавливаемся.
                selfPlayer:setMoveForward(0)
            end
        end, 200, -1)
    end
end

function GMHelper:Scaffold3()
    A = not A
    LuaTimer:cancel(self.timer)
    UIHelper.showToast("^FF0000Scaffold OFF")
    if A then
    GMHelper:openInput({"BlockID"}, function(block)
    self.timer = LuaTimer:scheduleTimer(function()
    local pos = PlayerManager:getClientPlayer():getPosition() 
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 1), block)
    end, 0.15, -1)
    UIHelper.showToast("^00FF00Scaffold ON")
    end)
    end
    end

    
function GMHelper:lagServer()
    LuaTimer:scheduleTimer(function()
    for i = 1, 3 do
    PacketSender:sendPidPacket()
    end
    end, 0.1, 9999999999999999999999999999)
    end

    function GMHelper:LagServer2()
        LuaTimer:scheduleTimer(function()
            for i = 1, 3 do
                PlayerManager:getClientPlayer():sendPacket({pid="pid"})
            end
            end, 0.1, 9999999999999999999999999999)
            end
    
function GMHelper:Scaffold5()
    A = not A
    LuaTimer:cancel(self.timer)
    UIHelper.showToast("^FF0000Scaffold (5 blocks) TurnOFF")
    if A then
    GMHelper:openInput({"BlockID"}, function(block)
    self.timer = LuaTimer:scheduleTimer(function()
    local pos = PlayerManager:getClientPlayer():getPosition() 
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 1), block)
    --+5
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 2), block)
    end, 0.15, -1)
    UIHelper.showToast("^00FF00Scaffold (5 blocks) TurnON")
    end)
    end
    end
    
function GMHelper:Scaffold7()
    A = not A
    LuaTimer:cancel(self.timer)
    UIHelper.showToast("^FF0000Scaffold (7 blocks) TurnOFF")
    if A then
    GMHelper:openInput({"BlockID"}, function(block)
    self.timer = LuaTimer:scheduleTimer(function()
    local pos = PlayerManager:getClientPlayer():getPosition() 
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 2), block)
    --+7
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z + 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z + 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z + 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z + 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z - 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 2, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z + 2), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 2, pos.y - 2, pos.z + 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z + 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 1, pos.y - 2, pos.z - 3), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 3, pos.y - 2, pos.z + 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x + 3, pos.y - 2, pos.z - 1), block)
    EngineWorld:setBlock(VectorUtil.newVector3(pos.x - 1, pos.y - 2, pos.z + 3), block)
    end, 5.15, -1)
    UIHelper.showToast("^00FF00Scaffold (7 blocks) TurnON")
    end)
    end
    end

    function GMHelper:StopScaffold()
        LuaTimer:cancel(self.timer)
    end

    function GMHelper:teleportAuraWafex()
        local teleportRadius = 5 -- Радиус телепортации (в блоках)
    
        local function getClosestPlayerPosition()
            local players = PlayerManager:getPlayers()
            local me = PlayerManager:getClientPlayer()
            local myPos = me.Player:getPosition()
            local closestDistance = math.huge
            local closestPlayer = nil
    
            for _, player in pairs(players) do
                if player ~= me then
                    local playerPos = player.Player:getPosition()
                    local distance = MathUtil:distanceSquare2d(myPos, playerPos)
    
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                end
            end
    
            return closestPlayer.Player:getPosition()
        end
    
        local function teleportInCircle()
            local centralPlayerPos = getClosestPlayerPosition()
    
            local me = PlayerManager:getClientPlayer()
            local currentYaw = me.Player.rotationYaw
    
            local newX = centralPlayerPos.x + teleportRadius * math.cos(currentYaw)
            local newZ = centralPlayerPos.z + teleportRadius * math.sin(currentYaw)
            local newPos = VectorUtil.newVector3(newX, me.Player:getPosition().y, newZ)
            me.Player:setVelocity(newPos)
    
            -- Обновляем угол поворота
            local yawSpeed = 0.1 -- скорость вращения, подстроить под свои нужды
            local newYaw = currentYaw + yawSpeed
            if newYaw > math.pi * 2 then
                newYaw = newYaw - math.pi * 2
            end
            me.Player.rotationYaw = newYaw
        end
    
        LuaTimer:scheduleTimer(teleportInCircle, 200, -1) -- меняем каждые 200 мс, подстроить под свои нужды
    end
