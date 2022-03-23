---@diagnostic disable: lowercase-global
name = "Strong Cleaner(自用)"
description = [[
服务器清理Mod
清理机制：
每20天（默认，可调整）检查地面的物品
地面的物品第一次被检查，会添加标记
被添加标记的物品在第二次检查时会被清理
这意味着地面物品至少20天以上才会被清理

清理的日期是1、5、10、20、30、40、60、80、100，以此类推

本Mod只会清理地面且不包含在白名单的物品
玩家身上及玩家身上，或者白名单里的物品，或者茶几附近的物品不会被清理

另外，服务器重启会使物品标记丢失
]]
author = "辣椒小皇纸"
version = "1.8.1"

forumthread = ""

api_version = 10

all_clients_require_mod = false
client_only_mod = false
dst_compatible = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {"Strong Cleaner"}

----------------------
-- General settings --
----------------------

configuration_options =
{
	{
		name = "checking_days",
		label = "清理间隔",
		hover = "Checking Period清理间隔",
		options =	{
                        {description = "1", data = 1, hover = ""},
                        {description = "5", data = 5, hover = ""},
						{description = "10", data = 10, hover = ""},
						{description = "20", data = 20, hover = ""},
						{description = "30", data = 30, hover = ""},
						{description = "40", data = 40, hover = ""},
						{description = "50", data = 50, hover = ""},
                        {description = "80", data = 80, hover = ""},
                        {description = "100", data = 100, hover = ""},
					},
		default = 20,
	},
    {
        name = "clean_mode",
        label = "清理模式",
        hover = "Whitelist mode or Blacklist mode白名单模式或者黑名单模式",
        options =   {
                        {description = "Whitelist", data = 0, hover = ""},
                        {description = "Blacklist", data = 1, hover = ""},
                    },
        default = 1,
    },
    {
        name = "white_area",
        label = "茶几附近不清理",
        hover = "Things near the tables will not be removed茶几附近的物品不清理",
        options =   {
                        {description = "Yes", data = true, hover = ""},
                        {description = "No", data = false, hover = ""},
                    },
        default = true,
    },
    {
        name = "boat_clean",
        label = "清理未使用的船",
        hover = "Destroy boats that were not used for a specific days销毁特定日期未使用的船只",
        options =   {
                        {description = "No", data = false, hover = ""},
                        {description = "180 days in game", data = 180, hover = ""},
                        {description = "360 days in game", data = 360, hover = ""},
                        {description = "540 days in game", data = 540, hover = ""},
                        {description = "720 days in game", data = 720, hover = ""},
                    },
        default = false,
    },
}
