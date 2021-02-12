----------------------------------- Î ÑÊÐÈÏÒÅ --------------------------------------------
script_name("H[0]i cheat") -- ÷èò íåéì
script_author("gg.]VolodyaHoi[") -- ÿ,ìîé âê vk.com/volodyahoi
script_version("2.0") -- âåðñèÿ ñêðèïòà
script_description("Hoi-÷èò by VolodyaHoi") -- ÷òî ýòî çà õóéíÿ âêðàòöå
----------------------------------- ËÎÃÈ ÑÀÌÏÔÓÍÊÑ  --------------------------------------------
print(script.this.name .. ' v' .. script.this.version) -- õóéíÿ äëÿ ëîãîâ
print('Author: ' .. table.concat(script.this.authors, ', '))  -- òîæå
print(script.this.description) -- òîæå
----------------------------------- ËÎÃ ×ÈÒÀ --------------------------------------------
local inputFileName = "H[0]i log.txt"
local FileWrite
----------------------------------- ÁÈÁËÈÎÒÅÊÈ --------------------------------------------
require "lib.moonloader" -- áèáëèîòåêà
local keys = require "vkeys" -- áèáëèîòåêà êëàâèø
local sampev = require "lib.samp.events" -- áèáëèîòåêà åâåíòñ
local imgui = require "imgui" -- áèáëèîòåêà ñàìï ãóè
local encoding = require "encoding" -- åíêîäèíã
encoding.default = "CP1251" -- òîæå
u8 = encoding.UTF8 -- òîæå
local int = imgui.ImInt(0) 
----------------------------------- ÊÎÍÔÈÃ --------------------------------------------
local inicfg = require "inicfg"
local directIni = "moonloader\\H[0]i CHEAT.ini"
local mainIni = inicfg.load(nil, directIni)
local stateIni = inicfg.save(mainIni, directIni)
----------------------------------- ÔËÓÄÅÐ --------------------------------------------
local floodvh = "%%4@45275753jkdkahflkfb| Flooder by VolodyaHoi |famfkihq%42$$2jknd" -- äëÿ ôëóäà
local floodvh2 = "adadkijadna9876321$$@ak| Flooder by VolodyaHoi |dajdaj$$$$2jad@abn" -- äëÿ ôëóäà
local floodvh3 = "da;ldadkad&&7&??212aadw| Flooder by VolodyaHoi |dada@$dadad.KDjadh" -- äëÿ ôëóäà
local floodvh4 = "12589gadafag235#@dad$$a| Flooder by VolodyaHoi |KdjahdHgad@$123kaj" -- äëÿ ôëóäà
local floodvh5 = "faapkmafn$$$$23625671fa| Flooder by VolodyaHoi |ffapljafhaf$$daldj" -- äëÿ ôëóäà
----------------------------------- ÒÅÊÑÒ ÁÓÔÔÅÐÛ --------------------------------------------
local text_buffer = imgui.ImBuffer(256) -- òîæå
local text_cmd = imgui.ImBuffer(256) -- òîæå
local text_wait = imgui.ImBuffer(256) -- òîæå
local text_dmg = imgui.ImBuffer(256) -- òîæå
local text_nick = imgui.ImBuffer(256) -- òîæå
local text_eblan = imgui.ImBuffer(256) -- òîæå
local text_tp = imgui.ImBuffer(256) -- òîæå
local text_ammo = imgui.ImBuffer(256) -- òîæå
local text_rv = imgui.ImBuffer(256) -- òîæå
local textsl = imgui.ImBuffer(256) -- òîæå
local text_block = imgui.ImBuffer(256) -- òîæå
local text_info = imgui.ImBuffer(256) -- òîæå
local text_fkill = imgui.ImBuffer(256) -- òîæå
local text_console = imgui.ImBuffer(10800) -- òîæå
local text_fparol = imgui.ImBuffer(256) -- òîæå
----------------------------------- ÎÊÍÀ ÈÌÃÓÈ --------------------------------------------
local main_window_state = imgui.ImBool(false) -- äëÿ èìãóè
local second_window_state = imgui.ImBool(false)
local cheats_window_state = imgui.ImBool(false)
local carf_window_state = imgui.ImBool(false)
local antic_window_state = imgui.ImBool(false)
local crash_window_state = imgui.ImBool(false)
local dos_window_state = imgui.ImBool(false)
local bots_window_state = imgui.ImBool(false)
local packet_window_state = imgui.ImBool(false)
local players_window_state = imgui.ImBool(false)
local teleport_window_state = imgui.ImBool(false)
local servers_window_state = imgui.ImBool(false)
local weapon_window_state = imgui.ImBool(false)
----------------------------------- ØÐÈÔÒ --------------------------------------------
local font_flag = require('moonloader').font_flag
local my_font = renderCreateFont('Verdana', 12, font_flag.BOLD + font_flag.SHADOW)
----------------------------------- ×ÅÊÁÎÊÑÛ --------------------------------------------
checkbox1 = imgui.ImBool(false)
checkbox2 = imgui.ImBool(false)
checkbox3 = imgui.ImBool(false)
checkbox4 = imgui.ImBool(false)
checkbox5 = imgui.ImBool(true)
checkbox6 = imgui.ImBool(false)
checkbox7 = imgui.ImBool(false)
checkbox8 = imgui.ImBool(false)
checkbox9 = imgui.ImBool(mainIni.config.irun) -- áåñê áåã
checkbox10 = imgui.ImBool(false)
checkbox11 = imgui.ImBool(false)
checkbox13 = imgui.ImBool(true)
checkbox14 = imgui.ImBool(true)
checkbox16 = imgui.ImBool(false)
checkbox17 = imgui.ImBool(false)
checkbox18 = imgui.ImBool(false)
checkbox19 = imgui.ImBool(false)
checkbox21 = imgui.ImBool(false)
checkbox22 = imgui.ImBool(mainIni.config.kbike)-- ìîæåò ëè èãðîê ïèçäàíöà ñ ìîòàêà
checkbox23 = imgui.ImBool(mainIni.config.woxy) -- êèñëîðîä â âîäå
checkbox24 = imgui.ImBool(false)
checkbox25 = imgui.ImBool(false)
checkbox26 = imgui.ImBool(false)
checkbox27 = imgui.ImBool(false)
checkbox28 = imgui.ImBool(false)
checkbox29 = imgui.ImBool(false)
checkbox30 = imgui.ImBool(false)
checkbox31 = imgui.ImBool(false)
checkbox32 = imgui.ImBool(false)
checkbox33 = imgui.ImBool(false)
checkbox34 = imgui.ImBool(false)
checkbox35 = imgui.ImBool(false)
checkbox36 = imgui.ImBool(false)
checkbox37 = imgui.ImBool(false)
checkbox38 = imgui.ImBool(false)
checkbox39 = imgui.ImBool(mainIni.config.qjlogger)
checkbox40 = imgui.ImBool(false)
checkbox41 = imgui.ImBool(false)
checkbox42 = imgui.ImBool(false)
checkbox43 = imgui.ImBool(false)
checkbox44 = imgui.ImBool(false)
checkbox45 = imgui.ImBool(false)
checkbox46 = imgui.ImBool(false)
checkbox47 = imgui.ImBool(false)
checkbox48 = imgui.ImBool(mainIni.config.huser)
checkbox49 = imgui.ImBool(false)
checkbox50 = imgui.ImBool(false)
----------------------------------- ÏÅÐÅÌÅÍÍÛÅ ÏÎÒÎÊÎÂ --------------------------------------------
pflood = 0
pdmg = 0
botg = 0
idolddmg = 0
rconf = 0
flodead = 0
cmdflood = 0
gidr = 0
test = 0
slap = 0
slap2 = 0
pacflood = 0
jump = 0
afl = 0
whah = 1
q = 0
speed = 0
pulsator = 0
hui = 2
----------------------------------- ÑÒÈËÈ ÈÌÃÓÈ --------------------------------------------
local themes = import "resource/imgui_themes.lua"
----------------------------------- ÕÎÉ ÏÀÍÅËÜ --------------------------------------------
GMp = "FF0000" -- ïàíåëü
DAMAGERp = "FF0000"
LOGGERp = "FF0000"
PULSEHp = "FF0000"
FLOODERp = "FF0000"
KILLAURAp = "FF0000"
INVISp = "FF0000"
CARGMp = "FF0000"
RVANKAFp = "FF0000"
RVANKACp = "FF0000"
----------------------------------- ÊÎÍÑÎËÜ --------------------------------------------
cons = true
textc = "       "
----------------------------------- ÊÎÌÁÎ ÑÅËÅÊÒ --------------------------------------------
local combo_select = imgui.ImInt(0)
local combo_select2 = imgui.ImInt(0)
local combo_select3 = imgui.ImInt(0)
local combo_select4 = imgui.ImInt(0)
local combo_select5 = imgui.ImInt(0)
local combo_select6 = imgui.ImInt(0)
if mainIni.config.woxy == true then
    arr_str = {"true", "false"}
else--if mainIni.config.irun == false then
    arr_str = {"false", "true"}
end
if mainIni.config.irun == true then
    arr_str2 = {"true", "false"}
else--if mainIni.config.irun == false then
    arr_str2 = {"false", "true"}
end
if mainIni.config.kbike == true then
    arr_str3 = {"true", "false"}
else--if mainIni.config.irun == false then
    arr_str3 = {"false", "true"}
end
if mainIni.config.huser == true then
    arr_str5 = {"true", "false"}
else--if mainIni.config.irun == false then
    arr_str5 = {"false", "true"}
end
if mainIni.config.qjlogger == true then
    arr_str6 = {"true", "false"}
else--if mainIni.config.irun == false then
    arr_str6 = {"false", "true"}
end
if mainIni.config.style == 1 then
    arr_str4 = {"1", "2", "3", "4", "5", "6", "7", "8"}
elseif mainIni.config.style == 2 then
    arr_str4 = {"2", "1", "3", "4", "5", "6", "7", "8"}
elseif mainIni.config.style == 3 then
    arr_str4 = {"3", "1", "2", "4", "5", "6", "7", "8"}
elseif mainIni.config.style == 4 then
    arr_str4 = {"4", "1", "2", "3", "5", "6", "7", "8"}
elseif mainIni.config.style == 5 then
    arr_str4 = {"5", "1", "2", "3", "4", "6", "7", "8"}
elseif mainIni.config.style == 6 then
    arr_str4 = {"6", "1", "2", "3", "4", "5", "7", "8"}
elseif mainIni.config.style == 7 then
    arr_str4 = {"7", "1", "2", "3", "4", "5", "6", "8"}
elseif mainIni.config.style == 8 then
    arr_str4 = {"8", "1", "2", "3", "4", "5", "6", "7"}
