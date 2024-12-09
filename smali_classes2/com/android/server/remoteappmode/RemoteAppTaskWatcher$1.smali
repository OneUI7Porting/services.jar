.class public final Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "RemoteAppTaskWatcher"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, " ****** RemoteAppTaskWatcher: Message Received "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " Task ID = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-eq v0, v1, :cond_7

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-eq v0, v1, :cond_7

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x5

    .line 45
    if-eq v0, p1, :cond_0

    .line 46
    .line 47
    const-string p0, "RemoteAppTaskWatcher"

    .line 48
    .line 49
    const-string p1, " ****** Error in received message "

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :cond_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 59
    .line 60
    if-eqz p0, :cond_7

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 63
    .line 64
    monitor-enter p1

    .line 65
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 68
    .line 69
    check-cast p0, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_7

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 94
    .line 95
    :try_start_1
    iget-object p1, p1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    .line 96
    .line 97
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onRecentTaskListUpdated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 110
    .line 111
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 116
    .line 117
    if-eqz p0, :cond_7

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 120
    .line 121
    monitor-enter v1

    .line 122
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 125
    .line 126
    check-cast p0, Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 151
    .line 152
    :try_start_4
    iget-object v1, v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    .line 153
    .line 154
    invoke-interface {v1, v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskDisplayChanged(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_1
    move-exception v1

    .line 159
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catchall_1
    move-exception p0

    .line 164
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    throw p0

    .line 166
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 171
    .line 172
    if-eqz p0, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 175
    .line 176
    monitor-enter v0

    .line 177
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 180
    .line 181
    check-cast p0, Landroid/util/ArrayMap;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .line 189
    .line 190
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_7

    .line 200
    .line 201
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 206
    .line 207
    :try_start_7
    iget-object v0, v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    .line 208
    .line 209
    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskRemoved(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catch_2
    move-exception v0

    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :catchall_2
    move-exception p0

    .line 219
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 220
    throw p0

    .line 221
    :cond_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    .line 222
    .line 223
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 224
    .line 225
    if-eqz p0, :cond_7

    .line 226
    .line 227
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 228
    .line 229
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 230
    .line 231
    monitor-enter v0

    .line 232
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    .line 233
    .line 234
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 235
    .line 236
    check-cast v2, Landroid/util/ArrayMap;

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    .line 244
    .line 245
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 246
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_7

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 261
    .line 262
    :try_start_a
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    const-string v3, "activity"

    .line 265
    .line 266
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Landroid/app/ActivityManager;

    .line 271
    .line 272
    const v3, 0x7fffffff

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-eqz v2, :cond_5

    .line 280
    .line 281
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_5

    .line 290
    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 296
    .line 297
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 298
    .line 299
    if-ne v4, p1, :cond_4

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_5
    const/4 v3, 0x0

    .line 303
    :goto_4
    if-eqz v3, :cond_6

    .line 304
    .line 305
    iget v2, v3, Landroid/app/TaskInfo;->displayId:I

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :catch_3
    move-exception v1

    .line 309
    goto :goto_6

    .line 310
    :cond_6
    const/4 v2, -0x1

    .line 311
    :goto_5
    iget-object v1, v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    .line 312
    .line 313
    invoke-interface {v1, p1, v2}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskPlayed(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :goto_6
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :catchall_3
    move-exception p0

    .line 322
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 323
    throw p0

    .line 324
    :cond_7
    :goto_7
    return-void
.end method
