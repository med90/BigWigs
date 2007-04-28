﻿------------------------------
--      Are you local?    --
------------------------------

local boss = AceLibrary("Babble-Boss-2.2")["Magtheridon"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)
local L2 = AceLibrary("AceLocale-2.2"):new("BigWigsCommonWords")
local abycount
local debwarn

----------------------------
--      Localization     --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Magtheridon",

	escape = "Escape",
	escape_desc = ("Countdown untill %s breaks free"):format(boss),

	abyssal = "Burning Abyssal",
	abyssal_desc = "Warn when a Burning Abyssal is created",

	heal = "Heal",
	heal_desc = "Warn when a Hellfire Channeler starts to heal",

	nova = "Blast Nova",
	nova_desc = "Estimated Blast Nova timers",

	banish = "Banish",
	banish_desc = ("Warn when you Banish %s"):format(boss),

	exhaust = "Disable Exhaustion Bars",
	exhaust_desc = "Timer bars for Mind Exhaustion on players",

	debris = "Debris on You",
	debris_desc = "Warn for Debris on You",

	debrisinc = "Debris",
	debrisinc_desc = "Warn for incoming debris at 30%",

	escape_trigger1 = "%%s's bonds begin to weaken!",
	escape_trigger2 = "I... am... unleashed!",
	escape_warning1 = "%s Engaged - Breaks free in 2min!",
	escape_warning2 = "Breaks free in 1min!",
	escape_warning3 = "Breaks free in 30sec!",
	escape_warning4 = "Breaks free in 10sec!",
	escape_warning5 = "Breaks free in 3sec!",
	escape_bar = "Released...",
	escape_message = "%s Released!",

	abyssal_trigger = "Hellfire Channeler's Burning Abyssal hits",
	abyssal_message = "Burning Abyssal Created (%d)",

	heal_trigger = "begins to cast Dark Mending",
	heal_message = "Healing!",

	nova_ = "Blast Nova!",
	nova_warning = "Blast Nova Soon",
	nova_cast = "Casting Blast Nova!",

	banish_trigger = "Not again! Not again...",
	banish_message = "Banished for ~10sec",
	banish_over_trigger = "Shadow Cage fades",
	banish_over_message = "Banish Fades!",
	banish_bar = "Banished",

	exhaust_trigger = "^([^%s]+) ([^%s]+) afflicted by Mind Exhaustion",
	exhaust_bar = "[%s] Exhausted",

	debris_trigger = "You are afflicted by Debris.",
	debris_message = "Debris on YOU!",

	debrisinc_trigger = "Let the walls of this prison tremble",
	debrisinc_message = "30% - Incoming Debris!",
	debrisinc_warning = "Debris Soon!",

	["Hellfire Channeler"] = true,
} end)

L:RegisterTranslations("deDE", function() return {
	escape = "Ausbruch",
	escape_desc = ("Countdown bis %s ausbricht"):format(boss),

	abyssal = "Brennender Schlund",
	abyssal_desc = "Warnt, wenn ein Brennender Schlund gespawned wird",

	heal = "Heilung",
	heal_desc = "Warnt, wenn ein Kanalisierer anf\195\164ngt zu heilen",

	nova = "Drucknova",
	nova_desc = "Gesch\195\164tzte Drucknova Timer",

	banish = "Verbannung",
	banish_desc = ("Warnt, wenn ihr %s verbannt"):format(boss),

	exhaust = "Ersch\195\182pfung",
	exhaust_desc = "Timer f\195\188r Gedankenersch\195\182pfung",

	escape_trigger1 = "Die Fesseln von %%s werden schw\195\164cher!",
	escape_trigger2 = " Ich... bin... frei!",
	escape_warning1 = "%s angegriffen - Ausbruch in 2min!",
	escape_warning2 = "Ausbruch in 1min!",
	escape_warning3 = "Ausbruch in 30sec!",
	escape_warning4 = "Ausbruch in 10sec!",
	escape_warning5 = "Ausbruch in 3sec!",
	escape_bar = "Frei...",
	escape_message = "%s frei!",

	abyssal_trigger = "Kanalisierer des H\195\182llenfeuers wirkt Brennender Schlund",
	abyssal_message = "Brennender Schlund gespawned (%d)",

	heal_trigger = "beginnt Dunkle Besserung zu wirken",
	heal_message = "Heilung!",

	nova_ = "Drucknova",
	nova_warning = "Drucknova bald",

	banish_trigger = "Nicht schon wieder! Nicht schon wieder...",
	banish_message = "Verbannt f\195\188r ~10sec",
	banish_bar = "Verbannt",

	exhaust_trigger = "^([^%s]+) ([^%s]+) von Gedankenersch\195\182pfung betroffen",
	exhaust_bar = "[%s] ersch\195\182pft",

	["Hellfire Channeler"] = "Kanalisierer des H\195\182llenfeuers",
} end)

