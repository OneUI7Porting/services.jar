.class public final Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

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
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    if-eqz v1, :cond_13

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v1, v3, :cond_11

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v1, v5, :cond_10

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-eq v1, v5, :cond_d

    .line 20
    .line 21
    const/4 p1, 0x4

    .line 22
    if-eq v1, p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_9

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 35
    .line 36
    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 37
    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    monitor-exit v1

    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    monitor-exit v1

    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_2
    new-instance v5, Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 61
    .line 62
    iget-object v6, v6, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    sub-int/2addr v6, v3

    .line 69
    :goto_0
    if-ltz v6, :cond_c

    .line 70
    .line 71
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 72
    .line 73
    iget-object v7, v7, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    sub-int/2addr v8, v3

    .line 86
    :goto_1
    if-ltz v8, :cond_b

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 93
    .line 94
    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 95
    .line 96
    iget-object v10, v10, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 97
    .line 98
    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 99
    .line 100
    invoke-virtual {v10, v11}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-nez v10, :cond_8

    .line 105
    .line 106
    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 107
    .line 108
    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 109
    .line 110
    invoke-virtual {v10, v11}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    if-nez v10, :cond_3

    .line 115
    .line 116
    move-object v10, v4

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    iget-object v10, v10, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 119
    .line 120
    :goto_2
    if-eqz v10, :cond_7

    .line 121
    .line 122
    invoke-virtual {v10, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-nez v11, :cond_4

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_4
    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 130
    .line 131
    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_5

    .line 136
    .line 137
    iget-object v10, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 138
    .line 139
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    check-cast v10, Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-nez v10, :cond_8

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_5
    invoke-virtual {v10}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    if-eqz v10, :cond_6

    .line 157
    .line 158
    iget-object v11, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 159
    .line 160
    iget-object v11, v11, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 161
    .line 162
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_6

    .line 167
    .line 168
    move v10, v3

    .line 169
    goto :goto_3

    .line 170
    :cond_6
    move v10, v2

    .line 171
    :goto_3
    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 172
    .line 173
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-virtual {v5, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    if-nez v10, :cond_8

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    :goto_4
    iget-object v9, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 184
    .line 185
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    iget v10, v9, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 192
    .line 193
    invoke-virtual {v9, v10}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_a

    .line 198
    .line 199
    sget-boolean v10, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 200
    .line 201
    if-eqz v10, :cond_9

    .line 202
    .line 203
    const-string v10, "JobScheduler.Connectivity"

    .line 204
    .line 205
    new-instance v11, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v12, "Potentially running "

    .line 211
    .line 212
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v12, " due to network activity"

    .line 219
    .line 220
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_9
    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 231
    .line 232
    iget-object v10, v10, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 233
    .line 234
    invoke-virtual {v10, v9}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_5
    add-int/lit8 v8, v8, -0x1

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_b
    add-int/lit8 v6, v6, -0x1

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_c
    monitor-exit v1

    .line 246
    goto :goto_9

    .line 247
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    throw p0

    .line 249
    :catchall_1
    move-exception p0

    .line 250
    goto :goto_a

    .line 251
    :cond_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 252
    .line 253
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 254
    .line 255
    if-eq p1, v5, :cond_e

    .line 256
    .line 257
    move v2, v3

    .line 258
    :cond_e
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 259
    .line 260
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 261
    .line 262
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 264
    .line 265
    iget-object v3, v3, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 266
    .line 267
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eq v3, v2, :cond_f

    .line 272
    .line 273
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 274
    .line 275
    iget-object v3, v3, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 276
    .line 277
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 278
    .line 279
    .line 280
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 281
    .line 282
    invoke-virtual {p0, v4, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :catchall_2
    move-exception p0

    .line 287
    goto :goto_8

    .line 288
    :cond_f
    :goto_7
    monitor-exit p1

    .line 289
    goto :goto_9

    .line 290
    :goto_8
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    :try_start_4
    throw p0

    .line 292
    :cond_10
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 296
    .line 297
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 298
    .line 299
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 305
    .line 306
    .line 307
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 308
    .line 309
    const/4 v1, -0x1

    .line 310
    invoke-virtual {p0, v4, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    .line 311
    .line 312
    .line 313
    monitor-exit p1

    .line 314
    goto :goto_9

    .line 315
    :catchall_3
    move-exception p0

    .line 316
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 317
    :try_start_6
    throw p0

    .line 318
    :cond_11
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 319
    .line 320
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 321
    .line 322
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 323
    :try_start_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 324
    .line 325
    if-ne p1, v3, :cond_12

    .line 326
    .line 327
    move v2, v3

    .line 328
    :cond_12
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 329
    .line 330
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    .line 331
    .line 332
    .line 333
    monitor-exit v1

    .line 334
    goto :goto_9

    .line 335
    :catchall_4
    move-exception p0

    .line 336
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 337
    :try_start_8
    throw p0

    .line 338
    :cond_13
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 339
    .line 340
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 341
    .line 342
    monitor-enter p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 343
    :try_start_9
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 344
    .line 345
    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 346
    .line 347
    .line 348
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 349
    :goto_9
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 350
    return-void

    .line 351
    :catchall_5
    move-exception p0

    .line 352
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 353
    :try_start_c
    throw p0

    .line 354
    :goto_a
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 355
    throw p0
.end method