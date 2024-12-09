.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 5
    .line 6
    return-void
.end method

.method public static interceptReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "INTERCEPT_REASON_APP_REQUESTED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "TASK_IS_MOVING_TO_REMOTE_APP_DISPLAY"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "TASK_IS_MOVING_TO_DEFAULT_DISPLAY"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "OTHER_TASK_EXISTS_IN_REMOTE_APP_DISPLAY"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const-string p0, "UNDEFINED"

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public final onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;II)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v9, p1

    .line 3
    move-object/from16 v10, p6

    .line 4
    .line 5
    move-object/from16 v1, p7

    .line 6
    .line 7
    move/from16 v2, p8

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 10
    .line 11
    iget-object v4, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v4, :cond_6

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    if-eqz v10, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v4, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    .line 24
    .line 25
    iget v6, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 26
    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    .line 40
    .line 41
    iget v1, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    monitor-exit v3

    .line 51
    return v5

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    iget v4, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    .line 64
    .line 65
    if-eq v2, v4, :cond_2

    .line 66
    .line 67
    :cond_1
    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    .line 68
    .line 69
    new-instance v4, Lcom/android/server/remoteappmode/InterceptedActivityInfo;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, v4, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->callerInfo:Lcom/android/server/wm/RemoteAppController$CallerInfo;

    .line 75
    .line 76
    iput v2, v4, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->userId:I

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string/jumbo v2, "mInterceptedActivityInfoMap size = "

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const-string v6, "[RAMS] InterceptedActivityRepo"

    .line 93
    .line 94
    const-string/jumbo v7, "mInterceptedActivityInfoMap.put - hashcode : "

    .line 95
    .line 96
    .line 97
    const-string v8, ", intent : "

    .line 98
    .line 99
    invoke-static {v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v6, v7}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v6, v3, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter v6

    .line 120
    :try_start_1
    iget-object v7, v3, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v7, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string v4, "[RAMS] InterceptedActivityRepo"

    .line 130
    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v3, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v4, v2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 153
    const-string v2, "[RAMS]RemoteAppModeService"

    .line 154
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string/jumbo v4, "saveCallerInfo - mInterceptedActivityRepo.put cInfo:"

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", intent:"

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v2, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    .line 184
    .line 185
    iget-object v1, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    .line 186
    .line 187
    monitor-enter v1

    .line 188
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    .line 191
    .line 192
    check-cast v0, Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .line 200
    .line 201
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_5

    .line 211
    .line 212
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    .line 217
    .line 218
    if-eqz p2, :cond_3

    .line 219
    .line 220
    :try_start_3
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :goto_1
    move-object v2, v1

    .line 225
    goto :goto_2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    goto :goto_4

    .line 228
    :cond_3
    const/4 v1, 0x0

    .line 229
    goto :goto_1

    .line 230
    :goto_2
    if-eqz v10, :cond_4

    .line 231
    .line 232
    iget v1, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 233
    .line 234
    iget v3, v10, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 235
    .line 236
    move v6, v1

    .line 237
    move v7, v3

    .line 238
    goto :goto_3

    .line 239
    :cond_4
    const/4 v1, -0x1

    .line 240
    move v6, v1

    .line 241
    move v7, v6

    .line 242
    :goto_3
    iget-object v0, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    .line 243
    .line 244
    move-object v1, p1

    .line 245
    move-object v3, p3

    .line 246
    move/from16 v4, p4

    .line 247
    .line 248
    move/from16 v5, p5

    .line 249
    .line 250
    move/from16 v8, p9

    .line 251
    .line 252
    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_5
    const/4 v0, 0x1

    .line 261
    return v0

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    throw v0

    .line 265
    :catchall_2
    move-exception v0

    .line 266
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 267
    throw v0

    .line 268
    :goto_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    throw v0

    .line 270
    :cond_6
    return v5
.end method
