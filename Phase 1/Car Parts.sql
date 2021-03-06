USE [Car Service Center]
GO
/****** Object:  Table [dbo].[Car_Manufacturer]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Manufacturer](
	[Car_Manufacturer_Code] [int] NOT NULL,
	[Manufacturer_name] [varchar](20) NULL,
	[Manufacturer_Details] [varchar](20) NULL,
 CONSTRAINT [XPKCar_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Car_Manufacturer_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Models]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Models](
	[Model_Code] [int] NOT NULL,
	[Car_Manufacturer_Code] [int] NOT NULL,
	[Model_Name] [varchar](20) NULL,
	[Other_Details] [varchar](20) NULL,
 CONSTRAINT [XPKCar_Models] PRIMARY KEY CLUSTERED 
(
	[Model_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars](
	[License_number] [varchar](20) NOT NULL,
	[Car_Year_of_Manufacture] [int] NULL,
	[Model_Code] [int] NOT NULL,
	[Other_Car_Details] [varchar](20) NULL,
	[Current_Mileage] [int] NULL,
	[Engine_Size] [int] NULL,
	[Customer_Id] [int] NULL,
 CONSTRAINT [XPKCars] PRIMARY KEY CLUSTERED 
(
	[License_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacts](
	[Contact_Id] [int] NOT NULL,
	[First_Name] [varchar](20) NOT NULL,
	[Middle_Name] [varchar](20) NULL,
	[Last_Name] [varchar](20) NOT NULL,
	[Gender] [varchar](1) NULL,
	[Email_Address] [varchar](20) NOT NULL,
	[Phone_Number] [varchar](20) NOT NULL,
	[Address_Line_1] [varchar](20) NOT NULL,
	[Address_Line_2] [varchar](20) NULL,
	[Address_Line_3] [varchar](20) NULL,
	[Address_Line_4] [varchar](20) NULL,
	[Town_City] [varchar](20) NULL,
	[State_Country_Province] [varchar](20) NOT NULL,
	[Country] [varchar](20) NOT NULL,
	[Other_Details] [varchar](20) NULL,
 CONSTRAINT [XPKContacts] PRIMARY KEY CLUSTERED 
(
	[Contact_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Defects]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Defects](
	[Defect_Id] [int] NOT NULL,
	[License_number] [varchar](20) NOT NULL,
	[Defect_Description] [varchar](20) NULL,
	[Car_Defect_Reported] [varchar](20) NULL,
	[Other_Details] [varchar](20) NULL,
 CONSTRAINT [XPKDefects] PRIMARY KEY CLUSTERED 
(
	[Defect_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mechanic_on_Services]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mechanic_on_Services](
	[Mechanic_Id] [int] NOT NULL,
	[Booking_Id] [int] NOT NULL,
 CONSTRAINT [XPKMechanic_on_Services] PRIMARY KEY CLUSTERED 
(
	[Mechanic_Id] ASC,
	[Booking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mechanics]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mechanics](
	[Mechanic_Id] [int] NOT NULL,
	[Mechanic_Name] [varchar](20) NULL,
	[Mechanic_Details] [varchar](20) NULL,
 CONSTRAINT [XPKMechanics] PRIMARY KEY CLUSTERED 
(
	[Mechanic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[Part_Id] [int] NOT NULL,
	[Part_Name] [varchar](20) NOT NULL,
	[Part_Description] [varchar](20) NULL,
	[Number_in_Stock] [int] NULL,
	[Other_Details] [varchar](20) NULL,
	[Parent_Part_id] [int] NULL,
	[#Weight] [varchar](20) NULL,
	[Condition] [varchar](20) NULL,
	[Mileage_Donor_Vehicle] [varchar](20) NULL,
 CONSTRAINT [XPKParts] PRIMARY KEY CLUSTERED 
(
	[Part_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts_Order_List]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts_Order_List](
	[Booking_Id] [int] NOT NULL,
	[Part_Id] [int] NOT NULL,
 CONSTRAINT [XPKParts_Order_List] PRIMARY KEY CLUSTERED 
(
	[Booking_Id] ASC,
	[Part_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_Bookings]    Script Date: 11/1/2019 12:52:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service_Bookings](
	[Booking_Id] [int] NOT NULL,
	[Contact_Id] [int] NOT NULL,
	[License_number] [varchar](20) NULL,
	[Date_of_Booking] [datetime] NULL,
	[Booking_Details] [varchar](20) NULL,
 CONSTRAINT [XPKService_Bookings] PRIMARY KEY CLUSTERED 
(
	[Booking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Car_Models]  WITH CHECK ADD  CONSTRAINT [R_40] FOREIGN KEY([Car_Manufacturer_Code])
REFERENCES [dbo].[Car_Manufacturer] ([Car_Manufacturer_Code])
GO
ALTER TABLE [dbo].[Car_Models] CHECK CONSTRAINT [R_40]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [R_19] FOREIGN KEY([Model_Code])
REFERENCES [dbo].[Car_Models] ([Model_Code])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [R_19]
GO
ALTER TABLE [dbo].[Defects]  WITH CHECK ADD  CONSTRAINT [R_28] FOREIGN KEY([License_number])
REFERENCES [dbo].[Cars] ([License_number])
GO
ALTER TABLE [dbo].[Defects] CHECK CONSTRAINT [R_28]
GO
ALTER TABLE [dbo].[Mechanic_on_Services]  WITH CHECK ADD  CONSTRAINT [R_33] FOREIGN KEY([Booking_Id])
REFERENCES [dbo].[Service_Bookings] ([Booking_Id])
GO
ALTER TABLE [dbo].[Mechanic_on_Services] CHECK CONSTRAINT [R_33]
GO
ALTER TABLE [dbo].[Mechanic_on_Services]  WITH CHECK ADD  CONSTRAINT [R_34] FOREIGN KEY([Mechanic_Id])
REFERENCES [dbo].[Mechanics] ([Mechanic_Id])
GO
ALTER TABLE [dbo].[Mechanic_on_Services] CHECK CONSTRAINT [R_34]
GO
ALTER TABLE [dbo].[Parts_Order_List]  WITH CHECK ADD  CONSTRAINT [R_31] FOREIGN KEY([Booking_Id])
REFERENCES [dbo].[Service_Bookings] ([Booking_Id])
GO
ALTER TABLE [dbo].[Parts_Order_List] CHECK CONSTRAINT [R_31]
GO
ALTER TABLE [dbo].[Parts_Order_List]  WITH CHECK ADD  CONSTRAINT [R_32] FOREIGN KEY([Part_Id])
REFERENCES [dbo].[Parts] ([Part_Id])
GO
ALTER TABLE [dbo].[Parts_Order_List] CHECK CONSTRAINT [R_32]
GO
ALTER TABLE [dbo].[Service_Bookings]  WITH CHECK ADD  CONSTRAINT [R_29] FOREIGN KEY([License_number])
REFERENCES [dbo].[Cars] ([License_number])
GO
ALTER TABLE [dbo].[Service_Bookings] CHECK CONSTRAINT [R_29]
GO
ALTER TABLE [dbo].[Service_Bookings]  WITH CHECK ADD  CONSTRAINT [R_30] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Contact_Id])
GO
ALTER TABLE [dbo].[Service_Bookings] CHECK CONSTRAINT [R_30]
GO
