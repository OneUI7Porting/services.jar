.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "systemReady"

    .line 11
    .line 12
    .line 13
    const-wide/32 v3, 0x200000

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v0, -0x2

    .line 28
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    const/4 v8, 0x0

    .line 36
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 37
    .line 38
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    move v0, v8

    .line 55
    :goto_0
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "NetworkPolicy"

    .line 58
    .line 59
    const-string v1, "bandwidth controls disabled, unable to enforce policy"

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto/16 :goto_d

    .line 74
    .line 75
    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 76
    .line 77
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->buildFirewall()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    .line 82
    :try_start_4
    const-string v6, "NetworkPolicy"

    .line 83
    .line 84
    const-string v7, "buildFirewall exception"

    .line 85
    .line 86
    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_2
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 94
    .line 95
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 96
    .line 97
    const/4 v7, 0x1

    .line 98
    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;I)V

    .line 99
    .line 100
    .line 101
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mOffPeakContentObserver:Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 102
    .line 103
    :cond_2
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 110
    .line 111
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 112
    .line 113
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 120
    .line 121
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 122
    .line 123
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 130
    .line 131
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 132
    .line 133
    invoke-static {}, Lcom/android/server/net/Flags;->useMeteredFirewallChains()Z

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUseMeteredFirewallChains:Z

    .line 138
    .line 139
    invoke-static {}, Lcom/android/server/net/Flags;->useDifferentDelaysForBackgroundChain()Z

    .line 140
    .line 141
    .line 142
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    const-string v7, "activity"

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Landroid/app/ActivityManager;

    .line 151
    .line 152
    if-nez v6, :cond_3

    .line 153
    .line 154
    const-string v6, "NetworkPolicy"

    .line 155
    .line 156
    const-string/jumbo v7, "registerProcessListener activityManager is null"

    .line 157
    .line 158
    .line 159
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$22;

    .line 164
    .line 165
    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$22;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 172
    .line 173
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    :try_start_5
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 175
    .line 176
    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 177
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveAllowlistUL()V

    .line 178
    .line 179
    .line 180
    const-class v9, Landroid/os/PowerManagerInternal;

    .line 181
    .line 182
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    check-cast v9, Landroid/os/PowerManagerInternal;

    .line 187
    .line 188
    iput-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 189
    .line 190
    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 191
    .line 192
    const/4 v11, 0x0

    .line 193
    invoke-direct {v10, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v10}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 200
    .line 201
    const/4 v10, 0x6

    .line 202
    invoke-virtual {v9, v10}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    iget-boolean v9, v9, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 207
    .line 208
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 209
    .line 210
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    .line 211
    .line 212
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    new-instance v12, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;

    .line 215
    .line 216
    invoke-direct {v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 217
    .line 218
    .line 219
    invoke-direct {v9, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;)V

    .line 220
    .line 221
    .line 222
    iget-object v9, v9, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    const-string/jumbo v11, "restricted_networking_mode"

    .line 229
    .line 230
    .line 231
    invoke-static {v9, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_4

    .line 236
    .line 237
    move v9, v0

    .line 238
    goto :goto_4

    .line 239
    :cond_4
    move v9, v8

    .line 240
    :goto_4
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 241
    .line 242
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 243
    .line 244
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    const-string v11, "android.software.device_admin"

    .line 251
    .line 252
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-eqz v9, :cond_5

    .line 257
    .line 258
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 259
    .line 260
    const-string v11, "Wait for admin data"

    .line 261
    .line 262
    const-wide/16 v12, 0x2710

    .line 263
    .line 264
    invoke-static {v9, v12, v13, v11}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 268
    .line 269
    .line 270
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 271
    .line 272
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 273
    .line 274
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 275
    .line 276
    const/16 v11, 0xa

    .line 277
    .line 278
    invoke-virtual {v9, v11}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    iget-boolean v9, v9, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 283
    .line 284
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 285
    .line 286
    if-eqz v9, :cond_6

    .line 287
    .line 288
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 289
    .line 290
    if-nez v9, :cond_6

    .line 291
    .line 292
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :catchall_2
    move-exception v0

    .line 296
    goto/16 :goto_b

    .line 297
    .line 298
    :cond_6
    :goto_5
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 299
    .line 300
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 301
    .line 302
    const/4 v12, 0x1

    .line 303
    invoke-direct {v11, v1, v12}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v11}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 307
    .line 308
    .line 309
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 310
    .line 311
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    move v12, v8

    .line 320
    move v13, v12

    .line 321
    :goto_6
    if-ge v12, v11, :cond_9

    .line 322
    .line 323
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    check-cast v14, Landroid/content/pm/UserInfo;

    .line 328
    .line 329
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 330
    .line 331
    invoke-virtual {v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    if-nez v14, :cond_8

    .line 336
    .line 337
    if-eqz v13, :cond_7

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_7
    move v13, v8

    .line 341
    goto :goto_8

    .line 342
    :cond_8
    :goto_7
    move v13, v0

    .line 343
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_9
    if-eqz v13, :cond_a

    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 349
    .line 350
    .line 351
    :cond_a
    invoke-static {}, Lcom/android/server/net/Flags;->networkBlockedForTopSleepingAndAbove()Z

    .line 352
    .line 353
    .line 354
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 355
    .line 356
    invoke-virtual {v1, v10, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 357
    .line 358
    .line 359
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 360
    .line 361
    const-string v10, "init_service"

    .line 362
    .line 363
    invoke-virtual {v1, v10, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Ljava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 370
    .line 371
    .line 372
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 373
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 374
    :try_start_8
    sget-object v6, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 375
    .line 376
    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 377
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->readFirewallPolicyAL()V

    .line 378
    .line 379
    .line 380
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 381
    :try_start_a
    iget-boolean v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 382
    .line 383
    if-eqz v6, :cond_b

    .line 384
    .line 385
    const/4 v6, -0x1

    .line 386
    goto :goto_9

    .line 387
    :cond_b
    const/4 v6, 0x5

    .line 388
    :goto_9
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 389
    .line 390
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Lcom/android/server/net/NetworkPolicyManagerService$4;

    .line 391
    .line 392
    const-string v10, "android"

    .line 393
    .line 394
    const/16 v11, 0x23

    .line 395
    .line 396
    invoke-virtual {v7, v9, v11, v6, v10}, Landroid/app/ActivityManagerInternal;->registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 400
    .line 401
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Lcom/android/server/net/NetworkPolicyManagerService$12;

    .line 402
    .line 403
    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 404
    .line 405
    .line 406
    :catch_2
    :try_start_b
    new-instance v6, Landroid/content/IntentFilter;

    .line 407
    .line 408
    const-string v7, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 409
    .line 410
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 414
    .line 415
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveAllowlistReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 416
    .line 417
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 421
    .line 422
    .line 423
    new-instance v6, Landroid/content/IntentFilter;

    .line 424
    .line 425
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 426
    .line 427
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 431
    .line 432
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 433
    .line 434
    const-string v10, "android.permission.NETWORK_STACK"

    .line 435
    .line 436
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 437
    .line 438
    invoke-virtual {v7, v9, v6, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 439
    .line 440
    .line 441
    new-instance v6, Landroid/content/IntentFilter;

    .line 442
    .line 443
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .line 445
    .line 446
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    .line 447
    .line 448
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string/jumbo v7, "package"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 458
    .line 459
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 460
    .line 461
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 462
    .line 463
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 464
    .line 465
    .line 466
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 467
    .line 468
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 469
    .line 470
    new-instance v9, Landroid/content/IntentFilter;

    .line 471
    .line 472
    const-string v10, "android.intent.action.UID_REMOVED"

    .line 473
    .line 474
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 478
    .line 479
    invoke-virtual {v6, v7, v9, v11, v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 480
    .line 481
    .line 482
    new-instance v6, Landroid/content/IntentFilter;

    .line 483
    .line 484
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 485
    .line 486
    .line 487
    const-string v7, "android.intent.action.USER_ADDED"

    .line 488
    .line 489
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string v7, "android.intent.action.USER_REMOVED"

    .line 493
    .line 494
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 498
    .line 499
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 500
    .line 501
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 502
    .line 503
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 504
    .line 505
    .line 506
    new-instance v6, Landroid/os/HandlerExecutor;

    .line 507
    .line 508
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 509
    .line 510
    invoke-direct {v6, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 511
    .line 512
    .line 513
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 514
    .line 515
    new-instance v7, Landroid/net/NetworkTemplate$Builder;

    .line 516
    .line 517
    invoke-direct {v7, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v7}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 521
    .line 522
    .line 523
    move-result-object v13

    .line 524
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 525
    .line 526
    const-wide/16 v14, 0x0

    .line 527
    .line 528
    move-object/from16 v16, v6

    .line 529
    .line 530
    move-object/from16 v17, v7

    .line 531
    .line 532
    invoke-virtual/range {v12 .. v17}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 533
    .line 534
    .line 535
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 536
    .line 537
    new-instance v7, Landroid/net/NetworkTemplate$Builder;

    .line 538
    .line 539
    const/4 v9, 0x4

    .line 540
    invoke-direct {v7, v9}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v7}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 544
    .line 545
    .line 546
    move-result-object v13

    .line 547
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 548
    .line 549
    const-wide/16 v14, 0x0

    .line 550
    .line 551
    move-object/from16 v16, v6

    .line 552
    .line 553
    move-object/from16 v17, v7

    .line 554
    .line 555
    invoke-virtual/range {v12 .. v17}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 556
    .line 557
    .line 558
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 559
    .line 560
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 561
    .line 562
    new-instance v10, Landroid/content/IntentFilter;

    .line 563
    .line 564
    const-string v12, "com.android.server.net.action.SNOOZE_WARNING"

    .line 565
    .line 566
    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    .line 570
    .line 571
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 572
    .line 573
    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 574
    .line 575
    .line 576
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 577
    .line 578
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 579
    .line 580
    new-instance v10, Landroid/content/IntentFilter;

    .line 581
    .line 582
    const-string v12, "com.android.server.net.action.SNOOZE_RAPID"

    .line 583
    .line 584
    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    .line 588
    .line 589
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 590
    .line 591
    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 592
    .line 593
    .line 594
    new-instance v7, Landroid/content/IntentFilter;

    .line 595
    .line 596
    const-string v9, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 597
    .line 598
    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 604
    .line 605
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 606
    .line 607
    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 608
    .line 609
    .line 610
    new-instance v7, Landroid/content/IntentFilter;

    .line 611
    .line 612
    const-string v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 613
    .line 614
    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 618
    .line 619
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 620
    .line 621
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 622
    .line 623
    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 624
    .line 625
    .line 626
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 627
    .line 628
    new-instance v9, Landroid/net/NetworkRequest$Builder;

    .line 629
    .line 630
    invoke-direct {v9}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v9}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 634
    .line 635
    .line 636
    move-result-object v9

    .line 637
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Lcom/android/server/net/NetworkPolicyManagerService$11;

    .line 638
    .line 639
    invoke-virtual {v7, v9, v10}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 640
    .line 641
    .line 642
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 643
    .line 644
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    .line 645
    .line 646
    invoke-direct {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 647
    .line 648
    .line 649
    invoke-interface {v7, v9}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 650
    .line 651
    .line 652
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 653
    .line 654
    monitor-enter v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 655
    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 656
    .line 657
    .line 658
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 659
    :try_start_d
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 660
    .line 661
    const-class v9, Landroid/telephony/SubscriptionManager;

    .line 662
    .line 663
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    check-cast v7, Landroid/telephony/SubscriptionManager;

    .line 668
    .line 669
    new-instance v9, Landroid/os/HandlerExecutor;

    .line 670
    .line 671
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 672
    .line 673
    invoke-direct {v9, v10}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 674
    .line 675
    .line 676
    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$3;

    .line 677
    .line 678
    invoke-direct {v10, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v7, v9, v10}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 682
    .line 683
    .line 684
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 685
    .line 686
    const-class v9, Landroid/telephony/TelephonyManager;

    .line 687
    .line 688
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 693
    .line 694
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveDataSubIdListener:Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

    .line 695
    .line 696
    invoke-virtual {v7, v6, v9}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 700
    .line 701
    .line 702
    new-instance v2, Landroid/content/IntentFilter;

    .line 703
    .line 704
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 705
    .line 706
    .line 707
    const-string v6, "android.os.action.CHARGING"

    .line 708
    .line 709
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    const-string v6, "android.os.action.DISCHARGING"

    .line 713
    .line 714
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 718
    .line 719
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 720
    .line 721
    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    .line 723
    .line 724
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 725
    .line 726
    const-string/jumbo v6, "phone"

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 734
    .line 735
    iput-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 736
    .line 737
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    .line 738
    .line 739
    invoke-direct {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 740
    .line 741
    .line 742
    iput-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    .line 743
    .line 744
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 745
    .line 746
    if-eqz v2, :cond_c

    .line 747
    .line 748
    new-instance v6, Landroid/os/HandlerExecutor;

    .line 749
    .line 750
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 751
    .line 752
    invoke-direct {v6, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 753
    .line 754
    .line 755
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    .line 756
    .line 757
    invoke-virtual {v2, v6, v7}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 758
    .line 759
    .line 760
    :cond_c
    const-wide/16 v6, 0x0

    .line 761
    .line 762
    iput-wide v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    .line 763
    .line 764
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    if-eqz v2, :cond_0

    .line 769
    .line 770
    const-string v2, "NetworkPolicy"

    .line 771
    .line 772
    const-string v6, "initTetheringWarningObserver"

    .line 773
    .line 774
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 778
    .line 779
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 780
    .line 781
    const/4 v7, 0x0

    .line 782
    invoke-direct {v2, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;I)V

    .line 783
    .line 784
    .line 785
    iput-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 786
    .line 787
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 788
    .line 789
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    const-string/jumbo v6, "tethering_data_warning_sim_slot_0"

    .line 794
    .line 795
    .line 796
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 797
    .line 798
    .line 799
    move-result-object v6

    .line 800
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 801
    .line 802
    invoke-virtual {v2, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 803
    .line 804
    .line 805
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 806
    .line 807
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    const-string/jumbo v6, "tethering_data_warning_sim_slot_1"

    .line 812
    .line 813
    .line 814
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$19;

    .line 819
    .line 820
    invoke-virtual {v2, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 821
    .line 822
    .line 823
    new-instance v11, Landroid/content/IntentFilter;

    .line 824
    .line 825
    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 826
    .line 827
    invoke-direct {v11, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 831
    .line 832
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDdsChangedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 833
    .line 834
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 835
    .line 836
    const/4 v14, 0x2

    .line 837
    const/4 v12, 0x0

    .line 838
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 839
    .line 840
    .line 841
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 842
    .line 843
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    const-string/jumbo v7, "tethering_data_warning_sim_slot_0"

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    .line 851
    .line 852
    .line 853
    move-result-wide v7

    .line 854
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 855
    .line 856
    .line 857
    move-result-object v7

    .line 858
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 862
    .line 863
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    const-string/jumbo v6, "tethering_data_warning_sim_slot_1"

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    .line 871
    .line 872
    .line 873
    move-result-wide v6

    .line 874
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    invoke-virtual {v2, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 882
    .line 883
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 884
    .line 885
    new-instance v9, Landroid/content/IntentFilter;

    .line 886
    .line 887
    const-string v0, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    .line 888
    .line 889
    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    const-string v10, "android.permission.MANAGE_NETWORK_POLICY"

    .line 893
    .line 894
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 895
    .line 896
    const/4 v12, 0x2

    .line 897
    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 898
    .line 899
    .line 900
    const-wide/16 v6, -0x1

    .line 901
    .line 902
    iput-wide v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 903
    .line 904
    goto/16 :goto_1

    .line 905
    .line 906
    :goto_a
    return-void

    .line 907
    :catchall_3
    move-exception v0

    .line 908
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 909
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 910
    :catchall_4
    move-exception v0

    .line 911
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 912
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 913
    :catchall_5
    move-exception v0

    .line 914
    goto :goto_c

    .line 915
    :goto_b
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 916
    :try_start_13
    throw v0

    .line 917
    :goto_c
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 918
    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 919
    :goto_d
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 920
    .line 921
    .line 922
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 923
    .line 924
    .line 925
    throw v0
.end method
