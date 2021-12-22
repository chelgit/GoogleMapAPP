CREATE DATABASE [Scooter]
GO

USE [Scooter]
GO


CREATE TABLE [dbo].[ScooterMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScooterName] [nvarchar](50) NOT NULL,
	[InActive] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
	[LocationID] [int] NULL,
	[Available] [bit] NULL default(1),
 CONSTRAINT [PK_ScooterMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScooterMaster] ADD  DEFAULT ((0)) FOR [InActive]
GO

ALTER TABLE [dbo].[ScooterMaster] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[ScooterMaster] ADD  DEFAULT (getdate()) FOR [ModifyDate]
GO





CREATE TABLE [dbo].[Location](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[InActive] [int] NOT NULL,
	[Lat] decimal(18,8) NOT NULL,
	[Long] decimal(18,8) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Location] ADD  DEFAULT ((0)) FOR [InActive]
GO

ALTER TABLE [dbo].[Location] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Location] ADD  DEFAULT (getdate()) FOR [ModifyDate]
GO

----Insert sample data
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 1'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 2'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 3'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 4'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 5'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 6'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 7'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 8'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 9'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 10'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 11'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 12'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 13'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 14'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 15'
          )
GO

INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 16'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 17'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 18'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 19'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 20'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 21'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 22'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 23'
          )

GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 24'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 25'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 26'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 27'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 28'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 29'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 30'
          )
GO

INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 31'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 32'
          )
GO

INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 33'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 34'
          )
GO

INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 35'
          )
GO
INSERT INTO [dbo].[ScooterMaster]
           ([ScooterName])
     VALUES
           ('Scooter Serial No 36'
          )
GO


----Location
INSERT INTO [dbo].[Location]
           ([LocationName],Lat,Long)
     VALUES
           ('Gardens by the Bay','1.2816','103.8616'
          )
GO
INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('Farrer Park','1.3124','103.8542'
          )
GO
INSERT INTO [dbo].[Location]
           ([LocationName],Lat,Long)
     VALUES
           ('Gardens by the Bay','1.2816','103.8616'
          )
GO
INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('Little India mrt',' 1.3063','103.8494'
          )
GO

INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('Bugis mrt','1.3002','103.8561'
          )
GO

INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('Jurong Lake Gardens','1.3359','103.7262'
          )
GO

INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('Punggol Park','1.3777','103.8977'
          )
GO


INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('singapore botanic gardens','1.3138','103.8159'
          )
GO

INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('East Coast Park','1.3008','103.9122'
          )
GO

INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('Sentosa','1.2494','103.8303'
          )
GO

INSERT INTO [dbo].[Location]
          ([LocationName],Lat,Long)
     VALUES
           ('West Coast Park','1.2914','103.7667'
          )
GO


---Assign scooter in different locations in singapore

update ScooterMaster set locationid=1 where id in (1,2,3)

update ScooterMaster set locationid=2 where id in (4,5,6)

update ScooterMaster set locationid=3 where id in (7,8,9)

update ScooterMaster set locationid=4 where id in (10,11,12)

update ScooterMaster set locationid=6 where id in (13,14,15,16)


update ScooterMaster set locationid=5 where id in (17,18,19)

update ScooterMaster set locationid=7 where id in (20,21)

update ScooterMaster set locationid=8 where id in (22,23,24,25,26)

update ScooterMaster set locationid=9 where id in (27,28,29)

update ScooterMaster set locationid=10 where id in (30,31,32)
update ScooterMaster set locationid=11 where id in (33,34,35,36)


---Procedure to fetch the data
CREATE proc [dbo].[spGetClosetScooters]          
(            
@command nvarchar(5),            
@curlat decimal(18,8)=1,            
@curlong decimal(18,8)=2,            
@distinct int=0,            
@count nvarchar(250)=NULL         
    
)            
as             
begin          
declare @ReturnCode as int,@ReturnMsg nvarchar(250)  
set @ReturnCode=5000      
set @ReturnMsg=''  
declare @radius_lat as int 
declare @radius_long as int


    
if @command in ('G')  ---select data  
BEGIN    
     
    
      with TableDistinct as (
select
2 * 3961 * asin(sqrt( power((sin(radians((lat - @curlat) / 2))) , 2) + cos(radians(@curlat)) * cos(radians(lat)) * power((sin(radians((long - @curlong) / 2))) , 2) )) as distance,id as locationid
from
Location)
    
     select count(*) as available,t.distance from ScooterMaster s 
	 inner join TableDistinct t on t.locationid=s.ID
	 where t.locationid is not null and  s.Available=1  and t.distance>=@distinct
	 group by t.locationid,t.distance
      
     
    
 END         
end 
GO


