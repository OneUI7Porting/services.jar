.class public final Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string v0, "android.intent.action.TIME_SET"

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 31
    .line 32
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-wide v2, p2, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 39
    .line 40
    cmp-long p2, v0, v2

    .line 41
    .line 42
    if-ltz p2, :cond_0

    .line 43
    .line 44
    const-string p2, "JobScheduler"

    .line 45
    .line 46
    const-string v0, "RTC now valid; recalculating persisted job windows"

    .line 47
    .line 48
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-string v1, "JobScheduler"

    .line 77
    .line 78
    const-string v2, "Receieved: "

    .line 79
    .line 80
    invoke-static {v2, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x0

    .line 95
    :goto_0
    const-string v2, "android.intent.extra.UID"

    .line 96
    .line 97
    const/4 v3, -0x1

    .line 98
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const/4 v9, 0x0

    .line 109
    if-eqz v2, :cond_b

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 114
    .line 115
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 116
    .line 117
    monitor-enter v2

    .line 118
    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 125
    .line 126
    .line 127
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    if-eqz v1, :cond_a

    .line 129
    .line 130
    if-eq v8, v3, :cond_a

    .line 131
    .line 132
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_1c

    .line 139
    .line 140
    array-length p2, p1

    .line 141
    :goto_1
    if-ge v9, p2, :cond_7

    .line 142
    .line 143
    aget-object v0, p1, v9

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    const-string p2, "JobScheduler"

    .line 156
    .line 157
    const-string v0, "Package state change: "

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_3
    :try_start_1
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const/4 v2, 0x2

    .line 179
    if-eq v0, v2, :cond_4

    .line 180
    .line 181
    const/4 v2, 0x3

    .line 182
    if-ne v0, v2, :cond_7

    .line 183
    .line 184
    :cond_4
    if-eqz p1, :cond_5

    .line 185
    .line 186
    const-string p1, "JobScheduler"

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v2, "Removing jobs for package "

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, " in user "

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :try_start_2
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 224
    .line 225
    move-object v2, p2

    .line 226
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 227
    .line 228
    const-string/jumbo v7, "app disabled"

    .line 229
    .line 230
    .line 231
    const/4 v5, 0x1

    .line 232
    const/4 v6, 0x7

    .line 233
    move-object v3, v1

    .line 234
    move v4, v8

    .line 235
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    monitor-exit p1

    .line 239
    goto :goto_2

    .line 240
    :catchall_0
    move-exception p2

    .line 241
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 243
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :catch_0
    :cond_7
    :goto_2
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 247
    .line 248
    if-eqz p1, :cond_8

    .line 249
    .line 250
    const-string p1, "JobScheduler"

    .line 251
    .line 252
    const-string p2, "Something in "

    .line 253
    .line 254
    const-string v0, " changed. Reevaluating controller states."

    .line 255
    .line 256
    invoke-static {p2, v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 262
    .line 263
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 264
    .line 265
    monitor-enter p1

    .line 266
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 269
    .line 270
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 271
    .line 272
    check-cast p2, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    add-int/lit8 p2, p2, -0x1

    .line 279
    .line 280
    :goto_3
    if-ltz p2, :cond_9

    .line 281
    .line 282
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 285
    .line 286
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 287
    .line 288
    check-cast v0, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 295
    .line 296
    invoke-virtual {v0, v8}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 297
    .line 298
    .line 299
    add-int/lit8 p2, p2, -0x1

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :catchall_1
    move-exception p0

    .line 303
    goto :goto_4

    .line 304
    :cond_9
    monitor-exit p1

    .line 305
    goto/16 :goto_f

    .line 306
    .line 307
    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 308
    throw p0

    .line 309
    :cond_a
    const-string p0, "JobScheduler"

    .line 310
    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string p2, "PACKAGE_CHANGED for "

    .line 314
    .line 315
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string p2, " / uid "

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto/16 :goto_f

    .line 337
    .line 338
    :catchall_2
    move-exception p0

    .line 339
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 340
    throw p0

    .line 341
    :cond_b
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 342
    .line 343
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_c

    .line 348
    .line 349
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 352
    .line 353
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 354
    .line 355
    monitor-enter v2

    .line 356
    :try_start_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 361
    .line 362
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 363
    .line 364
    .line 365
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 366
    const-string p1, "android.intent.extra.REPLACING"

    .line 367
    .line 368
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_1c

    .line 373
    .line 374
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 377
    .line 378
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 379
    .line 380
    monitor-enter p1

    .line 381
    :try_start_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 384
    .line 385
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 386
    .line 387
    invoke-virtual {p0, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 388
    .line 389
    .line 390
    monitor-exit p1

    .line 391
    goto/16 :goto_f

    .line 392
    .line 393
    :catchall_3
    move-exception p0

    .line 394
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 395
    throw p0

    .line 396
    :catchall_4
    move-exception p0

    .line 397
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 398
    throw p0

    .line 399
    :cond_c
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 400
    .line 401
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_f

    .line 406
    .line 407
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 410
    .line 411
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 412
    .line 413
    monitor-enter v2

    .line 414
    :try_start_9
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 417
    .line 418
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 419
    .line 420
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 421
    .line 422
    .line 423
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 424
    if-eqz v0, :cond_d

    .line 425
    .line 426
    const-string p1, "JobScheduler"

    .line 427
    .line 428
    const-string p2, "Removing jobs for "

    .line 429
    .line 430
    const-string v0, " (uid="

    .line 431
    .line 432
    const-string v2, ")"

    .line 433
    .line 434
    invoke-static {v8, p2, v1, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    :cond_d
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 444
    .line 445
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 446
    .line 447
    monitor-enter p1

    .line 448
    :try_start_a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 451
    .line 452
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 453
    .line 454
    invoke-virtual {p2, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 455
    .line 456
    .line 457
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 458
    .line 459
    move-object v2, p2

    .line 460
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 461
    .line 462
    const-string/jumbo v7, "app uninstalled"

    .line 463
    .line 464
    .line 465
    const/4 v5, 0x1

    .line 466
    const/4 v6, 0x7

    .line 467
    move-object v3, v1

    .line 468
    move v4, v8

    .line 469
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :goto_5
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 475
    .line 476
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 477
    .line 478
    check-cast p2, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result p2

    .line 484
    if-ge v9, p2, :cond_e

    .line 485
    .line 486
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 489
    .line 490
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 491
    .line 492
    check-cast p2, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p2

    .line 498
    check-cast p2, Lcom/android/server/job/controllers/StateController;

    .line 499
    .line 500
    invoke-virtual {p2, v8, v1}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    add-int/lit8 v9, v9, 0x1

    .line 504
    .line 505
    goto :goto_5

    .line 506
    :catchall_5
    move-exception p0

    .line 507
    goto :goto_6

    .line 508
    :cond_e
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 511
    .line 512
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 513
    .line 514
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 520
    .line 521
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 522
    .line 523
    invoke-virtual {p0, v8, v1}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    monitor-exit p1

    .line 527
    goto/16 :goto_f

    .line 528
    .line 529
    :goto_6
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 530
    throw p0

    .line 531
    :catchall_6
    move-exception p0

    .line 532
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 533
    throw p0

    .line 534
    :cond_f
    const-string v2, "android.intent.action.UID_REMOVED"

    .line 535
    .line 536
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-eqz v2, :cond_10

    .line 541
    .line 542
    const-string p1, "android.intent.extra.REPLACING"

    .line 543
    .line 544
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    if-nez p1, :cond_1c

    .line 549
    .line 550
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 553
    .line 554
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 555
    .line 556
    monitor-enter p1

    .line 557
    :try_start_c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 560
    .line 561
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 562
    .line 563
    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 564
    .line 565
    .line 566
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 569
    .line 570
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 571
    .line 572
    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 573
    .line 574
    .line 575
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 578
    .line 579
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 580
    .line 581
    invoke-virtual {p0, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 582
    .line 583
    .line 584
    monitor-exit p1

    .line 585
    goto/16 :goto_f

    .line 586
    .line 587
    :catchall_7
    move-exception p0

    .line 588
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 589
    throw p0

    .line 590
    :cond_10
    const-string v2, "android.intent.action.USER_ADDED"

    .line 591
    .line 592
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_12

    .line 597
    .line 598
    const-string p1, "android.intent.extra.user_handle"

    .line 599
    .line 600
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 601
    .line 602
    .line 603
    move-result p1

    .line 604
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 607
    .line 608
    iget-object v2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 609
    .line 610
    monitor-enter v2

    .line 611
    :goto_7
    :try_start_d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 614
    .line 615
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 616
    .line 617
    check-cast p2, Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 620
    .line 621
    .line 622
    move-result p2

    .line 623
    if-ge v9, p2, :cond_11

    .line 624
    .line 625
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 628
    .line 629
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 630
    .line 631
    check-cast p2, Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object p2

    .line 637
    check-cast p2, Lcom/android/server/job/controllers/StateController;

    .line 638
    .line 639
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    .line 640
    .line 641
    .line 642
    add-int/lit8 v9, v9, 0x1

    .line 643
    .line 644
    goto :goto_7

    .line 645
    :catchall_8
    move-exception p0

    .line 646
    goto :goto_8

    .line 647
    :cond_11
    monitor-exit v2

    .line 648
    goto/16 :goto_f

    .line 649
    .line 650
    :goto_8
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 651
    throw p0

    .line 652
    :cond_12
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 653
    .line 654
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_17

    .line 659
    .line 660
    const-string p1, "android.intent.extra.user_handle"

    .line 661
    .line 662
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 663
    .line 664
    .line 665
    move-result p1

    .line 666
    if-eqz v0, :cond_13

    .line 667
    .line 668
    const-string p2, "JobScheduler"

    .line 669
    .line 670
    const-string v0, "Removing jobs for user: "

    .line 671
    .line 672
    invoke-static {p1, v0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    :cond_13
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 678
    .line 679
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 680
    .line 681
    monitor-enter p2

    .line 682
    :try_start_e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 685
    .line 686
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 687
    .line 688
    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 689
    .line 690
    .line 691
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    .line 699
    .line 700
    const/4 v2, 0x2

    .line 701
    invoke-direct {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 702
    .line 703
    .line 704
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 705
    .line 706
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 707
    .line 708
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 709
    .line 710
    .line 711
    :goto_9
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 714
    .line 715
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 716
    .line 717
    check-cast v0, Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    if-ge v9, v0, :cond_14

    .line 724
    .line 725
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 728
    .line 729
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 730
    .line 731
    check-cast v0, Ljava/util/ArrayList;

    .line 732
    .line 733
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 738
    .line 739
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 740
    .line 741
    .line 742
    add-int/lit8 v9, v9, 0x1

    .line 743
    .line 744
    goto :goto_9

    .line 745
    :catchall_9
    move-exception p0

    .line 746
    goto :goto_d

    .line 747
    :cond_14
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 748
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 749
    .line 750
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 751
    .line 752
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 753
    .line 754
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    .line 755
    .line 756
    .line 757
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 760
    .line 761
    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 762
    .line 763
    monitor-enter v0

    .line 764
    :try_start_f
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 767
    .line 768
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 769
    .line 770
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 771
    .line 772
    .line 773
    move-result p2

    .line 774
    add-int/lit8 p2, p2, -0x1

    .line 775
    .line 776
    :goto_a
    if-ltz p2, :cond_16

    .line 777
    .line 778
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v1, Lcom/android/server/job/JobSchedulerService;

    .line 781
    .line 782
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 783
    .line 784
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 789
    .line 790
    .line 791
    move-result v1

    .line 792
    if-ne p1, v1, :cond_15

    .line 793
    .line 794
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v1, Lcom/android/server/job/JobSchedulerService;

    .line 797
    .line 798
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 799
    .line 800
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 801
    .line 802
    .line 803
    goto :goto_b

    .line 804
    :catchall_a
    move-exception p0

    .line 805
    goto :goto_c

    .line 806
    :cond_15
    :goto_b
    add-int/lit8 p2, p2, -0x1

    .line 807
    .line 808
    goto :goto_a

    .line 809
    :cond_16
    monitor-exit v0

    .line 810
    goto/16 :goto_f

    .line 811
    .line 812
    :goto_c
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 813
    throw p0

    .line 814
    :goto_d
    :try_start_10
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 815
    throw p0

    .line 816
    :cond_17
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 817
    .line 818
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result p2

    .line 822
    if-eqz p2, :cond_1a

    .line 823
    .line 824
    if-eq v8, v3, :cond_1c

    .line 825
    .line 826
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 827
    .line 828
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 829
    .line 830
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 831
    .line 832
    monitor-enter p1

    .line 833
    :try_start_11
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 836
    .line 837
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 838
    .line 839
    invoke-virtual {p2, v8}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 840
    .line 841
    .line 842
    move-result-object p2

    .line 843
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 844
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    add-int/lit8 p1, p1, -0x1

    .line 849
    .line 850
    :goto_e
    if-ltz p1, :cond_1c

    .line 851
    .line 852
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 857
    .line 858
    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 859
    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-eqz v0, :cond_19

    .line 865
    .line 866
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 867
    .line 868
    if-eqz p1, :cond_18

    .line 869
    .line 870
    const-string p1, "JobScheduler"

    .line 871
    .line 872
    const-string p2, "Restart query: package "

    .line 873
    .line 874
    const-string v0, " at uid "

    .line 875
    .line 876
    const-string v2, " has jobs"

    .line 877
    .line 878
    invoke-static {v8, p2, v1, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object p2

    .line 882
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .line 884
    .line 885
    :cond_18
    invoke-virtual {p0, v3}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 886
    .line 887
    .line 888
    goto :goto_f

    .line 889
    :cond_19
    add-int/lit8 p1, p1, -0x1

    .line 890
    .line 891
    goto :goto_e

    .line 892
    :catchall_b
    move-exception p0

    .line 893
    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 894
    throw p0

    .line 895
    :cond_1a
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    .line 896
    .line 897
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result p1

    .line 901
    if-eqz p1, :cond_1c

    .line 902
    .line 903
    if-eq v8, v3, :cond_1c

    .line 904
    .line 905
    if-eqz v0, :cond_1b

    .line 906
    .line 907
    const-string p1, "JobScheduler"

    .line 908
    .line 909
    new-instance p2, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    const-string v0, "Removing jobs for pkg "

    .line 912
    .line 913
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    const-string v0, " at uid "

    .line 920
    .line 921
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object p2

    .line 931
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .line 933
    .line 934
    :cond_1b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 937
    .line 938
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 939
    .line 940
    monitor-enter p1

    .line 941
    :try_start_13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 942
    .line 943
    move-object v2, p0

    .line 944
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 945
    .line 946
    const-string/jumbo v7, "app force stopped"

    .line 947
    .line 948
    .line 949
    const/4 v5, 0x0

    .line 950
    const/4 v6, 0x0

    .line 951
    move-object v3, v1

    .line 952
    move v4, v8

    .line 953
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 954
    .line 955
    .line 956
    monitor-exit p1

    .line 957
    goto :goto_f

    .line 958
    :catchall_c
    move-exception p0

    .line 959
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 960
    throw p0

    .line 961
    :cond_1c
    :goto_f
    return-void

    .line 962
    nop

    .line 963
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
