local _ENV_metatable = { __index = _G }
local _ENV = setmetatable({
	_G = setmetatable({
		CHAT_SAY_GET = 's %s:\32',
		CHAT_GUILD_GET = '|Hchannel:Guild|hg|h %s:\32',
		CHAT_RAID_GET = "|Hchannel:raid|hr|h %s:\32",
		CHAT_PARTY_GET = "|Hchannel:Party|hp|h %s:\32",
		CHAT_PARTY_LEADER_GET = '|Hchannel:party|hP|h %s:\32',
		CHAT_PARTY_GUIDE_GET = '|Hchannel:party|hP|h %s:\32',
		CHAT_RAID_WARNING_GET = "w %s:\32",
		CHAT_RAID_LEADER_GET = "|Hchannel:raid|hR|h %s:\32",
		CHAT_OFFICER_GET = "|Hchannel:o|ho|h %s:\32",
		CHAT_BATTLEGROUND_GET = "|Hchannel:Battleground|hb|h %s:\32",
		CHAT_BATTLEGROUND_LEADER_GET = "|Hchannel:Battleground|hB|h %s:\32",
	}, _ENV_metatable)
}, _ENV_metatable)

setfenv(ChatFrame_MessageEventHandler, _ENV)

ChatTypeInfo['SAY'].sticky = 1
ChatTypeInfo['YELL'].sticky = 1
ChatTypeInfo['PARTY'].sticky = 1
ChatTypeInfo['GUILD'].sticky = 1
ChatTypeInfo['OFFICER'].sticky = 1
ChatTypeInfo['RAID'].sticky = 1
ChatTypeInfo['RAID_WARNING'].sticky = 1
ChatTypeInfo['BATTLEGROUND'].sticky = 1
ChatTypeInfo['WHISPER'].sticky = 1
ChatTypeInfo['CHANNEL'].sticky = 1