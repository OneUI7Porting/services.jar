.class public final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doHandleMessage(Landroid/os/Message;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, v1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v3, v2, :cond_1b

    .line 10
    .line 11
    const/16 v5, 0x9

    .line 12
    .line 13
    if-eq v3, v5, :cond_17

    .line 14
    .line 15
    const/16 v5, 0xa

    .line 16
    .line 17
    if-eq v3, v5, :cond_16

    .line 18
    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    if-eq v3, v5, :cond_12

    .line 22
    .line 23
    const/16 v5, 0xd

    .line 24
    .line 25
    if-eq v3, v5, :cond_11

    .line 26
    .line 27
    const/16 v5, 0xf

    .line 28
    .line 29
    if-eq v3, v5, :cond_e

    .line 30
    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    if-eq v3, v5, :cond_a

    .line 34
    .line 35
    const/16 v5, -0x16

    .line 36
    .line 37
    const-wide/32 v6, 0x40000

    .line 38
    .line 39
    .line 40
    packed-switch v3, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_c

    .line 44
    .line 45
    :pswitch_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string/jumbo v1, "unused_static_shared_lib_min_cache_period"

    .line 68
    .line 69
    .line 70
    sget-wide v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 71
    .line 72
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    const-wide v4, 0x7fffffffffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_c

    .line 85
    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "PackageManager"

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "Failed to prune unused static shared libraries :"

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto/16 :goto_c

    .line 111
    .line 112
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 113
    .line 114
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 119
    .line 120
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 123
    .line 124
    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto/16 :goto_c

    .line 128
    .line 129
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 130
    .line 131
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 140
    .line 141
    if-eqz v3, :cond_22

    .line 142
    .line 143
    iget-boolean v8, v3, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 144
    .line 145
    if-nez v8, :cond_22

    .line 146
    .line 147
    iget-object v8, v3, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    .line 148
    .line 149
    iget-object v9, v8, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 150
    .line 151
    iget-object v9, v9, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 152
    .line 153
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v11, "Integrity verification timed out for "

    .line 160
    .line 161
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    const-string v10, "PackageManager"

    .line 172
    .line 173
    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    iput-boolean v2, v3, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 177
    .line 178
    invoke-virtual {v8, v5, v9}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_0

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    .line 193
    .line 194
    :cond_0
    const-string v0, "integrity_verification"

    .line 195
    .line 196
    invoke-static {v6, v7, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    iput-boolean v4, v8, Lcom/android/server/pm/VerifyingSession;->mWaitForIntegrityVerificationToComplete:Z

    .line 200
    .line 201
    invoke-virtual {v8}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_c

    .line 205
    .line 206
    :pswitch_3
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 207
    .line 208
    iget-object v8, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 209
    .line 210
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 211
    .line 212
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    check-cast v8, Lcom/android/server/pm/PackageVerificationState;

    .line 217
    .line 218
    if-nez v8, :cond_1

    .line 219
    .line 220
    const-string v0, "PackageManager"

    .line 221
    .line 222
    const-string v1, "Integrity verification with id "

    .line 223
    .line 224
    const-string v2, " not found. It may be invalid or overridden by verifier"

    .line 225
    .line 226
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    iget-object v9, v8, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    .line 240
    .line 241
    iget-object v10, v9, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 242
    .line 243
    iget-object v10, v10, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 244
    .line 245
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    iput-boolean v2, v8, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 250
    .line 251
    if-ne v1, v2, :cond_2

    .line 252
    .line 253
    const-string v1, "PackageManager"

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v5, "Integrity check passed for "

    .line 258
    .line 259
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v2, "Integrity check failed for "

    .line 276
    .line 277
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v9, v5, v1}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    .line 296
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 301
    .line 302
    .line 303
    :cond_3
    const-string v0, "integrity_verification"

    .line 304
    .line 305
    invoke-static {v6, v7, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    iput-boolean v4, v9, Lcom/android/server/pm/VerifyingSession;->mWaitForIntegrityVerificationToComplete:Z

    .line 309
    .line 310
    invoke-virtual {v9}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_c

    .line 314
    .line 315
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v1, Ljava/lang/String;

    .line 318
    .line 319
    if-eqz v1, :cond_22

    .line 320
    .line 321
    const/16 v5, 0x1d

    .line 322
    .line 323
    if-ne v3, v5, :cond_4

    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_4
    move v2, v4

    .line 327
    :goto_1
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 328
    .line 329
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_c

    .line 333
    .line 334
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v1, Lcom/android/server/pm/CleanUpArgs;

    .line 337
    .line 338
    if-eqz v1, :cond_22

    .line 339
    .line 340
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 341
    .line 342
    iget-object v2, v1, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    .line 343
    .line 344
    iget-object v3, v1, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 345
    .line 346
    iget-object v1, v1, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 349
    .line 350
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_c

    .line 354
    .line 355
    :pswitch_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 356
    .line 357
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 358
    .line 359
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 360
    .line 361
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 362
    .line 363
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Lcom/android/server/pm/VerifyingSession;

    .line 368
    .line 369
    if-eqz v3, :cond_22

    .line 370
    .line 371
    iget-object v5, v3, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 372
    .line 373
    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 374
    .line 375
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    const-string v8, "PackageManager"

    .line 380
    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v10, "Enable rollback timed out for "

    .line 384
    .line 385
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    iget-object v8, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 399
    .line 400
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 401
    .line 402
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 403
    .line 404
    .line 405
    const-string v8, "PackageManager"

    .line 406
    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v10, "Continuing with installation of "

    .line 410
    .line 411
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    const-string v5, "enable_rollback"

    .line 425
    .line 426
    invoke-static {v6, v7, v5, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    iput-boolean v4, v3, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 430
    .line 431
    invoke-virtual {v3}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 432
    .line 433
    .line 434
    new-instance v2, Landroid/content/Intent;

    .line 435
    .line 436
    const-string v3, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    .line 437
    .line 438
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 442
    .line 443
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    .line 445
    .line 446
    const/high16 v1, 0x14000000

    .line 447
    .line 448
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 454
    .line 455
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 456
    .line 457
    const-string v3, "android.permission.PACKAGE_ROLLBACK_AGENT"

    .line 458
    .line 459
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_c

    .line 463
    .line 464
    :pswitch_7
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 465
    .line 466
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 467
    .line 468
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 469
    .line 470
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 471
    .line 472
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    check-cast v5, Lcom/android/server/pm/VerifyingSession;

    .line 477
    .line 478
    if-nez v5, :cond_5

    .line 479
    .line 480
    const-string v0, "PackageManager"

    .line 481
    .line 482
    const-string v1, "Invalid rollback enabled token "

    .line 483
    .line 484
    const-string v2, " received"

    .line 485
    .line 486
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_c

    .line 490
    .line 491
    :cond_5
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 492
    .line 493
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 494
    .line 495
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 496
    .line 497
    .line 498
    if-eq v1, v2, :cond_6

    .line 499
    .line 500
    iget-object v0, v5, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 501
    .line 502
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 503
    .line 504
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-string v1, "PackageManager"

    .line 509
    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    const-string v8, "Failed to enable rollback for "

    .line 513
    .line 514
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    const-string v1, "PackageManager"

    .line 528
    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v8, "Continuing with installation of "

    .line 532
    .line 533
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    :cond_6
    const-string v0, "enable_rollback"

    .line 547
    .line 548
    invoke-static {v6, v7, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    iput-boolean v4, v5, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 552
    .line 553
    invoke-virtual {v5}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_c

    .line 557
    .line 558
    :pswitch_8
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 559
    .line 560
    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 561
    .line 562
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 567
    .line 568
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 569
    .line 570
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 571
    .line 572
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v1, Landroid/content/pm/InstantAppRequest;

    .line 575
    .line 576
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 577
    .line 578
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 579
    .line 580
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    .line 581
    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 583
    .line 584
    .line 585
    move-result-wide v13

    .line 586
    iget-object v15, v1, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 587
    .line 588
    const-string v10, "["

    .line 589
    .line 590
    const-string v9, "PackageManager"

    .line 591
    .line 592
    sget-boolean v16, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    .line 593
    .line 594
    if-eqz v16, :cond_7

    .line 595
    .line 596
    const-string v4, "] Phase2; resolving"

    .line 597
    .line 598
    invoke-static {v10, v15, v4, v9}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    :cond_7
    iget-object v7, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 602
    .line 603
    invoke-static {v7}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 604
    .line 605
    .line 606
    move-result-object v17

    .line 607
    new-instance v8, Lcom/android/server/pm/InstantAppResolver$1;

    .line 608
    .line 609
    move-object v4, v8

    .line 610
    move-object v2, v8

    .line 611
    move-object v8, v15

    .line 612
    move-object/from16 v19, v9

    .line 613
    .line 614
    move-object v9, v1

    .line 615
    move-object/from16 v20, v10

    .line 616
    .line 617
    move-object/from16 v10, v17

    .line 618
    .line 619
    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .line 620
    .line 621
    .line 622
    :try_start_1
    new-instance v4, Landroid/content/pm/InstantAppRequestInfo;

    .line 623
    .line 624
    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 625
    .line 626
    invoke-static {v5}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 627
    .line 628
    .line 629
    move-result-object v22

    .line 630
    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    .line 631
    .line 632
    iget v6, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 633
    .line 634
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 635
    .line 636
    .line 637
    move-result-object v24

    .line 638
    iget-boolean v6, v1, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    .line 639
    .line 640
    iget-object v1, v1, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 641
    .line 642
    move-object/from16 v21, v4

    .line 643
    .line 644
    move-object/from16 v23, v5

    .line 645
    .line 646
    move/from16 v25, v6

    .line 647
    .line 648
    move-object/from16 v26, v1

    .line 649
    .line 650
    invoke-direct/range {v21 .. v26}, Landroid/content/pm/InstantAppRequestInfo;-><init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$1;

    .line 657
    .line 658
    invoke-direct {v1, v0, v2, v13, v14}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolver$1;J)V
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    .line 660
    .line 661
    :try_start_2
    invoke-virtual {v4}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 666
    .line 667
    .line 668
    move-result-wide v5
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 669
    :try_start_3
    invoke-virtual {v3, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    .line 670
    .line 671
    .line 672
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    .line 675
    .line 676
    invoke-interface {v0, v4, v1}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Landroid/os/IRemoteCallback;)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_c

    .line 680
    .line 681
    :catchall_0
    move-exception v0

    .line 682
    move-object v1, v0

    .line 683
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    .line 685
    .line 686
    throw v1
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 687
    :catch_1
    move-exception v0

    .line 688
    goto :goto_2

    .line 689
    :catch_2
    :try_start_5
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 690
    .line 691
    const/4 v1, 0x3

    .line 692
    invoke-direct {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 693
    .line 694
    .line 695
    throw v0

    .line 696
    :catch_3
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    .line 697
    .line 698
    const/4 v1, 0x1

    .line 699
    invoke-direct {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    .line 700
    .line 701
    .line 702
    throw v0
    :try_end_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_5 .. :try_end_5} :catch_1

    .line 703
    :goto_2
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    .line 704
    .line 705
    const/4 v1, 0x2

    .line 706
    const/4 v2, 0x1

    .line 707
    if-ne v0, v2, :cond_8

    .line 708
    .line 709
    move v2, v1

    .line 710
    goto :goto_3

    .line 711
    :cond_8
    const/4 v2, 0x1

    .line 712
    :goto_3
    const/16 v0, 0x384

    .line 713
    .line 714
    invoke-static {v0, v2, v13, v14, v15}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IIJLjava/lang/String;)V

    .line 715
    .line 716
    .line 717
    if-eqz v16, :cond_22

    .line 718
    .line 719
    if-ne v2, v1, :cond_9

    .line 720
    .line 721
    const-string v0, "] Phase2; bind timed out"

    .line 722
    .line 723
    move-object/from16 v2, v19

    .line 724
    .line 725
    move-object/from16 v1, v20

    .line 726
    .line 727
    invoke-static {v1, v15, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_c

    .line 731
    .line 732
    :cond_9
    move-object/from16 v2, v19

    .line 733
    .line 734
    move-object/from16 v1, v20

    .line 735
    .line 736
    const-string v0, "] Phase2; service connection error"

    .line 737
    .line 738
    invoke-static {v1, v15, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_c

    .line 742
    .line 743
    :pswitch_9
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 744
    .line 745
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 746
    .line 747
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 748
    .line 749
    monitor-enter v2

    .line 750
    :try_start_6
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 751
    .line 752
    const/16 v4, 0x13

    .line 753
    .line 754
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    .line 756
    .line 757
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 760
    .line 761
    .line 762
    monitor-exit v2

    .line 763
    goto/16 :goto_c

    .line 764
    .line 765
    :catchall_1
    move-exception v0

    .line 766
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 767
    throw v0

    .line 768
    :cond_a
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 769
    .line 770
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 771
    .line 772
    if-eqz v3, :cond_b

    .line 773
    .line 774
    const/16 v18, 0x1

    .line 775
    .line 776
    goto :goto_4

    .line 777
    :cond_b
    move/from16 v18, v4

    .line 778
    .line 779
    :goto_4
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 780
    .line 781
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 782
    .line 783
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 788
    .line 789
    if-eqz v3, :cond_22

    .line 790
    .line 791
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    if-eqz v5, :cond_c

    .line 796
    .line 797
    goto/16 :goto_c

    .line 798
    .line 799
    :cond_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 802
    .line 803
    if-nez v18, :cond_d

    .line 804
    .line 805
    iget v5, v1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    .line 806
    .line 807
    iget-object v6, v3, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 808
    .line 809
    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    if-eqz v4, :cond_d

    .line 814
    .line 815
    goto/16 :goto_c

    .line 816
    .line 817
    :cond_d
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 818
    .line 819
    invoke-static {v2, v3, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    .line 820
    .line 821
    .line 822
    goto/16 :goto_c

    .line 823
    .line 824
    :cond_e
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 825
    .line 826
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 827
    .line 828
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 829
    .line 830
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 835
    .line 836
    if-nez v3, :cond_f

    .line 837
    .line 838
    const-string v0, "PackageManager"

    .line 839
    .line 840
    const-string v1, "Verification with id "

    .line 841
    .line 842
    const-string v3, " not found. It may be invalid or overridden by integrity verification"

    .line 843
    .line 844
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_c

    .line 848
    .line 849
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    .line 850
    .line 851
    .line 852
    move-result v4

    .line 853
    if-eqz v4, :cond_10

    .line 854
    .line 855
    const-string v0, "PackageManager"

    .line 856
    .line 857
    const-string v1, "Verification with id "

    .line 858
    .line 859
    const-string v3, " already complete."

    .line 860
    .line 861
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_c

    .line 865
    .line 866
    :cond_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 869
    .line 870
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 871
    .line 872
    invoke-static {v2, v3, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_c

    .line 876
    .line 877
    :cond_11
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 878
    .line 879
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_c

    .line 883
    .line 884
    :cond_12
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 885
    .line 886
    const/4 v3, 0x1

    .line 887
    if-ne v2, v3, :cond_13

    .line 888
    .line 889
    move v4, v3

    .line 890
    :cond_13
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 891
    .line 892
    if-ne v2, v3, :cond_14

    .line 893
    .line 894
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 899
    .line 900
    .line 901
    :cond_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 902
    .line 903
    if-eqz v1, :cond_15

    .line 904
    .line 905
    check-cast v1, Ljava/util/Set;

    .line 906
    .line 907
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 908
    .line 909
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 910
    .line 911
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    .line 916
    .line 917
    .line 918
    :cond_15
    if-eqz v4, :cond_22

    .line 919
    .line 920
    :try_start_7
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 925
    .line 926
    .line 927
    goto/16 :goto_c

    .line 928
    .line 929
    :catch_4
    const-string v0, "PackageManager"

    .line 930
    .line 931
    const-string v1, "StorageManagerService not running?"

    .line 932
    .line 933
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .line 935
    .line 936
    goto/16 :goto_c

    .line 937
    .line 938
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageHandler;->doHandlePostInstall(Landroid/os/Message;)V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_c

    .line 942
    .line 943
    :cond_17
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 944
    .line 945
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 946
    .line 947
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 948
    .line 949
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 954
    .line 955
    if-eqz v2, :cond_18

    .line 956
    .line 957
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 958
    .line 959
    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageManagerService;->isLocaleOptimizedPackage(ILjava/lang/String;)Z

    .line 962
    .line 963
    .line 964
    move-result v4

    .line 965
    :cond_18
    if-eqz v4, :cond_1a

    .line 966
    .line 967
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 968
    .line 969
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 970
    .line 971
    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    const-string/jumbo v2, "updateLocaleOverlaysForPackage() called with: msg = ["

    .line 975
    .line 976
    .line 977
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    const-string v2, "]"

    .line 984
    .line 985
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    const-string v2, "PackageManager"

    .line 993
    .line 994
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .line 996
    .line 997
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 998
    .line 999
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1000
    .line 1001
    iget-object v0, v5, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 1002
    .line 1003
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 1008
    .line 1009
    sget-object v8, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 1010
    .line 1011
    if-nez v0, :cond_19

    .line 1012
    .line 1013
    const/4 v10, 0x0

    .line 1014
    const/4 v11, 0x0

    .line 1015
    const/4 v9, -0x1

    .line 1016
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;)V

    .line 1017
    .line 1018
    .line 1019
    goto/16 :goto_c

    .line 1020
    .line 1021
    :cond_19
    iget-object v10, v0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 1022
    .line 1023
    const/4 v9, -0x1

    .line 1024
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_c

    .line 1028
    .line 1029
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageHandler;->doHandlePostInstall(Landroid/os/Message;)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_c

    .line 1033
    .line 1034
    :cond_1b
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1035
    .line 1036
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1037
    .line 1038
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1039
    .line 1040
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1041
    .line 1042
    monitor-enter v1

    .line 1043
    :try_start_8
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1044
    .line 1045
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1046
    .line 1047
    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1052
    .line 1053
    .line 1054
    move-result v3

    .line 1055
    move v5, v4

    .line 1056
    move v6, v5

    .line 1057
    :goto_5
    if-ge v5, v3, :cond_1c

    .line 1058
    .line 1059
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v7

    .line 1063
    check-cast v7, Landroid/util/ArrayMap;

    .line 1064
    .line 1065
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    add-int/2addr v6, v7

    .line 1070
    const/4 v7, 0x1

    .line 1071
    add-int/2addr v5, v7

    .line 1072
    goto :goto_5

    .line 1073
    :catchall_2
    move-exception v0

    .line 1074
    goto/16 :goto_d

    .line 1075
    .line 1076
    :cond_1c
    if-nez v6, :cond_1d

    .line 1077
    .line 1078
    monitor-exit v1

    .line 1079
    goto/16 :goto_c

    .line 1080
    .line 1081
    :cond_1d
    new-array v5, v6, [Ljava/lang/String;

    .line 1082
    .line 1083
    new-array v7, v6, [Ljava/util/ArrayList;

    .line 1084
    .line 1085
    new-array v6, v6, [I

    .line 1086
    .line 1087
    move v8, v4

    .line 1088
    move v9, v8

    .line 1089
    :goto_6
    if-ge v8, v3, :cond_20

    .line 1090
    .line 1091
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1092
    .line 1093
    .line 1094
    move-result v10

    .line 1095
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v11

    .line 1099
    check-cast v11, Landroid/util/ArrayMap;

    .line 1100
    .line 1101
    invoke-static {v11}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    .line 1102
    .line 1103
    .line 1104
    move-result v12

    .line 1105
    move v13, v4

    .line 1106
    :goto_7
    if-ge v13, v12, :cond_1f

    .line 1107
    .line 1108
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v14

    .line 1112
    check-cast v14, Ljava/lang/String;

    .line 1113
    .line 1114
    aput-object v14, v5, v9

    .line 1115
    .line 1116
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v14

    .line 1120
    check-cast v14, Ljava/util/ArrayList;

    .line 1121
    .line 1122
    aput-object v14, v7, v9

    .line 1123
    .line 1124
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1125
    .line 1126
    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1127
    .line 1128
    aget-object v15, v5, v9

    .line 1129
    .line 1130
    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v14

    .line 1134
    if-eqz v14, :cond_1e

    .line 1135
    .line 1136
    iget v14, v14, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1137
    .line 1138
    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    .line 1139
    .line 1140
    .line 1141
    move-result v14

    .line 1142
    goto :goto_8

    .line 1143
    :cond_1e
    const/4 v14, -0x1

    .line 1144
    :goto_8
    aput v14, v6, v9

    .line 1145
    .line 1146
    const/4 v14, 0x1

    .line 1147
    add-int/2addr v9, v14

    .line 1148
    add-int/2addr v13, v14

    .line 1149
    goto :goto_7

    .line 1150
    :cond_1f
    const/4 v10, 0x1

    .line 1151
    add-int/2addr v8, v10

    .line 1152
    goto :goto_6

    .line 1153
    :cond_20
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1154
    .line 1155
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1156
    .line 1157
    iget-object v3, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1158
    .line 1159
    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1160
    :try_start_9
    iget-object v2, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    .line 1161
    .line 1162
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1163
    .line 1164
    .line 1165
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1166
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1167
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1168
    .line 1169
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    :goto_9
    if-ge v4, v9, :cond_22

    .line 1174
    .line 1175
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    .line 1176
    .line 1177
    if-eqz v2, :cond_21

    .line 1178
    .line 1179
    aget-object v2, v7, v4

    .line 1180
    .line 1181
    if-eqz v2, :cond_21

    .line 1182
    .line 1183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1184
    .line 1185
    .line 1186
    move-result v2

    .line 1187
    const/4 v3, 0x1

    .line 1188
    if-ne v2, v3, :cond_21

    .line 1189
    .line 1190
    aget-object v2, v7, v4

    .line 1191
    .line 1192
    const-string v3, "androidx.work.impl.background.systemalarm.RescheduleReceiver"

    .line 1193
    .line 1194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v2

    .line 1198
    if-eqz v2, :cond_21

    .line 1199
    .line 1200
    const-string v2, "PackageManager"

    .line 1201
    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    const-string v8, "Don\'t send PACKAGE_CHANGED for "

    .line 1205
    .line 1206
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    aget-object v8, v5, v4

    .line 1210
    .line 1211
    const-string v10, " by WorkManager"

    .line 1212
    .line 1213
    invoke-static {v3, v8, v10, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    :goto_a
    const/4 v2, 0x1

    .line 1217
    goto :goto_b

    .line 1218
    :cond_21
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1219
    .line 1220
    aget-object v12, v5, v4

    .line 1221
    .line 1222
    aget-object v14, v7, v4

    .line 1223
    .line 1224
    aget v15, v6, v4

    .line 1225
    .line 1226
    const/16 v16, 0x0

    .line 1227
    .line 1228
    const/4 v13, 0x1

    .line 1229
    move-object v11, v1

    .line 1230
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    goto :goto_a

    .line 1234
    :goto_b
    add-int/2addr v4, v2

    .line 1235
    goto :goto_9

    .line 1236
    :catch_5
    :cond_22
    :goto_c
    return-void

    .line 1237
    :catchall_3
    move-exception v0

    .line 1238
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1239
    :try_start_c
    throw v0

    .line 1240
    :goto_d
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1241
    throw v0

    .line 1242
    nop

    .line 1243
    :pswitch_data_0
    .packed-switch 0x13
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
        :pswitch_4
    .end packed-switch
.end method

.method public final doHandlePostInstall(Landroid/os/Message;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 16
    .line 17
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v4

    .line 26
    :goto_0
    iget-object v6, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 29
    .line 30
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 31
    .line 32
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 33
    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 39
    .line 40
    .line 41
    iget v6, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 42
    .line 43
    if-ne v6, v5, :cond_5

    .line 44
    .line 45
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 46
    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    iget-object v7, v6, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 50
    .line 51
    iget v8, v7, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 52
    .line 53
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-nez v9, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-nez v9, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 68
    .line 69
    iget-wide v11, v9, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 70
    .line 71
    iget-boolean v7, v7, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 72
    .line 73
    if-nez v7, :cond_4

    .line 74
    .line 75
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    filled-new-array {v10, v7, v8}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const v8, 0x33479

    .line 88
    .line 89
    .line 90
    invoke-static {v8, v7}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    filled-new-array {v10, v7, v8}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const v8, 0x3347a

    .line 107
    .line 108
    .line 109
    invoke-static {v8, v7}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    :catch_0
    :goto_1
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 116
    .line 117
    if-eqz v6, :cond_6

    .line 118
    .line 119
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 123
    .line 124
    if-nez v6, :cond_7

    .line 125
    .line 126
    goto/16 :goto_3d

    .line 127
    .line 128
    :cond_7
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 129
    .line 130
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    and-int/lit16 v0, v0, 0x1000

    .line 140
    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    move v0, v5

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    move v0, v4

    .line 146
    :goto_2
    iget v9, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 147
    .line 148
    if-ne v9, v5, :cond_9

    .line 149
    .line 150
    move v15, v5

    .line 151
    goto :goto_3

    .line 152
    :cond_9
    move v15, v4

    .line 153
    :goto_3
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 154
    .line 155
    if-eqz v9, :cond_a

    .line 156
    .line 157
    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v9, :cond_a

    .line 160
    .line 161
    move/from16 v16, v5

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_a
    move/from16 v16, v4

    .line 165
    .line 166
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    sget-object v10, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 171
    .line 172
    const/high16 v10, 0x8000000

    .line 173
    .line 174
    and-int/2addr v9, v10

    .line 175
    if-eqz v9, :cond_b

    .line 176
    .line 177
    move/from16 v27, v5

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_b
    move/from16 v27, v4

    .line 181
    .line 182
    :goto_5
    iget-object v14, v2, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v9, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 185
    .line 186
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    const/4 v12, 0x0

    .line 191
    if-eqz v15, :cond_c

    .line 192
    .line 193
    invoke-interface {v13, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    move-object v11, v9

    .line 198
    goto :goto_6

    .line 199
    :cond_c
    move-object v11, v12

    .line 200
    :goto_6
    if-eqz v11, :cond_e

    .line 201
    .line 202
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_d

    .line 207
    .line 208
    iget-object v9, v11, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 215
    .line 216
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-nez v9, :cond_d

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_d
    move v9, v4

    .line 228
    goto :goto_8

    .line 229
    :cond_e
    :goto_7
    move v9, v5

    .line 230
    :goto_8
    if-eqz v15, :cond_11

    .line 231
    .line 232
    if-eqz v9, :cond_11

    .line 233
    .line 234
    const-string v0, "PackageManager"

    .line 235
    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v4, " was removed before handlePackagePostInstall could be executed"

    .line 245
    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    const/16 v0, -0x17

    .line 257
    .line 258
    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 259
    .line 260
    const-string v0, "Package was removed before install could complete."

    .line 261
    .line 262
    iput-object v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v0, v6, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 265
    .line 266
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 267
    .line 268
    if-eqz v3, :cond_f

    .line 269
    .line 270
    iget-object v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 271
    .line 272
    if-eqz v4, :cond_f

    .line 273
    .line 274
    iget-object v4, v4, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_f
    move-object v4, v12

    .line 278
    :goto_9
    if-eqz v3, :cond_10

    .line 279
    .line 280
    iget-object v3, v3, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 281
    .line 282
    if-eqz v3, :cond_10

    .line 283
    .line 284
    iget-object v12, v3, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 285
    .line 286
    :cond_10
    invoke-virtual {v0, v14, v4, v12}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_3d

    .line 295
    .line 296
    :cond_11
    if-eqz v15, :cond_50

    .line 297
    .line 298
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->aslInApkAppMetadataSource()Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    if-eqz v9, :cond_13

    .line 303
    .line 304
    iget v9, v11, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 305
    .line 306
    if-ne v9, v5, :cond_13

    .line 307
    .line 308
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 309
    .line 310
    iget-object v10, v11, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-static {v9, v10, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-nez v7, :cond_13

    .line 321
    .line 322
    iget-object v7, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 323
    .line 324
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 325
    .line 326
    monitor-enter v7

    .line 327
    :try_start_1
    iget-object v8, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 328
    .line 329
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 330
    .line 331
    invoke-virtual {v8, v14}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    if-eqz v8, :cond_12

    .line 336
    .line 337
    iput-object v12, v8, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    .line 343
    .line 344
    .line 345
    goto :goto_a

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    goto :goto_b

    .line 348
    :cond_12
    :goto_a
    monitor-exit v7

    .line 349
    goto :goto_c

    .line 350
    :goto_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    throw v0

    .line 352
    :cond_13
    :goto_c
    iget-object v7, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 353
    .line 354
    iput-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 355
    .line 356
    iget-object v8, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 357
    .line 358
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 363
    .line 364
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 365
    .line 366
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-interface {v7, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    if-nez v7, :cond_14

    .line 378
    .line 379
    move-object v8, v12

    .line 380
    :goto_d
    move-object/from16 v17, v14

    .line 381
    .line 382
    goto :goto_e

    .line 383
    :cond_14
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :goto_e
    if-nez v8, :cond_15

    .line 387
    .line 388
    move-object/from16 v22, v11

    .line 389
    .line 390
    move-object/from16 v23, v13

    .line 391
    .line 392
    const/16 v18, 0x4

    .line 393
    .line 394
    goto/16 :goto_14

    .line 395
    .line 396
    :cond_15
    iget-object v12, v10, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 397
    .line 398
    monitor-enter v12

    .line 399
    :try_start_2
    array-length v5, v9

    .line 400
    move v14, v4

    .line 401
    :goto_f
    if-ge v14, v5, :cond_1d

    .line 402
    .line 403
    aget v4, v9, v14

    .line 404
    .line 405
    invoke-interface {v7, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 406
    .line 407
    .line 408
    move-result-object v19

    .line 409
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 410
    .line 411
    .line 412
    move-result v19

    .line 413
    if-nez v19, :cond_16

    .line 414
    .line 415
    move/from16 v19, v5

    .line 416
    .line 417
    move-object/from16 v20, v7

    .line 418
    .line 419
    move-object/from16 v21, v9

    .line 420
    .line 421
    :goto_10
    move-object/from16 v22, v11

    .line 422
    .line 423
    move-object/from16 v23, v13

    .line 424
    .line 425
    const/4 v4, 0x1

    .line 426
    const/16 v18, 0x4

    .line 427
    .line 428
    goto/16 :goto_13

    .line 429
    .line 430
    :cond_16
    invoke-virtual {v10, v8, v4}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v7, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 434
    .line 435
    .line 436
    move-result-object v19

    .line 437
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 438
    .line 439
    .line 440
    move-result v19

    .line 441
    if-eqz v19, :cond_17

    .line 442
    .line 443
    move/from16 v19, v5

    .line 444
    .line 445
    iget v5, v7, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 446
    .line 447
    invoke-virtual {v10, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 448
    .line 449
    .line 450
    goto :goto_11

    .line 451
    :catchall_1
    move-exception v0

    .line 452
    goto/16 :goto_35

    .line 453
    .line 454
    :cond_17
    move/from16 v19, v5

    .line 455
    .line 456
    :goto_11
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;

    .line 457
    .line 458
    move-object/from16 v20, v7

    .line 459
    .line 460
    const/4 v7, 0x0

    .line 461
    invoke-direct {v5, v7, v8}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v10, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(ILjava/util/function/Predicate;)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    invoke-static {v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    new-instance v7, Ljava/io/File;

    .line 476
    .line 477
    move-object/from16 v21, v9

    .line 478
    .line 479
    const-string/jumbo v9, "metadata.xml"

    .line 480
    .line 481
    .line 482
    invoke-direct {v7, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 486
    .line 487
    .line 488
    new-instance v7, Ljava/io/File;

    .line 489
    .line 490
    const-string v9, "icon.png"

    .line 491
    .line 492
    invoke-direct {v7, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 496
    .line 497
    .line 498
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-static {v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(ILjava/lang/String;)Ljava/io/File;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    if-nez v5, :cond_18

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_18
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 514
    .line 515
    .line 516
    move-result v9

    .line 517
    const/16 v18, 0x4

    .line 518
    .line 519
    add-int/lit8 v9, v9, -0x4

    .line 520
    .line 521
    move-object/from16 v22, v11

    .line 522
    .line 523
    const/4 v11, 0x7

    .line 524
    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    const/4 v11, 0x1

    .line 533
    invoke-virtual {v9, v7, v11}, Landroid/content/pm/SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    .line 534
    .line 535
    .line 536
    move-result v9

    .line 537
    if-eqz v9, :cond_19

    .line 538
    .line 539
    monitor-exit v12

    .line 540
    move-object/from16 v23, v13

    .line 541
    .line 542
    goto :goto_14

    .line 543
    :cond_19
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    invoke-virtual {v9}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    invoke-static {v9}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    array-length v11, v9

    .line 556
    move-object/from16 v23, v13

    .line 557
    .line 558
    const/4 v13, 0x0

    .line 559
    :goto_12
    if-ge v13, v11, :cond_1b

    .line 560
    .line 561
    move/from16 v24, v11

    .line 562
    .line 563
    aget-object v11, v9, v13

    .line 564
    .line 565
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v11

    .line 569
    if-eqz v11, :cond_1a

    .line 570
    .line 571
    monitor-exit v12

    .line 572
    goto :goto_14

    .line 573
    :cond_1a
    const/4 v11, 0x1

    .line 574
    add-int/2addr v13, v11

    .line 575
    move/from16 v11, v24

    .line 576
    .line 577
    goto :goto_12

    .line 578
    :cond_1b
    const-string v7, "InstantAppRegistry"

    .line 579
    .line 580
    new-instance v9, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    const-string v11, "Signature for package "

    .line 586
    .line 587
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v11, " changed - dropping cookie"

    .line 598
    .line 599
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    iget-object v7, v10, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 610
    .line 611
    invoke-virtual {v7, v4, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v7, v8, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/internal/os/SomeArgs;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    if-eqz v4, :cond_1c

    .line 619
    .line 620
    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 621
    .line 622
    .line 623
    :cond_1c
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 624
    .line 625
    .line 626
    const/4 v4, 0x1

    .line 627
    :goto_13
    add-int/2addr v14, v4

    .line 628
    move/from16 v5, v19

    .line 629
    .line 630
    move-object/from16 v7, v20

    .line 631
    .line 632
    move-object/from16 v9, v21

    .line 633
    .line 634
    move-object/from16 v11, v22

    .line 635
    .line 636
    move-object/from16 v13, v23

    .line 637
    .line 638
    const/4 v4, 0x0

    .line 639
    goto/16 :goto_f

    .line 640
    .line 641
    :cond_1d
    move-object/from16 v22, v11

    .line 642
    .line 643
    move-object/from16 v23, v13

    .line 644
    .line 645
    const/16 v18, 0x4

    .line 646
    .line 647
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 648
    :goto_14
    iget-object v4, v2, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 649
    .line 650
    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 651
    .line 652
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    if-nez v5, :cond_1e

    .line 657
    .line 658
    iget-object v5, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 659
    .line 660
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 661
    .line 662
    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 663
    .line 664
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    iget-object v8, v5, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 669
    .line 670
    monitor-enter v8

    .line 671
    :try_start_3
    iget-object v5, v5, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 672
    .line 673
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    monitor-exit v8

    .line 677
    goto :goto_15

    .line 678
    :catchall_2
    move-exception v0

    .line 679
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 680
    throw v0

    .line 681
    :cond_1e
    :goto_15
    iget-object v5, v6, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 682
    .line 683
    iget-object v7, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 684
    .line 685
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 686
    .line 687
    .line 688
    move-result-object v7

    .line 689
    iget-object v11, v6, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 690
    .line 691
    iget-object v8, v11, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 692
    .line 693
    iget-object v14, v11, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 694
    .line 695
    iget-object v13, v11, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 696
    .line 697
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v12

    .line 704
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 705
    .line 706
    if-eqz v9, :cond_20

    .line 707
    .line 708
    iget-boolean v10, v9, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 709
    .line 710
    if-eqz v10, :cond_1f

    .line 711
    .line 712
    iget-object v10, v9, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 713
    .line 714
    filled-new-array {v10}, [Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v10

    .line 718
    iget v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 719
    .line 720
    filled-new-array {v9}, [I

    .line 721
    .line 722
    .line 723
    move-result-object v9

    .line 724
    move-object/from16 v19, v12

    .line 725
    .line 726
    move-object/from16 v20, v13

    .line 727
    .line 728
    const/4 v12, 0x0

    .line 729
    const/4 v13, 0x1

    .line 730
    invoke-virtual {v5, v12, v13, v10, v9}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 731
    .line 732
    .line 733
    const/16 v30, 0x0

    .line 734
    .line 735
    const/16 v31, 0x1

    .line 736
    .line 737
    const/16 v34, 0x0

    .line 738
    .line 739
    move-object/from16 v28, v5

    .line 740
    .line 741
    move-object/from16 v29, v7

    .line 742
    .line 743
    move-object/from16 v32, v10

    .line 744
    .line 745
    move-object/from16 v33, v9

    .line 746
    .line 747
    invoke-virtual/range {v28 .. v34}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Lcom/android/server/pm/Computer;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V

    .line 748
    .line 749
    .line 750
    goto :goto_16

    .line 751
    :cond_1f
    move-object/from16 v19, v12

    .line 752
    .line 753
    move-object/from16 v20, v13

    .line 754
    .line 755
    :goto_16
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 756
    .line 757
    const/4 v13, 0x0

    .line 758
    const/16 v21, 0x0

    .line 759
    .line 760
    move-object v9, v5

    .line 761
    move-object/from16 v12, v22

    .line 762
    .line 763
    move-object/from16 v35, v12

    .line 764
    .line 765
    move-object/from16 v36, v19

    .line 766
    .line 767
    move v12, v0

    .line 768
    move-object/from16 v28, v20

    .line 769
    .line 770
    move-object/from16 v1, v23

    .line 771
    .line 772
    move/from16 v29, v15

    .line 773
    .line 774
    move-object/from16 p0, v17

    .line 775
    .line 776
    move-object v15, v14

    .line 777
    move/from16 v14, v21

    .line 778
    .line 779
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 780
    .line 781
    .line 782
    goto :goto_17

    .line 783
    :cond_20
    move-object/from16 v36, v12

    .line 784
    .line 785
    move-object/from16 v28, v13

    .line 786
    .line 787
    move/from16 v29, v15

    .line 788
    .line 789
    move-object/from16 p0, v17

    .line 790
    .line 791
    move-object/from16 v35, v22

    .line 792
    .line 793
    move-object/from16 v1, v23

    .line 794
    .line 795
    move-object v15, v14

    .line 796
    :goto_17
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 797
    .line 798
    iget-object v10, v2, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 799
    .line 800
    iget-object v11, v2, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 801
    .line 802
    iget-object v12, v2, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 803
    .line 804
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v13

    .line 808
    if-eqz v13, :cond_21

    .line 809
    .line 810
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v13

    .line 814
    goto :goto_18

    .line 815
    :cond_21
    iget-object v13, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 816
    .line 817
    if-eqz v13, :cond_22

    .line 818
    .line 819
    iget-object v13, v13, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 820
    .line 821
    goto :goto_18

    .line 822
    :cond_22
    const/4 v13, 0x0

    .line 823
    :goto_18
    new-instance v14, Landroid/os/Bundle;

    .line 824
    .line 825
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 826
    .line 827
    .line 828
    move-object/from16 v31, v1

    .line 829
    .line 830
    move-object/from16 v1, v36

    .line 831
    .line 832
    move/from16 v32, v0

    .line 833
    .line 834
    if-eqz v1, :cond_23

    .line 835
    .line 836
    const-string v0, "com.android.vending"

    .line 837
    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-eqz v0, :cond_23

    .line 843
    .line 844
    const-string v0, "certificate_policy"

    .line 845
    .line 846
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    if-eqz v0, :cond_23

    .line 855
    .line 856
    move-object/from16 v33, v4

    .line 857
    .line 858
    const/4 v1, 0x0

    .line 859
    const/4 v4, 0x0

    .line 860
    :try_start_4
    invoke-interface {v0, v4, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-eqz v0, :cond_24

    .line 865
    .line 866
    const-string v0, "isMarketInstallation"

    .line 867
    .line 868
    const/4 v1, 0x1

    .line 869
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 870
    .line 871
    .line 872
    goto :goto_19

    .line 873
    :cond_23
    move-object/from16 v33, v4

    .line 874
    .line 875
    const/4 v4, 0x0

    .line 876
    :catch_1
    :cond_24
    :goto_19
    iget v0, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 877
    .line 878
    const-string v1, "android.intent.extra.UID"

    .line 879
    .line 880
    invoke-virtual {v14, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 881
    .line 882
    .line 883
    if-eqz v16, :cond_25

    .line 884
    .line 885
    const-string v0, "android.intent.extra.REPLACING"

    .line 886
    .line 887
    const/4 v1, 0x1

    .line 888
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 889
    .line 890
    .line 891
    goto :goto_1a

    .line 892
    :cond_25
    const/4 v1, 0x1

    .line 893
    :goto_1a
    if-eqz v27, :cond_26

    .line 894
    .line 895
    const-string v0, "android.intent.extra.ARCHIVAL"

    .line 896
    .line 897
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    .line 899
    .line 900
    :cond_26
    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 901
    .line 902
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 903
    .line 904
    .line 905
    move-result v1

    .line 906
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 907
    .line 908
    .line 909
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 910
    .line 911
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    if-eqz v13, :cond_27

    .line 916
    .line 917
    if-eqz v0, :cond_27

    .line 918
    .line 919
    iget-object v1, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 920
    .line 921
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 922
    .line 923
    const/16 v25, 0x0

    .line 924
    .line 925
    const/16 v26, 0x0

    .line 926
    .line 927
    const/16 v21, 0x0

    .line 928
    .line 929
    const/16 v24, 0x0

    .line 930
    .line 931
    move-object/from16 v17, v5

    .line 932
    .line 933
    move-object/from16 v19, p0

    .line 934
    .line 935
    move-object/from16 v20, v14

    .line 936
    .line 937
    move-object/from16 v22, v13

    .line 938
    .line 939
    move-object/from16 v23, v1

    .line 940
    .line 941
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 942
    .line 943
    .line 944
    :cond_27
    if-nez v0, :cond_3a

    .line 945
    .line 946
    iget v0, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 947
    .line 948
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 949
    .line 950
    .line 951
    move-result v22

    .line 952
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 953
    .line 954
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    .line 955
    .line 956
    .line 957
    move-result v17

    .line 958
    const/high16 v18, 0x10000

    .line 959
    .line 960
    and-int v17, v17, v18

    .line 961
    .line 962
    if-eqz v17, :cond_28

    .line 963
    .line 964
    const/16 v21, 0x1

    .line 965
    .line 966
    goto :goto_1b

    .line 967
    :cond_28
    const/16 v21, 0x0

    .line 968
    .line 969
    :goto_1b
    if-nez v0, :cond_2a

    .line 970
    .line 971
    if-eqz v21, :cond_29

    .line 972
    .line 973
    goto :goto_1c

    .line 974
    :cond_29
    const/16 v20, 0x0

    .line 975
    .line 976
    goto :goto_1d

    .line 977
    :cond_2a
    :goto_1c
    const/16 v20, 0x1

    .line 978
    .line 979
    :goto_1d
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    .line 980
    .line 981
    .line 982
    move-result v26

    .line 983
    move-object/from16 v17, v5

    .line 984
    .line 985
    move-object/from16 v18, v7

    .line 986
    .line 987
    move-object/from16 v19, p0

    .line 988
    .line 989
    move-object/from16 v23, v9

    .line 990
    .line 991
    move-object/from16 v24, v10

    .line 992
    .line 993
    move/from16 v25, v27

    .line 994
    .line 995
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 996
    .line 997
    .line 998
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 999
    .line 1000
    const/16 v4, 0x3e8

    .line 1001
    .line 1002
    move-object/from16 v1, p0

    .line 1003
    .line 1004
    invoke-interface {v7, v4, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    move-object/from16 v36, v6

    .line 1009
    .line 1010
    invoke-interface {v7}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    invoke-virtual {v0, v7, v4, v11, v6}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v25

    .line 1018
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1019
    .line 1020
    const/16 v22, 0x0

    .line 1021
    .line 1022
    const/16 v26, 0x0

    .line 1023
    .line 1024
    const/16 v21, 0x0

    .line 1025
    .line 1026
    move-object/from16 v19, v1

    .line 1027
    .line 1028
    move-object/from16 v20, v14

    .line 1029
    .line 1030
    move-object/from16 v23, v11

    .line 1031
    .line 1032
    move-object/from16 v24, v12

    .line 1033
    .line 1034
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1035
    .line 1036
    .line 1037
    if-eqz v13, :cond_2b

    .line 1038
    .line 1039
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1040
    .line 1041
    const/16 v25, 0x0

    .line 1042
    .line 1043
    const/16 v26, 0x0

    .line 1044
    .line 1045
    const/16 v21, 0x0

    .line 1046
    .line 1047
    move-object/from16 v17, v5

    .line 1048
    .line 1049
    move-object/from16 v19, v1

    .line 1050
    .line 1051
    move-object/from16 v20, v14

    .line 1052
    .line 1053
    move-object/from16 v22, v13

    .line 1054
    .line 1055
    move-object/from16 v23, v11

    .line 1056
    .line 1057
    move-object/from16 v24, v12

    .line 1058
    .line 1059
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1060
    .line 1061
    .line 1062
    :cond_2b
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 1063
    .line 1064
    invoke-static {v0}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    if-eqz v0, :cond_2c

    .line 1069
    .line 1070
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1071
    .line 1072
    const/16 v25, 0x0

    .line 1073
    .line 1074
    const/16 v26, 0x0

    .line 1075
    .line 1076
    const/16 v21, 0x0

    .line 1077
    .line 1078
    move-object/from16 v17, v5

    .line 1079
    .line 1080
    move-object/from16 v19, v1

    .line 1081
    .line 1082
    move-object/from16 v20, v14

    .line 1083
    .line 1084
    move-object/from16 v22, v8

    .line 1085
    .line 1086
    move-object/from16 v23, v11

    .line 1087
    .line 1088
    move-object/from16 v24, v12

    .line 1089
    .line 1090
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1091
    .line 1092
    .line 1093
    :cond_2c
    array-length v0, v15

    .line 1094
    const/4 v4, 0x0

    .line 1095
    :goto_1e
    if-ge v4, v0, :cond_2e

    .line 1096
    .line 1097
    aget-object v6, v15, v4

    .line 1098
    .line 1099
    if-eqz v6, :cond_2d

    .line 1100
    .line 1101
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v8

    .line 1105
    if-nez v8, :cond_2d

    .line 1106
    .line 1107
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1108
    .line 1109
    const/16 v25, 0x0

    .line 1110
    .line 1111
    const/16 v26, 0x0

    .line 1112
    .line 1113
    const/16 v21, 0x0

    .line 1114
    .line 1115
    move-object/from16 v17, v5

    .line 1116
    .line 1117
    move-object/from16 v19, v1

    .line 1118
    .line 1119
    move-object/from16 v20, v14

    .line 1120
    .line 1121
    move-object/from16 v22, v6

    .line 1122
    .line 1123
    move-object/from16 v23, v11

    .line 1124
    .line 1125
    move-object/from16 v24, v12

    .line 1126
    .line 1127
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1128
    .line 1129
    .line 1130
    :cond_2d
    const/4 v6, 0x1

    .line 1131
    add-int/2addr v4, v6

    .line 1132
    goto :goto_1e

    .line 1133
    :cond_2e
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    .line 1134
    .line 1135
    const/16 v25, 0x0

    .line 1136
    .line 1137
    const/16 v26, 0x0

    .line 1138
    .line 1139
    const/high16 v21, 0x1000000

    .line 1140
    .line 1141
    move-object/from16 v17, v5

    .line 1142
    .line 1143
    move-object/from16 v19, v1

    .line 1144
    .line 1145
    move-object/from16 v20, v14

    .line 1146
    .line 1147
    move-object/from16 v22, v28

    .line 1148
    .line 1149
    move-object/from16 v23, v9

    .line 1150
    .line 1151
    move-object/from16 v24, v12

    .line 1152
    .line 1153
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1154
    .line 1155
    .line 1156
    if-eqz v16, :cond_33

    .line 1157
    .line 1158
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1159
    .line 1160
    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1161
    .line 1162
    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    .line 1163
    .line 1164
    const/16 v21, 0x0

    .line 1165
    .line 1166
    const/16 v26, 0x0

    .line 1167
    .line 1168
    const/16 v22, 0x0

    .line 1169
    .line 1170
    move-object/from16 v17, v5

    .line 1171
    .line 1172
    move-object/from16 v19, v1

    .line 1173
    .line 1174
    move-object/from16 v20, v14

    .line 1175
    .line 1176
    move-object/from16 v23, v11

    .line 1177
    .line 1178
    move-object/from16 v24, v12

    .line 1179
    .line 1180
    move-object/from16 v25, v0

    .line 1181
    .line 1182
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1183
    .line 1184
    .line 1185
    if-eqz v13, :cond_2f

    .line 1186
    .line 1187
    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    .line 1188
    .line 1189
    const/16 v25, 0x0

    .line 1190
    .line 1191
    const/16 v26, 0x0

    .line 1192
    .line 1193
    const/16 v21, 0x0

    .line 1194
    .line 1195
    move-object/from16 v17, v5

    .line 1196
    .line 1197
    move-object/from16 v19, v1

    .line 1198
    .line 1199
    move-object/from16 v20, v14

    .line 1200
    .line 1201
    move-object/from16 v22, v13

    .line 1202
    .line 1203
    move-object/from16 v23, v11

    .line 1204
    .line 1205
    move-object/from16 v24, v12

    .line 1206
    .line 1207
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1208
    .line 1209
    .line 1210
    :cond_2f
    array-length v0, v15

    .line 1211
    const/4 v3, 0x0

    .line 1212
    :goto_1f
    if-ge v3, v0, :cond_31

    .line 1213
    .line 1214
    aget-object v4, v15, v3

    .line 1215
    .line 1216
    if-eqz v4, :cond_30

    .line 1217
    .line 1218
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v6

    .line 1222
    if-nez v6, :cond_30

    .line 1223
    .line 1224
    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    .line 1225
    .line 1226
    const/16 v25, 0x0

    .line 1227
    .line 1228
    const/16 v26, 0x0

    .line 1229
    .line 1230
    const/16 v21, 0x0

    .line 1231
    .line 1232
    move-object/from16 v17, v5

    .line 1233
    .line 1234
    move-object/from16 v19, v1

    .line 1235
    .line 1236
    move-object/from16 v20, v14

    .line 1237
    .line 1238
    move-object/from16 v22, v4

    .line 1239
    .line 1240
    move-object/from16 v23, v11

    .line 1241
    .line 1242
    move-object/from16 v24, v12

    .line 1243
    .line 1244
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1245
    .line 1246
    .line 1247
    :cond_30
    const/4 v4, 0x1

    .line 1248
    add-int/2addr v3, v4

    .line 1249
    goto :goto_1f

    .line 1250
    :cond_31
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1251
    .line 1252
    if-eqz v0, :cond_32

    .line 1253
    .line 1254
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 1255
    .line 1256
    .line 1257
    move-result-wide v3

    .line 1258
    :goto_20
    move-wide/from16 v18, v3

    .line 1259
    .line 1260
    goto :goto_21

    .line 1261
    :cond_32
    const-wide/16 v3, 0x2710

    .line 1262
    .line 1263
    goto :goto_20

    .line 1264
    :goto_21
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    const/16 v20, 0x0

    .line 1269
    .line 1270
    const-string v22, ""

    .line 1271
    .line 1272
    const/16 v21, 0x137

    .line 1273
    .line 1274
    move-object/from16 v17, v0

    .line 1275
    .line 1276
    invoke-virtual/range {v17 .. v22}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v26

    .line 1283
    const-string v18, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 1284
    .line 1285
    const/16 v20, 0x0

    .line 1286
    .line 1287
    const/16 v21, 0x0

    .line 1288
    .line 1289
    const/16 v19, 0x0

    .line 1290
    .line 1291
    const/16 v25, 0x0

    .line 1292
    .line 1293
    move-object/from16 v17, v5

    .line 1294
    .line 1295
    move-object/from16 v22, v1

    .line 1296
    .line 1297
    move-object/from16 v23, v11

    .line 1298
    .line 1299
    move-object/from16 v24, v12

    .line 1300
    .line 1301
    invoke-virtual/range {v17 .. v26}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_22

    .line 1305
    :cond_33
    if-eqz v3, :cond_34

    .line 1306
    .line 1307
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 1308
    .line 1309
    if-nez v0, :cond_34

    .line 1310
    .line 1311
    invoke-virtual {v5, v1, v13, v9, v10}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 1312
    .line 1313
    .line 1314
    :cond_34
    :goto_22
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1315
    .line 1316
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    if-eqz v0, :cond_39

    .line 1321
    .line 1322
    if-nez v16, :cond_38

    .line 1323
    .line 1324
    iget-object v0, v5, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 1325
    .line 1326
    const-class v3, Landroid/os/storage/StorageManager;

    .line 1327
    .line 1328
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1333
    .line 1334
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1335
    .line 1336
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v3

    .line 1340
    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v3

    .line 1344
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 1353
    .line 1354
    if-eqz v0, :cond_37

    .line 1355
    .line 1356
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    if-eqz v0, :cond_37

    .line 1361
    .line 1362
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 1363
    .line 1364
    .line 1365
    move-result v3

    .line 1366
    if-eqz v3, :cond_35

    .line 1367
    .line 1368
    const/4 v0, 0x1

    .line 1369
    goto :goto_23

    .line 1370
    :cond_35
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_36

    .line 1375
    .line 1376
    const/4 v0, 0x2

    .line 1377
    goto :goto_23

    .line 1378
    :cond_36
    const/4 v0, 0x3

    .line 1379
    goto :goto_23

    .line 1380
    :cond_37
    const/4 v0, 0x0

    .line 1381
    :goto_23
    if-eqz v0, :cond_38

    .line 1382
    .line 1383
    const/16 v3, 0xb5

    .line 1384
    .line 1385
    invoke-static {v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    :cond_38
    if-nez v27, :cond_39

    .line 1389
    .line 1390
    filled-new-array {v1}, [Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1395
    .line 1396
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1397
    .line 1398
    .line 1399
    move-result v3

    .line 1400
    filled-new-array {v3}, [I

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    const/16 v19, 0x1

    .line 1405
    .line 1406
    const/16 v20, 0x1

    .line 1407
    .line 1408
    const/16 v23, 0x0

    .line 1409
    .line 1410
    move-object/from16 v17, v5

    .line 1411
    .line 1412
    move-object/from16 v18, v7

    .line 1413
    .line 1414
    move-object/from16 v21, v0

    .line 1415
    .line 1416
    move-object/from16 v22, v3

    .line 1417
    .line 1418
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Lcom/android/server/pm/Computer;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V

    .line 1419
    .line 1420
    .line 1421
    const/4 v4, 0x1

    .line 1422
    invoke-virtual {v5, v4, v4, v0, v3}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 1423
    .line 1424
    .line 1425
    goto :goto_25

    .line 1426
    :cond_39
    const/4 v4, 0x1

    .line 1427
    goto :goto_25

    .line 1428
    :cond_3a
    const/4 v4, 0x1

    .line 1429
    move-object/from16 v1, p0

    .line 1430
    .line 1431
    move-object/from16 v36, v6

    .line 1432
    .line 1433
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    .line 1434
    .line 1435
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v3

    .line 1439
    if-nez v3, :cond_3b

    .line 1440
    .line 1441
    xor-int/lit8 v3, v16, 0x1

    .line 1442
    .line 1443
    const/4 v4, 0x0

    .line 1444
    :goto_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1445
    .line 1446
    .line 1447
    move-result v6

    .line 1448
    if-ge v4, v6, :cond_3b

    .line 1449
    .line 1450
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v6

    .line 1454
    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1455
    .line 1456
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v19

    .line 1460
    new-instance v8, Ljava/util/ArrayList;

    .line 1461
    .line 1462
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v9

    .line 1466
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v9

    .line 1470
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1471
    .line 1472
    .line 1473
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1474
    .line 1475
    .line 1476
    move-result v22

    .line 1477
    const/16 v23, 0x0

    .line 1478
    .line 1479
    move-object/from16 v17, v5

    .line 1480
    .line 1481
    move-object/from16 v18, v7

    .line 1482
    .line 1483
    move/from16 v20, v3

    .line 1484
    .line 1485
    move-object/from16 v21, v8

    .line 1486
    .line 1487
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    const/4 v6, 0x1

    .line 1491
    add-int/2addr v4, v6

    .line 1492
    goto :goto_24

    .line 1493
    :cond_3b
    :goto_25
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 1494
    .line 1495
    if-eqz v0, :cond_3d

    .line 1496
    .line 1497
    array-length v0, v0

    .line 1498
    if-nez v0, :cond_3c

    .line 1499
    .line 1500
    goto :goto_26

    .line 1501
    :cond_3c
    move-object/from16 v3, v36

    .line 1502
    .line 1503
    goto :goto_28

    .line 1504
    :cond_3d
    :goto_26
    if-nez v16, :cond_3c

    .line 1505
    .line 1506
    move-object/from16 v3, v36

    .line 1507
    .line 1508
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1509
    .line 1510
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1511
    .line 1512
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 1513
    .line 1514
    iget-object v5, v0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    .line 1515
    .line 1516
    monitor-enter v5

    .line 1517
    :try_start_5
    iget-object v0, v0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 1518
    .line 1519
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1520
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 1521
    .line 1522
    .line 1523
    move-result v5

    .line 1524
    const/4 v7, 0x0

    .line 1525
    :goto_27
    if-ge v7, v5, :cond_3e

    .line 1526
    .line 1527
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v6

    .line 1531
    check-cast v6, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 1532
    .line 1533
    invoke-interface {v6, v1, v4}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageAdded(Ljava/lang/String;I)V

    .line 1534
    .line 1535
    .line 1536
    const/4 v6, 0x1

    .line 1537
    add-int/2addr v7, v6

    .line 1538
    goto :goto_27

    .line 1539
    :catchall_3
    move-exception v0

    .line 1540
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1541
    throw v0

    .line 1542
    :goto_28
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1543
    .line 1544
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1545
    .line 1546
    invoke-virtual {v0, v4, v1}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChanged(ILjava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    :cond_3e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 1550
    .line 1551
    .line 1552
    move-result v0

    .line 1553
    if-eqz v0, :cond_3f

    .line 1554
    .line 1555
    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    .line 1556
    .line 1557
    .line 1558
    move-result v0

    .line 1559
    if-eqz v0, :cond_3f

    .line 1560
    .line 1561
    iget v13, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1562
    .line 1563
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1564
    .line 1565
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1566
    .line 1567
    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    .line 1568
    .line 1569
    const/4 v14, 0x0

    .line 1570
    move-object v9, v4

    .line 1571
    move-object v10, v3

    .line 1572
    move-object/from16 v11, v33

    .line 1573
    .line 1574
    move-object v12, v1

    .line 1575
    invoke-direct/range {v9 .. v14}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;[ILjava/lang/String;II)V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    .line 1580
    .line 1581
    goto :goto_2b

    .line 1582
    :cond_3f
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 1583
    .line 1584
    if-nez v0, :cond_40

    .line 1585
    .line 1586
    const/4 v4, 0x3

    .line 1587
    const/4 v7, 0x0

    .line 1588
    goto :goto_29

    .line 1589
    :cond_40
    iget v7, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 1590
    .line 1591
    const/4 v4, 0x3

    .line 1592
    :goto_29
    if-eq v7, v4, :cond_42

    .line 1593
    .line 1594
    if-nez v0, :cond_41

    .line 1595
    .line 1596
    const/4 v0, 0x4

    .line 1597
    const/4 v7, 0x0

    .line 1598
    goto :goto_2a

    .line 1599
    :cond_41
    iget v7, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 1600
    .line 1601
    const/4 v0, 0x4

    .line 1602
    :goto_2a
    if-ne v7, v0, :cond_43

    .line 1603
    .line 1604
    :cond_42
    iget v13, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1605
    .line 1606
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1607
    .line 1608
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1609
    .line 1610
    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    .line 1611
    .line 1612
    const/4 v14, 0x1

    .line 1613
    move-object v9, v4

    .line 1614
    move-object v10, v3

    .line 1615
    move-object/from16 v11, v33

    .line 1616
    .line 1617
    move-object v12, v1

    .line 1618
    invoke-direct/range {v9 .. v14}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;[ILjava/lang/String;II)V

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1622
    .line 1623
    .line 1624
    :cond_43
    :goto_2b
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 1625
    .line 1626
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v0

    .line 1630
    const-string v4, "install_non_market_apps"

    .line 1631
    .line 1632
    const/4 v5, -0x1

    .line 1633
    const/4 v7, 0x0

    .line 1634
    invoke-static {v0, v4, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1635
    .line 1636
    .line 1637
    move-result v0

    .line 1638
    const/16 v4, 0xc26

    .line 1639
    .line 1640
    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1641
    .line 1642
    .line 1643
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 1644
    .line 1645
    if-eqz v0, :cond_44

    .line 1646
    .line 1647
    iget-object v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 1648
    .line 1649
    goto :goto_2c

    .line 1650
    :cond_44
    const/4 v12, 0x0

    .line 1651
    :goto_2c
    if-eqz v12, :cond_47

    .line 1652
    .line 1653
    if-nez v32, :cond_46

    .line 1654
    .line 1655
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1656
    .line 1657
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1658
    .line 1659
    const/16 v4, 0x17

    .line 1660
    .line 1661
    invoke-virtual {v0, v4, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v4

    .line 1665
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallDontKill()Z

    .line 1666
    .line 1667
    .line 1668
    move-result v6

    .line 1669
    if-eqz v6, :cond_45

    .line 1670
    .line 1671
    new-instance v6, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;

    .line 1672
    .line 1673
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1674
    .line 1675
    .line 1676
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v6

    .line 1680
    check-cast v6, Ljava/lang/Long;

    .line 1681
    .line 1682
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 1683
    .line 1684
    .line 1685
    move-result-wide v8

    .line 1686
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1687
    .line 1688
    const-string v10, "Delaying the deletion of <"

    .line 1689
    .line 1690
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    iget-object v10, v12, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 1694
    .line 1695
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v10

    .line 1699
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    .line 1701
    .line 1702
    const-string v10, "> by "

    .line 1703
    .line 1704
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    .line 1710
    const-string/jumbo v10, "ms or till the next reboot"

    .line 1711
    .line 1712
    .line 1713
    const-string v11, "PackageManager"

    .line 1714
    .line 1715
    invoke-static {v6, v10, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    goto :goto_2d

    .line 1719
    :cond_45
    const-wide/16 v8, 0xbb8

    .line 1720
    .line 1721
    :goto_2d
    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1722
    .line 1723
    .line 1724
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveInstallDontKill()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v0

    .line 1728
    if-eqz v0, :cond_48

    .line 1729
    .line 1730
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1731
    .line 1732
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1733
    .line 1734
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 1735
    .line 1736
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1737
    .line 1738
    .line 1739
    :try_start_7
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1740
    .line 1741
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1742
    .line 1743
    move-object/from16 v9, v35

    .line 1744
    .line 1745
    iget-object v6, v9, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1746
    .line 1747
    iget-object v8, v9, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 1748
    .line 1749
    invoke-static {v0, v1, v6, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 1753
    .line 1754
    .line 1755
    goto :goto_2f

    .line 1756
    :catchall_4
    move-exception v0

    .line 1757
    move-object v1, v0

    .line 1758
    :try_start_8
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1759
    .line 1760
    .line 1761
    goto :goto_2e

    .line 1762
    :catchall_5
    move-exception v0

    .line 1763
    move-object v2, v0

    .line 1764
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1765
    .line 1766
    .line 1767
    :goto_2e
    throw v1

    .line 1768
    :cond_46
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1769
    .line 1770
    iget-object v4, v12, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 1771
    .line 1772
    iget-object v6, v12, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 1773
    .line 1774
    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 1775
    .line 1776
    .line 1777
    goto :goto_2f

    .line 1778
    :cond_47
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 1783
    .line 1784
    .line 1785
    :cond_48
    :goto_2f
    if-nez v27, :cond_4b

    .line 1786
    .line 1787
    move-object/from16 v0, v33

    .line 1788
    .line 1789
    array-length v4, v0

    .line 1790
    move v6, v7

    .line 1791
    :goto_30
    if-ge v6, v4, :cond_4c

    .line 1792
    .line 1793
    aget v13, v0, v6

    .line 1794
    .line 1795
    const-wide/16 v8, 0x0

    .line 1796
    .line 1797
    move-object/from16 v14, v31

    .line 1798
    .line 1799
    invoke-interface {v14, v1, v8, v9, v13}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v8

    .line 1803
    if-eqz v8, :cond_49

    .line 1804
    .line 1805
    iget-object v9, v3, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1806
    .line 1807
    if-eq v13, v5, :cond_4a

    .line 1808
    .line 1809
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1810
    .line 1811
    .line 1812
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1813
    .line 1814
    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1815
    .line 1816
    iget-object v12, v10, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1817
    .line 1818
    iget-object v15, v10, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1819
    .line 1820
    filled-new-array {v11, v12, v15}, [Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v12

    .line 1824
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1825
    .line 1826
    iget-object v15, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1827
    .line 1828
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 1829
    .line 1830
    move-object v8, v9

    .line 1831
    move-object v9, v11

    .line 1832
    move-object v11, v10

    .line 1833
    move-object v10, v15

    .line 1834
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1835
    .line 1836
    .line 1837
    :cond_49
    const/4 v8, 0x1

    .line 1838
    goto :goto_31

    .line 1839
    :cond_4a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1840
    .line 1841
    .line 1842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1843
    .line 1844
    const-string/jumbo v1, "notifyPackageInstalled called with USER_ALL"

    .line 1845
    .line 1846
    .line 1847
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    throw v0

    .line 1851
    :goto_31
    add-int/2addr v6, v8

    .line 1852
    move-object/from16 v31, v14

    .line 1853
    .line 1854
    goto :goto_30

    .line 1855
    :cond_4b
    move-object/from16 v0, v33

    .line 1856
    .line 1857
    new-instance v4, Lcom/android/server/pm/PackageRemovedInfo;

    .line 1858
    .line 1859
    invoke-direct {v4}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 1860
    .line 1861
    .line 1862
    iput-object v1, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1863
    .line 1864
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v5

    .line 1868
    iput-object v5, v4, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1869
    .line 1870
    iput-object v0, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 1871
    .line 1872
    iput-object v0, v4, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 1873
    .line 1874
    iget v0, v2, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 1875
    .line 1876
    iput v0, v4, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 1877
    .line 1878
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1879
    .line 1880
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 1881
    .line 1882
    .line 1883
    move-result-wide v5

    .line 1884
    iput-wide v5, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 1885
    .line 1886
    const/4 v5, 0x1

    .line 1887
    iput-boolean v5, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 1888
    .line 1889
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1890
    .line 1891
    iget-object v5, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1892
    .line 1893
    const/16 v21, 0x0

    .line 1894
    .line 1895
    const/16 v22, 0x1

    .line 1896
    .line 1897
    const/16 v20, 0x0

    .line 1898
    .line 1899
    move-object/from16 v17, v0

    .line 1900
    .line 1901
    move-object/from16 v18, v4

    .line 1902
    .line 1903
    move-object/from16 v19, v5

    .line 1904
    .line 1905
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 1906
    .line 1907
    .line 1908
    :cond_4c
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 1909
    .line 1910
    if-eqz v0, :cond_51

    .line 1911
    .line 1912
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v0

    .line 1916
    if-eqz v0, :cond_4d

    .line 1917
    .line 1918
    const-string v4, "PrePackageInstaller"

    .line 1919
    .line 1920
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1921
    .line 1922
    .line 1923
    move-result v0

    .line 1924
    :goto_32
    const/4 v4, 0x1

    .line 1925
    xor-int/2addr v0, v4

    .line 1926
    goto :goto_33

    .line 1927
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v0

    .line 1931
    if-eqz v0, :cond_4e

    .line 1932
    .line 1933
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v0

    .line 1937
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 1938
    .line 1939
    if-eqz v0, :cond_4e

    .line 1940
    .line 1941
    const-string v0, "PrePackageInstaller"

    .line 1942
    .line 1943
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v4

    .line 1947
    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 1948
    .line 1949
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1950
    .line 1951
    .line 1952
    move-result v0

    .line 1953
    goto :goto_32

    .line 1954
    :cond_4e
    move v0, v7

    .line 1955
    :goto_33
    if-eqz v1, :cond_51

    .line 1956
    .line 1957
    iget-object v4, v3, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 1958
    .line 1959
    invoke-virtual {v4, v1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    .line 1960
    .line 1961
    .line 1962
    move-result v4

    .line 1963
    if-eqz v4, :cond_51

    .line 1964
    .line 1965
    if-eqz v0, :cond_51

    .line 1966
    .line 1967
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 1968
    .line 1969
    array-length v4, v0

    .line 1970
    move v5, v7

    .line 1971
    :goto_34
    if-ge v5, v4, :cond_51

    .line 1972
    .line 1973
    aget v6, v0, v5

    .line 1974
    .line 1975
    if-nez v6, :cond_4f

    .line 1976
    .line 1977
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 1978
    .line 1979
    const/4 v6, 0x1

    .line 1980
    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 1981
    .line 1982
    .line 1983
    goto :goto_36

    .line 1984
    :cond_4f
    const/4 v6, 0x1

    .line 1985
    add-int/2addr v5, v6

    .line 1986
    goto :goto_34

    .line 1987
    :goto_35
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1988
    throw v0

    .line 1989
    :cond_50
    move/from16 v32, v0

    .line 1990
    .line 1991
    move v7, v4

    .line 1992
    move-object v3, v6

    .line 1993
    move-object v1, v14

    .line 1994
    move/from16 v29, v15

    .line 1995
    .line 1996
    :cond_51
    :goto_36
    if-eqz v29, :cond_53

    .line 1997
    .line 1998
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    .line 1999
    .line 2000
    if-eqz v0, :cond_53

    .line 2001
    .line 2002
    :try_start_a
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2003
    .line 2004
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 2005
    .line 2006
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v0

    .line 2010
    invoke-virtual {v0}, Lcom/android/server/pm/AsecInstallHelper;->getMountedExternalVolume()Landroid/os/storage/VolumeInfo;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v4

    .line 2014
    if-eqz v4, :cond_52

    .line 2015
    .line 2016
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2017
    .line 2018
    if-eqz v5, :cond_52

    .line 2019
    .line 2020
    sget-object v5, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    .line 2021
    .line 2022
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v5

    .line 2026
    new-instance v6, Lcom/android/server/pm/AsecInstallHelper$1;

    .line 2027
    .line 2028
    invoke-direct {v6, v0, v5, v2}, Lcom/android/server/pm/AsecInstallHelper$1;-><init>(Lcom/android/server/pm/AsecInstallHelper;Landroid/content/pm/PackageManager;Lcom/android/server/pm/InstallRequest;)V

    .line 2029
    .line 2030
    .line 2031
    iget-object v0, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2032
    .line 2033
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2034
    .line 2035
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 2036
    .line 2037
    .line 2038
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v0

    .line 2042
    iget-object v4, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2043
    .line 2044
    invoke-interface {v0, v1, v4}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 2045
    .line 2046
    .line 2047
    goto/16 :goto_38

    .line 2048
    .line 2049
    :catch_2
    move-exception v0

    .line 2050
    goto :goto_37

    .line 2051
    :catch_3
    move-exception v0

    .line 2052
    :try_start_c
    const-string v4, "PackageManager"

    .line 2053
    .line 2054
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2055
    .line 2056
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2057
    .line 2058
    .line 2059
    const-string v6, "RemoteException - "

    .line 2060
    .line 2061
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    .line 2063
    .line 2064
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v0

    .line 2071
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    .line 2073
    .line 2074
    goto :goto_38

    .line 2075
    :cond_52
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2076
    .line 2077
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 2078
    .line 2079
    .line 2080
    goto :goto_38

    .line 2081
    :goto_37
    const-string v4, "PackageManager"

    .line 2082
    .line 2083
    const-string v5, "Automatic move failed"

    .line 2084
    .line 2085
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2086
    .line 2087
    .line 2088
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2089
    .line 2090
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 2091
    .line 2092
    .line 2093
    goto :goto_38

    .line 2094
    :cond_53
    if-eqz v29, :cond_55

    .line 2095
    .line 2096
    if-eqz v16, :cond_55

    .line 2097
    .line 2098
    if-eqz v32, :cond_54

    .line 2099
    .line 2100
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2101
    .line 2102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2103
    .line 2104
    .line 2105
    iget-object v4, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2106
    .line 2107
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v4

    .line 2111
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 2112
    .line 2113
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    .line 2115
    .line 2116
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2117
    .line 2118
    const/16 v5, 0x1d

    .line 2119
    .line 2120
    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v4

    .line 2124
    const-wide/16 v5, 0x3e8

    .line 2125
    .line 2126
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2127
    .line 2128
    .line 2129
    goto :goto_38

    .line 2130
    :cond_54
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2131
    .line 2132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2133
    .line 2134
    .line 2135
    iget-object v4, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2136
    .line 2137
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v4

    .line 2141
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 2142
    .line 2143
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    .line 2145
    .line 2146
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2147
    .line 2148
    const/16 v5, 0x18

    .line 2149
    .line 2150
    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v4

    .line 2154
    const-wide/16 v5, 0x1f4

    .line 2155
    .line 2156
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2157
    .line 2158
    .line 2159
    goto :goto_38

    .line 2160
    :cond_55
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2161
    .line 2162
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 2163
    .line 2164
    .line 2165
    :goto_38
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2166
    .line 2167
    const/4 v4, 0x1

    .line 2168
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 2169
    .line 2170
    .line 2171
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 2172
    .line 2173
    if-nez v0, :cond_56

    .line 2174
    .line 2175
    const/4 v12, 0x0

    .line 2176
    goto :goto_39

    .line 2177
    :cond_56
    iget-object v12, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 2178
    .line 2179
    :goto_39
    if-eqz v12, :cond_59

    .line 2180
    .line 2181
    if-nez v0, :cond_57

    .line 2182
    .line 2183
    const/4 v12, 0x0

    .line 2184
    goto :goto_3a

    .line 2185
    :cond_57
    iget-object v12, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 2186
    .line 2187
    :goto_3a
    if-nez v0, :cond_58

    .line 2188
    .line 2189
    move v4, v7

    .line 2190
    :goto_3b
    const-wide/32 v5, 0x40000

    .line 2191
    .line 2192
    .line 2193
    goto :goto_3c

    .line 2194
    :cond_58
    iget v4, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    .line 2195
    .line 2196
    goto :goto_3b

    .line 2197
    :goto_3c
    invoke-static {v5, v6, v12, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2198
    .line 2199
    .line 2200
    :cond_59
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2201
    .line 2202
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 2203
    .line 2204
    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 2205
    .line 2206
    move/from16 v4, v29

    .line 2207
    .line 2208
    invoke-virtual {v0, v1, v4, v2}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->onPackageInstalled(Ljava/lang/String;Z[I)V

    .line 2209
    .line 2210
    .line 2211
    :goto_3d
    const-string/jumbo v0, "postInstall"

    .line 2212
    .line 2213
    .line 2214
    move-object/from16 v1, p1

    .line 2215
    .line 2216
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2217
    .line 2218
    const-wide/32 v2, 0x40000

    .line 2219
    .line 2220
    .line 2221
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2222
    .line 2223
    .line 2224
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method