L:RegisterTranslations("frFR", function() return {
	escape = "Evasion",
	escape_desc = ("compte \195\160 rebours avant que %s soit libre"):format(boss),

	abyssal = "Abyssal ardent",
	abyssal_desc = "Pr\195\169viens quand un Abyssal ardent est cr\195\169\195\169",

	heal = "Soins",
	heal_desc = "Pr\195\169viens quand un Canaliste des Flammes infernales commence a soigner",

	nova = "Nova explosive",
	nova_desc = "Estimation du temps de la Nova explosive!",

	banish = "Ban",
	banish_desc = ("Pr\195\169viens quand vous bannissez %s"):format(boss),

	exhaust = "D\195\169sactiver la barre d'\195\169puisement",
	exhaust_desc = "Barre de temps pour l'\195\169puisement d'esprit sur le joueur",

	debris = "D\195\169bris sur vous",
	debris_desc = "Pr\195\169viens pour les D\195\169bris sur vous",

	debrisinc = "D\195\169bris",
	debrisinc_desc = "Pr\195\169viens de l'arriver des d\195\169bris \195\160 30 %",

	escape_trigger1 = "Les liens de %%s commencent \195\160 se rel\195\162cher !",
	escape_trigger2 = "Me... voil\195\160... d\195\169cha\195\174n\195\169 !",
	escape_warning1 = "%s Engag\195\169 - Libre dans 2 minutes!",
	escape_warning2 = "Libre dans 1 minutes!",
	escape_warning3 = "Libre dans 30 secondes!",
	escape_warning4 = "Libre dans 10 secondes!",
	escape_warning5 = "Libre dans 3 secondes!",
	escape_bar = "Lib\195\169ration...",
	escape_message = "%s Lib\195\169r\195\169!",

	abyssal_trigger = "Canaliste des Flammes infernales lance Abyssal ardent",
	abyssal_message = "Abyssal ardent cr\195\169\195\169 (%d)",

	heal_trigger = "commence \195\160 lancer Gu\195\169rison t\195\169n\195\169breuse.",
	heal_message = "il se soigne!",

	nova_ = "Nova explosive!",
	nova_warning = "Nova explosive bient\195\180t",

	banish_trigger = "Pas encore ! Pas encore...",
	banish_message = "Banni pour ~10 secondes",
	banish_bar = "Ban",

	exhaust_trigger = "^([^%s]+) ([^%s]+) subit les effets DE Epuisement de l'esprit",
	exhaust_bar = "[%s] Epuiser",

	debris_trigger = "Vous subissez les effets de D\195\169bris.",
	debris_message = "D\195\169bris sur VOUS!",

	debrisinc_trigger = "Que les murs de cette prison tremblent",
	debrisinc_message = "30% - Arriv\195\169e des D\195\169bris!",
	debrisinc_warning = "D\195\169bris bientot!",

	["Hellfire Channeler"] = "Canaliste des Flammes infernales",
} end)

