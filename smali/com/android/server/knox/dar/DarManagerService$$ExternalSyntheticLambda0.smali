.class public final synthetic Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/DarManagerService;

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/DarManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/io/PrintWriter;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "DUALDAR Supported Version: "

    .line 21
    .line 22
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x1

    .line 56
    const/4 v8, -0x1

    .line 57
    const-string v9, "Credential Type: "

    .line 58
    .line 59
    const-string v10, ""

    .line 60
    .line 61
    if-eq v6, v8, :cond_8

    .line 62
    .line 63
    new-instance v11, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v12, "DUALDAR user: "

    .line 66
    .line 67
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v3, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v11, "DUALDAR TYPE: "

    .line 81
    .line 82
    invoke-virtual {v3, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v6}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-eq v11, v8, :cond_3

    .line 90
    .line 91
    if-eqz v11, :cond_2

    .line 92
    .line 93
    if-eq v11, v7, :cond_1

    .line 94
    .line 95
    const/4 v8, 0x2

    .line 96
    if-eq v11, v8, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const-string v8, "DUALDAR_TYPE_DO_ONLY"

    .line 100
    .line 101
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const-string v8, "DUALDAR_TYPE_DO_PO"

    .line 106
    .line 107
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const-string v8, "DUALDAR_TYPE_PO_ONLY"

    .line 112
    .line 113
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const-string v8, "DUALDAR_TYPE_NONE"

    .line 118
    .line 119
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    const-string v8, "DUALDAR CRYPTO TYPE: "

    .line 123
    .line 124
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    const-string v8, "Native"

    .line 134
    .line 135
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const-string v11, "KEY_CLIENT_PACKAGE_NAME"

    .line 144
    .line 145
    invoke-virtual {v8, v6, v11}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->get(ILjava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    new-instance v11, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v12, "Custom - "

    .line 152
    .line 153
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v3, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    const-string/jumbo v8, "device_policy"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 174
    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    if-nez v6, :cond_5

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    goto :goto_2

    .line 184
    :cond_5
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    move-object v1, v10

    .line 190
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v11, "Admin Package: "

    .line 193
    .line 194
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 208
    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v8, "isDERestrictionEnforced: "

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Ljava/util/Optional;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    new-instance v11, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;

    .line 223
    .line 224
    invoke-direct {v11, v6, v0}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;-><init>(II)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v8, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    if-eqz v6, :cond_7

    .line 254
    .line 255
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 259
    .line 260
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 280
    .line 281
    .line 282
    :cond_7
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 283
    .line 284
    .line 285
    :cond_8
    if-eqz v4, :cond_a

    .line 286
    .line 287
    invoke-virtual {v3, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v1, "Device Owner enabled"

    .line 291
    .line 292
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    if-eqz v5, :cond_9

    .line 296
    .line 297
    const-string v1, "Enabled"

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_9
    const-string v1, "Not enabled"

    .line 301
    .line 302
    :goto_3
    const-string v4, "DualDAR at DO: "

    .line 303
    .line 304
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_a
    if-eqz v5, :cond_d

    .line 312
    .line 313
    invoke-virtual {v3, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Ljava/util/Optional;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-instance v4, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;

    .line 321
    .line 322
    invoke-direct {v4}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    new-instance v4, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda2;

    .line 330
    .line 331
    invoke-direct {v4}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Landroid/os/Bundle;

    .line 339
    .line 340
    if-eqz v1, :cond_b

    .line 341
    .line 342
    const-string/jumbo v4, "dualdar-config-datalock-timeout"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 346
    .line 347
    .line 348
    move-result-wide v4

    .line 349
    sget v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->$r8$clinit:I

    .line 350
    .line 351
    const-wide/32 v10, 0x493e0

    .line 352
    .line 353
    .line 354
    cmp-long v1, v4, v10

    .line 355
    .line 356
    if-ltz v1, :cond_b

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_b
    move v7, v0

    .line 360
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v4, "Data Lock Timeout : "

    .line 363
    .line 364
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_c

    .line 385
    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v5, "State - "

    .line 389
    .line 390
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :cond_c
    const-string v1, "Outer Auth User 0"

    .line 408
    .line 409
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 413
    .line 414
    .line 415
    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 416
    .line 417
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v1}, Lcom/android/server/knox/dar/DarUtil;->credentialTypeToString(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 448
    .line 449
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 450
    .line 451
    .line 452
    move-result p0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string v4, "Inner Auth User "

    .line 456
    .line 457
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    .line 472
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->credentialTypeToString(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p0

    .line 489
    invoke-virtual {v3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    new-instance p0, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string v0, "Has Token Set: "

    .line 495
    .line 496
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    iget-boolean v0, v2, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 500
    .line 501
    const-string v1, "Password Minimum Length: "

    .line 502
    .line 503
    invoke-static {p0, v0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    invoke-virtual {v2}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getPasswordMinimumLengthForInner()I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    invoke-virtual {v3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 525
    .line 526
    .line 527
    :cond_d
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 528
    .line 529
    .line 530
    return-void
.end method
