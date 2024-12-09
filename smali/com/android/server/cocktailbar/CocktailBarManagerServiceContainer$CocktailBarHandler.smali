.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

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
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->SUPPORT_EDGE_MUM:Z

    .line 2
    .line 3
    const-string v0, "CocktailBarManagerServiceContainer"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "handleMessage: entry what = "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 28
    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_f

    .line 38
    .line 39
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto/16 :goto_a

    .line 48
    .line 49
    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    :try_start_1
    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    .line 98
    .line 99
    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :catch_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    monitor-exit v0

    .line 110
    goto/16 :goto_a

    .line 111
    .line 112
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_3
    :goto_2
    const-string p0, "CocktailBarManagerServiceImpl"

    .line 115
    .line 116
    const-string/jumbo p1, "notePauseComponent : no active host"

    .line 117
    .line 118
    .line 119
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 125
    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Landroid/content/ComponentName;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_f

    .line 135
    .line 136
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    .line 137
    .line 138
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_4
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 164
    .line 165
    monitor-enter v0

    .line 166
    :try_start_3
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    .line 194
    :try_start_4
    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    .line 195
    .line 196
    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->noteResumeComponent(Landroid/content/ComponentName;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catchall_1
    move-exception p0

    .line 201
    goto :goto_4

    .line 202
    :catch_1
    :try_start_5
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    monitor-exit v0

    .line 207
    goto/16 :goto_a

    .line 208
    .line 209
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    throw p0

    .line 211
    :cond_7
    :goto_5
    const-string p0, "CocktailBarManagerServiceImpl"

    .line 212
    .line 213
    const-string/jumbo p1, "noteResumeComponent : no active host"

    .line 214
    .line 215
    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    goto/16 :goto_a

    .line 220
    .line 221
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 222
    .line 223
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 224
    .line 225
    const-string/jumbo v0, "onUnlockUser : CocktailBarServices="

    .line 226
    .line 227
    .line 228
    const-string/jumbo v3, "onUnlockUserImpl CocktailBarServices - "

    .line 229
    .line 230
    .line 231
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 232
    .line 233
    monitor-enter v4

    .line 234
    :try_start_6
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 235
    .line 236
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v3, ", userId : "

    .line 253
    .line 254
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v6, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v3, "CocktailBarManagerServiceContainer"

    .line 268
    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move v0, v1

    .line 285
    :goto_6
    if-ge v0, v5, :cond_9

    .line 286
    .line 287
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 288
    .line 289
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 294
    .line 295
    if-eqz v3, :cond_8

    .line 296
    .line 297
    iget-object v6, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    .line 298
    .line 299
    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 300
    :try_start_7
    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    .line 301
    .line 302
    .line 303
    monitor-exit v6

    .line 304
    goto :goto_7

    .line 305
    :catchall_2
    move-exception p0

    .line 306
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 307
    :try_start_8
    throw p0

    .line 308
    :cond_8
    :goto_7
    add-int/2addr v0, v2

    .line 309
    goto :goto_6

    .line 310
    :catchall_3
    move-exception p0

    .line 311
    goto/16 :goto_9

    .line 312
    .line 313
    :cond_9
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 314
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .line 315
    .line 316
    if-nez v0, :cond_d

    .line 317
    .line 318
    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .line 319
    .line 320
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 323
    .line 324
    .line 325
    new-instance v4, Ljava/util/HashSet;

    .line 326
    .line 327
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 328
    .line 329
    .line 330
    iput-object v4, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 331
    .line 332
    iput v1, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 333
    .line 334
    new-instance v1, Ljava/lang/Object;

    .line 335
    .line 336
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 337
    .line 338
    .line 339
    iput-object v1, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    .line 340
    .line 341
    new-instance v1, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    iput-object v1, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    .line 347
    .line 348
    iput-object v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    .line 349
    .line 350
    iput-object p0, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    .line 351
    .line 352
    const-string v1, "activity"

    .line 353
    .line 354
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    check-cast v1, Landroid/app/ActivityManager;

    .line 359
    .line 360
    iput-object v1, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    .line 361
    .line 362
    const-class v1, Landroid/app/usage/UsageStatsManager;

    .line 363
    .line 364
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 369
    .line 370
    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    iget-object v4, v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 375
    .line 376
    iput-object v4, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 377
    .line 378
    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    iget-object v5, v5, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    .line 383
    .line 384
    iput-object v5, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    .line 395
    .line 396
    .line 397
    if-eqz v4, :cond_a

    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-lez v3, :cond_a

    .line 404
    .line 405
    iput v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 406
    .line 407
    :cond_a
    if-eqz v5, :cond_b

    .line 408
    .line 409
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-lez v3, :cond_b

    .line 414
    .line 415
    iget v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 416
    .line 417
    or-int/lit8 v3, v3, 0x2

    .line 418
    .line 419
    iput v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 420
    .line 421
    :cond_b
    iget v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 422
    .line 423
    if-lez v3, :cond_c

    .line 424
    .line 425
    iget-object v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    .line 426
    .line 427
    if-nez v3, :cond_c

    .line 428
    .line 429
    new-instance v3, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    .line 430
    .line 431
    invoke-direct {v3, v0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;-><init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V

    .line 432
    .line 433
    .line 434
    iput-object v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    .line 435
    .line 436
    if-eqz v1, :cond_c

    .line 437
    .line 438
    :try_start_9
    invoke-virtual {v1, v3}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 439
    .line 440
    .line 441
    :catch_2
    :cond_c
    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .line 442
    .line 443
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    .line 444
    .line 445
    .line 446
    new-instance v0, Landroid/os/Handler;

    .line 447
    .line 448
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 449
    .line 450
    .line 451
    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda0;

    .line 452
    .line 453
    invoke-direct {v1, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    .line 454
    .line 455
    .line 456
    const-wide/16 v3, 0x2710

    .line 457
    .line 458
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    .line 460
    .line 461
    move v0, v2

    .line 462
    :goto_8
    const/4 v1, 0x3

    .line 463
    if-gt v0, v1, :cond_f

    .line 464
    .line 465
    new-instance v1, Landroid/os/Handler;

    .line 466
    .line 467
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 468
    .line 469
    .line 470
    new-instance v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;

    .line 471
    .line 472
    invoke-direct {v5, p0, p1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;II)V

    .line 473
    .line 474
    .line 475
    int-to-long v6, v0

    .line 476
    const-wide/32 v8, 0xea60

    .line 477
    .line 478
    .line 479
    mul-long/2addr v6, v8

    .line 480
    add-long/2addr v6, v3

    .line 481
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    .line 483
    .line 484
    add-int/2addr v0, v2

    .line 485
    goto :goto_8

    .line 486
    :goto_9
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 487
    throw p0

    .line 488
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 489
    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    const-string/jumbo v0, "startCocktailBarServiceWithCurrentUser"

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    new-instance p1, Landroid/content/Intent;

    .line 504
    .line 505
    const-string v0, "android.intent.action.MAIN"

    .line 506
    .line 507
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    .line 511
    .line 512
    const-string/jumbo v0, "com.sec.android.app.launcher"

    .line 513
    .line 514
    .line 515
    const-string/jumbo v1, "com.samsung.app.honeyspace.edge.CocktailBarService"

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    .line 520
    .line 521
    :try_start_b
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    .line 522
    .line 523
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    .line 524
    .line 525
    new-instance v0, Landroid/os/UserHandle;

    .line 526
    .line 527
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 535
    .line 536
    .line 537
    goto :goto_a

    .line 538
    :catch_3
    move-exception p0

    .line 539
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    .line 541
    .line 542
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p0

    .line 550
    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    goto :goto_a

    .line 554
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 555
    .line 556
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast p1, Ljava/lang/String;

    .line 559
    .line 560
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 561
    .line 562
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findCocktailPolicy()Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    if-eqz p0, :cond_f

    .line 567
    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->changeResumePackage(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    goto :goto_a

    .line 572
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 573
    .line 574
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 575
    .line 576
    if-ne p1, v2, :cond_e

    .line 577
    .line 578
    move v1, v2

    .line 579
    :cond_e
    invoke-static {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mhandleChangeVisibleEdgeService(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V

    .line 580
    .line 581
    .line 582
    :cond_f
    :goto_a
    return-void

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
