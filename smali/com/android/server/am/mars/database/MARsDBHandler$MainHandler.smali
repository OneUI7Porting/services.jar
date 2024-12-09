.class public final Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final m:Lcom/android/server/am/mars/database/MARsDBManager;

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v3, 0xc

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_29

    .line 19
    .line 20
    :pswitch_0
    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 21
    .line 22
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 23
    .line 24
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->updateResetTime()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_29

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 42
    .line 43
    const-wide/32 v2, 0x2932e00

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 47
    .line 48
    .line 49
    goto/16 :goto_29

    .line 50
    .line 51
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v2, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    .line 68
    .line 69
    const-string/jumbo v3, "dc_scpm_mars_app_freeze_settings"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, v3, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v1, "result"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_49

    .line 84
    .line 85
    const-string/jumbo v1, "app_freeze_settings_json"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 93
    .line 94
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 95
    .line 96
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto/16 :goto_29

    .line 102
    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v1, "getSCPMPolicyForFreecess not available : "

    .line 105
    .line 106
    .line 107
    const-string v2, "MARsDBManager"

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_29

    .line 113
    .line 114
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_29

    .line 120
    .line 121
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 128
    .line 129
    if-nez v2, :cond_1

    .line 130
    .line 131
    goto/16 :goto_29

    .line 132
    .line 133
    :cond_1
    if-eqz v1, :cond_5

    .line 134
    .line 135
    const-string v1, "MARsDBManager"

    .line 136
    .line 137
    const-string/jumbo v12, "key=?"

    .line 138
    .line 139
    .line 140
    const-string/jumbo v2, "restriction_flag"

    .line 141
    .line 142
    .line 143
    filled-new-array {v2}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    const-string/jumbo v2, "value"

    .line 148
    .line 149
    .line 150
    filled-new-array {v2}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    sget-object v10, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    .line 165
    .line 166
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "Exception with contentResolver : "

    .line 172
    .line 173
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :goto_0
    if-eqz v6, :cond_4

    .line 194
    .line 195
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_3

    .line 200
    .line 201
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_2

    .line 206
    .line 207
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_4
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 220
    .line 221
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    .line 227
    .line 228
    .line 229
    const-string/jumbo v0, "getRestrictionFlagFromDB error, no database!!"

    .line 230
    .line 231
    .line 232
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_5
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    .line 242
    .line 243
    .line 244
    :goto_2
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 245
    .line 246
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 247
    .line 248
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    sget-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    .line 254
    .line 255
    iget-boolean v1, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    .line 256
    .line 257
    if-eqz v1, :cond_6

    .line 258
    .line 259
    goto/16 :goto_29

    .line 260
    .line 261
    :cond_6
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    .line 262
    .line 263
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const/16 v2, 0x3e8

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    iget-object v3, v0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

    .line 284
    .line 285
    invoke-virtual {v2, v3, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    iput-boolean v8, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 289
    .line 290
    goto/16 :goto_29

    .line 291
    .line 292
    :catch_2
    move-exception v0

    .line 293
    const-string/jumbo v1, "exception registerReceiverForBird "

    .line 294
    .line 295
    .line 296
    const-string v2, "FreecessTrigger"

    .line 297
    .line 298
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_29

    .line 302
    .line 303
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 304
    .line 305
    const-string/jumbo v1, "doMigration send MARS_REQUEST_MIGRATE"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    const-string v2, "MARsDBManager"

    .line 312
    .line 313
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    if-eqz v1, :cond_49

    .line 323
    .line 324
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    .line 331
    .line 332
    const-string v3, "FasDataMigration"

    .line 333
    .line 334
    invoke-virtual {v0, v1, v3, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 335
    .line 336
    .line 337
    goto/16 :goto_29

    .line 338
    .line 339
    :catch_3
    move-exception v0

    .line 340
    const-string v1, "Error on migrateFasData e = "

    .line 341
    .line 342
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_29

    .line 346
    .line 347
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    if-nez v1, :cond_7

    .line 352
    .line 353
    goto/16 :goto_29

    .line 354
    .line 355
    :cond_7
    const-string/jumbo v2, "userId"

    .line 356
    .line 357
    .line 358
    const/4 v3, -0x1

    .line 359
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    new-instance v2, Landroid/os/UserHandle;

    .line 364
    .line 365
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 366
    .line 367
    .line 368
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 374
    .line 375
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v1, v3, v7, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 383
    goto :goto_3

    .line 384
    :catch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 385
    .line 386
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string/jumbo v2, "mContext.id = "

    .line 389
    .line 390
    .line 391
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-string v2, "MARsDBHandler"

    .line 406
    .line 407
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_29

    .line 414
    .line 415
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const-string/jumbo v2, "onCreate"

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    const-string/jumbo v3, "onUpgrade"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    const-string/jumbo v5, "onInit"

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 441
    .line 442
    if-eqz v5, :cond_8

    .line 443
    .line 444
    const-string v5, "MARsDBHandler"

    .line 445
    .line 446
    const-string v6, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    .line 447
    .line 448
    const-string v9, " --onUpgrade = "

    .line 449
    .line 450
    const-string v10, " --onInit = "

    .line 451
    .line 452
    invoke-static {v6, v2, v9, v3, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    invoke-static {v5, v6, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 457
    .line 458
    .line 459
    :cond_8
    if-eqz v1, :cond_9

    .line 460
    .line 461
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    .line 462
    .line 463
    .line 464
    iget-object v5, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 465
    .line 466
    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    .line 467
    .line 468
    .line 469
    :cond_9
    if-nez v3, :cond_a

    .line 470
    .line 471
    if-eqz v1, :cond_d

    .line 472
    .line 473
    :cond_a
    sget-boolean v5, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 474
    .line 475
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 476
    .line 477
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 483
    .line 484
    monitor-enter v9

    .line 485
    :try_start_5
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 486
    .line 487
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 488
    .line 489
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    if-lez v6, :cond_b

    .line 494
    .line 495
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 496
    .line 497
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 498
    .line 499
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 500
    .line 501
    .line 502
    goto :goto_4

    .line 503
    :catchall_0
    move-exception v0

    .line 504
    goto/16 :goto_8

    .line 505
    .line 506
    :cond_b
    :goto_4
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 507
    .line 508
    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 509
    .line 510
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    if-lez v6, :cond_c

    .line 515
    .line 516
    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 517
    .line 518
    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 519
    .line 520
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 521
    .line 522
    .line 523
    :cond_c
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 524
    :cond_d
    if-nez v2, :cond_e

    .line 525
    .line 526
    if-nez v3, :cond_e

    .line 527
    .line 528
    if-eqz v1, :cond_11

    .line 529
    .line 530
    :cond_e
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-eqz v2, :cond_f

    .line 535
    .line 536
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 537
    .line 538
    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 539
    .line 540
    monitor-enter v2

    .line 541
    :try_start_6
    iput-boolean v8, v2, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 542
    .line 543
    monitor-exit v2

    .line 544
    goto :goto_5

    .line 545
    :catchall_1
    move-exception v0

    .line 546
    move-object v1, v0

    .line 547
    monitor-exit v2

    .line 548
    throw v1

    .line 549
    :cond_f
    :goto_5
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 550
    .line 551
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    .line 552
    .line 553
    .line 554
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    sget-object v3, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    .line 560
    .line 561
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    if-eqz v3, :cond_10

    .line 566
    .line 567
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    if-nez v5, :cond_10

    .line 572
    .line 573
    invoke-static {v3}, Lcom/android/server/am/mars/MARsUtils;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    .line 574
    .line 575
    .line 576
    goto :goto_6

    .line 577
    :cond_10
    const-string v3, "MARsDBManager"

    .line 578
    .line 579
    const-string v5, "Packages database not exist, and not created!!"

    .line 580
    .line 581
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    :goto_6
    iget-boolean v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 585
    .line 586
    if-nez v3, :cond_11

    .line 587
    .line 588
    new-instance v3, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 589
    .line 590
    iget-object v5, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 591
    .line 592
    monitor-enter v5

    .line 593
    :try_start_7
    iget-object v6, v5, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 594
    .line 595
    monitor-exit v5

    .line 596
    invoke-direct {v3, v2, v6, v7}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    .line 597
    .line 598
    .line 599
    iput-object v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 600
    .line 601
    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    sget-object v5, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 608
    .line 609
    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 610
    .line 611
    iget-object v7, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 612
    .line 613
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    .line 614
    .line 615
    .line 616
    move-result v7

    .line 617
    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 618
    .line 619
    .line 620
    iput-boolean v8, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 621
    .line 622
    goto :goto_7

    .line 623
    :catchall_2
    move-exception v0

    .line 624
    move-object v1, v0

    .line 625
    monitor-exit v5

    .line 626
    throw v1

    .line 627
    :cond_11
    :goto_7
    if-eqz v1, :cond_49

    .line 628
    .line 629
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 630
    .line 631
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 632
    .line 633
    if-nez v1, :cond_12

    .line 634
    .line 635
    goto/16 :goto_29

    .line 636
    .line 637
    :cond_12
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_13

    .line 642
    .line 643
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 644
    .line 645
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    .line 647
    .line 648
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 649
    .line 650
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 655
    .line 656
    const-wide/16 v2, 0x3e8

    .line 657
    .line 658
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    .line 660
    .line 661
    goto/16 :goto_29

    .line 662
    .line 663
    :goto_8
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 664
    throw v0

    .line 665
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    if-nez v1, :cond_14

    .line 670
    .line 671
    goto/16 :goto_29

    .line 672
    .line 673
    :cond_14
    const-string/jumbo v2, "boot"

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 677
    .line 678
    .line 679
    move-result v1

    .line 680
    const-string v2, "MARsDBManager"

    .line 681
    .line 682
    iget-object v9, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 683
    .line 684
    invoke-virtual {v9}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    const/4 v11, 0x2

    .line 689
    if-eqz v0, :cond_35

    .line 690
    .line 691
    const-string/jumbo v0, "key"

    .line 692
    .line 693
    .line 694
    const-string/jumbo v12, "value"

    .line 695
    .line 696
    .line 697
    filled-new-array {v0, v12}, [Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v15

    .line 701
    new-instance v12, Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .line 705
    .line 706
    :try_start_9
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 707
    .line 708
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 709
    .line 710
    .line 711
    move-result-object v13

    .line 712
    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 713
    .line 714
    const/16 v18, 0x0

    .line 715
    .line 716
    const/16 v16, 0x0

    .line 717
    .line 718
    const/16 v17, 0x0

    .line 719
    .line 720
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 721
    .line 722
    .line 723
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 724
    goto :goto_9

    .line 725
    :catch_5
    move-exception v0

    .line 726
    const-string/jumbo v13, "initMARsSettingsDefinitionInternal : Exception : "

    .line 727
    .line 728
    .line 729
    invoke-static {v0, v13, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    move-object v0, v6

    .line 733
    :goto_9
    if-eqz v0, :cond_17

    .line 734
    .line 735
    :cond_15
    :goto_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 736
    .line 737
    .line 738
    move-result v13

    .line 739
    if-eqz v13, :cond_16

    .line 740
    .line 741
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v13

    .line 745
    if-eqz v13, :cond_15

    .line 746
    .line 747
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    new-instance v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    .line 754
    .line 755
    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 756
    .line 757
    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 758
    .line 759
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    goto :goto_a

    .line 769
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 770
    .line 771
    .line 772
    goto :goto_b

    .line 773
    :cond_17
    const-string/jumbo v0, "initMARsSettingsDefinitionInternal error, no database!!"

    .line 774
    .line 775
    .line 776
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .line 778
    .line 779
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-nez v0, :cond_18

    .line 784
    .line 785
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    goto :goto_c

    .line 791
    :cond_18
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 792
    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 797
    .line 798
    .line 799
    :goto_c
    const-string/jumbo v12, "bigdataRestriction"

    .line 800
    .line 801
    .line 802
    :try_start_a
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 803
    .line 804
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 805
    .line 806
    .line 807
    move-result-object v13

    .line 808
    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 809
    .line 810
    filled-new-array {v12}, [Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v15

    .line 814
    const/16 v16, 0x0

    .line 815
    .line 816
    const/16 v17, 0x0

    .line 817
    .line 818
    const/16 v18, 0x0

    .line 819
    .line 820
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 821
    .line 822
    .line 823
    move-result-object v13
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    .line 824
    :try_start_b
    iput-boolean v8, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 825
    .line 826
    if-eqz v13, :cond_1a

    .line 827
    .line 828
    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6

    .line 829
    .line 830
    .line 831
    goto :goto_e

    .line 832
    :catchall_3
    move-exception v0

    .line 833
    move-object v14, v0

    .line 834
    if-eqz v13, :cond_19

    .line 835
    .line 836
    :try_start_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 837
    .line 838
    .line 839
    goto :goto_d

    .line 840
    :catchall_4
    move-exception v0

    .line 841
    move-object v13, v0

    .line 842
    :try_start_e
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 843
    .line 844
    .line 845
    :cond_19
    :goto_d
    throw v14
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    .line 846
    :catch_6
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    .line 847
    .line 848
    .line 849
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .line 851
    .line 852
    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 853
    .line 854
    goto :goto_e

    .line 855
    :catch_7
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist, catch no column exception!"

    .line 856
    .line 857
    .line 858
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 862
    .line 863
    :cond_1a
    :goto_e
    iget-boolean v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 864
    .line 865
    const-string/jumbo v13, "policyNum"

    .line 866
    .line 867
    .line 868
    const-string/jumbo v14, "repeatTriggerTime"

    .line 869
    .line 870
    .line 871
    const-string/jumbo v15, "firstTriggerTime"

    .line 872
    .line 873
    .line 874
    const-string/jumbo v16, "killType"

    .line 875
    .line 876
    .line 877
    const-string/jumbo v17, "restriction"

    .line 878
    .line 879
    .line 880
    const-string/jumbo v18, "targetCategory"

    .line 881
    .line 882
    .line 883
    const-string/jumbo v19, "isPolicyEnabled"

    .line 884
    .line 885
    .line 886
    const/4 v6, 0x5

    .line 887
    const/4 v3, 0x3

    .line 888
    const/4 v10, 0x7

    .line 889
    if-eqz v0, :cond_1b

    .line 890
    .line 891
    new-array v0, v4, [Ljava/lang/String;

    .line 892
    .line 893
    aput-object v13, v0, v7

    .line 894
    .line 895
    aput-object v19, v0, v8

    .line 896
    .line 897
    aput-object v18, v0, v11

    .line 898
    .line 899
    aput-object v17, v0, v3

    .line 900
    .line 901
    aput-object v16, v0, v5

    .line 902
    .line 903
    aput-object v15, v0, v6

    .line 904
    .line 905
    const/16 v20, 0x6

    .line 906
    .line 907
    aput-object v14, v0, v20

    .line 908
    .line 909
    aput-object v12, v0, v10

    .line 910
    .line 911
    :goto_f
    move-object/from16 v23, v0

    .line 912
    .line 913
    goto :goto_10

    .line 914
    :cond_1b
    const/16 v20, 0x6

    .line 915
    .line 916
    new-array v0, v10, [Ljava/lang/String;

    .line 917
    .line 918
    aput-object v13, v0, v7

    .line 919
    .line 920
    aput-object v19, v0, v8

    .line 921
    .line 922
    aput-object v18, v0, v11

    .line 923
    .line 924
    aput-object v17, v0, v3

    .line 925
    .line 926
    aput-object v16, v0, v5

    .line 927
    .line 928
    aput-object v15, v0, v6

    .line 929
    .line 930
    aput-object v14, v0, v20

    .line 931
    .line 932
    goto :goto_f

    .line 933
    :goto_10
    new-instance v10, Ljava/util/ArrayList;

    .line 934
    .line 935
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .line 937
    .line 938
    :try_start_f
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 939
    .line 940
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 941
    .line 942
    .line 943
    move-result-object v21

    .line 944
    sget-object v22, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 945
    .line 946
    const/16 v26, 0x0

    .line 947
    .line 948
    const/16 v24, 0x0

    .line 949
    .line 950
    const/16 v25, 0x0

    .line 951
    .line 952
    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 953
    .line 954
    .line 955
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 956
    goto :goto_11

    .line 957
    :catch_8
    move-exception v0

    .line 958
    const-string/jumbo v12, "initPolicyDefinitionInternal: Exception : "

    .line 959
    .line 960
    .line 961
    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    const/4 v0, 0x0

    .line 965
    :goto_11
    if-eqz v0, :cond_1e

    .line 966
    .line 967
    :cond_1c
    :goto_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 968
    .line 969
    .line 970
    move-result v12

    .line 971
    if-eqz v12, :cond_1d

    .line 972
    .line 973
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v12

    .line 977
    if-eqz v12, :cond_1c

    .line 978
    .line 979
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v12

    .line 983
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    move-result v22

    .line 987
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v12

    .line 991
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    move-result v23

    .line 995
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v12

    .line 999
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    move-result v24

    .line 1003
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v12

    .line 1007
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    move-result v25

    .line 1011
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v12

    .line 1015
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1016
    .line 1017
    .line 1018
    move-result v26

    .line 1019
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v12

    .line 1023
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1024
    .line 1025
    .line 1026
    move-result-wide v27

    .line 1027
    const/4 v12, 0x6

    .line 1028
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v14

    .line 1032
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1033
    .line 1034
    .line 1035
    move-result-wide v29

    .line 1036
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1037
    .line 1038
    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1039
    .line 1040
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    .line 1042
    .line 1043
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v21

    .line 1047
    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1048
    .line 1049
    move-object/from16 v20, v12

    .line 1050
    .line 1051
    invoke-direct/range {v20 .. v30}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Ljava/lang/String;IIIIIJJ)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    goto :goto_12

    .line 1058
    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_13

    .line 1062
    :cond_1e
    const-string/jumbo v0, "initPolicyDefinitionInternal error, no database!!"

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    :goto_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    if-nez v0, :cond_1f

    .line 1073
    .line 1074
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1075
    .line 1076
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    .line 1078
    .line 1079
    sput-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1080
    .line 1081
    goto :goto_14

    .line 1082
    :cond_1f
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1083
    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 1088
    .line 1089
    .line 1090
    :goto_14
    const-string/jumbo v0, "condition"

    .line 1091
    .line 1092
    .line 1093
    const-string/jumbo v10, "matchType"

    .line 1094
    .line 1095
    .line 1096
    const-string/jumbo v12, "packageName"

    .line 1097
    .line 1098
    .line 1099
    filled-new-array {v13, v0, v10, v12}, [Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v16

    .line 1103
    new-instance v10, Ljava/util/ArrayList;

    .line 1104
    .line 1105
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .line 1107
    .line 1108
    :try_start_10
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1109
    .line 1110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v14

    .line 1114
    sget-object v15, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    .line 1115
    .line 1116
    const/16 v19, 0x0

    .line 1117
    .line 1118
    const/16 v17, 0x0

    .line 1119
    .line 1120
    const/16 v18, 0x0

    .line 1121
    .line 1122
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 1126
    goto :goto_15

    .line 1127
    :catch_9
    move-exception v0

    .line 1128
    const-string/jumbo v12, "initAdjustTargetExcludePackageInternal: Exception : "

    .line 1129
    .line 1130
    .line 1131
    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    const/4 v0, 0x0

    .line 1135
    :goto_15
    if-eqz v0, :cond_22

    .line 1136
    .line 1137
    :cond_20
    :goto_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v12

    .line 1141
    if-eqz v12, :cond_21

    .line 1142
    .line 1143
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v12

    .line 1147
    if-eqz v12, :cond_20

    .line 1148
    .line 1149
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v12

    .line 1153
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1154
    .line 1155
    .line 1156
    move-result v12

    .line 1157
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v14

    .line 1161
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1162
    .line 1163
    .line 1164
    move-result v14

    .line 1165
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v15

    .line 1169
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v4

    .line 1173
    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 1174
    .line 1175
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1176
    .line 1177
    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1178
    .line 1179
    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    invoke-direct {v6, v12, v14, v15, v4}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    const/16 v4, 0x8

    .line 1189
    .line 1190
    const/4 v6, 0x5

    .line 1191
    goto :goto_16

    .line 1192
    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1193
    .line 1194
    .line 1195
    goto :goto_17

    .line 1196
    :cond_22
    const-string/jumbo v0, "initAdjustTargetExcludePackageInternal error, no database!!"

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    :goto_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v0

    .line 1206
    if-nez v0, :cond_23

    .line 1207
    .line 1208
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1209
    .line 1210
    iput-object v10, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1211
    .line 1212
    goto :goto_18

    .line 1213
    :cond_23
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1214
    .line 1215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1216
    .line 1217
    .line 1218
    sget-object v4, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1219
    .line 1220
    iget-object v4, v4, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 1221
    .line 1222
    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1223
    .line 1224
    :goto_18
    const-string/jumbo v0, "currentImportantValue"

    .line 1225
    .line 1226
    .line 1227
    filled-new-array {v13, v0}, [Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v22

    .line 1231
    new-instance v4, Ljava/util/ArrayList;

    .line 1232
    .line 1233
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .line 1235
    .line 1236
    :try_start_11
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1237
    .line 1238
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v20

    .line 1242
    sget-object v21, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    .line 1243
    .line 1244
    const/16 v25, 0x0

    .line 1245
    .line 1246
    const/16 v23, 0x0

    .line 1247
    .line 1248
    const/16 v24, 0x0

    .line 1249
    .line 1250
    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 1254
    goto :goto_19

    .line 1255
    :catch_a
    move-exception v0

    .line 1256
    const-string/jumbo v6, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    .line 1257
    .line 1258
    .line 1259
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    const/4 v0, 0x0

    .line 1263
    :goto_19
    if-eqz v0, :cond_26

    .line 1264
    .line 1265
    :cond_24
    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v6

    .line 1269
    if-eqz v6, :cond_25

    .line 1270
    .line 1271
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v6

    .line 1275
    if-eqz v6, :cond_24

    .line 1276
    .line 1277
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v6

    .line 1281
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1282
    .line 1283
    .line 1284
    move-result v6

    .line 1285
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v10

    .line 1289
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1290
    .line 1291
    .line 1292
    move-result v10

    .line 1293
    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 1294
    .line 1295
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 1296
    .line 1297
    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1298
    .line 1299
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    invoke-direct {v12, v6, v10}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(II)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    goto :goto_1a

    .line 1309
    :cond_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1310
    .line 1311
    .line 1312
    goto :goto_1b

    .line 1313
    :cond_26
    const-string/jumbo v0, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    .line 1314
    .line 1315
    .line 1316
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .line 1318
    .line 1319
    :goto_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v0

    .line 1323
    if-nez v0, :cond_27

    .line 1324
    .line 1325
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1326
    .line 1327
    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_1c

    .line 1331
    :cond_27
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1332
    .line 1333
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 1334
    .line 1335
    .line 1336
    :goto_1c
    const-string/jumbo v24, "matchType"

    .line 1337
    .line 1338
    .line 1339
    const-string v25, "action"

    .line 1340
    .line 1341
    const-string/jumbo v20, "restrictionType"

    .line 1342
    .line 1343
    .line 1344
    const-string/jumbo v21, "isAllowed"

    .line 1345
    .line 1346
    .line 1347
    const-string/jumbo v22, "callee"

    .line 1348
    .line 1349
    .line 1350
    const-string/jumbo v23, "caller"

    .line 1351
    .line 1352
    .line 1353
    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v28

    .line 1357
    new-instance v4, Ljava/util/ArrayList;

    .line 1358
    .line 1359
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    :try_start_12
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1363
    .line 1364
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v26

    .line 1368
    sget-object v27, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    .line 1369
    .line 1370
    const/16 v31, 0x0

    .line 1371
    .line 1372
    const/16 v29, 0x0

    .line 1373
    .line 1374
    const/16 v30, 0x0

    .line 1375
    .line 1376
    invoke-virtual/range {v26 .. v31}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 1380
    goto :goto_1d

    .line 1381
    :catch_b
    move-exception v0

    .line 1382
    const-string/jumbo v6, "initAdjustRestrictionInternal: Exception : "

    .line 1383
    .line 1384
    .line 1385
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    const/4 v6, 0x0

    .line 1389
    :goto_1d
    if-eqz v6, :cond_33

    .line 1390
    .line 1391
    :cond_28
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1392
    .line 1393
    .line 1394
    move-result v0

    .line 1395
    if-eqz v0, :cond_32

    .line 1396
    .line 1397
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    if-eqz v0, :cond_28

    .line 1402
    .line 1403
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v9

    .line 1419
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v9

    .line 1423
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v10

    .line 1427
    invoke-static {v10}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v23

    .line 1431
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v24

    .line 1435
    const/4 v10, 0x5

    .line 1436
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v12

    .line 1440
    invoke-static {v12}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v12

    .line 1444
    const/16 v13, 0xc

    .line 1445
    .line 1446
    if-eq v0, v13, :cond_2d

    .line 1447
    .line 1448
    const/16 v14, 0xd

    .line 1449
    .line 1450
    if-eq v0, v14, :cond_2b

    .line 1451
    .line 1452
    const/16 v14, 0x10

    .line 1453
    .line 1454
    if-eq v0, v14, :cond_29

    .line 1455
    .line 1456
    new-instance v14, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 1457
    .line 1458
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1459
    .line 1460
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    move-object/from16 v20, v14

    .line 1464
    .line 1465
    move-object/from16 v21, v2

    .line 1466
    .line 1467
    move-object/from16 v22, v9

    .line 1468
    .line 1469
    move-object/from16 v25, v12

    .line 1470
    .line 1471
    move/from16 v26, v0

    .line 1472
    .line 1473
    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    .line 1478
    .line 1479
    goto :goto_1e

    .line 1480
    :cond_29
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1481
    .line 1482
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1483
    .line 1484
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1485
    .line 1486
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1487
    .line 1488
    if-eqz v2, :cond_28

    .line 1489
    .line 1490
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v2

    .line 1494
    if-eqz v2, :cond_2a

    .line 1495
    .line 1496
    goto :goto_1e

    .line 1497
    :cond_2a
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 1498
    .line 1499
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    .line 1501
    .line 1502
    goto :goto_1e

    .line 1503
    :cond_2b
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1504
    .line 1505
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1506
    .line 1507
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1508
    .line 1509
    iget-object v2, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 1510
    .line 1511
    if-eqz v2, :cond_28

    .line 1512
    .line 1513
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v2

    .line 1517
    if-eqz v2, :cond_2c

    .line 1518
    .line 1519
    goto/16 :goto_1e

    .line 1520
    .line 1521
    :cond_2c
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 1522
    .line 1523
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    .line 1525
    .line 1526
    goto/16 :goto_1e

    .line 1527
    .line 1528
    :cond_2d
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1529
    .line 1530
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1531
    .line 1532
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1533
    .line 1534
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1535
    .line 1536
    if-eqz v9, :cond_31

    .line 1537
    .line 1538
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v9

    .line 1542
    if-eqz v9, :cond_2e

    .line 1543
    .line 1544
    goto/16 :goto_1e

    .line 1545
    .line 1546
    :cond_2e
    const-string/jumbo v9, "block"

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v9

    .line 1553
    if-nez v9, :cond_2f

    .line 1554
    .line 1555
    sget-object v9, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    .line 1556
    .line 1557
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v9

    .line 1561
    if-eqz v9, :cond_30

    .line 1562
    .line 1563
    :cond_2f
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1564
    .line 1565
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    .line 1567
    .line 1568
    :cond_30
    sget-boolean v9, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1569
    .line 1570
    sget-object v9, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1571
    .line 1572
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1573
    .line 1574
    .line 1575
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1576
    .line 1577
    .line 1578
    move-result v9

    .line 1579
    if-eqz v9, :cond_31

    .line 1580
    .line 1581
    const-string/jumbo v9, "blockchn"

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1585
    .line 1586
    .line 1587
    move-result v9

    .line 1588
    if-eqz v9, :cond_31

    .line 1589
    .line 1590
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 1591
    .line 1592
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    :cond_31
    iget-object v9, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 1596
    .line 1597
    if-eqz v9, :cond_28

    .line 1598
    .line 1599
    const-string/jumbo v9, "idle"

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v2

    .line 1606
    if-eqz v2, :cond_28

    .line 1607
    .line 1608
    iget-object v0, v0, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    .line 1609
    .line 1610
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    .line 1612
    .line 1613
    goto/16 :goto_1e

    .line 1614
    .line 1615
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1616
    .line 1617
    .line 1618
    goto :goto_1f

    .line 1619
    :cond_33
    const-string/jumbo v0, "initAdjustRestrictionInternal error, no database!!"

    .line 1620
    .line 1621
    .line 1622
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    .line 1624
    .line 1625
    :goto_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    if-nez v0, :cond_34

    .line 1630
    .line 1631
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1632
    .line 1633
    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1634
    .line 1635
    goto :goto_20

    .line 1636
    :cond_34
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1637
    .line 1638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    .line 1640
    .line 1641
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1642
    .line 1643
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 1644
    .line 1645
    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1646
    .line 1647
    goto :goto_20

    .line 1648
    :cond_35
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1649
    .line 1650
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1651
    .line 1652
    .line 1653
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 1654
    .line 1655
    .line 1656
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 1657
    .line 1658
    .line 1659
    sget-object v2, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 1660
    .line 1661
    iget-object v3, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    .line 1662
    .line 1663
    iput-object v3, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 1664
    .line 1665
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 1666
    .line 1667
    .line 1668
    iget-object v2, v2, Ljava/com/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    .line 1669
    .line 1670
    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1671
    .line 1672
    :goto_20
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 1673
    .line 1674
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 1675
    .line 1676
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 1677
    .line 1678
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1679
    .line 1680
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1681
    .line 1682
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1683
    .line 1684
    .line 1685
    move v2, v7

    .line 1686
    :goto_21
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1687
    .line 1688
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1689
    .line 1690
    .line 1691
    move-result v3

    .line 1692
    if-ge v2, v3, :cond_3b

    .line 1693
    .line 1694
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1695
    .line 1696
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v3

    .line 1700
    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1701
    .line 1702
    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    .line 1703
    .line 1704
    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1705
    .line 1706
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v4

    .line 1710
    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1711
    .line 1712
    iget v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    .line 1713
    .line 1714
    sget-object v6, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1715
    .line 1716
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v6

    .line 1720
    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1721
    .line 1722
    iget v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    .line 1723
    .line 1724
    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1725
    .line 1726
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v9

    .line 1730
    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1731
    .line 1732
    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    .line 1733
    .line 1734
    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 1735
    .line 1736
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v9

    .line 1740
    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 1741
    .line 1742
    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    .line 1743
    .line 1744
    if-ne v6, v8, :cond_36

    .line 1745
    .line 1746
    move v6, v8

    .line 1747
    goto :goto_22

    .line 1748
    :cond_36
    move v6, v7

    .line 1749
    :goto_22
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1750
    .line 1751
    invoke-direct {v10, v4, v9, v3, v6}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1752
    .line 1753
    .line 1754
    if-ne v4, v8, :cond_37

    .line 1755
    .line 1756
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1757
    .line 1758
    :goto_23
    const/16 v3, 0x8

    .line 1759
    .line 1760
    goto :goto_24

    .line 1761
    :cond_37
    if-ne v4, v11, :cond_38

    .line 1762
    .line 1763
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1764
    .line 1765
    goto :goto_23

    .line 1766
    :cond_38
    if-ne v4, v5, :cond_39

    .line 1767
    .line 1768
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1769
    .line 1770
    goto :goto_23

    .line 1771
    :cond_39
    const/16 v3, 0x8

    .line 1772
    .line 1773
    if-ne v4, v3, :cond_3a

    .line 1774
    .line 1775
    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1776
    .line 1777
    :cond_3a
    :goto_24
    add-int/2addr v2, v8

    .line 1778
    goto :goto_21

    .line 1779
    :cond_3b
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1780
    .line 1781
    const-string v3, "MARsPolicyManager"

    .line 1782
    .line 1783
    if-eqz v2, :cond_3c

    .line 1784
    .line 1785
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1786
    .line 1787
    const-string/jumbo v5, "createPolicies---AL = "

    .line 1788
    .line 1789
    .line 1790
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1791
    .line 1792
    .line 1793
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1794
    .line 1795
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1796
    .line 1797
    .line 1798
    const-string v5, " , AR = "

    .line 1799
    .line 1800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1804
    .line 1805
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    const-string v5, " , FZ = "

    .line 1809
    .line 1810
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .line 1812
    .line 1813
    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1814
    .line 1815
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1816
    .line 1817
    .line 1818
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v4

    .line 1822
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    .line 1824
    .line 1825
    :cond_3c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v4

    .line 1829
    const-string v5, "CscFeature_Common_ConfigBikeMode"

    .line 1830
    .line 1831
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v4

    .line 1835
    const-string/jumbo v5, "bikemode"

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1839
    .line 1840
    .line 1841
    move-result v4

    .line 1842
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1843
    .line 1844
    const-string/jumbo v6, "sbkiepolicy"

    .line 1845
    .line 1846
    .line 1847
    const/16 v9, 0x9

    .line 1848
    .line 1849
    const/4 v10, 0x6

    .line 1850
    invoke-direct {v5, v10, v9, v6, v4}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1851
    .line 1852
    .line 1853
    iput-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1854
    .line 1855
    const-string/jumbo v4, "sys.config.mars.game_policy"

    .line 1856
    .line 1857
    .line 1858
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v4

    .line 1862
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1863
    .line 1864
    const-string/jumbo v6, "gamePolicy"

    .line 1865
    .line 1866
    .line 1867
    const/16 v10, 0xa

    .line 1868
    .line 1869
    invoke-direct {v5, v9, v10, v6, v4}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    .line 1870
    .line 1871
    .line 1872
    iput-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1873
    .line 1874
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1875
    .line 1876
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1877
    .line 1878
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 1879
    .line 1880
    if-eqz v4, :cond_3d

    .line 1881
    .line 1882
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1883
    .line 1884
    if-eqz v4, :cond_3d

    .line 1885
    .line 1886
    iput-boolean v8, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1887
    .line 1888
    :cond_3d
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1889
    .line 1890
    if-eqz v4, :cond_3e

    .line 1891
    .line 1892
    sget-boolean v5, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 1893
    .line 1894
    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 1895
    .line 1896
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1897
    .line 1898
    const-string/jumbo v9, "getFreecessEnabledConfig mIsKernelSupportFreecess = "

    .line 1899
    .line 1900
    .line 1901
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1902
    .line 1903
    .line 1904
    iget-boolean v9, v5, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 1905
    .line 1906
    const-string v10, "FreecessController"

    .line 1907
    .line 1908
    invoke-static {v10, v6, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1909
    .line 1910
    .line 1911
    iget-boolean v5, v5, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    .line 1912
    .line 1913
    iput-boolean v5, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1914
    .line 1915
    :cond_3e
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1916
    .line 1917
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v4

    .line 1921
    new-instance v5, Landroid/content/Intent;

    .line 1922
    .line 1923
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1924
    .line 1925
    .line 1926
    const-string/jumbo v6, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 1927
    .line 1928
    .line 1929
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    .line 1931
    .line 1932
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 1933
    .line 1934
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v4

    .line 1941
    if-eqz v4, :cond_40

    .line 1942
    .line 1943
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1944
    .line 1945
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    .line 1946
    .line 1947
    .line 1948
    move-result v4

    .line 1949
    if-eqz v4, :cond_40

    .line 1950
    .line 1951
    if-eqz v2, :cond_3f

    .line 1952
    .line 1953
    const-string v2, "App StartUp History is enabled"

    .line 1954
    .line 1955
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    .line 1957
    .line 1958
    :cond_3f
    sput-boolean v8, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 1959
    .line 1960
    :cond_40
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1961
    .line 1962
    if-eqz v2, :cond_41

    .line 1963
    .line 1964
    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1965
    .line 1966
    if-eqz v2, :cond_41

    .line 1967
    .line 1968
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 1969
    .line 1970
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1971
    .line 1972
    .line 1973
    new-instance v4, Landroid/content/IntentFilter;

    .line 1974
    .line 1975
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1976
    .line 1977
    .line 1978
    const-string/jumbo v5, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1982
    .line 1983
    .line 1984
    const-string/jumbo v5, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    .line 1985
    .line 1986
    .line 1987
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1988
    .line 1989
    .line 1990
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 1991
    .line 1992
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 1993
    .line 1994
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1995
    .line 1996
    .line 1997
    :cond_41
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1998
    .line 1999
    if-eqz v2, :cond_42

    .line 2000
    .line 2001
    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2002
    .line 2003
    if-eqz v2, :cond_42

    .line 2004
    .line 2005
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 2006
    .line 2007
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2008
    .line 2009
    .line 2010
    new-instance v4, Landroid/content/IntentFilter;

    .line 2011
    .line 2012
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2013
    .line 2014
    .line 2015
    const-string/jumbo v5, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2019
    .line 2020
    .line 2021
    const-string/jumbo v5, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2025
    .line 2026
    .line 2027
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 2028
    .line 2029
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 2030
    .line 2031
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2032
    .line 2033
    .line 2034
    :cond_42
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 2035
    .line 2036
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2037
    .line 2038
    .line 2039
    new-instance v4, Landroid/content/IntentFilter;

    .line 2040
    .line 2041
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2042
    .line 2043
    .line 2044
    const-string/jumbo v5, "com.sec.android.sdhms.action.HIGH_CPU_USAGE"

    .line 2045
    .line 2046
    .line 2047
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2048
    .line 2049
    .line 2050
    const-string/jumbo v5, "com.sec.android.sdhms.action.HIGH_CPU_USAGE_APP"

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2054
    .line 2055
    .line 2056
    iget-object v5, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 2057
    .line 2058
    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mTCPUReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 2059
    .line 2060
    invoke-virtual {v5, v2, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2061
    .line 2062
    .line 2063
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 2064
    .line 2065
    if-eqz v2, :cond_43

    .line 2066
    .line 2067
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2068
    .line 2069
    if-eqz v2, :cond_43

    .line 2070
    .line 2071
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2072
    .line 2073
    if-eqz v2, :cond_43

    .line 2074
    .line 2075
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2076
    .line 2077
    if-eqz v2, :cond_43

    .line 2078
    .line 2079
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2080
    .line 2081
    if-eqz v2, :cond_43

    .line 2082
    .line 2083
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2084
    .line 2085
    if-eqz v2, :cond_43

    .line 2086
    .line 2087
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2088
    .line 2089
    const-string v4, "FC = "

    .line 2090
    .line 2091
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2092
    .line 2093
    .line 2094
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2095
    .line 2096
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2097
    .line 2098
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2099
    .line 2100
    .line 2101
    const-string v4, ", AR = "

    .line 2102
    .line 2103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    .line 2105
    .line 2106
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2107
    .line 2108
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2109
    .line 2110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2111
    .line 2112
    .line 2113
    const-string v4, ", PD = "

    .line 2114
    .line 2115
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    .line 2117
    .line 2118
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2119
    .line 2120
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2121
    .line 2122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2123
    .line 2124
    .line 2125
    const-string v4, ", SB = "

    .line 2126
    .line 2127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    .line 2129
    .line 2130
    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2131
    .line 2132
    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2133
    .line 2134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2135
    .line 2136
    .line 2137
    const-string v4, ", GA = "

    .line 2138
    .line 2139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    .line 2141
    .line 2142
    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2143
    .line 2144
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 2145
    .line 2146
    invoke-static {v3, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2147
    .line 2148
    .line 2149
    :cond_43
    if-nez v1, :cond_49

    .line 2150
    .line 2151
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    .line 2152
    .line 2153
    .line 2154
    goto/16 :goto_29

    .line 2155
    .line 2156
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v1

    .line 2160
    if-nez v1, :cond_44

    .line 2161
    .line 2162
    goto/16 :goto_29

    .line 2163
    .line 2164
    :cond_44
    const-string/jumbo v2, "callee"

    .line 2165
    .line 2166
    .line 2167
    const/4 v3, 0x0

    .line 2168
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v2

    .line 2172
    const-string/jumbo v4, "caller"

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v3

    .line 2179
    const-string/jumbo v4, "isblock"

    .line 2180
    .line 2181
    .line 2182
    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2183
    .line 2184
    .line 2185
    move-result v4

    .line 2186
    const-string/jumbo v5, "requesttime"

    .line 2187
    .line 2188
    .line 2189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2190
    .line 2191
    .line 2192
    move-result-wide v8

    .line 2193
    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 2194
    .line 2195
    .line 2196
    move-result-wide v5

    .line 2197
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2198
    .line 2199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2200
    .line 2201
    .line 2202
    new-instance v1, Landroid/content/ContentValues;

    .line 2203
    .line 2204
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2205
    .line 2206
    .line 2207
    const-string/jumbo v8, "calleepackage"

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    .line 2212
    .line 2213
    const-string/jumbo v2, "callerpackage"

    .line 2214
    .line 2215
    .line 2216
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    .line 2218
    .line 2219
    const-string/jumbo v2, "isblocked"

    .line 2220
    .line 2221
    .line 2222
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v3

    .line 2226
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    .line 2228
    .line 2229
    const-string/jumbo v2, "requestTime"

    .line 2230
    .line 2231
    .line 2232
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v3

    .line 2236
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    .line 2238
    .line 2239
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2240
    .line 2241
    monitor-enter v2

    .line 2242
    :try_start_13
    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2243
    .line 2244
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    .line 2246
    .line 2247
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 2248
    .line 2249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2250
    .line 2251
    .line 2252
    move-result v1

    .line 2253
    const/16 v3, 0x63

    .line 2254
    .line 2255
    if-le v1, v3, :cond_45

    .line 2256
    .line 2257
    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 2258
    .line 2259
    .line 2260
    goto :goto_25

    .line 2261
    :catchall_5
    move-exception v0

    .line 2262
    goto :goto_26

    .line 2263
    :cond_45
    :goto_25
    monitor-exit v2

    .line 2264
    goto/16 :goto_29

    .line 2265
    .line 2266
    :goto_26
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 2267
    throw v0

    .line 2268
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v1

    .line 2272
    if-nez v1, :cond_46

    .line 2273
    .line 2274
    goto/16 :goto_29

    .line 2275
    .line 2276
    :cond_46
    const-string/jumbo v2, "value"

    .line 2277
    .line 2278
    .line 2279
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v1

    .line 2283
    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    .line 2284
    .line 2285
    if-eqz v1, :cond_49

    .line 2286
    .line 2287
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2288
    .line 2289
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 2290
    .line 2291
    .line 2292
    goto/16 :goto_29

    .line 2293
    .line 2294
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v1

    .line 2298
    if-nez v1, :cond_47

    .line 2299
    .line 2300
    goto :goto_29

    .line 2301
    :cond_47
    const-string/jumbo v2, "values"

    .line 2302
    .line 2303
    .line 2304
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2305
    .line 2306
    .line 2307
    move-result-object v1

    .line 2308
    check-cast v1, Ljava/util/ArrayList;

    .line 2309
    .line 2310
    if-eqz v1, :cond_49

    .line 2311
    .line 2312
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2313
    .line 2314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2315
    .line 2316
    .line 2317
    const-string v2, "MARsDBManager"

    .line 2318
    .line 2319
    const-string/jumbo v3, "updatePkgsToSMDB : begin --size "

    .line 2320
    .line 2321
    .line 2322
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2323
    .line 2324
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2325
    .line 2326
    .line 2327
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2328
    .line 2329
    .line 2330
    move-result v3

    .line 2331
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2332
    .line 2333
    .line 2334
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v3

    .line 2338
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    .line 2340
    .line 2341
    :goto_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2342
    .line 2343
    .line 2344
    move-result v3

    .line 2345
    if-ge v7, v3, :cond_48

    .line 2346
    .line 2347
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v3

    .line 2351
    check-cast v3, Lcom/android/server/am/mars/database/FASEntity;

    .line 2352
    .line 2353
    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 2354
    .line 2355
    .line 2356
    add-int/2addr v7, v8

    .line 2357
    goto :goto_27

    .line 2358
    :catch_c
    move-exception v0

    .line 2359
    goto :goto_28

    .line 2360
    :cond_48
    const-string/jumbo v0, "updatePkgsToSMDB : end"

    .line 2361
    .line 2362
    .line 2363
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 2364
    .line 2365
    .line 2366
    goto :goto_29

    .line 2367
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2368
    .line 2369
    const-string v3, "Exception on handling DB : "

    .line 2370
    .line 2371
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2372
    .line 2373
    .line 2374
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v3

    .line 2378
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    .line 2380
    .line 2381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v1

    .line 2385
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    .line 2387
    .line 2388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2389
    .line 2390
    .line 2391
    goto :goto_29

    .line 2392
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 2393
    .line 2394
    invoke-virtual {v0, v8}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    .line 2395
    .line 2396
    .line 2397
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    .line 2398
    .line 2399
    .line 2400
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 2401
    .line 2402
    .line 2403
    move-result v1

    .line 2404
    if-eqz v1, :cond_49

    .line 2405
    .line 2406
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    .line 2407
    .line 2408
    .line 2409
    :cond_49
    :goto_29
    return-void

    .line 2410
    nop

    .line 2411
    :pswitch_data_0
    .packed-switch 0x1
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