end
----------------------------------- ÑËÀÉÄÅÐ --------------------------------------------
local selected_item = imgui.ImFloat(0)
local global_scale_slider = imgui.ImFloat(20)
global_scale = 20
----------------------------------- ÃËÀÂÍÀß ÔÓÍÊÖÈß --------------------------------------------
function main() 
    ----------------------------------- óÑËÎÂÈß ÇÀÏÓÙÅÍÍÎÃÎ ÑÀÌÏÀ --------------------------------------------
    if not isSampLoaded() or not isSampfuncsLoaded() then return end -- óñëîâèÿ çàïóùåííîãî ñàìïà
    while not isSampAvailable() do wait(100) end -- òîæå
    ----------------------------------- ÎÒËÀÄÊÀ --------------------------------------------
    sampAddChatMessage ("{00FFFF}H[0]i ProJecT loaded.") -- îòëàäêà H[0]i cheat (OK)
    sampAddChatMessage ("{00FFFF}Activation - | R.Shift/Pause |")
    FileWrite = io.open(inputFileName, "a")
    FileWrite:write("H[0]i cheat çàãðóæåí.\n")
    FileWrite:close()
    ----------------------------------- ÊÎÌÀÍÄÛ --------------------------------------------
    sampRegisterChatCommand("fastp", cmd_fastp)
    sampRegisterChatCommand("info", cmd_info)
    ----------------------------------- ÏÐÎÖÅÑÑÛ ÈÌÃÓÈ --------------------------------------------
    imgui.Process = false
    ----------------------------------- ÑÒÈËÈ ÈÌÃÓÈ --------------------------------------------
    imgui.SwitchContext()
    themes.SwitchColorTheme(mainIni.config.style)
    ----------------------------------- ÏÎËÓ×ÅÍÈÅ ÑÂÎÅÃÎ ÍÈÊÀ È ÀÉÄÈ --------------------------------------------
    resultid, id = sampGetPlayerIdByCharHandle(PLAYER_PED) -- ïîëó÷åíèå íèêà è èä (èä)
    nick = sampGetPlayerNickname(id) -- (íèê)
    ----------------------------------- ÇÀÃÐÓÇÊÀ ÊÎÍÑÎËÈ --------------------------------------------
    text_console.v = "H[0]i console loaded!\n"
    ----------------------------------- ÏÎÒÎÊÈ --------------------------------------------
    thr = lua_thread.create_suspended(pfthr)
    dmgthr = lua_thread.create_suspended(pizdmg)
    botthr = lua_thread.create_suspended(bots)
    iddmg = lua_thread.create_suspended(olddmg)
    rcon = lua_thread.create_suspended(rconflooder)
    dflood = lua_thread.create_suspended(deadflood)
    commandflood = lua_thread.create_suspended(comflood)
    crvanka = lua_thread.create_suspended(rvankacar)
    packet = lua_thread.create_suspended(pcflood)
    aflood = lua_thread.create_suspended(aflooder)
    walld = lua_thread.create_suspended(wallhackd)
    pulsde = lua_thread.create_suspended(pulseh)
    colorn = lua_thread.create_suspended(cnick)
    healthr = lua_thread.create_suspended(armthr)
    ----------------------------------- ÇÀÏÓÑÊ ÏÎÒÎÊÎÂ --------------------------------------------
    colorn:run()
    healthr:run()
    pulsde:run()
    ----------------------------------- ÁÅÑÊÎÍÅ×ÍÛÉ ÖÈÊË --------------------------------------------
    while true do 
        ----------------------------------- ÁÈÍÄ --------------------------------------------
        if isKeyJustPressed(VK_RSHIFT) and not sampIsChatInputActive() then -- êîìáèíàöèÿ øèôò + M [eng]
            main_window_state.v = not main_window_state.v
            imgui.Process = main_window_state.v
        end
        if isKeyDown(VK_SHIFT) and not sampIsChatInputActive() then -- êîìáèíàöèÿ øèôò + M [eng]
            if speed == 1 then
                carresult = isCharSittingInAnyCar(PLAYER_PED)
                if carresult == true then
                    carsh = storeCarCharIsInNoSave(PLAYER_PED)
                    setCarForwardSpeed(carsh, 65.0)
                end
            end
        end
        if isKeyDown(VK_H) and isKeyJustPressed(VK_M) and not sampIsChatInputActive() then -- êîìáèíàöèÿ øèôò + M [eng]
            mresult, X3, Y3, Z3 = getTargetBlipCoordinates()
            if mresult == true then 
                setCharCoordinates(PLAYER_PED, X3, Y3, Z3)
            end
        end
        ----------------------------------- ÐÅÍÄÅÐ --------------------------------------------
        if imgui.Process == true then
            renderFontDrawText(my_font, "Hoi cheat by VolodyaHoi", 530, 1, 0x8A2BE2FF) -- 18+ // 533+18 = 551
        end
        ----------------------------------- ×ÅÊÁÎÊÑÛ 1-50 --------------------------------------------
        if checkbox1.v then
            --math.randomseed(os.time())
            --qrand = math.random(-0.500, 4.500)
            setCharQuaternion(PLAYER_PED, -11131, 2222, -150000, 10)
        end
        if checkbox2.v then --- ïåðåïèñàòü
            function sampev.onPlayerStreamIn(playerId)
                if playerId ~= id then
                    sampSendGiveDamage(playerId, 300.0, 34, 3)
                end
            end
            KILLAURAp = "00FF00"
        elseif checkbox2.v == false then
            function sampev.onPlayerStreamIn(playerId)
                return true
            end
            KILLAURAp = "FF0000" -- killaura
        end
        if checkbox3.v then
            setNightVision(true)
        elseif checkbox3.v == false then
            setNightVision(false)
        end
        if checkbox4.v then
            setInfraredVision(true)
        elseif checkbox4.v == false then
            setInfraredVision(false)
        end                                             
        if checkbox5.v then
            x1, y1, z1 = getCharCoordinates(PLAYER_PED)      -- 0, 730 -- 1206 - x øèðü -- 760 ó äëèííà
            w1 = getCharHeading(PLAYER_PED)
            maxid2 = sampGetMaxPlayerId()
            streamp2 = sampGetPlayerCount(true)        -- 757
            pping = sampGetPlayerPing(id)
            --(my_font, "{00FFFF}|H[0]i funcks:\n{00FFFF}|{" .. GMp .. "}GM\n{00FFFF}|{" .. DAMAGERp .. "}Damager\n{00FFFF}|{" .. LOGGERp .. "}Logger\n{00FFFF}|{" .. PULSEHp .. "}PulseHealth\n{00FFFF}|{" .. CARGMp .. "}CarGM\n{00FFFF}|{" .. INVISp .. "}Invis", 10, 400, 0xFFFFFFFF)
            --renderFontDrawText(my_font, "{00FFFF}|Player position - X: " .. math.floor(x1) .. " | Y: " .. math.floor(y1) .. " | Z: " .. math.floor(z1) .. "", 900, 497, 0xFFFFFFFF)
            --renderFontDrawText(my_font, "{00FFFF}|Max player id - | " .. maxid2 .. " |", 900, 515, 0xFFFFFFFF)
            --renderFontDrawText(my_font, "{00FFFF}|Players on stream - | " .. streamp2 .. " |", 900, 533, 0xFFFFFFFF)
            --renderFontDrawText(my_font, "{00FFFF}|Your ping - | " .. pping .. " |", 900, 551, 0xFFFFFFFF) -- 18+ // 533+18 = 551
            --showCursor(true, false)
            --xposX, yposY = getCursorPos()
            --renderFontDrawText(my_font, "HUI - | " .. xposX .. " | " .. yposY .. "", xposX, yposY, 0xFFFFFFFF)
            renderDrawBox(0, 748, 1500, 20, 0xFF363636)
            renderDrawLine(10, 752, 80, 752, 5, 0xFFFF0000)
            renderDrawLine(10, 759, 80, 759, 5, 0xFFB5B5B5)
            renderFontDrawText(my_font, STATUSp, 85, 748, 0xFFFFFFFF)
            --renderFontDrawText(my_font, "100 ARM", 80, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{" .. PALp .. "}|{" .. GMp .. "}GM", 200, 748, 0xFFFFFFFF) 
            renderFontDrawText(my_font, "{" .. PALp .. "}|{" .. INVISp .. "}Invis", 250, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{" .. PALp .. "}|{" .. DAMAGERp .. "}Damager", 310, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{" .. PALp .. "}|{" .. LOGGERp .. "}Logger", 408, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{" .. PALp .. "}|{" .. PULSEHp .. "}PulseHealth", 490, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{" .. PALp .. "}|{" .. CARGMp .. "}CarGM", 610, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{" .. CREATp .. "}by gg.]VolodyaHoi[", 780, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "{00FF00}" .. pping .. "", 1325, 748, 0xFFFFFFFF)
            renderFontDrawText(my_font, "X: " .. math.floor(x1) .. " | Y: " .. math.floor(y1) .. " | Z: " .. math.floor(z1) .. "", 1090, 748, 0xFFFFFFFF)
            wait(0)
        else
            renderFontDrawText(my_font, " ", 875, 551, 0xFFFFFFFF) -- 18+ // 533+18 = 551
            wait(0)
        end
        if checkbox6.v then
            function sampev.onSendEnterVehicle(vehicleId, passenger)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("[HLogger] Ñåðâåðíûé id ìàøèíû - " .. vehicleId .. "\n")
                FileWrite:close()
                str1 = "Server car id - | " .. vehicleId .. " |\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
            function sampev.onSendInteriorChangeNotification(interior)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("[HLogger] id èíòåðüåðà - " .. interior .. "\n")
                FileWrite:close()
                str1 = "Interior id - | " .. interior .. " |\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
            function sampev.onSendPickedUpPickup(pickupId)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("[HLogger] id ïèêàïà - " .. pickupId .. "\n")
                FileWrite:close()
                str1 = "Pickup id - | " .. pickupId .. " |\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
            function sampev.onShowDialog(dialogId, style, title, button1, button2, text)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("[HLogger] id äèàîëîâîãî îêíà - " .. dialogId .. "\n")
                FileWrite:write("[HLogger] ñòèëü äèàëîãà - " .. style .. "\n")
                FileWrite:write("[HLogger] çàãîâîëîê äèàëîãà - " .. title .. "\n")
                FileWrite:write("[HLogger] êíîïêà 1 - " .. button1 .. "\n")
                FileWrite:write("[HLogger] êíîïêà 2 - " .. button2 .. "\n")
                FileWrite:write("[HLogger] òåêñò äèàëîãà - " .. text .. "\n")
                FileWrite:close()
                str1 = "Dialog info in H[0]i log.txt !\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
            LOGGERp = "00FF00"
        elseif checkbox6.v == false then
            function sampev.onSendEnterVehicle(vehicleId, passenger)
                return true
            end
            function sampev.onSendInteriorChangeNotification(interior)
                return true
            end
            function sampev.onSendPickedUpPickup(pickupId)
                return true
            end
            function sampev.onShowDialog(dialogId, style, title, button1, button2, text)
                return true
            end
            LOGGERp = "FF0000"
        end
        if checkbox7.v then
            function sampev.onSetPlayerHealth(health)
                return false
            end
            setCharProofs(PLAYER_PED, true, true, true, true, true)
            GMp = "00FF00"
        elseif checkbox7.v == false then
            setCharProofs(PLAYER_PED, false, false, false, false, false)
            GMp = "FF0000"
            function sampev.onSetPlayerHealth(health)
                return true
            end
        end
        if checkbox8.v then
            carresult = isCharSittingInAnyCar(PLAYER_PED)
            if carresult == true then
                cargm = storeCarCharIsInNoSave(PLAYER_PED)
                setCarProofs(cargm, true, true, true, true, true)
            end
            CARGMp = "00FF00"
        elseif checkbox8.v == false then
            carresult = isCharSittingInAnyCar(PLAYER_PED)
            if carresult == true then
                cargm = storeCarCharIsInNoSave(PLAYER_PED)
                setCarProofs(cargm, false, false, false, false, false)
            end
            CARGMp = "FF0000"
        end
        if checkbox9.v then
            setPlayerNeverGetsTired(PLAYER_PED, true)
        elseif checkbox9.v == false then
            setPlayerNeverGetsTired(PLAYER_PED, false)
        end
        if checkbox10.v then
            testv2 = 1
        elseif checkbox10.v == false then
            testv2 = 0
        end
        if checkbox11.v then
            carresult = isCharSittingInAnyCar(PLAYER_PED)
            if carresult == true then
                setCharCollision(PLAYER_PED, true)
            end
        elseif checkbox11.v == false then
            if carresult == true then
                setCharCollision(PLAYER_PED, false)
            end
        end
        if checkbox13.v then
            function sampev.onTrailerSync(playerId, data)
                if isCharInAnyCar(PLAYER_PED) then
                    local veh = storeCarCharIsInNoSave(PLAYER_PED)
                    local _, v = sampGetVehicleIdByCarHandle(veh) 
                    if data.trailerId == v then
                        sampAddChatMessage('{00FFFF}[H[0]i protect]:  ' .. sampGetPlayerNickname(playerId) .. ' [' .. playerId .. '] þçàåò òðåéëåð êðàø!')
                        FileWrite = io.open(inputFileName, "a")
                        FileWrite:write("[H[0]i protect]:  " .. sampGetPlayerNickname(playerId) .. " [" .. playerId .. "] þçàåò òðåéëåð êðàø!\n")
                        FileWrite:close()
                        str1 = "[H[0]i protect]:  " .. sampGetPlayerNickname(playerId) .. " [" .. playerId .. "] using trailer crash!\n"
                        str3 = text_console.v .. str1
                        text_console.v = str3
                        return false
                    end
                end
            end
        end
        if checkbox14.v then
            function sampev.onUnoccupiedSync(id, data)
                if data.roll.x >= 10000.0 or data.roll.y >= 10000.0 or data.roll.z >= 10000.0 or data.roll.x <= -10000.0 or data.roll.y <= -10000.0 or data.roll.z <= -10000.0 then
                    sampAddChatMessage('{00FFFF}[H[0]i protect]:  ' .. sampGetPlayerNickname(id) .. ' [' .. id .. '] þçàåò ðîëë êðàøåð!')
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("{00FFFF}[H[0]i protect]:  " .. sampGetPlayerNickname(id) .. " [" .. id .. "] þçàåò ðîëë êðàøåð!\n")
                    FileWrite:close()
                    str1 = "[H[0]i protect]:  " .. sampGetPlayerNickname(id) .. " [" .. id .. "] using roll crasher!\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                    return false
                end
            end
        end
        if checkbox16.v then
            function sampev.onResetPlayerWeapons()
                return false
            end
        elseif checkbox16.v == false then
            function sampev.onResetPlayerWeapons()
                return true
            end
        end
        if checkbox17.v then --- ïåðåïèñàòü
            function sampev.onPlayerStreamIn(playerId)
                streamn = sampGetPlayerNickname(playerId)
                sampAddChatMessage("{00FFFF}×åë â ñòðèìå - " .. streamn .. "")
                str1 = "Player on stream - " .. streamn .. "\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
        end
        if checkbox18.v then
            function sampev.onSetPlayerPos()
                return false
            end
        elseif checkbox18.v == false then
            function sampev.onSetPlayerPos()
                return true
            end
        end
        if checkbox19.v then -- ðâàíêà îí ôóò
            function sampev.onSendPlayerSync(data)
                data.moveSpeed.x = math.random(-100, 100) -- (-5, 5)
                data.moveSpeed.y = math.random(-100, 100)
                data.moveSpeed.z = math.random(-100, 100)
            end
        end
        if checkbox21.v then -- ðâàíêà èíêàð
            function sampev.onSendVehicleSync(data)
                data.moveSpeed.x = math.random(-100, 100)
                data.moveSpeed.y = math.random(-100, 100)
                data.moveSpeed.z = math.random(-100, 100)
            end
            RVANKACp = "00FF00"
        elseif checkbox21.v == false then
            function sampev.onSendVehicleSync(data)
                return true
            end
            RVANKACp = "FF0000"
        end
        if checkbox22.v then
            setCharCanBeKnockedOffBike(PLAYER_PED, true)
        elseif checkbox22.v == false then
            setCharCanBeKnockedOffBike(PLAYER_PED, false)
        end
        if checkbox23.v then
            setCharDrownsInWater(PLAYER_PED, false)
        elseif checkbox23.v == false then
            setCharDrownsInWater(PLAYER_PED, true)
        end
        if checkbox24.v then
            function sampev.onSendPlayerSync(data)
                local xi, yi, zi = getCharCoordinates(PLAYER_PED) -- invis
                data.position.x = xi
                data.position.y = yi
                data.position.z = zi-30
            end
            INVISp = "00FF00"
        elseif checkbox24.v == false then
            INVISp = "FF0000"
        end
        if checkbox25.v then
            slap2 = 1 -- åñëè ÷á âêëþ÷åí ñëàï2 = 1 -slapper
        elseif checkbox25.v == false then
            slap2 = 0
        end
        if checkbox26.v then
            slap = 1
        elseif checkbox26.v == false then -- slapper
            slap = 0
        end
        if checkbox29.v then
            jump = 1
        elseif checkbox29.v == false then
            jump = 0
        end
        if checkbox24.v == false and checkbox31.v == false and checkbox41.v == false and checkbox44.v == false and checkbox19.v == false and checkbox46.v == false then
            function sampev.onSendPlayerSync(data)
                return true
            end
        end
        if checkbox21.v == false and checkbox47.v == false and checkbox49.v == false then
            function sampev.onSendVehicleSync(data)
                return true
            end
        end
        if checkbox30.v then
            setCharCollision(PLAYER_PED, true)
        end
        if checkbox31.v then
            function sampev.onSendPlayerSync(data)
                return false
            end
        end
        if checkbox32.v then
            health = getCharHealth(PLAYER_PED)
            armourr = getCharArmour(PLAYER_PED)
            xR, yR, zR = getCharCoordinates(PLAYER_PED)
            xr1, yr1 = convert3DCoordsToScreen(xR, yR, zR)
            renderFontDrawText(my_font, "{00FFFF}Status:\n{FFFFFF}Armour - " .. armourr .. "\n{FF0000}Health - " .. health .. "", xr1, yr1, 0xFFFFFFFF)
        end
        if checkbox33.v then
            setCharAnimSpeed(PLAYER_PED, "RUN_CIVI", 10)
        end
        if checkbox34.v then
            setCharAnimSpeed(PLAYER_PED, "RUN_PLAYER", 10)
        end
        if checkbox35.v then
            setCharAnimSpeed(PLAYER_PED, "SWIM_BREAST", 10)
        end
        if checkbox36.v then
            speed = 1
        elseif checkbox36.v == false then
            speed = 0
        end
        if checkbox37.v then
            cameraSetLerpFov(100.0, 10.0, 1000, true)
        end
        if checkbox38.v then
            math.randomseed(os.time())
            frand = math.random(0, maxid)
            if sampIsPlayerConnected(frand) then
                sampSendDeathByPlayer(frand, 0)
            end
        end
        if checkbox39.v then
            function sampev.onPlayerJoin(playerId, color, isNpc, nickname)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("[JOIN] èãðîê - " .. nickname .. " [" .. playerId .. "]\n")
                FileWrite:close()
                str1 = "[JOIN] player - " .. nickname .. " [" .. playerId .. "]\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
            function sampev.onPlayerQuit(playerId1)
                streamnick = sampGetPlayerNickname(playerId1)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("[QUIT] player - " .. streamnick .. " [" .. playerId1 .. "]\n")
                FileWrite:close()
                str1 = "[QUIT] player - " .. streamnick .. " [" .. playerId1 .. "]\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
        elseif checkbox39.v == false then
            function sampev.onPlayerJoin(playerId, color, isNpc, nickname)
                return true
            end 
            function sampev.onPlayerQuit(playerId1)
                return true
            end
        end
        if checkbox40.v then
            --carflu = storeCarCharIsInNoSave(PLAYER_PED)
            local peds = getAllChars()
            for _, v in pairs(peds) do
                local result, id = sampGetPlayerIdByCharHandle(v) 
                local _, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED) 
                if result and id ~= my_id then 
                    pres, pedik = sampGetCharHandleBySampPlayerId(id)
                    setCharCollision(pedik, false) 
                end 
            end 
        elseif checkbox40.v == false then
            local peds = getAllChars()
            for _, v in pairs(peds) do
                local result, id = sampGetPlayerIdByCharHandle(v) 
                local _, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED) 
                if result and id ~= my_id then 
                    pres, pedik = sampGetCharHandleBySampPlayerId(id)
                    resultwh = isCharInAnyCar(pedik)
                    if resultwh ~= true then
                        setCharCollision(pedik, true)
                    end 
                end 
            end 
        end
        if checkbox41.v then
            --carflu = storeCarCharIsInNoSave(PLAYER_PED)
            local peds2 = getAllChars()
            for _, v in pairs(peds2) do
                local result, id2 = sampGetPlayerIdByCharHandle(v) 
                local _, my_id2 = sampGetPlayerIdByCharHandle(PLAYER_PED) 
                if result and id2 ~= my_id2 then 
                    pres, pedik2 = sampGetCharHandleBySampPlayerId(id2)
                    -- if char on screen
                    if isCharOnScreen(pedik2) then
                        nick2 = sampGetPlayerNickname(id2)
                        health2 = sampGetPlayerHealth(id2)
                        armour2 = sampGetPlayerArmor(id2)
                        tX, tY, tZ = getCharCoordinates(pedik2)
                        t2X, t2Y, t2Z = getCharCoordinates(PLAYER_PED)
                        zX, zY = convert3DCoordsToScreen(tX, tY, tZ)
                        z2X, z2Y = convert3DCoordsToScreen(t2X, t2Y, t2Z)
                        t2X2 = t2X - tX
                        t2Y2 = t2Y - tY
                        renderDrawLine(z2X, z2Y, zX, zY, 2.0, 0x33CCFFAA)
                        renderFontDrawText(my_font, "{00FFFF}Íèê - | " .. nick2 .. " |\n{FFFFFF}Áðîíÿ - | " .. armour2 .. " |\n{FF0000}Æèçíü - | " .. health2 .. " |\n{00FFFF}Ðàññòîÿíèå: " .. math.floor(t2X2) .. " | " .. math.floor(t2Y2) .. "", zX, zY, 0xFFFFFFFF)
                    end
                end 
            end 
        end
        if checkbox42.v then
            local peds = getAllChars()
            for _, v in pairs(peds) do
                local result, id = sampGetPlayerIdByCharHandle(v) 
                local _, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED) 
                if result and id ~= my_id then 
                    pres, pedik = sampGetCharHandleBySampPlayerId(id)
                    resultwh = isCharInAnyCar(pedik)
                    if resultwh ~= true then
                        if isCharOnScreen(pedik) then
                            resultd = isCharDead(pedik)
                            if resultd ~= true then
                                xxx, yyy, zzz = getCharCoordinates(PLAYER_PED)
                                xx, yy, zz = getCharCoordinates(pedik)
                                if isKeyDown(VK_RBUTTON) then
                                    besult = locateCharAnyMeansChar2d(PLAYER_PED, pedik, global_scale, global_scale, false)
                                    if besult == true then
                                        z2X3, z2Y3 = convert3DCoordsToScreen(xx, yy, zz)
                                        renderFontDrawText(my_font, '{FF0000}TR1GGERED', z2X3, z2Y3, 0xFFFFFFFF)
                                        targetAtCoords(xx, yy, zz)
                                    end
                                end
                            end
                        end
                    end 
                end 
            end
        end 
        if checkbox43.v then
            --carflu = storeCarCharIsInNoSave(PLAYER_PED)
            local vehicles = getAllVehicles()
            for _, v in pairs(vehicles) do
                local result3, id2 = sampGetVehicleIdByCarHandle(v) 
                pres, carik = sampGetCarHandleBySampVehicleId(id2)
                result4 = isCharInAnyCar(PLAYER_PED)
                if result4 == true then
                    carflu = storeCarCharIsInNoSave(PLAYER_PED)
                    id3 = sampGetVehicleIdByCarHandle(carflu) 
                    if carik ~= carflu then
                        setCarCollision(carik, false) 
                        --setCarCollision(carflu, true) 
                    end
                end
                if carik ~= carflu then
                    setCarCollision(carik, false)     
                end
            end 
        elseif checkbox43.v == false then
            local vehicles = getAllVehicles()
            for _, v in pairs(vehicles) do
                local result, id2 = sampGetVehicleIdByCarHandle(v) 
                pres, carik = sampGetCarHandleBySampVehicleId(id2)
                setCarCollision(carik, true) 
            end 
        end
        if checkbox7.v then
            setCharProofs(PLAYER_PED, true, true, true, true, true)
        elseif checkbox7.v == false then
            setCharProofs(PLAYER_PED, false, false, false, false, false)
        end
        if checkbox44.v then
            --bresult, charh = sampGetCharHandleBySampPlayerId(2)
            --result, posX3, posY3, posZ3 = sampGetStreamedOutPlayerPos(2)
            --if posX3 <= 20000 and posY3 <= 20000 or posX3 <= 20000 or posY3 <= 20000 then
                --deleteChar(charh)
            --end
            function sampev.onPlayerSync(idd, data)
                if data.position.x >= 20000.0 or data.position.y >= 20000.0 or data.position.z >= 20000.0 or data.position.x >= -20000.0 or data.position.y >= -20000.0 or data.position.z >= -20000.0 then
                    sampAddChatMessage('{00FFFF}[H[0]i protect]:  ' .. sampGetPlayerNickname(idd) .. ' [' .. idd .. '] þçàåò êðàø!')
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("[H[0]i protect]:  " .. sampGetPlayerNickname(idd) .. " [" .. idd .. "] þçàåò êðàø!\n")
                    FileWrite:close()
                    str1 = "[H[0]i protect]:  " .. sampGetPlayerNickname(idd) .. " [" .. idd .. "] using crash!\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                    return false
                end
            end
        elseif checkbox44.v == false then
            function sampev.onPlayerSync(idd, data)
                return true
            end
        end
        if checkbox46.v then -- ðâàíêà îí ôóò
            function sampev.onSendPlayerSync(data)
                data.moveSpeed.x = math.random(-10, 10) -- (-5, 5)
                data.moveSpeed.y = math.random(-10, 10)
                data.moveSpeed.z = math.random(-10, 10)
            end
        end
        if checkbox47.v then -- ðâàíêà èíêàð
            function sampev.onSendVehicleSync(data)
                data.moveSpeed.x = math.random(-10, 10)
                data.moveSpeed.y = math.random(-10, 10)
                data.moveSpeed.z = math.random(-10, 10)
            end
        end
        if checkbox48.v then -- ðâàíêà èíêàð
            function sampev.onSendChat(msg)
                return {'H[0]i U$er | ' .. msg}
            end
        elseif checkbox48.v == false then
            function sampev.onSendChat(msg)
                return true
            end
        end
        if checkbox49.v then
    		if isCharShooting(PLAYER_PED) then
                wait(0)
	        	taskPlayAnimNonInterruptable(PLAYER_PED, "HIT_WALK", "PED", 4.0, 0, 1, 1, 0, 1)
	     	end
        end
        if checkbox50.v then
            local weaponnr = getCurrentCharWeapon(PLAYER_PED)
            local ammonr = getAmmoInCharWeapon(PLAYER_PED, weaponnr)
            if isCharShooting(PLAYER_PED) then
                setCharAmmo(PLAYER_PED, weaponnr, ammonr + 1)
	     	end
        end
    end
