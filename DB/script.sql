USE [Stats]
GO
/****** Object:  Schema [Dictionary]    Script Date: 01/18/2012 12:03:33 ******/
CREATE SCHEMA [Dictionary] AUTHORIZATION [public]
GO
/****** Object:  Schema [Physical]    Script Date: 01/18/2012 12:03:33 ******/
CREATE SCHEMA [Physical] AUTHORIZATION [public]
GO
/****** Object:  Schema [Reports]    Script Date: 01/18/2012 12:03:33 ******/
CREATE SCHEMA [Reports] AUTHORIZATION [public]
GO
/****** Object:  Schema [Stats]    Script Date: 01/18/2012 12:03:33 ******/
CREATE SCHEMA [Stats] AUTHORIZATION [public]
GO
/****** Object:  Table [Dictionary].[GamePeriods]    Script Date: 01/18/2012 12:03:34 ******/
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
/****** Object:  Table [Dictionary].[Colleges]    Script Date: 01/18/2012 12:03:34 ******/
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
/****** Object:  Table [Dictionary].[Teams]    Script Date: 01/18/2012 12:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary].[Teams](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stats].[PeriodScore]    Script Date: 01/18/2012 12:04:15 ******/
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
/****** Object:  Table [Reports].[TotalDetails]    Script Date: 01/18/2012 12:04:12 ******/
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
/****** Object:  Table [Reports].[TeamAndOpponentDetails]    Script Date: 01/18/2012 12:03:59 ******/
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
/****** Object:  Table [Reports].[Advanced]    Script Date: 01/18/2012 12:03:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[Advanced](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roster] [int] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Advanced] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Advanced] UNIQUE NONCLUSTERED 
(
	[roster] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Physical].[Injuries]    Script Date: 01/18/2012 12:03:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Physical].[Injuries](
	[id] [int] NOT NULL,
	[roster] [int] NOT NULL,
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
	[roster] ASC,
	[player] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Stats].[RosterDetails]    Script Date: 01/18/2012 12:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Stats].[RosterDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roster] [int] NOT NULL,
	[player] [smallint] NOT NULL,
	[number] [varchar](3) NOT NULL,
	[position] [varchar](3) NOT NULL,
 CONSTRAINT [PK_RosterDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_RosterDetails] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Reports].[Totals]    Script Date: 01/18/2012 12:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reports].[Totals](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roster] [int] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Totals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Totals] UNIQUE NONCLUSTERED 
(
	[roster] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reports].[AdvancedDetails]    Script Date: 01/18/2012 12:03:49 ******/
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
/****** Object:  Table [Dictionary].[Players]    Script Date: 01/18/2012 12:03:37 ******/
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
/****** Object:  Table [Stats].[PersonalStatisticPerGame]    Script Date: 01/18/2012 12:04:20 ******/
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
/****** Object:  Table [Physical].[PlayerPhysicalDetails]    Script Date: 01/18/2012 12:03:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Physical].[PlayerPhysicalDetails](
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
/****** Object:  Table [Dictionary].[Games]    Script Date: 01/18/2012 12:03:36 ******/
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
/****** Object:  Table [Reports].[TeamAndOpponent]    Script Date: 01/18/2012 12:03:50 ******/
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
/****** Object:  Table [Stats].[Rosters]    Script Date: 01/18/2012 12:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Stats].[Rosters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team] [tinyint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Rosters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Rosters] UNIQUE NONCLUSTERED 
(
	[team] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Stats].[GameScore]    Script Date: 01/18/2012 12:04:14 ******/
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
/****** Object:  ForeignKey [FK_Games_Teams]    Script Date: 01/18/2012 12:03:36 ******/
ALTER TABLE [Dictionary].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams] FOREIGN KEY([awayTeam])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[Games] CHECK CONSTRAINT [FK_Games_Teams]
GO
/****** Object:  ForeignKey [FK_Games_Teams1]    Script Date: 01/18/2012 12:03:36 ******/
ALTER TABLE [Dictionary].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams1] FOREIGN KEY([homeTeam])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[Games] CHECK CONSTRAINT [FK_Games_Teams1]
GO
/****** Object:  ForeignKey [FK_Players_Colleges]    Script Date: 01/18/2012 12:03:37 ******/
ALTER TABLE [Dictionary].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Colleges] FOREIGN KEY([college])
REFERENCES [Dictionary].[Colleges] ([id])
GO
ALTER TABLE [Dictionary].[Players] CHECK CONSTRAINT [FK_Players_Colleges]
GO
/****** Object:  ForeignKey [FK_Injuries_Players]    Script Date: 01/18/2012 12:03:40 ******/
ALTER TABLE [Physical].[Injuries]  WITH CHECK ADD  CONSTRAINT [FK_Injuries_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Physical].[Injuries] CHECK CONSTRAINT [FK_Injuries_Players]
GO
/****** Object:  ForeignKey [FK_Injuries_Rosters]    Script Date: 01/18/2012 12:03:40 ******/
ALTER TABLE [Physical].[Injuries]  WITH CHECK ADD  CONSTRAINT [FK_Injuries_Rosters] FOREIGN KEY([roster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Physical].[Injuries] CHECK CONSTRAINT [FK_Injuries_Rosters]
GO
/****** Object:  ForeignKey [FK_PlayerDetails_Players]    Script Date: 01/18/2012 12:03:42 ******/
ALTER TABLE [Physical].[PlayerPhysicalDetails]  WITH CHECK ADD  CONSTRAINT [FK_PlayerDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Physical].[PlayerPhysicalDetails] CHECK CONSTRAINT [FK_PlayerDetails_Players]
GO
/****** Object:  ForeignKey [FK_Advanced_Rosters]    Script Date: 01/18/2012 12:03:43 ******/
ALTER TABLE [Reports].[Advanced]  WITH CHECK ADD  CONSTRAINT [FK_Advanced_Rosters] FOREIGN KEY([roster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Reports].[Advanced] CHECK CONSTRAINT [FK_Advanced_Rosters]
GO
/****** Object:  ForeignKey [FK_AdvancedDetails_Advanced1]    Script Date: 01/18/2012 12:03:49 ******/
ALTER TABLE [Reports].[AdvancedDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdvancedDetails_Advanced1] FOREIGN KEY([advanced])
REFERENCES [Reports].[Advanced] ([id])
GO
ALTER TABLE [Reports].[AdvancedDetails] CHECK CONSTRAINT [FK_AdvancedDetails_Advanced1]
GO
/****** Object:  ForeignKey [FK_AdvancedDetails_Players]    Script Date: 01/18/2012 12:03:49 ******/
ALTER TABLE [Reports].[AdvancedDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdvancedDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Reports].[AdvancedDetails] CHECK CONSTRAINT [FK_AdvancedDetails_Players]
GO
/****** Object:  ForeignKey [FK_TeamAndOpponent_TeamAndOpponent]    Script Date: 01/18/2012 12:03:50 ******/
ALTER TABLE [Reports].[TeamAndOpponent]  WITH CHECK ADD  CONSTRAINT [FK_TeamAndOpponent_TeamAndOpponent] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Reports].[TeamAndOpponent] CHECK CONSTRAINT [FK_TeamAndOpponent_TeamAndOpponent]
GO
/****** Object:  ForeignKey [FK_TeamAndOpponentDetails_TeamAndOpponentDetails]    Script Date: 01/18/2012 12:03:59 ******/
ALTER TABLE [Reports].[TeamAndOpponentDetails]  WITH CHECK ADD  CONSTRAINT [FK_TeamAndOpponentDetails_TeamAndOpponentDetails] FOREIGN KEY([TeamAndOpponent])
REFERENCES [Reports].[TeamAndOpponent] ([id])
GO
ALTER TABLE [Reports].[TeamAndOpponentDetails] CHECK CONSTRAINT [FK_TeamAndOpponentDetails_TeamAndOpponentDetails]
GO
/****** Object:  ForeignKey [FK_TotalDetails_Players]    Script Date: 01/18/2012 12:04:12 ******/
ALTER TABLE [Reports].[TotalDetails]  WITH CHECK ADD  CONSTRAINT [FK_TotalDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Reports].[TotalDetails] CHECK CONSTRAINT [FK_TotalDetails_Players]
GO
/****** Object:  ForeignKey [FK_TotalDetails_Totals]    Script Date: 01/18/2012 12:04:12 ******/
ALTER TABLE [Reports].[TotalDetails]  WITH CHECK ADD  CONSTRAINT [FK_TotalDetails_Totals] FOREIGN KEY([total])
REFERENCES [Reports].[Totals] ([id])
GO
ALTER TABLE [Reports].[TotalDetails] CHECK CONSTRAINT [FK_TotalDetails_Totals]
GO
/****** Object:  ForeignKey [FK_Totals_Rosters]    Script Date: 01/18/2012 12:04:13 ******/
ALTER TABLE [Reports].[Totals]  WITH CHECK ADD  CONSTRAINT [FK_Totals_Rosters] FOREIGN KEY([roster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Reports].[Totals] CHECK CONSTRAINT [FK_Totals_Rosters]
GO
/****** Object:  ForeignKey [FK_GameScore_Games]    Script Date: 01/18/2012 12:04:14 ******/
ALTER TABLE [Stats].[GameScore]  WITH CHECK ADD  CONSTRAINT [FK_GameScore_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [Stats].[GameScore] CHECK CONSTRAINT [FK_GameScore_Games]
GO
/****** Object:  ForeignKey [FK_PeriodResult_GamePeriods]    Script Date: 01/18/2012 12:04:16 ******/
ALTER TABLE [Stats].[PeriodScore]  WITH CHECK ADD  CONSTRAINT [FK_PeriodResult_GamePeriods] FOREIGN KEY([gamePeriod])
REFERENCES [Dictionary].[GamePeriods] ([id])
GO
ALTER TABLE [Stats].[PeriodScore] CHECK CONSTRAINT [FK_PeriodResult_GamePeriods]
GO
/****** Object:  ForeignKey [FK_PeriodResult_Games]    Script Date: 01/18/2012 12:04:16 ******/
ALTER TABLE [Stats].[PeriodScore]  WITH CHECK ADD  CONSTRAINT [FK_PeriodResult_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [Stats].[PeriodScore] CHECK CONSTRAINT [FK_PeriodResult_Games]
GO
/****** Object:  ForeignKey [FK_PersonalStatisticPerGame_Games]    Script Date: 01/18/2012 12:04:21 ******/
ALTER TABLE [Stats].[PersonalStatisticPerGame]  WITH CHECK ADD  CONSTRAINT [FK_PersonalStatisticPerGame_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [Stats].[PersonalStatisticPerGame] CHECK CONSTRAINT [FK_PersonalStatisticPerGame_Games]
GO
/****** Object:  ForeignKey [FK_PersonalStatisticPerGame_Players]    Script Date: 01/18/2012 12:04:21 ******/
ALTER TABLE [Stats].[PersonalStatisticPerGame]  WITH CHECK ADD  CONSTRAINT [FK_PersonalStatisticPerGame_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Stats].[PersonalStatisticPerGame] CHECK CONSTRAINT [FK_PersonalStatisticPerGame_Players]
GO
/****** Object:  ForeignKey [FK_RosterDetails_Players]    Script Date: 01/18/2012 12:04:22 ******/
ALTER TABLE [Stats].[RosterDetails]  WITH CHECK ADD  CONSTRAINT [FK_RosterDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [Stats].[RosterDetails] CHECK CONSTRAINT [FK_RosterDetails_Players]
GO
/****** Object:  ForeignKey [FK_RosterDetails_Rosters]    Script Date: 01/18/2012 12:04:22 ******/
ALTER TABLE [Stats].[RosterDetails]  WITH CHECK ADD  CONSTRAINT [FK_RosterDetails_Rosters] FOREIGN KEY([roster])
REFERENCES [Stats].[Rosters] ([id])
GO
ALTER TABLE [Stats].[RosterDetails] CHECK CONSTRAINT [FK_RosterDetails_Rosters]
GO
/****** Object:  ForeignKey [FK_Rosters_Teams]    Script Date: 01/18/2012 12:04:24 ******/
ALTER TABLE [Stats].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rosters_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Stats].[Rosters] CHECK CONSTRAINT [FK_Rosters_Teams]
GO
