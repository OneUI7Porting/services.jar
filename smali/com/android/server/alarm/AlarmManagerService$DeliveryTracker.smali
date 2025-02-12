.class public final Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final alarmComplete(Landroid/os/IBinder;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "Invalid alarmComplete: uid="

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " pid="

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 68
    .line 69
    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final alarmTimedOut(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string v0, "Spurious timeout of listener "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 18
    .line 19
    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v8, p2

    .line 6
    .line 7
    const/4 v10, 0x1

    .line 8
    sget-object v1, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v1, v7, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 11
    .line 12
    iget v11, v7, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v7, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/WorkSource;->getAttributionUid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v11

    .line 30
    :goto_0
    invoke-static {v1}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    :try_start_0
    iget-object v3, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 41
    .line 42
    iget v6, v3, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 43
    .line 44
    add-int/2addr v6, v10

    .line 45
    iput v6, v3, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    :try_start_1
    invoke-static {v3, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v6, v7, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 56
    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    :goto_1
    move-object/from16 v19, v6

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    iget-object v6, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 63
    .line 64
    invoke-virtual {v6}, Landroid/app/PendingIntent;->isActivity()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    iget-object v12, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 85
    .line 86
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 95
    .line 96
    const-string v6, "android.intent.extra.ALARM_COUNT"

    .line 97
    .line 98
    iget v14, v7, Lcom/android/server/alarm/Alarm;->count:I

    .line 99
    .line 100
    invoke-virtual {v3, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 105
    .line 106
    iget-object v6, v3, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 107
    .line 108
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/4 v14, 0x0

    .line 113
    move-object/from16 v16, v6

    .line 114
    .line 115
    move-object/from16 v17, v3

    .line 116
    .line 117
    invoke-virtual/range {v12 .. v19}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto/16 :goto_d

    .line 123
    .line 124
    :catch_0
    :try_start_2
    iget-wide v5, v7, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 125
    .line 126
    const-wide/16 v8, 0x0

    .line 127
    .line 128
    cmp-long v3, v5, v8

    .line 129
    .line 130
    if-lez v3, :cond_3

    .line 131
    .line 132
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 133
    .line 134
    iget-object v5, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 135
    .line 136
    invoke-virtual {v3, v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 140
    .line 141
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 142
    .line 143
    add-int/2addr v3, v10

    .line 144
    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    invoke-static {v1, v2}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_4
    :try_start_3
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 151
    .line 152
    iget v6, v3, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 153
    .line 154
    add-int/2addr v6, v10

    .line 155
    iput v6, v3, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 156
    .line 157
    iget-object v3, v7, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 158
    .line 159
    invoke-interface {v3}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 164
    .line 165
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    .line 166
    .line 167
    invoke-interface {v3, v6, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 168
    .line 169
    .line 170
    iget-object v3, v7, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 171
    .line 172
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 173
    .line 174
    iget-object v12, v6, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 175
    .line 176
    if-ne v3, v12, :cond_5

    .line 177
    .line 178
    iget-object v3, v6, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    .line 179
    .line 180
    iget v12, v6, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 181
    .line 182
    add-int/lit8 v13, v12, 0x1

    .line 183
    .line 184
    iput v13, v6, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 185
    .line 186
    aput-wide v8, v3, v12

    .line 187
    .line 188
    const/16 v3, 0xa

    .line 189
    .line 190
    if-lt v13, v3, :cond_5

    .line 191
    .line 192
    iput v5, v6, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    .line 194
    :cond_5
    :try_start_4
    invoke-static {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v7, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 198
    .line 199
    invoke-interface {v3, v0}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 203
    .line 204
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 205
    .line 206
    iget-object v6, v7, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 207
    .line 208
    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    const/4 v12, 0x3

    .line 213
    invoke-virtual {v3, v12, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 218
    .line 219
    iget-object v12, v12, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 220
    .line 221
    iget-wide v12, v12, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 222
    .line 223
    invoke-virtual {v3, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    .line 225
    .line 226
    :goto_3
    invoke-static {v1, v2}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 230
    .line 231
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 232
    .line 233
    const/4 v3, 0x4

    .line 234
    if-nez v2, :cond_6

    .line 235
    .line 236
    iget-object v2, v7, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 237
    .line 238
    iget-object v6, v7, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v1, v2, v11, v6, v10}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 244
    .line 245
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 253
    .line 254
    invoke-virtual {v1, v3, v10, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 259
    .line 260
    .line 261
    :cond_6
    new-instance v12, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 262
    .line 263
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 264
    .line 265
    invoke-direct {v12, v1, v7, v8, v9}, Lcom/android/server/alarm/AlarmManagerService$InFlight;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 269
    .line 270
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 276
    .line 277
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 278
    .line 279
    add-int/2addr v2, v10

    .line 280
    iput v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 281
    .line 282
    iget-object v1, v12, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 283
    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    invoke-virtual {v1}, Landroid/app/PendingIntent;->isBroadcast()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_8

    .line 291
    .line 292
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 293
    .line 294
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-gtz v2, :cond_7

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_7
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    throw v4

    .line 313
    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 314
    .line 315
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 316
    .line 317
    if-eqz v2, :cond_9

    .line 318
    .line 319
    move v4, v10

    .line 320
    goto :goto_5

    .line 321
    :cond_9
    move v4, v5

    .line 322
    :goto_5
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 323
    .line 324
    if-eqz v1, :cond_a

    .line 325
    .line 326
    iget-object v2, v1, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 327
    .line 328
    monitor-enter v2

    .line 329
    :try_start_5
    iget-boolean v1, v1, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 330
    .line 331
    monitor-exit v2

    .line 332
    if-eqz v1, :cond_a

    .line 333
    .line 334
    move v5, v10

    .line 335
    goto :goto_6

    .line 336
    :catchall_1
    move-exception v0

    .line 337
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 338
    throw v0

    .line 339
    :cond_a
    :goto_6
    iget-object v13, v7, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 340
    .line 341
    if-nez v4, :cond_b

    .line 342
    .line 343
    if-eqz v5, :cond_e

    .line 344
    .line 345
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    iget v2, v7, Lcom/android/server/alarm/Alarm;->flags:I

    .line 350
    .line 351
    if-eqz v1, :cond_d

    .line 352
    .line 353
    and-int/lit8 v1, v2, 0x4

    .line 354
    .line 355
    if-eqz v1, :cond_c

    .line 356
    .line 357
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 358
    .line 359
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_c
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 363
    .line 364
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 365
    .line 366
    :goto_7
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    invoke-virtual {v1, v2, v13, v8, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(ILjava/lang/String;J)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 374
    .line 375
    iget-object v14, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 376
    .line 377
    new-instance v15, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    .line 378
    .line 379
    const/4 v6, 0x0

    .line 380
    move-object v1, v15

    .line 381
    move-object/from16 v2, p0

    .line 382
    .line 383
    move-object/from16 v3, p1

    .line 384
    .line 385
    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZI)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v14, v15}, Lcom/android/server/alarm/LazyAlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_d
    and-int/lit8 v1, v2, 0x40

    .line 393
    .line 394
    if-eqz v1, :cond_e

    .line 395
    .line 396
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 397
    .line 398
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 399
    .line 400
    invoke-virtual {v1, v11, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 404
    .line 405
    iget-object v14, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 406
    .line 407
    new-instance v15, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    .line 408
    .line 409
    const/4 v6, 0x1

    .line 410
    move-object v1, v15

    .line 411
    move-object/from16 v2, p0

    .line 412
    .line 413
    move-object/from16 v3, p1

    .line 414
    .line 415
    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZI)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v14, v15}, Lcom/android/server/alarm/LazyAlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 419
    .line 420
    .line 421
    :cond_e
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_13

    .line 426
    .line 427
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    iget-boolean v2, v7, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 432
    .line 433
    if-eqz v2, :cond_12

    .line 434
    .line 435
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 436
    .line 437
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    invoke-static {v1, v13}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 447
    .line 448
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 453
    .line 454
    const-string v3, ", user: "

    .line 455
    .line 456
    const-string v4, "Temporary quota being consumed at "

    .line 457
    .line 458
    const-string v5, "AlarmManager"

    .line 459
    .line 460
    if-nez v2, :cond_f

    .line 461
    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v4, " but not found for package: "

    .line 471
    .line 472
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_f
    iget-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    .line 493
    .line 494
    cmp-long v6, v8, v14

    .line 495
    .line 496
    if-lez v6, :cond_13

    .line 497
    .line 498
    iget v6, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 499
    .line 500
    const-string v11, " for package: "

    .line 501
    .line 502
    if-gtz v6, :cond_10

    .line 503
    .line 504
    const-string v6, " but remaining only "

    .line 505
    .line 506
    invoke-static {v4, v8, v9, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    iget v6, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 511
    .line 512
    invoke-static {v6, v11, v13, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_10
    iget-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    .line 527
    .line 528
    cmp-long v14, v14, v8

    .line 529
    .line 530
    if-gez v14, :cond_11

    .line 531
    .line 532
    const-string v6, " but expired at "

    .line 533
    .line 534
    invoke-static {v4, v8, v9, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    iget-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    .line 539
    .line 540
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    goto :goto_9

    .line 563
    :cond_11
    sub-int/2addr v6, v10

    .line 564
    iput v6, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 565
    .line 566
    :goto_9
    iput-wide v8, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    .line 567
    .line 568
    goto :goto_a

    .line 569
    :cond_12
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 570
    .line 571
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 572
    .line 573
    invoke-virtual {v2, v1, v13, v8, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(ILjava/lang/String;J)V

    .line 574
    .line 575
    .line 576
    :cond_13
    :goto_a
    iget-object v1, v12, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 577
    .line 578
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    .line 579
    .line 580
    add-int/2addr v2, v10

    .line 581
    iput v2, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    .line 582
    .line 583
    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 584
    .line 585
    if-nez v2, :cond_14

    .line 586
    .line 587
    iput v10, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 588
    .line 589
    iput-wide v8, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    .line 590
    .line 591
    goto :goto_b

    .line 592
    :cond_14
    add-int/2addr v2, v10

    .line 593
    iput v2, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 594
    .line 595
    :goto_b
    iget-object v2, v12, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 596
    .line 597
    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 598
    .line 599
    add-int/2addr v3, v10

    .line 600
    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 601
    .line 602
    iget v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 603
    .line 604
    if-nez v3, :cond_15

    .line 605
    .line 606
    iput v10, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 607
    .line 608
    iput-wide v8, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    .line 609
    .line 610
    goto :goto_c

    .line 611
    :cond_15
    add-int/2addr v3, v10

    .line 612
    iput v3, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 613
    .line 614
    :goto_c
    iget v3, v7, Lcom/android/server/alarm/Alarm;->type:I

    .line 615
    .line 616
    const/4 v4, 0x2

    .line 617
    if-eq v3, v4, :cond_16

    .line 618
    .line 619
    if-nez v3, :cond_17

    .line 620
    .line 621
    :cond_16
    iget v3, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 622
    .line 623
    add-int/2addr v3, v10

    .line 624
    iput v3, v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 625
    .line 626
    iget v1, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 627
    .line 628
    add-int/2addr v1, v10

    .line 629
    iput v1, v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 630
    .line 631
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 632
    .line 633
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 634
    .line 635
    iget-object v2, v7, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 636
    .line 637
    iget-object v3, v7, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 638
    .line 639
    iget-object v5, v7, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 640
    .line 641
    iget-object v6, v7, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 642
    .line 643
    iget v4, v7, Lcom/android/server/alarm/Alarm;->uid:I

    .line 644
    .line 645
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    :cond_17
    return-void

    .line 649
    :catch_1
    :try_start_6
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 650
    .line 651
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 652
    .line 653
    add-int/2addr v3, v10

    .line 654
    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 655
    .line 656
    invoke-static {v1, v2}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 657
    .line 658
    .line 659
    return-void

    .line 660
    :goto_d
    invoke-static {v1, v2}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 661
    .line 662
    .line 663
    throw v0
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p3

    .line 6
    :try_start_0
    iget-object p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    iget p5, p4, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 9
    .line 10
    add-int/lit8 p5, p5, 0x1

    .line 11
    .line 12
    iput p5, p4, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    .line 19
    .line 20
    .line 21
    monitor-exit p3

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 3
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 6
    iget-object p2, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object p0, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v3

    .line 8
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No in-flight alarm for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    return-object v3
.end method

.method public final removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .locals 2

    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No in-flight alarm for listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 16
    .line 17
    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 18
    .line 19
    add-int/lit8 v4, v4, -0x1

    .line 20
    .line 21
    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 22
    .line 23
    if-gtz v4, :cond_0

    .line 24
    .line 25
    iput v0, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    .line 26
    .line 27
    iget-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 28
    .line 29
    iget-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    .line 30
    .line 31
    sub-long v6, v1, v6

    .line 32
    .line 33
    add-long/2addr v6, v4

    .line 34
    iput-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 35
    .line 36
    :cond_0
    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 37
    .line 38
    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 39
    .line 40
    add-int/lit8 v4, v4, -0x1

    .line 41
    .line 42
    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 43
    .line 44
    if-gtz v4, :cond_1

    .line 45
    .line 46
    iput v0, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 47
    .line 48
    iget-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 49
    .line 50
    iget-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    .line 51
    .line 52
    sub-long/2addr v1, v6

    .line 53
    add-long/2addr v1, v4

    .line 54
    iput-wide v1, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 55
    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 59
    .line 60
    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 63
    .line 64
    iget v4, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/app/ActivityManagerInternal;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 72
    .line 73
    iget v1, p1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 74
    .line 75
    add-int/lit8 v1, v1, -0x1

    .line 76
    .line 77
    iput v1, p1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 82
    .line 83
    const/4 v1, 0x4

    .line 84
    invoke-virtual {p1, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-lez p1, :cond_6

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "Finished all dispatches with "

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " remaining inflights"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-ge v0, p1, :cond_3

    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 155
    .line 156
    const-string v1, "  Remaining #"

    .line 157
    .line 158
    const-string v2, ": "

    .line 159
    .line 160
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 165
    .line 166
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p1, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-lez p1, :cond_5

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 212
    .line 213
    iget-object v1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 214
    .line 215
    iget v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 216
    .line 217
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 226
    .line 227
    const-string v0, "Alarm wakelock still held but sent queue empty"

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 235
    .line 236
    const/4 p1, 0x0

    .line 237
    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    :goto_1
    return-void
.end method
