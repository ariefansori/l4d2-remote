local kb = require("keyboard");
local ms = require("mouse");
local server = libs.server;

local avatar_s1_on = "img/checked/icon_c16.png"; -- bill
local avatar_s2_on = "img/checked/icon_c14.png";	-- zoey
local avatar_s3_on = "img/checked/icon_c27.png"; -- francis
local avatar_s4_on = "img/checked/icon_c21.png"; -- louis
local avatar_s5_on = "img/checked/icon_c23.png"; -- ellis
local avatar_s6_on = "img/checked/icon_c13.png"; -- coach
local avatar_s7_on = "img/checked/icon_c25.png"; -- rochelle
local avatar_s8_on = "img/checked/icon_c06.png"; -- nick
local avatar_s1_off = "img/bnw/icon_c16.jpg";
local avatar_s2_off = "img/bnw/icon_c14.jpg";
local avatar_s3_off = "img/bnw/icon_c27.jpg";
local avatar_s4_off = "img/bnw/icon_c21.jpg";
local avatar_s5_off = "img/bnw/icon_c23.jpg";
local avatar_s6_off = "img/bnw/icon_c13.jpg";
local avatar_s7_off = "img/bnw/icon_c25.jpg";
local avatar_s8_off = "img/bnw/icon_c06.jpg";

local survivor = "all";
local chatkey = "y";
local command;


-- MAIN

actions.change = function (text)
	command = text;
end

actions.send = function ()
	sendCommand();
end

actions.god = function ()
	command = "!god ".. survivor;
	sendCommand();
end

actions.revive = function ()
	command = "!revive ".. survivor;
	sendCommand();
end

actions.revive_reset = function ()
	command = "!revivecount ".. survivor .." 0";
	sendCommand();
end

actions.inf_ammo = function ()
	command = "!infinite_ammo ".. survivor;
	sendCommand();
end

actions.explosive_ammo = function ()
	command = "!infinite_upgrade ".. survivor .." explosive_ammo";
	sendCommand();
end

actions.incendiary_ammo = function ()
	command = "!infinite_upgrade ".. survivor .." incendiary_ammo";
	sendCommand();
end

actions.move_bot = function ()
	command = "!move ".. survivor;
	sendCommand();
end

actions.warp_bot = function ()
	command = "!warp ".. survivor;
	sendCommand();
end

actions.warp_target_bot = function ()
	command = "!warp_here ".. survivor;
	sendCommand();
end

-- WEAPON

actions.ak47 = function ()
	command = "!give ".. survivor .." rifle_ak47";
	sendCommand();
end

actions.awp = function ()
	command = "!give ".. survivor .." sniper_awp";
	sendCommand();
end

actions.mp5 = function ()
	command = "!give ".. survivor .." smg_mp5";
	sendCommand();
end

actions.chainsaw = function ()
	command = "!give ".. survivor .." chainsaw";
	sendCommand();
end

actions.first_aid = function ()
	command = "!give ".. survivor .." first_aid_kit";
	sendCommand();
end

-- SPAWN

actions.spawn_ammo = function ()
	command = "!spawn_ammo";
	sendCommand();
end

actions.spawn_first_aid = function ()
	command = "!weapon first_aid_kit 0";
	sendCommand();
end

actions.spawn_molotov = function ()
	command = "!weapon molotov 0";
	sendCommand();
end

actions.spawn_pipe_bomb = function ()
	command = "!weapon pipe_bomb 0";
	sendCommand();
end

actions.spawn_bile_bomb = function ()
	command = "!weapon vomitjar 0";
	sendCommand();
end

actions.spawn_gascan = function ()
	command = "!gascan 1";
	sendCommand();
end

actions.spawn_firework = function ()
	command = "!fireworkcrate 1";
	sendCommand();
end

actions.spawn_oxygen = function ()
	command = "!oxygentank 1";
	sendCommand();
end

actions.spawn_propane = function ()
	command = "!propanetank 1";
	sendCommand();
