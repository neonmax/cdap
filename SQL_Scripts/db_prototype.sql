USE [AEIS]
GO
/****** Object:  Table [dbo].[invigilator_exam]    Script Date: 06/15/2013 14:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invigilator_exam](
	[invigilator_exam_id] [int] NULL,
	[exam_id] [int] NULL,
	[invigilator_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nationality_tab]    Script Date: 06/15/2013 14:30:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nationality_tab](
	[nationality_id] [int] NOT NULL,
	[nationality_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nationality_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[invigilator_tab]    Script Date: 06/15/2013 14:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[invigilator_tab](
	[invigilator_id] [int] IDENTITY(1,1) NOT NULL,
	[invigilator_full_name] [varchar](500) NULL,
	[invigilator_name_initials] [varchar](500) NULL,
	[invigilator_title] [varchar](10) NULL,
	[invigilator_nationality_id] [int] NULL,
	[invigilator_nic] [varchar](10) NULL,
	[invigilator_dob] [varchar](1) NULL,
	[invigilator_address] [varchar](500) NULL,
	[invigilator_telno] [varchar](14) NULL,
	[invigilator_email] [varchar](100) NULL,
	[invigilator_date_joined] [varchar](1) NULL,
	[invigilator_qualifications] [varchar](1000) NULL,
	[invigilator_designation_id] [int] NULL,
	[invigilator_img] [varchar](200) NULL,
	[invigilator_gender] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[invigilator_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mcq_marking_scheme_tab]    Script Date: 06/15/2013 14:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mcq_marking_scheme_tab](
	[marking_scheme_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[a4] [int] NULL,
	[a5] [int] NULL,
	[a6] [int] NULL,
	[a7] [int] NULL,
	[a8] [int] NULL,
	[a9] [int] NULL,
	[a10] [int] NULL,
	[a11] [int] NULL,
	[a12] [int] NULL,
	[a13] [int] NULL,
	[a14] [int] NULL,
	[a15] [int] NULL,
	[a16] [int] NULL,
	[a17] [int] NULL,
	[a18] [int] NULL,
	[a19] [int] NULL,
	[a20] [int] NULL,
	[a21] [int] NULL,
	[a22] [int] NULL,
	[a23] [int] NULL,
	[a24] [int] NULL,
	[a25] [int] NULL,
	[a26] [int] NULL,
	[a27] [int] NULL,
	[a28] [int] NULL,
	[a29] [int] NULL,
	[a30] [int] NULL,
	[a31] [int] NULL,
	[a32] [int] NULL,
	[a33] [int] NULL,
	[a34] [int] NULL,
	[a35] [int] NULL,
	[a36] [int] NULL,
	[a37] [int] NULL,
	[a38] [int] NULL,
	[a39] [int] NULL,
	[a40] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[marking_scheme_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[examination_tab]    Script Date: 06/15/2013 14:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[examination_tab](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_date] [date] NOT NULL,
	[exam_start_time] [time] NOT NULL,
	[exam_end_time] [time] NOT NULL,
	[exam_hall_id] [int] NOT NULL,
	[exam_subject_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alert_tab]    Script Date: 06/15/2013 14:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alert_tab](
	[alert_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[position_id] [int] NOT NULL,
	[alert_type] [char](1) NOT NULL,
	[alert_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[alert_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[candidate_position]    Script Date: 06/15/2013 14:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidate_position](
	[can_pos_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[position_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[can_pos_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[candidate_tab]    Script Date: 06/15/2013 14:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[candidate_tab](
	[candidate_id] [int] IDENTITY(1,1) NOT NULL,
	[candidate_full_name] [varchar](500) NULL,
	[candidate_name_initials] [varchar](500) NULL,
	[candidate_title] [varchar](10) NULL,
	[candidate_nationality_id] [varchar](100) NULL,
	[candidate_nic] [varchar](10) NULL,
	[candidate_dob] [date] NULL,
	[candidate_gender] [char](1) NULL,
	[candidate_address] [varchar](500) NULL,
	[candidate_telno] [varchar](14) NULL,
	[candidate_email] [varchar](100) NULL,
	[candidate_img] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[candidate_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hall_position]    Script Date: 06/15/2013 14:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hall_position](
	[hall_pos_id] [int] IDENTITY(1,1) NOT NULL,
	[hall_id] [int] NOT NULL,
	[position_id] [int] NOT NULL,
	[pos_x] [int] NOT NULL,
	[pos_y] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hall_pos_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/15/2013 14:30:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [nchar](30) NOT NULL,
	[first_name] [nchar](50) NOT NULL,
	[last_name] [nchar](50) NOT NULL,
	[title] [nchar](5) NOT NULL,
	[user_level] [nchar](30) NOT NULL,
	[user_name] [nchar](20) NOT NULL,
	[password] [nchar](200) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_time] [nchar](10) NOT NULL,
	[photograph] [image] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Login_Tracker]    Script Date: 06/15/2013 14:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Login_Tracker](
	[user_id] [nchar](30) NOT NULL,
	[logged_date] [datetime] NOT NULL,
	[logged_time] [nchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mcq_answers_tab]    Script Date: 06/15/2013 14:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mcq_answers_tab](
	[answer_id] [int] IDENTITY(1,1) NOT NULL,
	[candidate_id] [int] NOT NULL,
	[exam_id] [int] NULL,
	[answersheet_path] [varchar](500) NULL,
	[a1] [int] NULL,
	[a2] [int] NULL,
	[a3] [int] NULL,
	[a4] [int] NULL,
	[a5] [int] NULL,
	[a6] [int] NULL,
	[a7] [int] NULL,
	[a8] [int] NULL,
	[a9] [int] NULL,
	[a10] [int] NULL,
	[a11] [int] NULL,
	[a12] [int] NULL,
	[a13] [int] NULL,
	[a14] [int] NULL,
	[a15] [int] NULL,
	[a16] [int] NULL,
	[a17] [int] NULL,
	[a18] [int] NULL,
	[a19] [int] NULL,
	[a20] [int] NULL,
	[a21] [int] NULL,
	[a22] [int] NULL,
	[a23] [int] NULL,
	[a24] [int] NULL,
	[a25] [int] NULL,
	[a26] [int] NULL,
	[a27] [int] NULL,
	[a28] [int] NULL,
	[a29] [int] NULL,
	[a30] [int] NULL,
	[a31] [int] NULL,
	[a32] [int] NULL,
	[a33] [int] NULL,
	[a34] [int] NULL,
	[a35] [int] NULL,
	[a36] [int] NULL,
	[a37] [int] NULL,
	[a38] [int] NULL,
	[a39] [int] NULL,
	[a40] [int] NULL,
	[total_mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[answer_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subject_tab]    Script Date: 06/15/2013 14:30:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subject_tab](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [varchar](100) NOT NULL,
	[subject_code] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Tracker]    Script Date: 06/15/2013 14:30:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Tracker](
	[user_id] [varchar](30) NOT NULL,
	[login_time] [datetime] NOT NULL,
	[logout_time] [datetime] NOT NULL,
	[time_spent] [int] NOT NULL,
	[log_state] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[candidate_exam]    Script Date: 06/15/2013 14:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidate_exam](
	[candidate_exam_id] [int] NULL,
	[exam_id] [int] NULL,
	[candidate_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[updateUserTrack]    Script Date: 06/15/2013 14:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateUserTrack] 
	@UserID nvarchar(30),
	@loginTime datetime,
	@logoutTime datetime
AS
	DECLARE 
	@Time_Count int

SET @Time_Count = (DATEDIFF(minute, @loginTime, @logoutTime));

UPDATE User_Tracker
SET logout_time=@logoutTime,time_spent=@Time_Count,log_state='Yes'
WHERE  user_id=@UserID AND login_time=@loginTime;

SELECT @Time_Count;

SELECT * 
FROM User_Tracker
WHERE  user_id=@UserID AND login_time =@loginTime;
GO