L:RegisterTranslations("koKR", function() return {
	escape = "탈출",
	escape_desc = ("%s 속박 해제까지 카운트다운"):format(boss),

	abyssal = "불타는 심연",
	abyssal_desc = "불타는 심연 생성시 경고",

	heal = "치유",
	heal_desc = "지옥불 역술사 치유 시전시 경고",

	nova = "파열의 회오리",
	nova_desc = "파열의 회오리 예측",

	banish = "추방",
	banish_desc = ("%s 추방시 알림"):format(boss),

	exhaust = "방출 바 비활성화",
	exhaust_desc = "정신 방출에 걸린 플레이어에 대한 타이머 바",

	debris = "당신에 파편",
	debris_desc = "당신이 파편에 걸렸을때 알림",

	debrisinc = "파편",
	debrisinc_desc = "30% 파편 경고",

	escape_trigger1 = "%%s의 속박이 약해지기 시작합니다",
	escape_trigger2 = "내가... 풀려났도다!",
	escape_warning1 = "%s 전투 개시 - 2분 이내 속박 해제!",
	escape_warning2 = "속박 해제 1분 전!",
	escape_warning3 = "속박 해제 30초 전!",
	escape_warning4 = "속박 해제 10초 전!",
	escape_warning5 = "속박 해제 3초 전!",
	escape_bar = "풀려남...",
	escape_message = "%s 풀려남!",

	abyssal_trigger = "지옥불 역술사|1이;가; 불타는 심연|1을;를; 시전합니다.",
	abyssal_message = "불타는 심연 (%d)",

	heal_trigger = "암흑의 치유 시전을 시작합니다.",
	heal_message = "치유 시전!",

	nova_ = "파열의 회오리",
	nova_warning = "곧 파열의 회오리",

	banish_trigger = "안 돼, 다시 그럴 수는 없다!",
	banish_message = "약 10초 동안 추방됨",
	banish_bar = "추방됨",

	exhaust_trigger = "^([^|;%s]*)(.*)정신 방출에 걸렸습니다%.$",
	exhaust_bar = "[%s] 정신 방출",

	debris_trigger = "당신은 파편에 걸렸습니다.",
	debris_message = "당신에 파편!",

	debrisinc_trigger = "그렇게 쉽게 당할 내가 아니다! 이 감옥의 벽이 흔들리고... 무너지라라!",
	debrisinc_message = "30% - 잠시 후 파편!",
	debrisinc_warning = "곧 파편!",

	["Hellfire Channeler"] = "지옥불 역술사",
} end)

