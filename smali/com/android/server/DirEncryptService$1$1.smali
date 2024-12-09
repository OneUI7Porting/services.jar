.class public final Lcom/android/server/DirEncryptService$1$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/DirEncryptService$1;

.field public final synthetic val$extras:Landroid/os/PersistableBundle;

.field public final synthetic val$resp_code:I


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v3, "ENCRYPT Response admin : "

    .line 17
    .line 18
    const-string v4, "ENCRYPT Response admin : "

    .line 19
    .line 20
    const-string v5, ""

    .line 21
    .line 22
    const-string v6, "DirEncryptServiceHelperVoldResponse.PROGRESS percentage("

    .line 23
    .line 24
    const-string v7, ""

    .line 25
    .line 26
    const-string v8, "ENC_META_CHECK : EAS Policy Set"

    .line 27
    .line 28
    const-string/jumbo v9, "onEventInner resp_code: "

    .line 29
    .line 30
    .line 31
    sget-object v10, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v10

    .line 34
    :try_start_0
    const-string/jumbo v11, "path"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v11, "status"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    const-string/jumbo v12, "description"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    const-string/jumbo v13, "arg1"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v13}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    const-string/jumbo v14, "arg2"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v14}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const-string v14, "DirEncryptServiceHelper"

    .line 69
    .line 70
    new-instance v15, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v9, " status : "

    .line 79
    .line 80
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const/4 v14, 0x6

    .line 94
    const/4 v15, 0x1

    .line 95
    const/4 v9, 0x0

    .line 96
    packed-switch v2, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    :pswitch_0
    goto/16 :goto_a

    .line 100
    .line 101
    :pswitch_1
    const/16 v0, 0xb

    .line 102
    .line 103
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 104
    .line 105
    const-string v2, ""

    .line 106
    .line 107
    invoke-virtual {v1, v0, v11, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 111
    .line 112
    .line 113
    if-nez v11, :cond_0

    .line 114
    .line 115
    const/4 v0, 0x3

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const/4 v0, 0x2

    .line 118
    :goto_0
    const-string/jumbo v2, "free"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0, v9, v9, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_a

    .line 125
    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto/16 :goto_b

    .line 128
    .line 129
    :pswitch_2
    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 130
    .line 131
    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 132
    .line 133
    iput-boolean v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 134
    .line 135
    iget-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-nez v0, :cond_1

    .line 142
    .line 143
    const-string v0, "DirEncryptServiceHelper"

    .line 144
    .line 145
    const-string/jumbo v1, "there is no SD card"

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    :cond_1
    if-ne v11, v15, :cond_2

    .line 154
    .line 155
    const-string v2, "DirEncryptServiceHelper"

    .line 156
    .line 157
    const-string v3, "ENC_META_CHECK : Encryption State Normal"

    .line 158
    .line 159
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iput-boolean v15, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne v0, v15, :cond_3

    .line 173
    .line 174
    const-string v0, "DirEncryptServiceHelper"

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_3
    const-string v0, "DirEncryptServiceHelper"

    .line 196
    .line 197
    const-string v2, "ENC_META_CHECK : Normal SD Card"

    .line 198
    .line 199
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iput-boolean v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 203
    .line 204
    iput-boolean v15, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 205
    .line 206
    :goto_1
    sput-boolean v9, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 207
    .line 208
    goto/16 :goto_a

    .line 209
    .line 210
    :pswitch_3
    const/4 v0, 0x7

    .line 211
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 212
    .line 213
    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 214
    .line 215
    .line 216
    if-nez v11, :cond_4

    .line 217
    .line 218
    const/4 v0, 0x3

    .line 219
    goto :goto_2

    .line 220
    :cond_4
    const/4 v0, 0x2

    .line 221
    :goto_2
    const-string/jumbo v2, "free"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v0, v9, v9, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_a

    .line 228
    .line 229
    :pswitch_4
    iput v13, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 230
    .line 231
    const/4 v0, 0x4

    .line 232
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 233
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v1, v14, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 250
    .line 251
    .line 252
    if-nez v11, :cond_5

    .line 253
    .line 254
    const/4 v0, 0x3

    .line 255
    goto :goto_3

    .line 256
    :cond_5
    const/4 v0, 0x2

    .line 257
    :goto_3
    const-string/jumbo v2, "free"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v0, v9, v9, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_a

    .line 264
    .line 265
    :pswitch_5
    const-string v2, "DirEncryptServiceHelper"

    .line 266
    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v4, "), storage("

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v4, ")"

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    if-ne v11, v15, :cond_6

    .line 296
    .line 297
    const/4 v2, 0x2

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 299
    .line 300
    .line 301
    const/4 v2, 0x3

    .line 302
    goto :goto_4

    .line 303
    :cond_6
    const/4 v2, 0x3

    .line 304
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 305
    .line 306
    .line 307
    :goto_4
    iget v3, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 308
    .line 309
    sub-int v3, v13, v3

    .line 310
    .line 311
    if-lt v3, v15, :cond_7

    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    const/4 v4, 0x5

    .line 326
    invoke-virtual {v1, v4, v11, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iput v13, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 330
    .line 331
    :cond_7
    const/16 v3, 0x64

    .line 332
    .line 333
    if-ne v13, v3, :cond_8

    .line 334
    .line 335
    const/4 v3, -0x1

    .line 336
    iput v3, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 337
    .line 338
    :cond_8
    if-nez v11, :cond_9

    .line 339
    .line 340
    move v9, v2

    .line 341
    goto :goto_5

    .line 342
    :cond_9
    const/4 v9, 0x2

    .line 343
    :goto_5
    const-string/jumbo v2, "busy"

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v9, v13, v0, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_a

    .line 350
    .line 351
    :pswitch_6
    const/4 v2, 0x3

    .line 352
    const-string/jumbo v0, "success"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_c

    .line 360
    .line 361
    const-string v0, "DirEncryptServiceHelper"

    .line 362
    .line 363
    const-string v3, "RESP_ENCRYPT success"

    .line 364
    .line 365
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 369
    .line 370
    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 371
    .line 372
    .line 373
    const-string/jumbo v0, "success"

    .line 374
    .line 375
    .line 376
    const/4 v3, 0x2

    .line 377
    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 378
    .line 379
    .line 380
    if-nez v11, :cond_a

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_a
    const/4 v2, 0x2

    .line 384
    :goto_6
    const-string v0, "Mount"

    .line 385
    .line 386
    invoke-virtual {v1, v2, v9, v9, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string v0, "DirEncryptServiceHelper"

    .line 390
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    if-nez v11, :cond_b

    .line 411
    .line 412
    const-string v0, "DirEncryptServiceHelper"

    .line 413
    .line 414
    const-string v2, "Decrypt compelte"

    .line 415
    .line 416
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    const-string v0, ""

    .line 420
    .line 421
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 422
    .line 423
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 428
    .line 429
    goto/16 :goto_a

    .line 430
    .line 431
    :cond_b
    const-string v0, "DirEncryptServiceHelper"

    .line 432
    .line 433
    const-string v2, "Encrypt complete"

    .line 434
    .line 435
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 443
    .line 444
    const-string v0, ""

    .line 445
    .line 446
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 447
    .line 448
    goto/16 :goto_a

    .line 449
    .line 450
    :cond_c
    const-string/jumbo v0, "exception"

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    const-string v0, "DirEncryptServiceHelper"

    .line 460
    .line 461
    const-string v4, "RESP_ENCRYPT : encrypted on other device"

    .line 462
    .line 463
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    const/16 v0, 0x8

    .line 467
    .line 468
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 469
    .line 470
    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 471
    .line 472
    .line 473
    const-string/jumbo v0, "exception"

    .line 474
    .line 475
    .line 476
    const/4 v4, 0x2

    .line 477
    invoke-virtual {v1, v4, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 478
    .line 479
    .line 480
    if-nez v11, :cond_d

    .line 481
    .line 482
    goto :goto_7

    .line 483
    :cond_d
    const/4 v2, 0x2

    .line 484
    :goto_7
    const-string v0, "Mount"

    .line 485
    .line 486
    invoke-virtual {v1, v2, v9, v9, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    const-string v0, "DirEncryptServiceHelper"

    .line 490
    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    if-nez v11, :cond_e

    .line 511
    .line 512
    const-string v0, "DirEncryptServiceHelper"

    .line 513
    .line 514
    const-string v2, "Decrypt compelte"

    .line 515
    .line 516
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    const-string v0, ""

    .line 520
    .line 521
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 522
    .line 523
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_e
    const-string v0, "DirEncryptServiceHelper"

    .line 531
    .line 532
    const-string v2, "Encrypt complete"

    .line 533
    .line 534
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 542
    .line 543
    const-string v0, ""

    .line 544
    .line 545
    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_f
    const-string v0, "DirEncryptServiceHelper"

    .line 549
    .line 550
    const-string v3, "RESP_ENCRYPT failed"

    .line 551
    .line 552
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    iget v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 556
    .line 557
    if-nez v0, :cond_11

    .line 558
    .line 559
    if-ne v11, v15, :cond_10

    .line 560
    .line 561
    const/4 v0, 0x5

    .line 562
    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 563
    .line 564
    goto :goto_8

    .line 565
    :cond_10
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 566
    .line 567
    :cond_11
    :goto_8
    const-string/jumbo v0, "failed"

    .line 568
    .line 569
    .line 570
    const/4 v3, 0x2

    .line 571
    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 575
    .line 576
    .line 577
    if-nez v11, :cond_12

    .line 578
    .line 579
    goto :goto_9

    .line 580
    :cond_12
    move v2, v3

    .line 581
    :goto_9
    const-string/jumbo v0, "free"

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v2, v9, v9, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 585
    .line 586
    .line 587
    :goto_a
    monitor-exit v10

    .line 588
    return-void

    .line 589
    :goto_b
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    throw v0

    .line 591
    :pswitch_data_0
    .packed-switch 0x2ab
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
