 insert into [dbo].[Log_History] ([LogId],[ApplicationTitle],[MessageText],[MessageType],[UserCreated],[LogTimeStamp],[DateMoved])
 select LogId, ApplicationTitle, MessageText, MessageType, UserCreated, LogTimeStamp, GETDATE()
 from [LoggingDB ].[dbo].[Log]
 where [LogTimeStamp] <= DATEADD(hh,-17519,GETDATE())
 commit;