----------------------------------
--    Module Declaration   --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = AceLibrary("Babble-Zone-2.2")["Magtheridon's Lair"]
mod.otherMenu = "Outland"
mod.enabletrigger = {L["Hellfire Channeler"], boss}
mod.wipemobs = {L["Hellfire Channeler"]}
mod.toggleoptions = {"escape", "abyssal", "heal", -1, "nova", "banish", -1, "debris", "debrisinc", -1, "exhaust", "bosskill"}
mod.revision = tonumber(("$Revision$"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	self:RegisterEvent("CHAT_MSG_MONSTER_EMOTE")
	self:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE")

	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE")
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF")
	self:RegisterEvent("CHAT_MSG_SPELL_AURA_GONE_OTHER")

	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE", "ExhaustEvent")
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE", "ExhaustEvent")
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE", "ExhaustEvent")
	self:RegisterEvent("UNIT_HEALTH")

	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH", "GenericBossDeath")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")

	self:RegisterEvent("BigWigs_RecvSync")
	self:TriggerEvent("BigWigs_ThrottleSync", "Exhaustion", 0)
	self:TriggerEvent("BigWigs_ThrottleSync", "MagHFHeal", 0.5)
	self:TriggerEvent("BigWigs_ThrottleSync", "MagHFAbyssal", 0.8)
	self:TriggerEvent("BigWigs_ThrottleSync", "MagUnbanish", 5)
	abycount = 1
	debwarn = nil
end

------------------------------
--    Event Handlers     --
------------------------------

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if self.db.profile.escape and msg:find(L["escape_trigger1"]) then
		self:Message(L["escape_warning1"]:format(boss), "Attention")
		self:Bar(L["escape_bar"], 120, "Ability_Rogue_Trip")
		self:DelayedMessage(60, L["escape_warning2"], "Positive")
		self:DelayedMessage(90, L["escape_warning3"], "Attention")
		self:DelayedMessage(110, L["escape_warning4"], "Urgent")
		self:DelayedMessage(117, L["escape_warning5"], "Urgent", nil, "Long")
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L["escape_trigger2"] then
		if self.db.profile.escape then
			self:Message(L["escape_message"]:format(boss), "Important", nil, "Alert")
		end
		if self.db.profile.nova then
			self:Bar(L["nova_"], 58, "Spell_Fire_SealOfFire")
			self:DelayedMessage(56, L["nova_warning"], "Urgent")
		end
	elseif msg == L["banish_trigger"] then
		if self.db.profile.banish then
			self:Message(L["banish_message"], "Important", nil, "Info")
			self:Bar(L["banish_bar"], 10, "Spell_Shadow_Cripple")
		end
		self:TriggerEvent("BigWigs_StopBar", self, L["nova_cast"])
	elseif self.db.profile.debrisinc and msg:find(L["debrisinc_trigger"]) then
		self:Message(L["debrisinc_message"], "Positive")
	end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if self.db.profile.nova and msg:find(L["nova_"]) then
		self:Message(L["nova_"], "Positive")
		self:Bar(L["nova_"], 54, "Spell_Fire_SealOfFire")
		self:Bar(L["nova_cast"], 12, "Spell_Fire_SealOfFire")
		self:DelayedMessage(50, L["nova_warning"], "Urgent")
	end
end

function mod:CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE(msg)
	if msg:find(L["abyssal_trigger"]) then
		self:Sync("MagHFAbyssal")
	end
end

function mod:CHAT_MSG_SPELL_AURA_GONE_OTHER(msg)
	if msg:find(L["banish_over_trigger"]) then
		self:Sync("MagUnbanish")
	end
end

--hellfire channelers sometimes heal
function mod:CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF(msg)
	if msg:find(L["heal_trigger"]) then
		self:Sync("MagHFHeal")
	end
end

--mind exhastion bars can get spammy, so off by default
function mod:ExhaustEvent(msg)
	if self.db.profile.debris and msg == L["debris_trigger"] then
		self:Message(L["debris_message"], "Important", nil, "Alert")
	end
	local eplayer, etype = select(3, msg:find(L["exhaust_trigger"]))
	if eplayer and etype then
		if eplayer == L2["you"] and etype == L2["are"] then
			eplayer = UnitName("player")
		end
		self:Sync("Exhaustion "..eplayer)
	end
end

function mod:BigWigs_RecvSync(sync, rest, nick)
	if sync == "Exhaustion" and rest and not self.db.profile.exhaust then
		self:Bar(L["exhaust_bar"]:format(rest), 75, "Spell_Shadow_Teleport")
	elseif sync == "MagHFHeal" and self.db.profile.heal then
		self:Message(L["heal_message"], "Urgent", nil, "Alarm")
		self:Bar(L["heal_message"], 2, "Spell_Shadow_ChillTouch")
	elseif sync == "MagHFAbyssal" and self.db.profile.abyssal then
		self:Message(L["abyssal_message"]:format(abycount), "Attention")
		abycount = abycount + 1
	elseif sync == "MagUnbanish" and self.db.profile.banish then
		self:Message(L["banish_over_message"], "Attention")
		self:TriggerEvent("BigWigs_StopBar", self, L["banish_bar"])
	end
end

function mod:UNIT_HEALTH(msg)
	if not self.db.profile.debrisinc then return end
	if UnitName(msg) == boss then
		local health = UnitHealth(msg)
		if health > 31 and health <= 35 and not debwarn then
			self:Message(L["debrisinc_warning"], "Positive")
			debwarn = true
		elseif health > 60 and debwarn then
			debwarn = false
		end
	end
end
