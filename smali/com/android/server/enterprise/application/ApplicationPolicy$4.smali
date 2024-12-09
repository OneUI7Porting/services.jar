.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string/jumbo v2, "networkInfo"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/NetworkInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy$15;->$SwitchMap$android$net$NetworkInfo$State:[I

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    const-string v3, "Connected"

    .line 41
    .line 42
    const-string v4, "Disconnected"

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-eq v2, v5, :cond_1

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    if-eq v2, v6, :cond_0

    .line 49
    .line 50
    :try_start_1
    const-string v2, "Unknown"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v2, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v2, v3

    .line 56
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iput-object v6, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v4, Landroid/os/Message;

    .line 73
    .line 74
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 80
    .line 81
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-string/jumbo v7, "mobile"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v5, 0x0

    .line 102
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 103
    .line 104
    :goto_1
    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 107
    .line 108
    iget-object v5, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_3
    return-void

    .line 134
    :pswitch_0
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 135
    .line 136
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const/4 v3, 0x0

    .line 155
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v3, :cond_11

    .line 164
    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-lez v6, :cond_11

    .line 174
    .line 175
    if-eqz v4, :cond_11

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-lez v6, :cond_11

    .line 186
    .line 187
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    const-string/jumbo v12, "mHandler must not be null!"

    .line 192
    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    const-string v13, "ApplicationPolicy"

    .line 196
    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    :try_start_3
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 202
    .line 203
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 204
    .line 205
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    const-string v8, "android.intent.extra.REPLACING"

    .line 210
    .line 211
    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    :cond_6
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_7

    .line 224
    .line 225
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 236
    .line 237
    invoke-direct {v6, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 238
    .line 239
    .line 240
    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v7, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 243
    .line 244
    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    if-eqz v6, :cond_6

    .line 249
    .line 250
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 253
    .line 254
    const-string/jumbo v7, "applicationUninstallationCount"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v11, v3, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    if-nez v14, :cond_6

    .line 261
    .line 262
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 265
    .line 266
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-nez v6, :cond_6

    .line 271
    .line 272
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 275
    .line 276
    const/4 v10, 0x2

    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/4 v8, 0x0

    .line 280
    move-object v7, v3

    .line 281
    move v9, v11

    .line 282
    move/from16 v17, v11

    .line 283
    .line 284
    move/from16 v11, v16

    .line 285
    .line 286
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    .line 287
    .line 288
    .line 289
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 292
    .line 293
    const/high16 v10, 0x1000000

    .line 294
    .line 295
    const/4 v11, 0x0

    .line 296
    const/4 v8, 0x0

    .line 297
    move-object v7, v3

    .line 298
    move/from16 v9, v17

    .line 299
    .line 300
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    .line 301
    .line 302
    .line 303
    const-string v6, "App removed, clear masks"

    .line 304
    .line 305
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :catch_1
    move-exception v0

    .line 310
    goto/16 :goto_8

    .line 311
    .line 312
    :cond_7
    if-nez v14, :cond_10

    .line 313
    .line 314
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 317
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_10

    .line 327
    .line 328
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 331
    .line 332
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 333
    .line 334
    if-eqz v6, :cond_8

    .line 335
    .line 336
    const/4 v7, 0x1

    .line 337
    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 342
    .line 343
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    .line 345
    .line 346
    goto/16 :goto_7

    .line 347
    .line 348
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 349
    .line 350
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :cond_9
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    .line 355
    .line 356
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-eqz v6, :cond_b

    .line 361
    .line 362
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 365
    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-nez v1, :cond_10

    .line 375
    .line 376
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 379
    .line 380
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_10

    .line 385
    .line 386
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 389
    .line 390
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 391
    .line 392
    if-eqz v6, :cond_a

    .line 393
    .line 394
    invoke-static {v6, v7, v5, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 399
    .line 400
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    .line 402
    .line 403
    goto/16 :goto_7

    .line 404
    .line 405
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 406
    .line 407
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_b
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 412
    .line 413
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    if-eqz v6, :cond_10

    .line 418
    .line 419
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 422
    .line 423
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 424
    .line 425
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v8

    .line 437
    if-eqz v8, :cond_d

    .line 438
    .line 439
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    check-cast v8, Ljava/lang/Integer;

    .line 444
    .line 445
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 450
    .line 451
    invoke-direct {v9, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 452
    .line 453
    .line 454
    iget-object v10, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 457
    .line 458
    invoke-virtual {v10, v9, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    if-eqz v9, :cond_c

    .line 463
    .line 464
    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v9, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 467
    .line 468
    const-string/jumbo v10, "applicationInstallationCount"

    .line 469
    .line 470
    .line 471
    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const-string v8, "App install count incremented"

    .line 475
    .line 476
    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    goto :goto_6

    .line 480
    :cond_d
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 483
    .line 484
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    if-eqz v6, :cond_e

    .line 489
    .line 490
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 493
    .line 494
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :cond_e
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 500
    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-nez v1, :cond_10

    .line 510
    .line 511
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 514
    .line 515
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 516
    .line 517
    if-eqz v6, :cond_f

    .line 518
    .line 519
    invoke-static {v6, v7, v5, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 524
    .line 525
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    .line 527
    .line 528
    goto :goto_7

    .line 529
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 530
    .line 531
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw v0

    .line 535
    :cond_10
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-nez v1, :cond_11

    .line 540
    .line 541
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 544
    .line 545
    invoke-static {v0, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetProvidersFromPackage(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(ILjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 550
    .line 551
    .line 552
    goto :goto_9

    .line 553
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    .line 555
    .line 556
    :cond_11
    :goto_9
    return-void

    .line 557
    :pswitch_1
    const-string v1, "ApplicationPolicy"

    .line 558
    .line 559
    const-string v2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 560
    .line 561
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 567
    .line 568
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 569
    .line 570
    .line 571
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 574
    .line 575
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    const-string v3, "Init: "

    .line 583
    .line 584
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    const-string v3, "ProcessStats"

    .line 595
    .line 596
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    const/4 v2, 0x1

    .line 600
    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 601
    .line 602
    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    .line 603
    .line 604
    .line 605
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 608
    .line 609
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 610
    .line 611
    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    .line 612
    .line 613
    .line 614
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 619
    .line 620
    .line 621
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 624
    .line 625
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 626
    .line 627
    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    .line 628
    .line 629
    .line 630
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-eqz v2, :cond_12

    .line 650
    .line 651
    const-string v2, "ApplicationPolicy"

    .line 652
    .line 653
    const-string v3, "System UI update received - update system UI monitor"

    .line 654
    .line 655
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 659
    .line 660
    .line 661
    const/4 v3, 0x0

    .line 662
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 669
    .line 670
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemUIMonitor(I)V

    .line 671
    .line 672
    .line 673
    :cond_12
    return-void

    .line 674
    :pswitch_3
    const-string v1, "ApplicationPolicy"

    .line 675
    .line 676
    const-string/jumbo v2, "boot completed - refreshWidgetStatus"

    .line 677
    .line 678
    .line 679
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 685
    .line 686
    const/4 v2, 0x1

    .line 687
    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBootCompleted:Z

    .line 688
    .line 689
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 690
    .line 691
    const-string/jumbo v2, "user"

    .line 692
    .line 693
    .line 694
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    check-cast v1, Landroid/os/UserManager;

    .line 699
    .line 700
    if-eqz v1, :cond_13

    .line 701
    .line 702
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    if-eqz v1, :cond_13

    .line 707
    .line 708
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    if-eqz v2, :cond_13

    .line 717
    .line 718
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 723
    .line 724
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 727
    .line 728
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 729
    .line 730
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 731
    .line 732
    .line 733
    goto :goto_a

    .line 734
    :cond_13
    return-void

    .line 735
    :pswitch_4
    const-string v2, "User switched"

    .line 736
    .line 737
    const-string v3, "ApplicationPolicy"

    .line 738
    .line 739
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 743
    .line 744
    if-eqz v2, :cond_18

    .line 745
    .line 746
    move-object v4, v2

    .line 747
    check-cast v4, Ljava/util/HashMap;

    .line 748
    .line 749
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    if-eqz v4, :cond_14

    .line 754
    .line 755
    goto :goto_c

    .line 756
    :cond_14
    const-string v4, "android.intent.extra.user_handle"

    .line 757
    .line 758
    const/4 v5, 0x0

    .line 759
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    check-cast v2, Ljava/util/HashMap;

    .line 764
    .line 765
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    :cond_15
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    if-eqz v4, :cond_18

    .line 778
    .line 779
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    check-cast v4, Ljava/lang/Long;

    .line 784
    .line 785
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 786
    .line 787
    .line 788
    move-result-wide v5

    .line 789
    long-to-int v7, v5

    .line 790
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 791
    .line 792
    .line 793
    move-result v8

    .line 794
    if-ne v1, v8, :cond_15

    .line 795
    .line 796
    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 799
    .line 800
    iget-object v8, v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 801
    .line 802
    check-cast v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 803
    .line 804
    iget-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 805
    .line 806
    if-nez v9, :cond_16

    .line 807
    .line 808
    iget-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 809
    .line 810
    const-string/jumbo v10, "user"

    .line 811
    .line 812
    .line 813
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v9

    .line 817
    check-cast v9, Landroid/os/UserManager;

    .line 818
    .line 819
    iput-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 820
    .line 821
    :cond_16
    iget-object v8, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 822
    .line 823
    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 824
    .line 825
    .line 826
    move-result-object v8

    .line 827
    if-eqz v8, :cond_17

    .line 828
    .line 829
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 830
    .line 831
    .line 832
    move-result v8

    .line 833
    if-eqz v8, :cond_17

    .line 834
    .line 835
    const-string v0, "Persona no longer valid removing from cache"

    .line 836
    .line 837
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .line 839
    .line 840
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 841
    .line 842
    check-cast v0, Ljava/util/HashMap;

    .line 843
    .line 844
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    goto :goto_c

    .line 848
    :cond_17
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 851
    .line 852
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    .line 853
    .line 854
    .line 855
    goto :goto_b

    .line 856
    :cond_18
    :goto_c
    return-void

    .line 857
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 862
    .line 863
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    if-eqz v2, :cond_19

    .line 868
    .line 869
    const-string v2, "android.intent.extra.user_handle"

    .line 870
    .line 871
    const/4 v3, 0x0

    .line 872
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    const-string/jumbo v3, "onUserRemoved() userId = "

    .line 886
    .line 887
    .line 888
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    const-string v2, "ApplicationPolicy"

    .line 899
    .line 900
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .line 902
    .line 903
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 904
    .line 905
    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    .line 906
    .line 907
    .line 908
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 913
    .line 914
    .line 915
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 916
    .line 917
    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    .line 918
    .line 919
    .line 920
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 925
    .line 926
    .line 927
    :cond_19
    return-void

    .line 928
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 933
    .line 934
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v2

    .line 938
    if-eqz v2, :cond_1b

    .line 939
    .line 940
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 943
    .line 944
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 945
    .line 946
    .line 947
    const-string/jumbo v2, "user unlocked - refreshWidgetStatus"

    .line 948
    .line 949
    .line 950
    const-string v3, "ApplicationPolicy"

    .line 951
    .line 952
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .line 954
    .line 955
    const-string v2, "android.intent.extra.user_handle"

    .line 956
    .line 957
    const/16 v4, -0x2710

    .line 958
    .line 959
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 960
    .line 961
    .line 962
    move-result v1

    .line 963
    if-eq v1, v4, :cond_1a

    .line 964
    .line 965
    const-string/jumbo v2, "calling refreshWidgetStatus for userId "

    .line 966
    .line 967
    .line 968
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 972
    .line 973
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 974
    .line 975
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 976
    .line 977
    .line 978
    goto :goto_d

    .line 979
    :cond_1a
    const-string/jumbo v0, "could not call refreshWidgetStatus due to USER_NULL userId "

    .line 980
    .line 981
    .line 982
    invoke-static {v1, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    :cond_1b
    :goto_d
    return-void

    .line 986
    :pswitch_7
    const-string/jumbo v2, "mInstallReceiver - packageName = "

    .line 987
    .line 988
    .line 989
    const-string/jumbo v3, "mInstallReceiver - sessionId = "

    .line 990
    .line 991
    .line 992
    const-string v4, "ApplicationPolicy"

    .line 993
    .line 994
    new-instance v5, Ljava/lang/StringBuilder;

    .line 995
    .line 996
    const-string/jumbo v6, "onReceive - mInstallReceiver "

    .line 997
    .line 998
    .line 999
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    if-eqz v4, :cond_1d

    .line 1017
    .line 1018
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.INSTALL_COMMIT_INTERNAL"

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    if-eqz v4, :cond_1d

    .line 1030
    .line 1031
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1032
    .line 1033
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1034
    .line 1035
    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    .line 1036
    .line 1037
    monitor-enter v4

    .line 1038
    :try_start_4
    const-string v5, "android.content.pm.extra.SESSION_ID"

    .line 1039
    .line 1040
    const/4 v6, 0x0

    .line 1041
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    const-string v6, "ApplicationPolicy"

    .line 1046
    .line 1047
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .line 1061
    .line 1062
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1065
    .line 1066
    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    .line 1067
    .line 1068
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v6

    .line 1072
    check-cast v3, Ljava/util/HashMap;

    .line 1073
    .line 1074
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;

    .line 1079
    .line 1080
    if-eqz v3, :cond_1c

    .line 1081
    .line 1082
    iput v5, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mSessionId:I

    .line 1083
    .line 1084
    const-string v6, "android.content.pm.extra.PACKAGE_NAME"

    .line 1085
    .line 1086
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v6

    .line 1090
    iput-object v6, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    .line 1091
    .line 1092
    const-string v6, "android.content.pm.extra.STATUS"

    .line 1093
    .line 1094
    const/4 v7, 0x1

    .line 1095
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1096
    .line 1097
    .line 1098
    move-result v1

    .line 1099
    iput v1, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    .line 1100
    .line 1101
    const-string v1, "ApplicationPolicy"

    .line 1102
    .line 1103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    const-string v2, ", statusCode = "

    .line 1114
    .line 1115
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    iget v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    .line 1119
    .line 1120
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    .line 1129
    .line 1130
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1131
    .line 1132
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1133
    .line 1134
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    .line 1135
    .line 1136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    check-cast v1, Ljava/util/HashMap;

    .line 1141
    .line 1142
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1146
    .line 1147
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1148
    .line 1149
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    .line 1150
    .line 1151
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1152
    .line 1153
    .line 1154
    goto :goto_e

    .line 1155
    :catchall_0
    move-exception v0

    .line 1156
    goto :goto_f

    .line 1157
    :cond_1c
    :goto_e
    monitor-exit v4

    .line 1158
    goto :goto_10

    .line 1159
    :goto_f
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1160
    throw v0

    .line 1161
    :cond_1d
    :goto_10
    return-void

    .line 1162
    nop

    .line 1163
    :pswitch_data_0
    .packed-switch 0x0
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