end

actions.spawn_barrel = function ()
	command = "!barrel 1";
	sendCommand();
end

actions.spawn_bar1 = function ()
	command = "!prop dynamic models/props_street/police_barricade.mdl";
	sendCommand();
end

actions.spawn_bar2 = function ()
	command = "!prop dynamic models/props_street/police_barricade2.mdl";
	sendCommand();
end

actions.spawn_bar3 = function ()
	command = "!prop dynamic models/props_street/police_barricade3.mdl";
	sendCommand();
end

actions.spawn_bar4 = function ()
	command = "!prop dynamic models/props_street/police_barricade4.mdl";
	sendCommand();
end


-- SURVIVOR

actions.s1 = function ()
	if (survivor == "bill") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s1", image = avatar_s1_off, scale = "fill" });
	else
		survivor = "bill";
		sOff();
		server.update({ id = "btn_s1", image = avatar_s1_on, scale = "fill" });
	end
end

actions.s2 = function ()
	if (survivor == "zoey") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s2", image = avatar_s2_off, scale = "fill" });
	else
		survivor = "zoey";
		sOff();
		server.update({ id = "btn_s2", image = avatar_s2_on, scale = "fill" });
	end
end

actions.s3 = function ()
	if (survivor == "francis") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s3", image = avatar_s3_off, scale = "fill" });
	else
		survivor = "francis";
		sOff();
		server.update({ id = "btn_s3", image = avatar_s3_on, scale = "fill" });
	end
end

actions.s4 = function ()
	if (survivor == "louis") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s4", image = avatar_s4_off, scale = "fill" });
	else
		survivor = "louis";
		sOff();
		server.update({ id = "btn_s4", image = avatar_s4_on, scale = "fill" });
	end
end

actions.s5 = function ()
	if (survivor == "ellis") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s5", image = avatar_s5_off, scale = "fill" });
	else
		survivor = "ellis";
		sOff();
		server.update({ id = "btn_s5", image = avatar_s5_on, scale = "fill" });
	end
end

actions.s6 = function ()
	if (survivor == "coach") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s6", image = avatar_s6_off, scale = "fill" });
	else
		survivor = "coach";
		sOff();
		server.update({ id = "btn_s6", image = avatar_s6_on, scale = "fill" });
	end
end

actions.s7 = function ()
	if (survivor == "rochelle") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s7", image = avatar_s7_off, scale = "fill" });
	else
		survivor = "rochelle";
		sOff();
		server.update({ id = "btn_s7", image = avatar_s7_on, scale = "fill" });
	end
end

actions.s8 = function ()
	if (survivor == "nick") then
		survivor = "all";
		sOff();
		server.update({ id = "btn_s8", image = avatar_s8_off, scale = "fill" });
	else
		survivor = "nick";
		sOff();
		server.update({ id = "btn_s8", image = avatar_s8_on, scale = "fill" });
	end
end


-- FUNCTION

function sendCommand()
	kb.press(chatkey);
	os.sleep(80);
	kb.text(command);
	os.sleep(80);
	kb.press("return");
	layout.txt_command.text = command;
end

function sOff()
	server.update({ id = "btn_s1", image = avatar_s1_off, scale = "fill" });
	server.update({ id = "btn_s2", image = avatar_s2_off, scale = "fill" });
	server.update({ id = "btn_s3", image = avatar_s3_off, scale = "fill" });
	server.update({ id = "btn_s4", image = avatar_s4_off, scale = "fill" });
	server.update({ id = "btn_s5", image = avatar_s5_off, scale = "fill" });
	server.update({ id = "btn_s6", image = avatar_s6_off, scale = "fill" });
	server.update({ id = "btn_s7", image = avatar_s7_off, scale = "fill" });
	server.update({ id = "btn_s8", image = avatar_s8_off, scale = "fill" });
	server.update({ id = "lbl_survivor", text="survivor = ".. survivor });
end
