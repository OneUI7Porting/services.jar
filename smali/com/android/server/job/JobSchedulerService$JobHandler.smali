.class public final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    packed-switch v2, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 31
    .line 32
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 45
    .line 46
    if-ne v2, v4, :cond_1

    .line 47
    .line 48
    move v9, v4

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 54
    .line 55
    .line 56
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sub-int/2addr v2, v4

    .line 58
    :goto_0
    if-ltz v2, :cond_2

    .line 59
    .line 60
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/app/job/IUserVisibleJobObserver;

    .line 69
    .line 70
    invoke-interface {v3, v1, v9}, Landroid/app/job/IUserVisibleJobObserver;->onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :catch_0
    add-int/lit8 v2, v2, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Landroid/app/job/IUserVisibleJobObserver;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 100
    .line 101
    check-cast v2, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    sub-int/2addr v2, v4

    .line 108
    :goto_1
    if-ltz v2, :cond_4

    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 111
    .line 112
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 115
    .line 116
    check-cast v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 125
    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    .line 129
    .line 130
    .line 131
    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {p1, v3, v4}, Landroid/app/job/IUserVisibleJobObserver;->onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catchall_1
    move-exception p0

    .line 143
    goto :goto_3

    .line 144
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_1
    :cond_4
    :try_start_5
    monitor-exit v1

    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    :try_start_6
    throw p0

    .line 152
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    :try_start_7
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 160
    .line 161
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 162
    .line 163
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v5, Ljava/lang/String;

    .line 166
    .line 167
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v6, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    new-instance v7, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;

    .line 175
    .line 176
    invoke-direct {v7, v4, v5, v6}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v4, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/4 v5, 0x1

    .line 182
    invoke-direct {v4, v2, v5}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 183
    .line 184
    .line 185
    iget-object v5, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 186
    .line 187
    invoke-virtual {v5, v7, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    .line 194
    .line 195
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 196
    :try_start_8
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 197
    .line 198
    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :catchall_2
    move-exception p0

    .line 202
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 203
    :try_start_a
    throw p0

    .line 204
    :pswitch_3
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 205
    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    const-string v1, "JobScheduler"

    .line 209
    .line 210
    const-string v2, "MSG_CHECK_CHANGED_JOB_LIST"

    .line 211
    .line 212
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 216
    .line 217
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    .line 221
    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    const-string p1, "JobScheduler"

    .line 225
    .line 226
    const-string v2, "Check changed jobs..."

    .line 227
    .line 228
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_6
    iget-object p1, v1, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_7

    .line 238
    .line 239
    goto/16 :goto_5

    .line 240
    .line 241
    :cond_7
    iget-object p1, v1, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 242
    .line 243
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 244
    .line 245
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 249
    .line 250
    .line 251
    iget-object p1, v1, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_5

    .line 257
    .line 258
    :pswitch_4
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 259
    .line 260
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 261
    .line 262
    if-eqz p1, :cond_8

    .line 263
    .line 264
    const-string/jumbo v8, "app uid idle"

    .line 265
    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    const/4 v7, 0x0

    .line 269
    const/4 v5, 0x1

    .line 270
    const/16 v3, 0xb

    .line 271
    .line 272
    const/4 v4, 0x1

    .line 273
    move v2, v10

    .line 274
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 278
    .line 279
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 280
    .line 281
    monitor-enter p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 282
    :try_start_b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 283
    .line 284
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 285
    .line 286
    invoke-virtual {v1, v10, v9}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 287
    .line 288
    .line 289
    monitor-exit p1

    .line 290
    goto/16 :goto_5

    .line 291
    .line 292
    :catchall_3
    move-exception p0

    .line 293
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 294
    :try_start_c
    throw p0

    .line 295
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 296
    .line 297
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 298
    .line 299
    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 300
    :try_start_d
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 301
    .line 302
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 303
    .line 304
    invoke-virtual {v2, p1, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 305
    .line 306
    .line 307
    monitor-exit v1

    .line 308
    goto/16 :goto_5

    .line 309
    .line 310
    :catchall_4
    move-exception p0

    .line 311
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 312
    :try_start_e
    throw p0

    .line 313
    :pswitch_6
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 314
    .line 315
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 316
    .line 317
    if-eqz p1, :cond_9

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_9
    move v4, v9

    .line 321
    :goto_4
    const/16 p1, 0x13

    .line 322
    .line 323
    invoke-virtual {v1, v10, p1, v9}, Lcom/android/server/job/JobSchedulerService;->updateUidState(III)V

    .line 324
    .line 325
    .line 326
    if-eqz v4, :cond_a

    .line 327
    .line 328
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 329
    .line 330
    const-string/jumbo v8, "uid gone"

    .line 331
    .line 332
    .line 333
    const/4 v6, 0x0

    .line 334
    const/4 v7, 0x0

    .line 335
    const/4 v5, 0x1

    .line 336
    const/16 v3, 0xb

    .line 337
    .line 338
    const/4 v4, 0x1

    .line 339
    move v2, v10

    .line 340
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    :cond_a
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 344
    .line 345
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 346
    .line 347
    monitor-enter p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 348
    :try_start_f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 349
    .line 350
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 351
    .line 352
    invoke-virtual {v1, v10, v9}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 353
    .line 354
    .line 355
    monitor-exit p1

    .line 356
    goto/16 :goto_5

    .line 357
    .line 358
    :catchall_5
    move-exception p0

    .line 359
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 360
    :try_start_10
    throw p0

    .line 361
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 364
    .line 365
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 366
    .line 367
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 368
    .line 369
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 370
    .line 371
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerService;->updateUidState(III)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 375
    .line 376
    .line 377
    goto :goto_5

    .line 378
    :pswitch_8
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 379
    .line 380
    if-eqz p1, :cond_b

    .line 381
    .line 382
    const-string p1, "JobScheduler"

    .line 383
    .line 384
    const-string v1, "MSG_CHECK_JOB_GREEDY"

    .line 385
    .line 386
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :cond_b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 398
    .line 399
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 400
    .line 401
    const-string/jumbo v6, "app no longer allowed to run"

    .line 402
    .line 403
    .line 404
    const/4 v3, 0x0

    .line 405
    const/4 v5, 0x1

    .line 406
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    goto :goto_5

    .line 410
    :pswitch_a
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 411
    .line 412
    if-eqz p1, :cond_c

    .line 413
    .line 414
    const-string p1, "JobScheduler"

    .line 415
    .line 416
    const-string v1, "MSG_CHECK_JOB"

    .line 417
    .line 418
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    :cond_c
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 422
    .line 423
    iget-boolean v1, p1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 424
    .line 425
    if-eqz v1, :cond_d

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_d
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    .line 432
    .line 433
    .line 434
    goto :goto_5

    .line 435
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 438
    .line 439
    if-eqz p1, :cond_f

    .line 440
    .line 441
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_e

    .line 446
    .line 447
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 448
    .line 449
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 450
    .line 451
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 455
    .line 456
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 457
    .line 458
    invoke-virtual {v1, p1}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 459
    .line 460
    .line 461
    :cond_e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 462
    .line 463
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 464
    .line 465
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_f
    const-string p1, "JobScheduler"

    .line 470
    .line 471
    const-string v1, "Given null job to check individually"

    .line 472
    .line 473
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    :goto_5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 479
    .line 480
    .line 481
    monitor-exit v0

    .line 482
    return-void

    .line 483
    :goto_6
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 484
    throw p0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