end                    
----------------------------------- ÎÒÐÈÑÎÂÊÀ ÈÌÃÓÈ ÎÊÍÀ --------------------------------------------
function imgui.OnDrawFrame()
    ----------------------------------- ÇÀÊÐÛÒÈÅ ÎÊÎÍ ÏÐÈ ÇÀÊÐÛÒÈÈ ÎÑÍÎÂÍÎÃÎ --------------------------------------------
	if not main_window_state.v then
		imgui.Process = false
    end
    ----------------------------------- ÌÅÍÞ ÑÎÔÒÀ --------------------------------------------
    if main_window_state.v then
        local sw, sh = getScreenResolution()
        imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2 + 130), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(300, 305), imgui.Cond.FirstUseEver) -- ñòàðîå 350, 400 (350,377)
        x, y, z = getCharCoordinates(PLAYER_PED)
        ip, port = sampGetCurrentServerAddress()
        maxid = sampGetMaxPlayerId()
        streamp = sampGetPlayerCount(true)
        idnr = getCurrentCharWeapon(PLAYER_PED)
        nrammo = getAmmoInCharWeapon(PLAYER_PED, idnr)
        XQ, YQ, ZQ, WQ = getCharQuaternion(PLAYER_PED)
    
        imgui.Begin(u8"H[0]i ProJecT by gg.]VolodyaHoi[ v0.1", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoMove + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("TwoCWind", imgui.ImVec2(341, 280), true) -- ñòàðîå - 341, 300 -- 280 + 65 = 345
        --imgui.Text(u8"Ïîëüçîâàòåëü ÷èòà - " .. nick .. " [" .. id .."]")
        local btn_size = imgui.ImVec2(-0.1, 0)
        imgui.Text("Cheats:")
		if imgui.Button(u8"|H[0]i funcks", btn_size) then
			second_window_state.v = not second_window_state.v
	        --imgui.Process = second_window_state.v
        end
        --if imgui.Button(u8"|H[0]i ñâîáîäíî", btn_size) then
			--crash_window_state.v = not crash_window_state.v
	        --imgui.Process = crash_window_state.v
        --end	
        if imgui.Button(u8"|Car funcks", btn_size) then
			carf_window_state.v = not carf_window_state.v
	        --imgui.Process = carf_window_state.v
        end
        imgui.Text(u8"Tools:")
        if imgui.Button(u8"|H[0]i add", btn_size) then
			cheats_window_state.v = not cheats_window_state.v
	        --imgui.Process = cheats_window_state.v
        end	
        if imgui.Button(u8"|AntiCrashers", btn_size) then
			antic_window_state.v = not antic_window_state.v
	        --imgui.Process = antic_window_state.v
		end	
        if imgui.Button(u8"|Flooders", btn_size) then
			dos_window_state.v = not dos_window_state.v
	        --imgui.Process = dos_window_state.v
        end	
        imgui.Text(u8"Misc:")
        if imgui.Button(u8"|Bots", btn_size) then
			bots_window_state.v = not bots_window_state.v
	        --imgui.Process = bots_window_state.v
        end	
        if imgui.Button(u8"|Sync & Events", btn_size) then
			packet_window_state.v = not packet_window_state.v
	        --imgui.Process = packet_window_state.v
        end	
        if imgui.Button(u8"|Players", btn_size) then
			players_window_state.v = not players_window_state.v
	        --imgui.Process = players_window_state.v
        end	
        if imgui.Button(u8"|Teleports", btn_size) then
			teleport_window_state.v = not teleport_window_state.v
	        --imgui.Process = teleport_window_state.v
        end
        --if imgui.Button(u8"|H[0]i ñâîáîäíî", btn_size) then
			--servers_window_state.v = not servers_window_state.v
	        --imgui.Process = servers_window_state.v
        --end
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÕÎÉ ÔÓÍÊÑ --------------------------------------------
    if second_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        local btn_size = imgui.ImVec2(-0.1, 0)
        imgui.Begin(u8"H[0]i funcks", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("OneCWind", imgui.ImVec2(300, 250), true) -- ñòàðîå 300 , 150
        imgui.Checkbox(u8"H[0]i panel", checkbox5)
        imgui.SameLine()
        imgui.TextDisabled('(?)')
        imgui.Hint(u8'On/Off cheat panel')
        imgui.Checkbox(u8"KillAura [TEST]", checkbox2) -- ïåðåïèñàòü
        imgui.SameLine()
        imgui.TextDisabled('(?)')
        imgui.Hint(u8'COMING SOON.')
        imgui.Checkbox(u8"AnimRevers", checkbox1)
        imgui.SameLine()
        imgui.TextDisabled('(?)')
        imgui.Hint(u8"Revers your anims.")
        imgui.Checkbox(u8"Vis.NG", checkbox3)
        imgui.Checkbox(u8"Vis.IV", checkbox4)
        imgui.Checkbox(u8"Logger", checkbox6)
        imgui.Checkbox(u8"GodMod", checkbox7)
        imgui.Checkbox(u8"PulseHealth", checkbox10)
        imgui.Checkbox(u8"Inf.Run", checkbox9)
        imgui.Checkbox(u8"AntiBike Fail", checkbox22)
        imgui.Checkbox(u8"Inf.Oxygen", checkbox23)
        imgui.Checkbox(u8"Invis", checkbox24)
        imgui.Checkbox(u8"GhostMod", checkbox31)
        imgui.Checkbox(u8"Rvanka onfoot", checkbox19)
        imgui.Checkbox(u8"Player status", checkbox32) -- äîïîëíèòü
        imgui.Checkbox(u8"SpeedHack onfoot RP", checkbox33)
        imgui.Checkbox(u8"SpeedHack onfoot CJ", checkbox34)
        imgui.Checkbox(u8"SpeedHack inwater", checkbox35)
        imgui.Checkbox(u8"Eye", checkbox37)
        imgui.Checkbox(u8"Q/J logger", checkbox39)
        imgui.Checkbox(u8"Player collision", checkbox40)
        imgui.Checkbox(u8"WallHack [TEST]", checkbox41) -- äîïîëíèòü
        imgui.Checkbox(u8"Rvanka v2", checkbox46)
        imgui.Checkbox(u8"H[0]i tag", checkbox48)
        imgui.Checkbox(u8"Auto+C", checkbox49)
        imgui.Checkbox(u8"Infinity ammo", checkbox50)
        if imgui.Button(u8"Fucking dmg", btn_size) then -- ïåðåïèñàòü
            dmgthr:run()
        end
        if imgui.Button(u8"Give jetpack", btn_size) then 
            sampSetSpecialAction(2)
            FileWrite = io.open(inputFileName, "a")
            FileWrite:write("Player was given a jetpack\n")
            FileWrite:close()
            str1 = "Player was given a jetpack\n"
            str3 = text_console.v .. str1
            text_console.v = str3
        end
        if imgui.Button(u8"Fast recconect", btn_size) then
            sampConnectToServer(ip, port)
            FileWrite = io.open(inputFileName, "a")
            FileWrite:write("Player reconnected to the server\n")
            FileWrite:close()
            str1 = "Player reconnected to the server\n"
            str3 = text_console.v .. str1
            text_console.v = str3
        end
        if imgui.Button(u8"Restore HP", btn_size) then
           setCharHealth(PLAYER_PED, 100)
           FileWrite = io.open(inputFileName, "a")
           FileWrite:write("Player was given a 100 HP\n")
           FileWrite:close()
           str1 = "Player was given a 100 HP\n"
           str3 = text_console.v .. str1
           text_console.v = str3
        end
        if imgui.Button(u8"Restore armour", btn_size) then
            addArmourToChar(PLAYER_PED, 100)
            FileWrite = io.open(inputFileName, "a")
            FileWrite:write("Player was given a 100 armour\n")
            FileWrite:close()
            str1 = "Player was given a 100 armour\n"
            str3 = text_console.v .. str1
            text_console.v = str3
        end
        if imgui.Button(u8"WeaponHack [TEST]", btn_size) then
            weapon_window_state.v = not weapon_window_state.v
            --imgui.Process = weapon_window_state.v
        end
        if imgui.Button(u8"ReSpawn", btn_size)  then
            sampSpawnPlayer()
            FileWrite = io.open(inputFileName, "a")
            FileWrite:write("Player spawned\n")
            FileWrite:close()
            str1 = "Player spawned\n"
            str3 = text_console.v .. str1
            text_console.v = str3
        end
        if imgui.Button(u8"TP on placemark", btn_size) then
            mresult, X3, Y3, Z3 = getTargetBlipCoordinates()
            if mresult == true then 
                setCharCoordinates(PLAYER_PED, X3, Y3, Z3)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("Player teleported to the placemark\n")
                FileWrite:close()
                str1 = "Player teleported to the placemark\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
        end
        if imgui.Button(u8"Delete all gun", btn_size) then
            removeAllCharWeapons(PLAYER_PED)
            FileWrite = io.open(inputFileName, "a")
            FileWrite:write("Player`s gun was delete\n")
            FileWrite:close()
            str1 = "Player`s gun was delete\n"
            str3 = text_console.v .. str1
            text_console.v = str3
        end
        if imgui.CollapsingHeader(u8"AimBot") then
            if imgui.SliderFloat(u8"Distance", global_scale_slider, 20, 100) then
                global_scale = global_scale_slider.v
            end
            imgui.SameLine()
            imgui.TextDisabled('(?)')
            imgui.Hint(u8"Recommend on 20.")
            imgui.Checkbox(u8"Aim", checkbox42)
        end
        if imgui.CollapsingHeader(u8"Ammo") then
            imgui.InputText(u8"Number", text_ammo)
            if imgui.Button(u8"Give ammo on weapon in hands") then
                idgive = getCurrentCharWeapon(PLAYER_PED)
                addAmmoToChar(PLAYER_PED, idgive, text_ammo.v)
                FileWrite = io.open(inputFileName, "a")
                FileWrite:write("Player was given a ammo\n")
                FileWrite:close()
                str1 = "Player was given a ammo\n"
                str3 = text_console.v .. str1
                text_console.v = str3
            end
        end
        --imgui.EndChild()
        imgui.End()
    end
    ----------------------------------- ÕÎÉ ÄÎÏÎËÍÈÒÅËÜÍÎ --------------------------------------------
    if cheats_window_state.v then
        imgui.Begin(u8"H[0]i add", _, imgui.WindowFlags.MenuBar + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse) --, imgui.WindowFlags.MenuBar)
        --imgui.BeginChild("FCWind", imgui.ImVec2(300, 250), true)
        imgui.BeginMenuBar()
        if imgui.BeginMenu(u8"Menu") then
            if imgui.MenuItem(u8"Config") then
                conf = true
                cons = false
                help = false
                serv = false
            end
            if imgui.MenuItem(u8"Console") then
                conf = false
                cons = true
                help = false
                serv = false
            end
            if imgui.MenuItem(u8"Help") then
                conf = false
                cons = false
                help = true
                serv = false
            end
            if imgui.MenuItem(u8"Servers") then
                conf = false
                cons = false
                help = false
                serv = true
            end
            imgui.EndMenu()
        end
        imgui.MenuItem(u8'Info')
        imgui.SameLine()
        imgui.Hint(u8'Here you can configure the config,view the log, and learn how to use it..')
        imgui.Text(u8"__created by gg.]VolodyaHoi[__")
        imgui.EndMenuBar()
        imgui.BeginChild("FCWind33", imgui.ImVec2(500, 250), true)
        if cons == true then
            imgui.InputTextMultiline(u8" ", text_console, imgui.ImVec2(-1, 210))--, imgui.InputTextFlags.AllowTabInput)
            if imgui.Button(u8"Clear") then
                text_console.v = "H[0]i console loaded!\n"
            end
            imgui.SameLine()
            if imgui.Button(u8"Copy") then
                result = setClipboardText(text_console.v)
            end
        elseif conf == true then
            --imgui.BeginChild("crashWind", imgui.ImVec2(300, 250), true)
            --imgui.Text(u8"Äàííàÿ ôóíêà â ðàçðàáîòêå!")
            imgui.Combo(u8"Inf.Oxygen", combo_select, arr_str, #arr_str)
            imgui.Combo(u8"Inf.Run", combo_select2, arr_str2, #arr_str2)
            imgui.Combo(u8"AntiBike Fail", combo_select3, arr_str3, #arr_str3)
            imgui.Combo(u8"H[0]i tag", combo_select5, arr_str5, #arr_str5)
            imgui.Combo(u8"Q/J logger", combo_select6, arr_str6, #arr_str6)
            imgui.Combo(u8"Imgui style", combo_select4, arr_str4, #arr_str4)
            imgui.InputText(u8"Enter password", text_fparol)
            imgui.SameLine()
            imgui.TextDisabled(u8"(?)")
            imgui.Hint(u8'Important - after applying the password, it is reset.')
            imgui.Text(u8"Current password - " .. mainIni.config.fparol .. "")
            imgui.Separator()
            if imgui.Button(u8"Apply") then
                --sampAddChatMessage(arr_str[combo_select.v + 1], -1)
                mainIni.config.woxy = arr_str[combo_select.v + 1]
                mainIni.config.irun = arr_str2[combo_select2.v + 1]
                mainIni.config.kbike = arr_str3[combo_select3.v + 1]
                mainIni.config.style = arr_str4[combo_select4.v + 1]
                mainIni.config.huser = arr_str5[combo_select5.v + 1]
                mainIni.config.qjlogger = arr_str6[combo_select6.v + 1]
                mainIni.config.fparol = text_fparol.v
                if inicfg.save(mainIni, directIni) then
                    sampAddChatMessage("Config settings was saved!", -1)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("Config settings was saved!\n")
                    FileWrite:close()
                    reloadScripts()
                    sampAddChatMessage("Script loaded!", -1)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("Script loaded!\n")
                    FileWrite:close()
                    str1 = "Config settings was saved!\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                end
            end
            imgui.SameLine()
            if imgui.Button(u8"Reset") then
                mainIni.config.woxy = true
                mainIni.config.irun = true
                mainIni.config.kbike = true
                mainIni.config.huser = true
                mainIni.config.qjlogger = true
                mainIni.config.style = 8
                mainIni.config.fparol = "yourparol"
                if inicfg.save(mainIni, directIni) then
                    sampAddChatMessage("Config settings was restarted!", -1)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("Config settings was restarted!\n")
                    FileWrite:close()
                    reloadScripts()
                    sampAddChatMessage("Script loaded!", -1)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("Script loaded!\n")
                    FileWrite:close()
                    str1 = "Config settings was restarted\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                end
            end
            --imgui.EndChild()
        elseif help then
            imgui.Text(u8"Help for H[0]i ProJecT")
            imgui.Text(u8"Combinations:\nH + M - TP on placemark;\nL.Shift + M - main H[0]i ProJecT window.")
            imgui.Text(u8"Commands:\n/info |id| - get player info\n/fastp - enter your password from .ini.")
            imgui.Separator()
            imgui.Text(u8"Author - gg.]VolodyaHoi[")
            imgui.Text(u8"VKontakte -")
            imgui.SameLine()
            imgui.Link('https://vk.com/volodyahoi')
            imgui.Text(u8"BlastHack -")
            imgui.SameLine()
            imgui.Link("https://www.blast.hk/members/411247/")
        elseif serv then
            sname = sampGetCurrentServerName()
            sip, sport = sampGetCurrentServerAddress()
            imgui.Text(u8"| Server`s browser")
            imgui.Text(u8"| Current server: " .. sname .. " | IP: " .. sip .. ":" .. sport .. "")
            imgui.Text(u8"")
            imgui.Text(u8">Servers:")
            imgui.Text(u8"")
            imgui.Separator()
            imgui.Text(u8">....Cheating ALLOWED | IP: 37.252.189.76:7778")
            imgui.SameLine()
            if imgui.Button(u8"_Connect>") then
                sampConnectToServer("37.252.189.76", 7778)
            end
            imgui.Text(u8">....HackMySoftware - Cheating Server | IP: 178.32.185.200:7228")
            imgui.SameLine()
            if imgui.Button(u8"_Connect>") then
                sampConnectToServer("178.32.185.200", 7228)
            end
            imgui.Text(u8">....SA-MP Cheating Server | IP: samp.ugbase.eu:7777")
            imgui.SameLine()
            if imgui.Button(u8"_Connect>") then
                sampConnectToServer("samp.ugbase.eu", 7777)
            end
            imgui.Separator()
            if imgui.CollapsingHeader(u8"Change nick") then
                imgui.InputText(u8"Enter Nick", text_nick)
                if imgui.Button(u8"Apply") then
                    sampSetLocalPlayerName(text_nick.v)
                    sampConnectToServer(ip, port)
                end
            end
        end
        imgui.EndChild()
        imgui.End()
    end
    ----------------------------------- ÊÀÐ ÔÓÍÊÑ --------------------------------------------
    if carf_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Car funcks", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("CarCWind", imgui.ImVec2(300, 250), true)
        local btn_size = imgui.ImVec2(-0.1, 0)
            imgui.Checkbox(u8"GM car", checkbox8)
            imgui.Checkbox(u8"Fuck car", checkbox11)
            imgui.SameLine()
            imgui.TextDisabled('(?)')
            imgui.Hint(u8"Fuck your car.")
            imgui.Checkbox(u8"Rvanka incar", checkbox21)
            imgui.Checkbox(u8"SpeedHack", checkbox36)
            imgui.Checkbox(u8"Car collision", checkbox43)
            imgui.Checkbox(u8"Rvanka incar v2", checkbox47)
            if imgui.Button(u8"Fix car", btn_size) then
                carf = storeCarCharIsInNoSave(PLAYER_PED)
                carresultf = isCharSittingInAnyCar(PLAYER_PED)
                if carresultf == true then
                    fixCar(carf)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("Player's car was repaired\n")
                    FileWrite:close()
                    str1 = "Player's car was repaired\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                end
            end
            if imgui.Button(u8"Explode car", btn_size) then
                carex = storeCarCharIsInNoSave(PLAYER_PED)
                carresultex = isCharSittingInAnyCar(PLAYER_PED)
                if carresultex == true then
                    explodeCar(carex)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("Player's car was exploded\n")
                    FileWrite:close()
                    str1 = "Player's car was exploded\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                end
            end
            if imgui.Button(u8"Set nitro", btn_size) then
                carn = storeCarCharIsInNoSave(PLAYER_PED)
                carresultn = isCharSittingInAnyCar(PLAYER_PED)
                if carresultn == true then
                    giveNonPlayerCarNitro(carn)
                end
            end
            if imgui.Button(u8"Set hydraulics", btn_size) then
                carresult = isCharSittingInAnyCar(PLAYER_PED)
                if carresult == true then
                    if gidr == 0 then
                        cargd = storeCarCharIsInNoSave(PLAYER_PED)
                        setCarHydraulics(cargd, true)
                        gidr = 1
                    elseif gidr == 1 then
                        setCarHydraulics(cargd, false)
                        gidr = 0
                    end
                end
            end
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÀÍÒÈ ÊÐÀØÅÐÛ --------------------------------------------
    if antic_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 150), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"AntiCrashers", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("antiCWind", imgui.ImVec2(300, 150), true)
        imgui.Checkbox(u8"AntiTrailer", checkbox13) -- 
        imgui.Checkbox(u8"AntiRollCrasher", checkbox14) -- äîäåëàòü àíòèêðàøåðû
        imgui.Checkbox(u8"AntiCrasher [TEST]", checkbox44) --
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÑÂÎÁÎÄÍÎ --------------------------------------------
    if crash_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 150), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"H[0]i ôðèè", _, imgui.WindowFlags.NoResize)
        --imgui.BeginChild("crashWind", imgui.ImVec2(300, 150), true)
        --imgui.EndChild()
		imgui.End()
	end
    ----------------------------------- ÔËÓÄÅÐÛ --------------------------------------------
    if dos_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Flooders", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse) -- ïåðåïèñàòü ôëóäåðû íà ÷åêáîêñû
        --imgui.BeginChild("dosWind", imgui.ImVec2(300, 250), true)
        imgui.Checkbox(u8"Fake kill flooder", checkbox38)
        local btn_size = imgui.ImVec2(-0.1, 0)
        if imgui.Button(u8"Fast flooder", btn_size) then
            for flood = 1,120 do -- Îò îäíîãî äî 120
                sampSendChat(floodvh)
            end
        end
        if imgui.Button(u8"Rcon flooder", btn_size) then --
            rcon:run()
        end
        if imgui.Button(u8"Death flooder", btn_size) then 
            dflood:run()
        end
        if imgui.Button(u8"Packet flooder", btn_size) then 
            packet:run()
        end
        if imgui.CollapsingHeader(u8"Pro flooder") then --
            imgui.InputText(u8"ms.", text_buffer)
            if imgui.Button(u8"On flood") then
                thr:run()
            end 
        end
        if imgui.CollapsingHeader(u8"Cmd flooder") then
            imgui.InputText(u8"Cmd (without /)", text_cmd)
            imgui.InputText(u8"ms.", text_wait)
            if imgui.Button(u8"On flood") then
                commandflood:run()
            end
        end
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÁÎÒÛ --------------------------------------------
    if bots_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Bots", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("botsCWind", imgui.ImVec2(300, 250), true)
        local btn_size = imgui.ImVec2(-0.1, 0)
        if imgui.CollapsingHeader(u8"Robber") then
            if imgui.Button(u8"Set CheckPoint 1") then
                x0, y0, z0 = getCharCoordinates(PLAYER_PED)
                sampCreate3dTextEx(12888, "{00FFFF}Place TP ¹1", 0xFF0000AA, x0, y0, z0, 1000, true, -1, -1)
                chekone = x0, y0, z0
            end
            if imgui.Button(u8"Set CheckPoint 2") then
                x3, y3, z3 = getCharCoordinates(PLAYER_PED)
                sampCreate3dTextEx(12889, "{00FFFF}Place TP ¹2", 0xFF0000AA, x3, y3, z3, 1000, true, -1, -1)
                chektwo = x3, y3, z3
            end
            imgui.Separator()
            if imgui.Button(u8"Work") then -- ïåðåïèñàòü íà ÷åêáîêñ
                botthr:run()
            end
            imgui.SameLine()
            if imgui.Button(u8"Clear pickup") then
                sampDestroy3dText(12888)
                sampDestroy3dText(12889)
            end
        end
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÏÀÊÅÒÛ --------------------------------------------
    if packet_window_state.v then -- ïåðåäåëàòü ïàêåòû ê õóÿì
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Sync & Events", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("PackCWind", imgui.ImVec2(300, 250), true)
        imgui.Checkbox(u8"AntiDeleteGun", checkbox16)
        imgui.Checkbox(u8"New players on stream", checkbox17)
        imgui.Checkbox(u8"Block TP", checkbox18)
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÈÃÐÎÊÈ --------------------------------------------
    if players_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Players", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("playWind", imgui.ImVec2(300, 250), true)
        if imgui.CollapsingHeader(u8"Teleport to player") then
            imgui.InputText(u8"Enter ID", text_tp)
            if imgui.Button(u8"TP") then
                result, posX, posY, posZ = sampGetStreamedOutPlayerPos(text_tp.v)
                setCharCoordinates(PLAYER_PED, posX, posY, posZ)
            end
        end
        if imgui.CollapsingHeader(u8"Damager by ID") then -- ïåðåïèñàòü íà ÷åêáîêñ
            imgui.InputText(u8"Enter ID", text_dmg)
            if imgui.Button(u8"On DMG") then
                iddmg:run()
            end
        end
        if imgui.CollapsingHeader(u8"Flooder /showpass") then -- ïåðåïèñàòü íà ÷åêáîêñ
            imgui.InputText(u8"Enter ID", text_block)
            if imgui.Button(u8"On flood") then
                aflood:run()
            end
        end
        if imgui.CollapsingHeader(u8"Get player info") then -- óëó÷øèòü
            imgui.InputText(u8"Enter ID", text_info)
            if imgui.Button(u8"Get") then
                result = sampIsPlayerConnected(text_info.v)
                if result == true then
                    healthid = sampGetPlayerHealth(text_info.v)
                    armorid = sampGetPlayerArmor(text_info.v)
                    pingid = sampGetPlayerPing(text_info.v)
                    nameid = sampGetPlayerNickname(text_info.v)
                    pauseresult = sampIsPlayerPaused(text_info.v)
                    if pauseresult then
                        pause = "AFK"
                    else
                        pause = "NonAFK"
                    end
                    _, pedid = sampGetCharHandleBySampPlayerId(text_info.v)
                    ofresult = isCharOnFoot(pedid)
                    if ofresult then
                        ofdata = "OnFoot"
                    else
                        ofdata = "InCar"
                    end
                    --sampAddChatMessage("{00FFFF}ÍèêÍåéì - " .. nameid .. " | Çäîðîâüå - " .. healthid .." | Áðîíÿ - " .. armorid .. " | Ïèíã - " .. pingid .. " | Äàòà - " .. ofdata .. " | Ïàóçà - " .. pause .. "", -1)
                    FileWrite = io.open(inputFileName, "a")
                    FileWrite:write("NickName - " .. nameid .. " | Health - " .. healthid .." | Armour - " .. armorid .. " | Ping - " .. pingid .. " | Data - " .. ofdata .. " | Pause - " .. pause .. "\n")
                    FileWrite:close()
                    str1 = "NickName - " .. nameid .. " | HP - " .. healthid .." | Armour - " .. armorid .. " | Ping - " .. pingid .. " | Data - " .. ofdata .. " | Pause - " .. pause .. "\n"
                    str3 = text_console.v .. str1
                    text_console.v = str3
                end
            end
        end
        if imgui.CollapsingHeader(u8"Fake kill") then
            imgui.InputText(u8"Enter ID", text_fkill)
            if imgui.CollapsingHeader(u8"Reason") then
                if imgui.Button(u8"Desert eagle") then
                    sampSendDeathByPlayer(text_fkill.v, 24)
                end 
                if imgui.Button(u8"Colt") then
                    sampSendDeathByPlayer(text_fkill.v, 22)
                end 
                if imgui.Button(u8"Colt stels") then
                    sampSendDeathByPlayer(text_fkill.v, 23) 
                end 
                if imgui.Button(u8"UZI") then
                    sampSendDeathByPlayer(text_fkill.v, 28) 
                end 
                if imgui.Button(u8"TEK-9") then
                    sampSendDeathByPlayer(text_fkill.v, 32) 
                end 
                if imgui.Button(u8"MP5") then
                    sampSendDeathByPlayer(text_fkill.v, 29) 
                end 
                if imgui.Button(u8"Rifle") then
                    sampSendDeathByPlayer(text_fkill.v, 33)
                end 
                if imgui.Button(u8"Sniper rifle") then
                    sampSendDeathByPlayer(text_fkill.v, 34) 
                end 
                if imgui.Button(u8"M4") then
                    sampSendDeathByPlayer(text_fkill.v, 31) 
                end 
                if imgui.Button(u8"AK") then
                    sampSendDeathByPlayer(text_fkill.v, 30)  
                end 
                if imgui.Button(u8"Minigun") then
                    sampSendDeathByPlayer(text_fkill.v, 38) 
                end 
                if imgui.Button(u8"Shotgun") then
                    sampSendDeathByPlayer(text_fkill.v, 25) 
                end 
                if imgui.Button(u8"SPAS-4") then
                    sampSendDeathByPlayer(text_fkill.v, 27) 
                end 
                if imgui.Button(u8"Sawns") then
                    sampSendDeathByPlayer(text_fkill.v, 26) 
                end 
                if imgui.Button(u8"Fist") then
                    sampSendDeathByPlayer(text_fkill.v, 0) 
                end 
                if imgui.Button(u8"Dick") then
                    sampSendDeathByPlayer(text_fkill.v, 10) 
                end 
                if imgui.Button(u8"Spray") then
                    sampSendDeathByPlayer(text_fkill.v, 41) 
                end 
            end
        end
        --imgui.EndChild()
        imgui.End()
    end
    ----------------------------------- ÒÅËÅÏÎÐÒÛ --------------------------------------------
    if teleport_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Teleports", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        --imgui.BeginChild("tpwind", imgui.ImVec2(300, 250), true)
        if imgui.CollapsingHeader(u8"Ghetto") then
            if imgui.Button(u8"LKN") then
                setCharCoordinates(PLAYER_PED, 1454.97, 750.99, 11.02)
            end
            if imgui.Button(u8"Russian mafia") then
                setCharCoordinates(PLAYER_PED, 937.85, 1733.32, 8.85)
            end
            if imgui.Button(u8"Yakudja") then
                setCharCoordinates(PLAYER_PED, 1456.92, 2773.42, 10.82)
            end
            if imgui.Button(u8"Groove") then
                setCharCoordinates(PLAYER_PED, 2495.26, -1690.99, 14.77)
            end
            if imgui.Button(u8"Ballas") then
                setCharCoordinates(PLAYER_PED, 2650.06, -2021.80, 14.18)
            end
            if imgui.Button(u8"Vagos") then
                setCharCoordinates(PLAYER_PED, 2770.72, -1628.43, 12.18)
            end
            if imgui.Button(u8"Rifa") then
                setCharCoordinates(PLAYER_PED, 2185.72, -1814.39, 13.55)
            end
            if imgui.Button(u8"Actek") then
                setCharCoordinates(PLAYER_PED, 1667.49, -2107.72, 14.07)
            end
        end
        if imgui.CollapsingHeader(u8"Important") then
            if imgui.Button(u8"Mayoralty") then
                setCharCoordinates(PLAYER_PED, 1480.95, -1771.27, 18.80)
            end
            if imgui.Button(u8"Bank") then
                setCharCoordinates(PLAYER_PED, 1411.96, -1699.79, 13.54)
            end
            if imgui.Button(u8"Driving school") then
                setCharCoordinates(PLAYER_PED, -2026.62, -101.39, 35.16)
            end
        end
        if imgui.CollapsingHeader(u8"Casino") then
            if imgui.Button(u8"Four dragons") then
                setCharCoordinates(PLAYER_PED, 2022.01, 1007.08, 10.82)
            end
            if imgui.Button(u8"Caligula places") then
                setCharCoordinates(PLAYER_PED, 2194.70, 1676.73, 12.37)
            end
        end
        if imgui.CollapsingHeader(u8"Misc") then
            if imgui.Button(u8"Hospital SF") then
                setCharCoordinates(PLAYER_PED, -2655.05, 639.69, 14.45)
            end
            if imgui.Button(u8"Clothes shop") then
                setCharCoordinates(PLAYER_PED, 461.18, -1500.94, 31.06)
            end
        end
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÑÂÎÁÎÄÍÎ --------------------------------------------
    if servers_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"Servers", _, imgui.WindowFlags.NoResize)
        --imgui.BeginChild("servWind", imgui.ImVec2(300, 250), true)
        --imgui.EndChild()
		imgui.End()
    end
    ----------------------------------- ÂÅÀÏÎÍÕÀÊ --------------------------------------------
    if weapon_window_state.v then
        imgui.SetNextWindowSize(imgui.ImVec2(300, 250), imgui.Cond.FirstUseEver)
        imgui.Begin(u8"WeaponHack", _, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse)
        if imgui.CollapsingHeader(u8"Cold") then
            if imgui.Button(u8"Fist") then
                giveWeaponToChar(PLAYER_PED, 0, 1)
            end
            if imgui.Button(u8"Knuckle") then
                giveWeaponToChar(PLAYER_PED, 1, 1)
            end
            if imgui.Button(u8"Golf club") then
                giveWeaponToChar(PLAYER_PED, 2, 1)
            end
            if imgui.Button(u8"Police baton") then
                giveWeaponToChar(PLAYER_PED, 3, 1)
            end
            if imgui.Button(u8"Knife") then
                giveWeaponToChar(PLAYER_PED, 4, 1)
            end
            if imgui.Button(u8"Baseball bat") then
                giveWeaponToChar(PLAYER_PED, 5, 1)
            end
            if imgui.Button(u8"Shovel") then
                giveWeaponToChar(PLAYER_PED, 6, 1)
            end
            if imgui.Button(u8"Cue") then
                giveWeaponToChar(PLAYER_PED, 7, 1)
            end
            if imgui.Button(u8"Katana") then
                giveWeaponToChar(PLAYER_PED, 8, 1)
            end
            if imgui.Button(u8"Saw") then
                giveWeaponToChar(PLAYER_PED, 9, 1)
            end
            if imgui.Button(u8"Flowers") then
                giveWeaponToChar(PLAYER_PED, 14, 1)
            end
            if imgui.Button(u8"Cane") then
                giveWeaponToChar(PLAYER_PED, 15, 1)
            end
        end
        if imgui.CollapsingHeader(u8"Missile") then
            if imgui.Button(u8"Grenade") then
                giveWeaponToChar(PLAYER_PED, 16, 50)
            end
            if imgui.Button(u8"Tear gas") then
                giveWeaponToChar(PLAYER_PED, 17, 50)
            end
            if imgui.Button(u8"Molotov") then
                giveWeaponToChar(PLAYER_PED, 18, 50)
            end
        end
        if imgui.CollapsingHeader(u8"Pistol") then
            if imgui.Button(u8"Colt") then
                giveWeaponToChar(PLAYER_PED, 22, 50)
            end
            if imgui.Button(u8"Colt stels") then
                giveWeaponToChar(PLAYER_PED, 23, 50)
            end
            if imgui.Button(u8"Desert eagle") then
                giveWeaponToChar(PLAYER_PED, 24, 150)
            end
        end
        if imgui.CollapsingHeader(u8"Shotgun") then
            if imgui.Button(u8"Shotgun") then
                giveWeaponToChar(PLAYER_PED, 25, 50)
            end
            if imgui.Button(u8"Sawns") then
                giveWeaponToChar(PLAYER_PED, 26, 150)
            end
            if imgui.Button(u8"SPAS-4") then
                giveWeaponToChar(PLAYER_PED, 27, 50)
            end
        end
        if imgui.CollapsingHeader(u8"Submachine gun") then
            if imgui.Button(u8"UZI") then
                giveWeaponToChar(PLAYER_PED, 28, 50)
            end
            if imgui.Button(u8"TEK-9") then
                giveWeaponToChar(PLAYER_PED, 32, 50)
            end
            if imgui.Button(u8"MP5") then
                giveWeaponToChar(PLAYER_PED, 29, 50)
            end
        end
        if imgui.CollapsingHeader(u8"Machinegun") then
            if imgui.Button(u8"AK47") then
                giveWeaponToChar(PLAYER_PED, 30, 50)
            end
            if imgui.Button(u8"Ì4") then
                giveWeaponToChar(PLAYER_PED, 31, 50)
            end
        end
        if imgui.CollapsingHeader(u8"Rifles") then
            if imgui.Button(u8"Rifle") then
                giveWeaponToChar(PLAYER_PED, 33, 50)
            end
            if imgui.Button(u8"Sniper rifle") then
                giveWeaponToChar(PLAYER_PED, 34, 150)
            end
        end
        if imgui.CollapsingHeader(u8"Admins gun") then
            if imgui.Button(u8"RPG") then
                giveWeaponToChar(PLAYER_PED, 35, 150)
            end
            if imgui.Button(u8"Rocket HS") then
                giveWeaponToChar(PLAYER_PED, 36, 50)
            end
            if imgui.Button(u8"Flamethrower") then
                giveWeaponToChar(PLAYER_PED, 37, 50)
            end
            if imgui.Button(u8"Minigun") then
                giveWeaponToChar(PLAYER_PED, 38, 150)
            end
        end
        if imgui.CollapsingHeader(u8"Other") then
            if imgui.Button(u8"Blast package") then
                giveWeaponToChar(PLAYER_PED, 39, 50)
            end
            if imgui.Button(u8"Detonator") then
                giveWeaponToChar(PLAYER_PED, 40, 50)
            end
            if imgui.Button(u8"Spray") then
                giveWeaponToChar(PLAYER_PED, 41, 50)
            end
            if imgui.Button(u8"Extinguisher") then
                giveWeaponToChar(PLAYER_PED, 42, 50)
            end
            if imgui.Button(u8"Camera") then
                giveWeaponToChar(PLAYER_PED, 43, 50)
            end
            if imgui.Button(u8"Parachute") then
                giveWeaponToChar(PLAYER_PED, 46, 50)
            end
        end
		imgui.End()
    end
end
----------------------------------- ÔÓÍÊÖÈÈ-ÏÎÒÎÊÈ --------------------------------------------
function pfthr()
    if pflood == 0 then
        while true do
            wait(text_buffer.v)
            sampSendChat(floodvh)
            wait(text_buffer.v)
            sampSendChat(floodvh2)
            wait(text_buffer.v)
            sampSendChat(floodvh3)
            wait(text_buffer.v)
            sampSendChat(floodvh4)
            wait(text_buffer.v)
            sampSendChat(floodvh5)
            wait(text_buffer.v)
            pflood = 1
            FLOODERp = "00FF00"
        end
    elseif pflood == 1 then
        FLOODERp = "FF0000"
    end
end

function pizdmg()
    if pdmg == 0 then
        while true do
            wait(100)
            math.randomseed(os.time())
            pdmgrand = math.random(0, maxid)
            sampSendGiveDamage(pdmgrand, 300.0, 34, 3)
            DAMAGERp = "00FF00"
            pdmg = 1
        end
    elseif pdmg == 1 then
        pdmg = 0
        DAMAGERp = "FF0000"
    end
end

function bots()
    if botg == 0 then
        while true do
            --wait(700)
            setCharCoordinates(PLAYER_PED, x0, y0, z0-1)
            wait(100)
            setCharCoordinates(PLAYER_PED, x3, y3, z3-1)
            botg = 1
            wait(100)
        end
    elseif botg == 1 then
        botg = 0
    end
end

function olddmg()
    if idolddmg == 0 then
        while true do
            wait(500)
            sampSendGiveDamage(text_dmg.v, 50.0, 34, 3)
            idolddmg = 1
            DAMAGERp = "00FF00"
        end
    elseif idolddmg == 1 then
        idolddmg = 0
        DAMAGERp = "FF0000"
    end
end

function rconflooder()
    if rconf == 0 then
        while true do
            for rcon228flood = 1,1000 do -- Îò îäíîãî äî 120
                wait(0)
                sampSendRconCommand("volodyahoigoodgamersclan")
                rconf = 1
            end
            rconf = 1
        end
    elseif rconf == 1 then
        rconf = 0
    end
end

function deadflood()
    if flodead == 0 then
        while true do
            wait(0)
            sampSpawnPlayer()
            taskDead(PLAYER_PED)
            flodead = 1
        end
    elseif flodead == 1 then
        flodead = 0
    end
end

function comflood()
    if cmdflood == 0 then
        while true do
            wait(text_wait.v)
            text = text_cmd .v
            sampSendChat("/" .. text .. "")
            cmdflood = 1
        end
    elseif cmdflood == 1 then
        cmdflood = 0
    end
end

function pcflood()
    if pflood == 0 then
        while true do
            wait(0)
            sampSendRconCommand("volodyahoigoodgamersclan")
            sampSendOnfootData("volodyahoigoodgamersclan")
            sampSendIncarData("volodyahoigoodgamersclan")
            sampSendPassengerData("volodyahoigoodgamersclan")
            sampSendAimData("volodyahoigoodgamersclan")
            sampSendBulletData("volodyahoigoodgamersclan")
            sampSendTrailerData("volodyahoigoodgamersclan")
            sampSendUnoccupiedData("volodyahoigoodgamersclan")
            sampSendSpectatorData("volodyahoigoodgamersclan")
            pflood = 1
        end
    elseif pflood == 1 then
        pflood = 0
    end
end
----------------------------------- ÔÓÍÊÖÈß ÏÎÄÑÊÀÇÎÊ --------------------------------------------
function imgui.Hint(text, delay)
    if imgui.IsItemHovered() then
        if go_hint == nil then go_hint = os.clock() + (delay and delay or 0.0) end
        local alpha = (os.clock() - go_hint) * 3 -- ñêîðîñòü ïîÿâëåíèÿ
        if os.clock() >= go_hint then
            imgui.PushStyleVar(imgui.StyleVar.Alpha, (alpha <= 1.0 and alpha or 1.0))
                imgui.PushStyleColor(imgui.Col.PopupBg, imgui.GetStyle().Colors[imgui.Col.ButtonHovered])
                    imgui.BeginTooltip()
                    imgui.PushTextWrapPos(450)
                    imgui.TextUnformatted(text)
                    if not imgui.IsItemVisible() and imgui.GetStyle().Alpha == 1.0 then go_hint = nil end
                    imgui.PopTextWrapPos()
                    imgui.EndTooltip()
                imgui.PopStyleColor()
            imgui.PopStyleVar()
        end
    end
end
----------------------------------- ÊËÈÊÀÁÅËÜÍÀß ÑÑÛËÊÀ --------------------------------------------
function imgui.Link(link,name,myfunc)
    myfunc = type(name) == 'boolean' and name or myfunc or false
    name = type(name) == 'string' and name or type(name) == 'boolean' and link or link
    local size = imgui.CalcTextSize(name)
    local p = imgui.GetCursorScreenPos()
    local p2 = imgui.GetCursorPos()
    local resultBtn = imgui.InvisibleButton('##'..link..name, size)
    if resultBtn then
        if not myfunc then
            os.execute('explorer '..link)
        end
    end
    imgui.SetCursorPos(p2)
    if imgui.IsItemHovered() then
        imgui.TextColored(imgui.GetStyle().Colors[imgui.Col.ButtonHovered], name)
        imgui.GetWindowDrawList():AddLine(imgui.ImVec2(p.x, p.y + size.y), imgui.ImVec2(p.x + size.x, p.y + size.y), imgui.GetColorU32(imgui.GetStyle().Colors[imgui.Col.ButtonHovered]))
    else
        imgui.TextColored(imgui.GetStyle().Colors[imgui.Col.Button], name)
    end
    return resultBtn
end
----------------------------------- ÔÓÍÊÖÈÈ-ÏÎÒÎÊÈ --------------------------------------------
function aflooder()
    if afl == 0 then
        while true do
            wait(0)
            --wait(text_buffer.v)
            sampSendChat("/showpass " .. text_block.v .. "")
            afl = 1
        end
    elseif afl == 1 then
        afl = 0
    end
end

        --if imgui.Button(u8"Ïèçäîðâàíêà[beta]") then
            --carfc = storeCarCharIsInNoSave(PLAYER_PED)
            --resultp = isCharInCar(PLAYER_PED, carfc)
            --Xrv, Yrv, Zrv = getCharCoordinates(PLAYER_PED)
            --if resultp == true then
                --setCharCoordinates(PLAYER_PED, Xrv, Yrv, 100000)
                --setCarCoordinates(carfc, Xrv, Yrv, 100000)
                --taskDead(PLAYER_PED)
                --setCharCoordinates(PLAYER_PED, Xrv, Yrv, Zrv)
                
                --setCarCoordinates(carrc, Xrv, Yrv, 100000)
                --setCharCoordinates(PLAYER_PED, Xrv, Yrv, Zrv)
                --function sampev.onSendVehicleSync(data)
                    --data.position.x = Xrv
                    --data.position.y = Yrv
                    --data.position.z = Zrv+100000
                --end   

            --end
        --end
----------------------------------- ÔÓÍÊÖÈß ÄËß ÀÈÌÀ --------------------------------------------
        function targetAtCoords(x, y, z)
            local cx, cy, cz = getActiveCameraCoordinates()
        
            local vect = {
                fX = cx - x,
                fY = cy - y,
                fZ = cz - z
            }
        
            local screenAspectRatio = representIntAsFloat(readMemory(0xC3EFA4, 4, false))
            local crosshairOffset = {
                representIntAsFloat(readMemory(0xB6EC10, 4, false)),
                representIntAsFloat(readMemory(0xB6EC14, 4, false))
            }
        
            -- weird shit
            local mult = math.tan(getCameraFov() * 0.5 * 0.017453292)
            fz = 3.14159265 - math.atan2(1.0, mult * ((0.5 - crosshairOffset[1]) * (2 / screenAspectRatio)))
            fx = 3.14159265 - math.atan2(1.0, mult * 2 * (crosshairOffset[2] - 0.5))
        
            local camMode = readMemory(0xB6F1A8, 1, false)
        
            if not (camMode == 53 or camMode == 55) then -- sniper rifle etc.
                fx = 3.14159265 / 2
                fz = 3.14159265 / 2
            end
        
            local ax = math.atan2(vect.fY, -vect.fX) - 3.14159265 / 2
            local az = math.atan2(math.sqrt(vect.fX * vect.fX + vect.fY * vect.fY), vect.fZ)
        
            setCameraPositionUnfixed(az - fz, fx - ax)
        end
----------------------------------- ÔÓÍÊÖÈÈ-ÊÎÌÀÍÄ --------------------------------------------
function cmd_fastp()
    sampSetCurrentDialogEditboxText(mainIni.config.fparol)
end

function cmd_info(arg)
    result = sampIsPlayerConnected(arg)
    if result == true then
        healthid = sampGetPlayerHealth(arg)
        armorid = sampGetPlayerArmor(arg)
        pingid = sampGetPlayerPing(arg)
        nameid = sampGetPlayerNickname(arg)
        pauseresult = sampIsPlayerPaused(arg)
        if pauseresult then
            pause = "AFK"
        else
            pause = "NonAFK"
        end
        _, pedid = sampGetCharHandleBySampPlayerId(arg)
        ofresult = isCharOnFoot(pedid)
        if ofresult then
            ofdata = "OnFoot"
        else
            ofdata = "InCar"
        end
        --sampAddChatMessage("{00FFFF}ÍèêÍåéì - " .. nameid .. " | Çäîðîâüå - " .. healthid .." | Áðîíÿ - " .. armorid .. " | Ïèíã - " .. pingid .. " | Äàòà - " .. ofdata .. " | Ïàóçà - " .. pause .. "", -1)
        FileWrite = io.open(inputFileName, "a")
        FileWrite:write("ÍèêÍåéì - " .. nameid .. " | Çäîðîâüå - " .. healthid .." | Áðîíÿ - " .. armorid .. " | Ïèíã - " .. pingid .. " | Äàòà - " .. ofdata .. " | Ïàóçà - " .. pause .. "\n")
        FileWrite:close()
        str1 = "NickName - " .. nameid .. " | HP - " .. healthid .." | Armour - " .. armorid .. " | Ping - " .. pingid .. " | Data - " .. ofdata .. " | Pause - " .. pause .. "\n"
        str3 = text_console.v .. str1
        text_console.v = str3
    end
end
----------------------------------- ÔÓÍÊÖÈÈ-ÏÎÒÎÊÈ --------------------------------------------
function pulseh() 
    while true do
        wait(0)
        if testv2 == 1 then 
            setCharHealth(PLAYER_PED, 10)
            wait(100)
            setCharHealth(PLAYER_PED, 20)
            wait(100)
            setCharHealth(PLAYER_PED, 30)
            wait(100)
            setCharHealth(PLAYER_PED, 40)
            wait(100)
            setCharHealth(PLAYER_PED, 50)
            wait(100)
            setCharHealth(PLAYER_PED, 60)
            wait(100)
            setCharHealth(PLAYER_PED, 70)
            wait(100)
            setCharHealth(PLAYER_PED, 80)
            wait(100)
            setCharHealth(PLAYER_PED, 90)
            wait(100)
            setCharHealth(PLAYER_PED, 100)
            wait(100)
            setCharHealth(PLAYER_PED, 90)
            wait(100)
            setCharHealth(PLAYER_PED, 80)
            wait(100)
            setCharHealth(PLAYER_PED, 70)
            wait(100)
            setCharHealth(PLAYER_PED, 60)
            wait(100)
            setCharHealth(PLAYER_PED, 50)
            wait(100)
            setCharHealth(PLAYER_PED, 40)
            wait(100)
            setCharHealth(PLAYER_PED, 30)
            wait(100)
            setCharHealth(PLAYER_PED, 20)
            wait(100)
            setCharHealth(PLAYER_PED, 10)
            wait(100)
        end
    end
end

function cnick() 
    while true do
        CREATp = "BA55D3"
        PALp = "00FF7F"
        wait(100)
        PALp = "00FF7F"
        CREATp = "FF0000"
        wait(100)
        CREATp = "00FFFF"
        PALp = "54FF9F"
        wait(100)
        CREATp = "7FFF00"
        PALp = "9932CC"
        wait(100)
        CREATp = "7FFF00"
        PALp = "FFD700"
        wait(100)
        CREATp = "AB82FF" 
        PALp = "BA55D3"
        wait(100)  
        CREATp = "FFD700"
        PALp = "FFD700"
        wait(100)  
        CREATp = "54FF9F"
        PALp = "AB82FF"
        wait(100)  
        CREATp = "00FF7F"
        PALp = "9932CC"
        wait(100)                         
    end
end

function armthr() 
    while true do
        HEALTHp = getCharHealth(PLAYER_PED)
        ARMOURp = getCharArmour(PLAYER_PED)
        STATUSp = "" .. HEALTHp .." HP"
        wait(1000)
        STATUSp = "" .. ARMOURp .." ARM"
        wait(1000)                    
    end
end