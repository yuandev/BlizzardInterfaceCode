local ClubFinder =
{
	Name = "ClubFinderInfo",
	Type = "System",
	Namespace = "C_ClubFinder",

	Functions =
	{
		{
			Name = "CancelMembershipRequest",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "CheckAllPlayerApplicantSettings",
			Type = "Function",
		},
		{
			Name = "GetApplicantInfoList",
			Type = "Function",

			Returns =
			{
				{ Name = "applicants", Type = "table", InnerType = "ClubFinderApplicantInfo", Nilable = false },
			},
		},
		{
			Name = "GetClubRecruitmentSettings",
			Type = "Function",

			Returns =
			{
				{ Name = "settings", Type = "ClubSettingsInfo", Nilable = false },
			},
		},
		{
			Name = "GetPlayerApplicantSettings",
			Type = "Function",

			Returns =
			{
				{ Name = "settings", Type = "ClubSettingsInfo", Nilable = false },
			},
		},
		{
			Name = "PlayerRequestPendingClubsList",
			Type = "Function",

			Arguments =
			{
				{ Name = "requestGuildList", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PlayerReturnPendingCommunitiesList",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "PlayerReturnPendingGuildsList",
			Type = "Function",

			Returns =
			{
				{ Name = "info", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "PostClub",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubId", Type = "string", Nilable = false },
				{ Name = "minimumLevel", Type = "number", Nilable = false },
				{ Name = "itemLevelRequirement", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "specs", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "type", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "RequestApplicantList",
			Type = "Function",
		},
		{
			Name = "RequestClubsList",
			Type = "Function",

			Arguments =
			{
				{ Name = "guildListRequested", Type = "bool", Nilable = false },
				{ Name = "searchString", Type = "string", Nilable = false },
				{ Name = "specIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "RequestMembershipToClub",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "specIDs", Type = "table", InnerType = "number", Nilable = false },
			},
		},
		{
			Name = "RespondToApplicant",
			Type = "Function",

			Arguments =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "playerGUID", Type = "string", Nilable = false },
				{ Name = "shouldAccept", Type = "bool", Nilable = false },
				{ Name = "requestType", Type = "ClubFinderRequestType", Nilable = false },
			},
		},
		{
			Name = "ReturnMatchingCommunityList",
			Type = "Function",

			Returns =
			{
				{ Name = "recruitingClubs", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "ReturnMatchingGuildList",
			Type = "Function",

			Returns =
			{
				{ Name = "recruitingClubs", Type = "table", InnerType = "RecruitingClubInfo", Nilable = false },
			},
		},
		{
			Name = "SetPlayerApplicantSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "checked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetRecruitmentSettings",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "checked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ShouldShowClubFinder",
			Type = "Function",

			Returns =
			{
				{ Name = "shouldShow", Type = "bool", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "ClubFinderClubListReturned",
			Type = "Event",
			LiteralName = "CLUB_FINDER_CLUB_LIST_RETURNED",
			Documentation = { "Signals when we recieve club data that can be used" },
			Payload =
			{
				{ Name = "isGuildList", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClubFinderMembershipListChanged",
			Type = "Event",
			LiteralName = "CLUB_FINDER_MEMBERSHIP_LIST_CHANGED",
		},
		{
			Name = "ClubFinderPlayerPendingListRecieved",
			Type = "Event",
			LiteralName = "CLUB_FINDER_PLAYER_PENDING_LIST_RECIEVED",
			Payload =
			{
				{ Name = "isGuildList", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ClubFinderPostUpdated",
			Type = "Event",
			LiteralName = "CLUB_FINDER_POST_UPDATED",
		},
		{
			Name = "ClubFinderRecruitListChanged",
			Type = "Event",
			LiteralName = "CLUB_FINDER_RECRUIT_LIST_CHANGED",
		},
		{
			Name = "ClubFinderRecruitsUpdated",
			Type = "Event",
			LiteralName = "CLUB_FINDER_RECRUITS_UPDATED",
			Documentation = { "Signals when we recieve the recruits list" },
		},
	},

	Tables =
	{
		{
			Name = "PlayerClubRequestStatus",
			Type = "Enumeration",
			NumValues = 8,
			MinValue = 0,
			MaxValue = 7,
			Fields =
			{
				{ Name = "None", Type = "PlayerClubRequestStatus", EnumValue = 0 },
				{ Name = "Pending", Type = "PlayerClubRequestStatus", EnumValue = 1 },
				{ Name = "AutoJoined", Type = "PlayerClubRequestStatus", EnumValue = 2 },
				{ Name = "Declined", Type = "PlayerClubRequestStatus", EnumValue = 3 },
				{ Name = "Approved", Type = "PlayerClubRequestStatus", EnumValue = 4 },
				{ Name = "Joined", Type = "PlayerClubRequestStatus", EnumValue = 5 },
				{ Name = "JoinedAnother", Type = "PlayerClubRequestStatus", EnumValue = 6 },
				{ Name = "Canceled", Type = "PlayerClubRequestStatus", EnumValue = 7 },
			},
		},
		{
			Name = "ClubFinderApplicationUpdateType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderApplicationUpdateType", EnumValue = 0 },
				{ Name = "AcceptInvite", Type = "ClubFinderApplicationUpdateType", EnumValue = 1 },
				{ Name = "DeclineInvite", Type = "ClubFinderApplicationUpdateType", EnumValue = 2 },
				{ Name = "Cancel", Type = "ClubFinderApplicationUpdateType", EnumValue = 3 },
			},
		},
		{
			Name = "ClubFinderReportType",
			Type = "Enumeration",
			NumValues = 3,
			MinValue = 0,
			MaxValue = 2,
			Fields =
			{
				{ Name = "Any", Type = "ClubFinderReportType", EnumValue = 0 },
				{ Name = "InapropriateName", Type = "ClubFinderReportType", EnumValue = 1 },
				{ Name = "InapropriateComment", Type = "ClubFinderReportType", EnumValue = 2 },
			},
		},
		{
			Name = "ClubFinderRequestType",
			Type = "Enumeration",
			NumValues = 4,
			MinValue = 0,
			MaxValue = 3,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderRequestType", EnumValue = 0 },
				{ Name = "Guild", Type = "ClubFinderRequestType", EnumValue = 1 },
				{ Name = "Community", Type = "ClubFinderRequestType", EnumValue = 2 },
				{ Name = "All", Type = "ClubFinderRequestType", EnumValue = 3 },
			},
		},
		{
			Name = "ClubFinderSettingFlags",
			Type = "Enumeration",
			NumValues = 14,
			MinValue = 0,
			MaxValue = 13,
			Fields =
			{
				{ Name = "None", Type = "ClubFinderSettingFlags", EnumValue = 0 },
				{ Name = "MaxLevelOnly", Type = "ClubFinderSettingFlags", EnumValue = 1 },
				{ Name = "AutoAccept", Type = "ClubFinderSettingFlags", EnumValue = 2 },
				{ Name = "Dungeons", Type = "ClubFinderSettingFlags", EnumValue = 3 },
				{ Name = "Raids", Type = "ClubFinderSettingFlags", EnumValue = 4 },
				{ Name = "Pvp", Type = "ClubFinderSettingFlags", EnumValue = 5 },
				{ Name = "Rp", Type = "ClubFinderSettingFlags", EnumValue = 6 },
				{ Name = "Social", Type = "ClubFinderSettingFlags", EnumValue = 7 },
				{ Name = "Small", Type = "ClubFinderSettingFlags", EnumValue = 8 },
				{ Name = "Medium", Type = "ClubFinderSettingFlags", EnumValue = 9 },
				{ Name = "Large", Type = "ClubFinderSettingFlags", EnumValue = 10 },
				{ Name = "Tank", Type = "ClubFinderSettingFlags", EnumValue = 11 },
				{ Name = "Healer", Type = "ClubFinderSettingFlags", EnumValue = 12 },
				{ Name = "Damage", Type = "ClubFinderSettingFlags", EnumValue = 13 },
			},
		},
		{
			Name = "ClubFinderApplicantInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "playerGUID", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "message", Type = "string", Nilable = false },
				{ Name = "level", Type = "number", Nilable = false },
				{ Name = "classID", Type = "number", Nilable = false },
				{ Name = "ilvl", Type = "number", Nilable = false },
				{ Name = "specIds", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "requestStatus", Type = "PlayerClubRequestStatus", Nilable = false },
			},
		},
		{
			Name = "ClubFinderGuildTabardInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "backgroundColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "borderColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "emblemColor", Type = "table", Mixin = "ColorMixin", Nilable = false },
				{ Name = "emblemFileID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ClubSettingsInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "playStyleDungeon", Type = "bool", Nilable = false },
				{ Name = "playStyleRaids", Type = "bool", Nilable = false },
				{ Name = "playStylePvp", Type = "bool", Nilable = false },
				{ Name = "playStyleRP", Type = "bool", Nilable = false },
				{ Name = "playStyleSocial", Type = "bool", Nilable = false },
				{ Name = "roleTank", Type = "bool", Nilable = false },
				{ Name = "roleHealer", Type = "bool", Nilable = false },
				{ Name = "roleDps", Type = "bool", Nilable = false },
				{ Name = "sizeSmall", Type = "bool", Nilable = false },
				{ Name = "sizeMedium", Type = "bool", Nilable = false },
				{ Name = "sizeLarge", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "RecruitingClubInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "clubFinderGUID", Type = "string", Nilable = false },
				{ Name = "numActiveMembers", Type = "number", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "comment", Type = "string", Nilable = false },
				{ Name = "guildLeader", Type = "string", Nilable = false },
				{ Name = "isGuild", Type = "bool", Nilable = false },
				{ Name = "tabardInfo", Type = "ClubFinderGuildTabardInfo", Nilable = true },
				{ Name = "clubStatus", Type = "PlayerClubRequestStatus", Nilable = true },
				{ Name = "recruitingSpecIds", Type = "table", InnerType = "number", Nilable = false },
				{ Name = "cached", Type = "bool", Nilable = false },
				{ Name = "cacheRequested", Type = "bool", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(ClubFinder);