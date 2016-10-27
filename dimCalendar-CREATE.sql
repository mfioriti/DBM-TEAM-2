USE [Class]
GO

/****** Object:  StoredProcedure [dbo].[populate_dimCalendar]    Script Date: 10/27/2016 1:06:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Brian Lamprecht
-- Create date: 10/17/2016
-- Description:	Procedure to populate our calendar dimension
-- =============================================
CREATE PROCEDURE [dbo].[populate_dimCalendar]( @startDate smalldatetime, @endDate smalldatetime, @defaultDate smalldatetime)
AS
BEGIN
				   
		--If @endDate < @startDate bad things happen check that first
		If @endDate < @startDate
		begin
			select 'Oh no you didnt'
		end
		else
		BEGIN

			--back up the old table in the event bad things happen
			IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
			   WHERE TABLE_NAME = N'DimCalendar')
			BEGIN

			--drop the primary key because when we recreate we can't have a second key
			--with the same name
			IF (OBJECT_ID('PK_DimCalendar', 'PK') IS NOT NULL)
			BEGIN
				ALTER TABLE [dbo].[DimCalendar] DROP CONSTRAINT [PK_DimCalendar]
			END

			--come up with a timestamped name for a backup
			Declare @backupTableName varchar(50)
			Select @backupTableName = 'DimCalendar_' + dbo.stringify_timestamp(getdate())
				
			exec sp_rename 'DimCalendar',@backupTableName

			END

			--create the table from scratch
			CREATE TABLE [dbo].[DimCalendar](
				[Day_Dt] [varchar](10) NOT NULL,
				[Year] [int] NULL,
				[MonthOfYear] [int] NULL,
				[DayOfMonth] [int] NULL,
				[DayOfYear] [int] NULL,
				[MonthOfYearName] [varchar](10) NULL,
				[MonthOfYearShortName] [varchar](3) NULL,
				[QuarterOfYear] [int] NULL,
				[WeekOfYear] [int] NULL,
				[IsWeekday] [varchar](1) NULL,
				[IsWeekend] [varchar](1) NULL,
			 CONSTRAINT [PK_DimCalendar] PRIMARY KEY CLUSTERED 
			(
				[Day_Dt] ASC
			)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]


			--TODO: Insert the @default date we are going to use when we have no date
			--Insert into DimCalendar(....) based on @defaultDate
			
			--Loop through from start date to end date and populate the table
			Declare @loopDate as smalldatetime
			set @loopDate = @startDate 

			while @loopDate < @endDate
			BEGIN
				Insert into DimCalendar (Day_dt) values (Convert(varchar(10),@loopDate,101))
				--Fill in rest of table and make columns non null

				set @loopDate = DateAdd(dd,1,@loopdate)
			END

			
			--do some base check of our table to make sure it has the right number of rows we need
			Declare @rowsNeeded int
			Declare @rowsHave int
			select @rowsNeeded=datediff(dd,@endDate,@startDate)+1+1
			select @rowsHave=count(1) from DimCalendar

			if( @rowsHave != @rowsNeeded )
			begin
				select 'Error Loading table'
			end
			else
			begin
				select * from DimCalendar
			end
		END
		

END


GO


