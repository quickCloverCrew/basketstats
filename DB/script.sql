USE [Stats]
GO
/****** Object:  Schema [Dictionary]    Script Date: 01/26/2012 18:34:40 ******/
CREATE SCHEMA [Dictionary] AUTHORIZATION [public]
GO
/****** Object:  Schema [Physical]    Script Date: 01/26/2012 18:34:40 ******/
CREATE SCHEMA [Physical] AUTHORIZATION [public]
GO
/****** Object:  Schema [Reports]    Script Date: 01/26/2012 18:34:40 ******/
CREATE SCHEMA [Reports] AUTHORIZATION [public]
GO
/****** Object:  Schema [Stats]    Script Date: 01/26/2012 18:34:40 ******/
CREATE SCHEMA [Stats] AUTHORIZATION [public]
GO
/****** Object:  Table [Dictionary].[GamePeriods]    Script Date: 01/26/2012 18:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[GamePeriods](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_GamePeriods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[Arenas]    Script Date: 01/26/2012 18:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Arenas](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[attendance] [int] NOT NULL,
 CONSTRAINT [PK_Arenas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[Coachs]    Script Date: 01/26/2012 18:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Coachs](
	[id] [tinyint] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Coachs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[Seasons]    Script Date: 01/26/2012 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Seasons](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[start] [smalldatetime] NOT NULL,
	[end] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[SeasonStages]    Script Date: 01/26/2012 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[SeasonStages](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SeasonStages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[Drafts]    Script Date: 01/26/2012 18:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dictionary].[Drafts](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[year] [smallint] NOT NULL,
 CONSTRAINT [PK_Drafts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dictionary].[Conferences]    Script Date: 01/26/2012 18:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Conferences](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Conferences] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[Colleges]    Script Date: 01/26/2012 18:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Colleges](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[href] [varchar](250) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Colleges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Colleges] UNIQUE NONCLUSTERED 
(
	[href] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stats].[PeriodScore]    Script Date: 01/26/2012 18:35:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[PeriodScore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[game] [smallint] NOT NULL,
	[gamePeriod] [tinyint] NOT NULL,
	[awayTeamScore] [tinyint] NOT NULL,
	[homeTeamScore] [tinyint] NOT NULL,
 CONSTRAINT [PK_GameResult] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reports].[TotalDetails]    Script Date: 01/26/2012 18:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[TotalDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[total] [int] NOT NULL,
	[player] [smallint] NOT NULL,
	[Age] [tinyint] NOT NULL,
	[G] [tinyint] NOT NULL,
	[GS] [tinyint] NOT NULL,
	[MP] [smallint] NOT NULL,
	[FG] [smallint] NOT NULL,
	[FGS] [smallint] NOT NULL,
	[3P] [smallint] NOT NULL,
	[3PA] [smallint] NOT NULL,
	[FT] [smallint] NOT NULL,
	[FTA] [smallint] NOT NULL,
	[ORB] [smallint] NOT NULL,
	[DRB] [smallint] NOT NULL,
	[AST] [smallint] NOT NULL,
	[STL] [smallint] NOT NULL,
	[BLK] [smallint] NOT NULL,
	[TOV] [smallint] NOT NULL,
	[PF] [smallint] NOT NULL,
	[PTS] [smallint] NOT NULL,
 CONSTRAINT [PK_TotalDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_TotalDetails] UNIQUE NONCLUSTERED 
(
	[total] ASC,
	[player] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reports].[TeamAndOpponentDetails]    Script Date: 01/26/2012 18:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[TeamAndOpponentDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeamAndOpponent] [int] NOT NULL,
	[flag] [bit] NOT NULL,
	[G] [tinyint] NOT NULL,
	[MP] [smallint] NOT NULL,
	[MP Rank] [tinyint] NOT NULL,
	[FG] [smallint] NOT NULL,
	[FG Rank] [tinyint] NOT NULL,
	[FGA] [smallint] NOT NULL,
	[FGA Rank] [tinyint] NOT NULL,
	[3P] [smallint] NOT NULL,
	[3P Rank] [tinyint] NOT NULL,
	[3PA] [smallint] NOT NULL,
	[3PA Rank] [tinyint] NOT NULL,
	[FT] [smallint] NOT NULL,
	[FT Rank] [tinyint] NOT NULL,
	[FTA] [smallint] NOT NULL,
	[FTA Rank] [tinyint] NOT NULL,
	[ORB] [smallint] NOT NULL,
	[ORB Rank] [tinyint] NOT NULL,
	[DRB] [smallint] NOT NULL,
	[DRB Rank] [tinyint] NOT NULL,
	[AST] [smallint] NOT NULL,
	[AST Rank] [tinyint] NOT NULL,
	[STL] [smallint] NOT NULL,
	[STL Rank] [tinyint] NOT NULL,
	[BLK] [smallint] NOT NULL,
	[BLK Rank] [tinyint] NOT NULL,
	[TOV] [smallint] NOT NULL,
	[TOV Rank] [tinyint] NOT NULL,
	[PF] [smallint] NOT NULL,
	[PF Rank] [tinyint] NOT NULL,
	[PTS] [smallint] NOT NULL,
	[PTS Rank] [tinyint] NOT NULL,
	[PTS/G] [numeric](4, 1) NOT NULL,
	[PTS/G Rank] [tinyint] NOT NULL,
 CONSTRAINT [PK_Team&Opponent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - Team
1 - Opponent' , @level0type=N'SCHEMA',@level0name=N'Reports', @level1type=N'TABLE',@level1name=N'TeamAndOpponentDetails'
GO
/****** Object:  Table [Stats].[TeamArenas]    Script Date: 01/26/2012 18:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[TeamArenas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[team] [tinyint] NOT NULL,
	[arena] [tinyint] NOT NULL,
 CONSTRAINT [PK_TeamArenas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[TeamCoaches]    Script Date: 01/26/2012 18:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[TeamCoaches](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[team] [tinyint] NOT NULL,
	[coach] [tinyint] NOT NULL,
	[exp] [tinyint] NOT NULL,
 CONSTRAINT [PK_TeamCoaches] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[Rosters]    Script Date: 01/26/2012 18:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[Rosters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team] [tinyint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[season] [tinyint] NOT NULL,
	[seasonStage] [tinyint] NOT NULL,
 CONSTRAINT [PK_Rossters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Rossters] UNIQUE NONCLUSTERED 
(
	[team] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[WinsAndLoss]    Script Date: 01/26/2012 18:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[WinsAndLoss](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team] [tinyint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[season] [tinyint] NOT NULL,
	[stage] [tinyint] NOT NULL,
	[wins] [tinyint] NOT NULL,
	[loss] [tinyint] NOT NULL,
 CONSTRAINT [PK_WinsAndLoss] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dictionary].[DraftPlayers]    Script Date: 01/26/2012 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dictionary].[DraftPlayers](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[draft] [tinyint] NOT NULL,
	[player] [smallint] NOT NULL,
	[number] [smallint] NOT NULL,
	[round] [tinyint] NULL,
	[team] [tinyint] NOT NULL,
 CONSTRAINT [PK_DraftPlayers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reports].[AdvancedDetails]    Script Date: 01/26/2012 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[AdvancedDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[advanced] [int] NOT NULL,
	[player] [smallint] NOT NULL,
	[Age] [tinyint] NOT NULL,
	[G] [tinyint] NOT NULL,
	[MP] [smallint] NOT NULL,
	[PER] [numeric](4, 1) NOT NULL,
	[TS%] [numeric](4, 3) NOT NULL,
	[eFG%] [numeric](4, 3) NOT NULL,
	[ORB%] [numeric](4, 1) NOT NULL,
	[DRB%] [numeric](4, 1) NOT NULL,
	[TRB%] [numeric](4, 1) NOT NULL,
	[AST%] [numeric](4, 1) NOT NULL,
	[STL%] [numeric](4, 1) NOT NULL,
	[BLK%] [numeric](4, 1) NOT NULL,
	[TOV%] [numeric](4, 1) NOT NULL,
	[USG%] [numeric](4, 1) NOT NULL,
	[ORtg] [smallint] NOT NULL,
	[DRtg] [smallint] NOT NULL,
	[OWS] [numeric](3, 1) NOT NULL,
	[DWS] [numeric](3, 1) NOT NULL,
	[WS] [numeric](3, 1) NOT NULL,
	[WS/48] [numeric](4, 3) NOT NULL,
 CONSTRAINT [PK_AdvancedDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_AdvancedDetails] UNIQUE NONCLUSTERED 
(
	[advanced] ASC,
	[player] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dictionary].[Divisions]    Script Date: 01/26/2012 18:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Divisions](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[conference] [tinyint] NOT NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Dictionary].[Teams]    Script Date: 01/26/2012 18:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Teams](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[code] [char](3) NOT NULL,
	[division] [tinyint] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Reports].[TeamAndOpponent]    Script Date: 01/26/2012 18:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[TeamAndOpponent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team] [tinyint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_TeamAndOpponent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TeamAndOpponent] UNIQUE NONCLUSTERED 
(
	[team] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dictionary].[Games]    Script Date: 01/26/2012 18:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dictionary].[Games](
	[id] [smallint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[awayTeam] [tinyint] NOT NULL,
	[homeTeam] [tinyint] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reports].[Totals]    Script Date: 01/26/2012 18:35:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[Totals](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rosster] [int] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Totals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Totals] UNIQUE NONCLUSTERED 
(
	[rosster] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[RosterDetails]    Script Date: 01/26/2012 18:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stats].[RosterDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rosster] [int] NOT NULL,
	[player] [smallint] NOT NULL,
	[number] [varchar](3) NOT NULL,
	[position] [varchar](3) NOT NULL,
 CONSTRAINT [PK_RossterDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_RossterDetails] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Physical].[Injuries]    Script Date: 01/26/2012 18:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Physical].[Injuries](
	[id] [int] NOT NULL,
	[rosster] [int] NOT NULL,
	[player] [smallint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[injuryDate] [smalldatetime] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[note] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Injuries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Injuries] UNIQUE NONCLUSTERED 
(
	[rosster] ASC,
	[player] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Reports].[Advanced]    Script Date: 01/26/2012 18:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[Advanced](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rosster] [int] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Advanced] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Advanced] UNIQUE NONCLUSTERED 
(
	[rosster] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dictionary].[Players]    Script Date: 01/26/2012 18:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Players](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[href] [varchar](250) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[birthDate] [smalldatetime] NOT NULL,
	[college] [smallint] NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Players] UNIQUE NONCLUSTERED 
(
	[href] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stats].[PersonalStatisticPerGame]    Script Date: 01/26/2012 18:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[PersonalStatisticPerGame](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[game] [smallint] NOT NULL,
	[player] [smallint] NOT NULL,
	[G] [tinyint] NOT NULL,
	[GS] [tinyint] NOT NULL,
	[MP] [smalldatetime] NOT NULL,
	[FG] [tinyint] NOT NULL,
	[FGA] [tinyint] NOT NULL,
	[3P] [tinyint] NOT NULL,
	[3PA] [tinyint] NOT NULL,
	[FT] [tinyint] NOT NULL,
	[FTA] [tinyint] NOT NULL,
	[ORB] [tinyint] NOT NULL,
	[DRB] [tinyint] NOT NULL,
	[AST] [tinyint] NOT NULL,
	[STL] [tinyint] NOT NULL,
	[BLK] [tinyint] NOT NULL,
	[TOV] [tinyint] NOT NULL,
	[PF] [tinyint] NOT NULL,
	[PTS] [tinyint] NOT NULL,
	[GmSc] [numeric](4, 1) NOT NULL,
 CONSTRAINT [PK_PersonalStatisticPerGame] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[PlayerPhysicalDetails]    Script Date: 01/26/2012 18:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[PlayerPhysicalDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[player] [smallint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
	[height] [numeric](4, 1) NOT NULL,
	[weight] [numeric](4, 1) NOT NULL,
	[exp] [tinyint] NOT NULL,
 CONSTRAINT [PK_PlayerDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_PlayerDetails] UNIQUE NONCLUSTERED 
(
	[player] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[GameScore]    Script Date: 01/26/2012 18:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[GameScore](
	[game] [smallint] NOT NULL,
	[awayTeamScore] [tinyint] NOT NULL,
	[homeTeamScore] [tinyint] NOT NULL,
	[flag] [bit] NULL,
 CONSTRAINT [PK_GameScore] PRIMARY KEY CLUSTERED 
(
	[game] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IS NULL - Победитель еще не выявлен.
0 - Away Team WIN!
1 - Home Team WIN!' , @level0type=N'SCHEMA',@level0name=N'Stats', @level1type=N'TABLE',@level1name=N'GameScore'
GO
/****** Object:  ForeignKey [FK_Divisions_Conferences]    Script Date: 01/26/2012 18:34:45 ******/
ALTER TABLE [Dictionary].[Divisions]  WITH CHECK ADD  CONSTRAINT [FK_Divisions_Conferences] FOREIGN KEY([conference])
REFERENCES [Dictionary].[Conferences] ([id])
GO
ALTER TABLE [Dictionary].[Divisions] CHECK CONSTRAINT [FK_Divisions_Conferences]
GO
/****** Object:  ForeignKey [FK_DraftPlayers_Drafts]    Script Date: 01/26/2012 18:34:47 ******/
ALTER TABLE [Dictionary].[DraftPlayers]  WITH CHECK ADD  CONSTRAINT [FK_DraftPlayers_Drafts] FOREIGN KEY([draft])
REFERENCES [Dictionary].[Drafts] ([id])
GO
ALTER TABLE [Dictionary].[DraftPlayers] CHECK CONSTRAINT [FK_DraftPlayers_Drafts]
GO
/****** Object:  ForeignKey [FK_DraftPlayers_Players]    Script Date: 01/26/2012 18:34:47 ******/
ALTER TABLE [Dictionary].[DraftPlayers]  WITH CHECK ADD  CONSTRAINT [FK_DraftPlayers_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Dictionary].[DraftPlayers] CHECK CONSTRAINT [FK_DraftPlayers_Players]
GO
/****** Object:  ForeignKey [FK_DraftPlayers_Teams]    Script Date: 01/26/2012 18:34:47 ******/
ALTER TABLE [Dictionary].[DraftPlayers]  WITH CHECK ADD  CONSTRAINT [FK_DraftPlayers_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[DraftPlayers] CHECK CONSTRAINT [FK_DraftPlayers_Teams]
GO
/****** Object:  ForeignKey [FK_Games_Teams]    Script Date: 01/26/2012 18:34:50 ******/
ALTER TABLE [Dictionary].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams] FOREIGN KEY([awayTeam])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[Games] CHECK CONSTRAINT [FK_Games_Teams]
GO
/****** Object:  ForeignKey [FK_Games_Teams1]    Script Date: 01/26/2012 18:34:50 ******/
ALTER TABLE [Dictionary].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams1] FOREIGN KEY([homeTeam])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[Games] CHECK CONSTRAINT [FK_Games_Teams1]
GO
/****** Object:  ForeignKey [FK_Players_Colleges]    Script Date: 01/26/2012 18:34:52 ******/
ALTER TABLE [Dictionary].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Colleges] FOREIGN KEY([college])
REFERENCES [Dictionary].[Colleges] ([id])
GO
ALTER TABLE [Dictionary].[Players] CHECK CONSTRAINT [FK_Players_Colleges]
GO
/****** Object:  ForeignKey [FK_Teams_Divisions]    Script Date: 01/26/2012 18:34:55 ******/
ALTER TABLE [Dictionary].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Divisions] FOREIGN KEY([division])
REFERENCES [Dictionary].[Divisions] ([id])
GO
ALTER TABLE [Dictionary].[Teams] CHECK CONSTRAINT [FK_Teams_Divisions]
GO
/****** Object:  ForeignKey [FK_Injuries_Players]    Script Date: 01/26/2012 18:34:57 ******/
ALTER TABLE [Physical].[Injuries]  WITH CHECK ADD  CONSTRAINT [FK_Injuries_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Physical].[Injuries] CHECK CONSTRAINT [FK_Injuries_Players]
GO
/****** Object:  ForeignKey [FK_Injuries_Rossters]    Script Date: 01/26/2012 18:34:57 ******/
ALTER TABLE [Physical].[Injuries]  WITH CHECK ADD  CONSTRAINT [FK_Injuries_Rossters] FOREIGN KEY([rosster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Physical].[Injuries] CHECK CONSTRAINT [FK_Injuries_Rossters]
GO
/****** Object:  ForeignKey [FK_Advanced_Rossters]    Script Date: 01/26/2012 18:34:58 ******/
ALTER TABLE [Reports].[Advanced]  WITH CHECK ADD  CONSTRAINT [FK_Advanced_Rossters] FOREIGN KEY([rosster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Reports].[Advanced] CHECK CONSTRAINT [FK_Advanced_Rossters]
GO
/****** Object:  ForeignKey [FK_AdvancedDetails_Advanced1]    Script Date: 01/26/2012 18:35:04 ******/
ALTER TABLE [Reports].[AdvancedDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdvancedDetails_Advanced1] FOREIGN KEY([advanced])
REFERENCES [Reports].[Advanced] ([id])
GO
ALTER TABLE [Reports].[AdvancedDetails] CHECK CONSTRAINT [FK_AdvancedDetails_Advanced1]
GO
/****** Object:  ForeignKey [FK_AdvancedDetails_Players]    Script Date: 01/26/2012 18:35:04 ******/
ALTER TABLE [Reports].[AdvancedDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdvancedDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Reports].[AdvancedDetails] CHECK CONSTRAINT [FK_AdvancedDetails_Players]
GO
/****** Object:  ForeignKey [FK_TeamAndOpponent_TeamAndOpponent]    Script Date: 01/26/2012 18:35:05 ******/
ALTER TABLE [Reports].[TeamAndOpponent]  WITH CHECK ADD  CONSTRAINT [FK_TeamAndOpponent_TeamAndOpponent] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Reports].[TeamAndOpponent] CHECK CONSTRAINT [FK_TeamAndOpponent_TeamAndOpponent]
GO
/****** Object:  ForeignKey [FK_TeamAndOpponentDetails_TeamAndOpponentDetails]    Script Date: 01/26/2012 18:35:13 ******/
ALTER TABLE [Reports].[TeamAndOpponentDetails]  WITH CHECK ADD  CONSTRAINT [FK_TeamAndOpponentDetails_TeamAndOpponentDetails] FOREIGN KEY([TeamAndOpponent])
REFERENCES [Reports].[TeamAndOpponent] ([id])
GO
ALTER TABLE [Reports].[TeamAndOpponentDetails] CHECK CONSTRAINT [FK_TeamAndOpponentDetails_TeamAndOpponentDetails]
GO
/****** Object:  ForeignKey [FK_TotalDetails_Players]    Script Date: 01/26/2012 18:35:19 ******/
ALTER TABLE [Reports].[TotalDetails]  WITH CHECK ADD  CONSTRAINT [FK_TotalDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Reports].[TotalDetails] CHECK CONSTRAINT [FK_TotalDetails_Players]
GO
/****** Object:  ForeignKey [FK_TotalDetails_Totals]    Script Date: 01/26/2012 18:35:19 ******/
ALTER TABLE [Reports].[TotalDetails]  WITH CHECK ADD  CONSTRAINT [FK_TotalDetails_Totals] FOREIGN KEY([total])
REFERENCES [Reports].[Totals] ([id])
GO
ALTER TABLE [Reports].[TotalDetails] CHECK CONSTRAINT [FK_TotalDetails_Totals]
GO
/****** Object:  ForeignKey [FK_Totals_Rossters]    Script Date: 01/26/2012 18:35:20 ******/
ALTER TABLE [Reports].[Totals]  WITH CHECK ADD  CONSTRAINT [FK_Totals_Rossters] FOREIGN KEY([rosster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Reports].[Totals] CHECK CONSTRAINT [FK_Totals_Rossters]
GO
/****** Object:  ForeignKey [FK_GameScore_Games]    Script Date: 01/26/2012 18:35:21 ******/
ALTER TABLE [Stats].[GameScore]  WITH CHECK ADD  CONSTRAINT [FK_GameScore_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [Stats].[GameScore] CHECK CONSTRAINT [FK_GameScore_Games]
GO
/****** Object:  ForeignKey [FK_PeriodResult_GamePeriods]    Script Date: 01/26/2012 18:35:23 ******/
ALTER TABLE [Stats].[PeriodScore]  WITH CHECK ADD  CONSTRAINT [FK_PeriodResult_GamePeriods] FOREIGN KEY([gamePeriod])
REFERENCES [Dictionary].[GamePeriods] ([id])
GO
ALTER TABLE [Stats].[PeriodScore] CHECK CONSTRAINT [FK_PeriodResult_GamePeriods]
GO
/****** Object:  ForeignKey [FK_PeriodResult_Games]    Script Date: 01/26/2012 18:35:24 ******/
ALTER TABLE [Stats].[PeriodScore]  WITH CHECK ADD  CONSTRAINT [FK_PeriodResult_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [Stats].[PeriodScore] CHECK CONSTRAINT [FK_PeriodResult_Games]
GO
/****** Object:  ForeignKey [FK_PersonalStatisticPerGame_Games]    Script Date: 01/26/2012 18:35:29 ******/
ALTER TABLE [Stats].[PersonalStatisticPerGame]  WITH CHECK ADD  CONSTRAINT [FK_PersonalStatisticPerGame_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [Stats].[PersonalStatisticPerGame] CHECK CONSTRAINT [FK_PersonalStatisticPerGame_Games]
GO
/****** Object:  ForeignKey [FK_PersonalStatisticPerGame_Players]    Script Date: 01/26/2012 18:35:29 ******/
ALTER TABLE [Stats].[PersonalStatisticPerGame]  WITH CHECK ADD  CONSTRAINT [FK_PersonalStatisticPerGame_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Stats].[PersonalStatisticPerGame] CHECK CONSTRAINT [FK_PersonalStatisticPerGame_Players]
GO
/****** Object:  ForeignKey [FK_PlayerDetails_Players]    Script Date: 01/26/2012 18:35:31 ******/
ALTER TABLE [Stats].[PlayerPhysicalDetails]  WITH CHECK ADD  CONSTRAINT [FK_PlayerDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Stats].[PlayerPhysicalDetails] CHECK CONSTRAINT [FK_PlayerDetails_Players]
GO
/****** Object:  ForeignKey [FK_RossterDetails_Players]    Script Date: 01/26/2012 18:35:32 ******/
ALTER TABLE [Stats].[RosterDetails]  WITH CHECK ADD  CONSTRAINT [FK_RossterDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Stats].[RosterDetails] CHECK CONSTRAINT [FK_RossterDetails_Players]
GO
/****** Object:  ForeignKey [FK_RossterDetails_Rossters]    Script Date: 01/26/2012 18:35:32 ******/
ALTER TABLE [Stats].[RosterDetails]  WITH CHECK ADD  CONSTRAINT [FK_RossterDetails_Rossters] FOREIGN KEY([rosster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Stats].[RosterDetails] CHECK CONSTRAINT [FK_RossterDetails_Rossters]
GO
/****** Object:  ForeignKey [FK_Rossters_Teams]    Script Date: 01/26/2012 18:35:34 ******/
ALTER TABLE [Stats].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rossters_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Stats].[Rosters] CHECK CONSTRAINT [FK_Rossters_Teams]
GO
/****** Object:  ForeignKey [FK_Rosters_Seasons]    Script Date: 01/26/2012 18:35:34 ******/
ALTER TABLE [Stats].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rosters_Seasons] FOREIGN KEY([season])
REFERENCES [Dictionary].[Seasons] ([id])
GO
ALTER TABLE [Stats].[Rosters] CHECK CONSTRAINT [FK_Rosters_Seasons]
GO
/****** Object:  ForeignKey [FK_Rosters_SeasonStages]    Script Date: 01/26/2012 18:35:34 ******/
ALTER TABLE [Stats].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rosters_SeasonStages] FOREIGN KEY([seasonStage])
REFERENCES [Dictionary].[SeasonStages] ([id])
GO
ALTER TABLE [Stats].[Rosters] CHECK CONSTRAINT [FK_Rosters_SeasonStages]
GO
/****** Object:  ForeignKey [FK_TeamArenas_Arenas]    Script Date: 01/26/2012 18:35:36 ******/
ALTER TABLE [Stats].[TeamArenas]  WITH CHECK ADD  CONSTRAINT [FK_TeamArenas_Arenas] FOREIGN KEY([arena])
REFERENCES [Dictionary].[Arenas] ([id])
GO
ALTER TABLE [Stats].[TeamArenas] CHECK CONSTRAINT [FK_TeamArenas_Arenas]
GO
/****** Object:  ForeignKey [FK_TeamArenas_Teams]    Script Date: 01/26/2012 18:35:36 ******/
ALTER TABLE [Stats].[TeamArenas]  WITH CHECK ADD  CONSTRAINT [FK_TeamArenas_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Stats].[TeamArenas] CHECK CONSTRAINT [FK_TeamArenas_Teams]
GO
/****** Object:  ForeignKey [FK_TeamCoaches_Coachs]    Script Date: 01/26/2012 18:35:37 ******/
ALTER TABLE [Stats].[TeamCoaches]  WITH CHECK ADD  CONSTRAINT [FK_TeamCoaches_Coachs] FOREIGN KEY([coach])
REFERENCES [Dictionary].[Coachs] ([id])
GO
ALTER TABLE [Stats].[TeamCoaches] CHECK CONSTRAINT [FK_TeamCoaches_Coachs]
GO
/****** Object:  ForeignKey [FK_TeamCoaches_Teams]    Script Date: 01/26/2012 18:35:37 ******/
ALTER TABLE [Stats].[TeamCoaches]  WITH CHECK ADD  CONSTRAINT [FK_TeamCoaches_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Stats].[TeamCoaches] CHECK CONSTRAINT [FK_TeamCoaches_Teams]
GO
/****** Object:  ForeignKey [FK_WinsAndLoss_Seasons]    Script Date: 01/26/2012 18:35:39 ******/
ALTER TABLE [Stats].[WinsAndLoss]  WITH CHECK ADD  CONSTRAINT [FK_WinsAndLoss_Seasons] FOREIGN KEY([season])
REFERENCES [Dictionary].[Seasons] ([id])
GO
ALTER TABLE [Stats].[WinsAndLoss] CHECK CONSTRAINT [FK_WinsAndLoss_Seasons]
GO
/****** Object:  ForeignKey [FK_WinsAndLoss_SeasonStages]    Script Date: 01/26/2012 18:35:40 ******/
ALTER TABLE [Stats].[WinsAndLoss]  WITH CHECK ADD  CONSTRAINT [FK_WinsAndLoss_SeasonStages] FOREIGN KEY([stage])
REFERENCES [Dictionary].[SeasonStages] ([id])
GO
ALTER TABLE [Stats].[WinsAndLoss] CHECK CONSTRAINT [FK_WinsAndLoss_SeasonStages]
GO
/****** Object:  ForeignKey [FK_WinsAndLoss_Teams]    Script Date: 01/26/2012 18:35:40 ******/
ALTER TABLE [Stats].[WinsAndLoss]  WITH CHECK ADD  CONSTRAINT [FK_WinsAndLoss_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Stats].[WinsAndLoss] CHECK CONSTRAINT [FK_WinsAndLoss_Teams]
GO
