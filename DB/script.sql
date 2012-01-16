USE [Stats]
GO
/****** Object:  Schema [Dictionary]    Script Date: 01/16/2012 17:44:06 ******/
CREATE SCHEMA [Dictionary] AUTHORIZATION [public]
GO
/****** Object:  Schema [Stats]    Script Date: 01/16/2012 17:44:06 ******/
CREATE SCHEMA [Stats] AUTHORIZATION [public]
GO
/****** Object:  Table [dbo].[PersonalStatisticPerGame]    Script Date: 01/16/2012 17:44:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalStatisticPerGame](
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
/****** Object:  Table [Dictionary].[GamePeriods]    Script Date: 01/16/2012 17:44:39 ******/
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
/****** Object:  Table [dbo].[GameScore]    Script Date: 01/16/2012 17:44:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameScore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[game] [smallint] NOT NULL,
	[awayTeamScore] [tinyint] NOT NULL,
	[homeTeamScore] [tinyint] NOT NULL,
	[flag] [bit] NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IS NULL - Победитель еще не выявлен.
0 - Away Team WIN!
1 - Home Team WIN!' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameScore'
GO
/****** Object:  Table [Dictionary].[Colleges]    Script Date: 01/16/2012 17:44:39 ******/
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
/****** Object:  Table [dbo].[TeamAndOpponent]    Script Date: 01/16/2012 17:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamAndOpponent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team] [tinyint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Team&Opponent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dictionary].[Teams]    Script Date: 01/16/2012 17:44:43 ******/
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
/****** Object:  Table [dbo].[PeriodScore]    Script Date: 01/16/2012 17:44:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodScore](
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
/****** Object:  Table [dbo].[TotalDetails]    Script Date: 01/16/2012 17:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalDetails](
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
/****** Object:  Table [dbo].[RosterDetails]    Script Date: 01/16/2012 17:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RosterDetails](
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
/****** Object:  Table [dbo].[Totals]    Script Date: 01/16/2012 17:44:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Totals](
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
/****** Object:  Table [dbo].[Advanced]    Script Date: 01/16/2012 17:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advanced](
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
/****** Object:  Table [dbo].[Injuries]    Script Date: 01/16/2012 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Injuries](
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
/****** Object:  Table [dbo].[AdvancedDetails]    Script Date: 01/16/2012 17:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvancedDetails](
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
/****** Object:  Table [Dictionary].[Players]    Script Date: 01/16/2012 17:44:42 ******/
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
/****** Object:  Table [dbo].[PlayerPhysicalDetails]    Script Date: 01/16/2012 17:44:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerPhysicalDetails](
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
/****** Object:  Table [Dictionary].[Games]    Script Date: 01/16/2012 17:44:40 ******/
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
/****** Object:  Table [dbo].[Rosters]    Script Date: 01/16/2012 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rosters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team] [tinyint] NOT NULL,
	[date] [smalldatetime] NOT NULL,
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
/****** Object:  ForeignKey [FK_Advanced_Rossters]    Script Date: 01/16/2012 17:44:07 ******/
ALTER TABLE [dbo].[Advanced]  WITH CHECK ADD  CONSTRAINT [FK_Advanced_Rossters] FOREIGN KEY([rosster])
REFERENCES [dbo].[Rosters] ([id])
GO
ALTER TABLE [dbo].[Advanced] CHECK CONSTRAINT [FK_Advanced_Rossters]
GO
/****** Object:  ForeignKey [FK_AdvancedDetails_Advanced1]    Script Date: 01/16/2012 17:44:14 ******/
ALTER TABLE [dbo].[AdvancedDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdvancedDetails_Advanced1] FOREIGN KEY([advanced])
REFERENCES [dbo].[Advanced] ([id])
GO
ALTER TABLE [dbo].[AdvancedDetails] CHECK CONSTRAINT [FK_AdvancedDetails_Advanced1]
GO
/****** Object:  ForeignKey [FK_AdvancedDetails_Players]    Script Date: 01/16/2012 17:44:14 ******/
ALTER TABLE [dbo].[AdvancedDetails]  WITH CHECK ADD  CONSTRAINT [FK_AdvancedDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [dbo].[AdvancedDetails] CHECK CONSTRAINT [FK_AdvancedDetails_Players]
GO
/****** Object:  ForeignKey [FK_Injuries_Players]    Script Date: 01/16/2012 17:44:17 ******/
ALTER TABLE [dbo].[Injuries]  WITH CHECK ADD  CONSTRAINT [FK_Injuries_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [dbo].[Injuries] CHECK CONSTRAINT [FK_Injuries_Players]
GO
/****** Object:  ForeignKey [FK_Injuries_Rossters]    Script Date: 01/16/2012 17:44:18 ******/
ALTER TABLE [dbo].[Injuries]  WITH CHECK ADD  CONSTRAINT [FK_Injuries_Rossters] FOREIGN KEY([rosster])
REFERENCES [dbo].[Rosters] ([id])
GO
ALTER TABLE [dbo].[Injuries] CHECK CONSTRAINT [FK_Injuries_Rossters]
GO
/****** Object:  ForeignKey [FK_PeriodResult_GamePeriods]    Script Date: 01/16/2012 17:44:19 ******/
ALTER TABLE [dbo].[PeriodScore]  WITH CHECK ADD  CONSTRAINT [FK_PeriodResult_GamePeriods] FOREIGN KEY([gamePeriod])
REFERENCES [Dictionary].[GamePeriods] ([id])
GO
ALTER TABLE [dbo].[PeriodScore] CHECK CONSTRAINT [FK_PeriodResult_GamePeriods]
GO
/****** Object:  ForeignKey [FK_PeriodResult_Games]    Script Date: 01/16/2012 17:44:20 ******/
ALTER TABLE [dbo].[PeriodScore]  WITH CHECK ADD  CONSTRAINT [FK_PeriodResult_Games] FOREIGN KEY([game])
REFERENCES [Dictionary].[Games] ([id])
GO
ALTER TABLE [dbo].[PeriodScore] CHECK CONSTRAINT [FK_PeriodResult_Games]
GO
/****** Object:  ForeignKey [FK_PlayerDetails_Players]    Script Date: 01/16/2012 17:44:27 ******/
ALTER TABLE [dbo].[PlayerPhysicalDetails]  WITH CHECK ADD  CONSTRAINT [FK_PlayerDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [dbo].[PlayerPhysicalDetails] CHECK CONSTRAINT [FK_PlayerDetails_Players]
GO
/****** Object:  ForeignKey [FK_RossterDetails_Players]    Script Date: 01/16/2012 17:44:29 ******/
ALTER TABLE [dbo].[RosterDetails]  WITH CHECK ADD  CONSTRAINT [FK_RossterDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [dbo].[RosterDetails] CHECK CONSTRAINT [FK_RossterDetails_Players]
GO
/****** Object:  ForeignKey [FK_RossterDetails_Rossters]    Script Date: 01/16/2012 17:44:29 ******/
ALTER TABLE [dbo].[RosterDetails]  WITH CHECK ADD  CONSTRAINT [FK_RossterDetails_Rossters] FOREIGN KEY([rosster])
REFERENCES [dbo].[Rosters] ([id])
GO
ALTER TABLE [dbo].[RosterDetails] CHECK CONSTRAINT [FK_RossterDetails_Rossters]
GO
/****** Object:  ForeignKey [FK_Rossters_Teams]    Script Date: 01/16/2012 17:44:30 ******/
ALTER TABLE [dbo].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rossters_Teams] FOREIGN KEY([team])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [dbo].[Rosters] CHECK CONSTRAINT [FK_Rossters_Teams]
GO
/****** Object:  ForeignKey [FK_TotalDetails_Players]    Script Date: 01/16/2012 17:44:36 ******/
ALTER TABLE [dbo].[TotalDetails]  WITH CHECK ADD  CONSTRAINT [FK_TotalDetails_Players] FOREIGN KEY([player])
REFERENCES [Dictionary].[Players] ([id])
GO
ALTER TABLE [dbo].[TotalDetails] CHECK CONSTRAINT [FK_TotalDetails_Players]
GO
/****** Object:  ForeignKey [FK_TotalDetails_Totals]    Script Date: 01/16/2012 17:44:36 ******/
ALTER TABLE [dbo].[TotalDetails]  WITH CHECK ADD  CONSTRAINT [FK_TotalDetails_Totals] FOREIGN KEY([total])
REFERENCES [dbo].[Totals] ([id])
GO
ALTER TABLE [dbo].[TotalDetails] CHECK CONSTRAINT [FK_TotalDetails_Totals]
GO
/****** Object:  ForeignKey [FK_Totals_Rossters]    Script Date: 01/16/2012 17:44:38 ******/
ALTER TABLE [dbo].[Totals]  WITH CHECK ADD  CONSTRAINT [FK_Totals_Rossters] FOREIGN KEY([rosster])
REFERENCES [dbo].[Rosters] ([id])
GO
ALTER TABLE [dbo].[Totals] CHECK CONSTRAINT [FK_Totals_Rossters]
GO
/****** Object:  ForeignKey [FK_Games_Teams]    Script Date: 01/16/2012 17:44:40 ******/
ALTER TABLE [Dictionary].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams] FOREIGN KEY([awayTeam])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[Games] CHECK CONSTRAINT [FK_Games_Teams]
GO
/****** Object:  ForeignKey [FK_Games_Teams1]    Script Date: 01/16/2012 17:44:41 ******/
ALTER TABLE [Dictionary].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams1] FOREIGN KEY([homeTeam])
REFERENCES [Dictionary].[Teams] ([id])
GO
ALTER TABLE [Dictionary].[Games] CHECK CONSTRAINT [FK_Games_Teams1]
GO
/****** Object:  ForeignKey [FK_Players_Colleges]    Script Date: 01/16/2012 17:44:42 ******/
ALTER TABLE [Dictionary].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Colleges] FOREIGN KEY([college])
REFERENCES [Dictionary].[Colleges] ([id])
GO
ALTER TABLE [Dictionary].[Players] CHECK CONSTRAINT [FK_Players_Colleges]
GO
