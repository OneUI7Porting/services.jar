.class public final Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG_DUMP:Z

.field public static final FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

.field public static final SYSTEM_CREDENTIAL_UIDS:[I

.field public static mIsDbMigrated:Z

.field public static mIsSpblobMigrated:Z


# instance fields
.field public final RemoteLockType:[Ljava/lang/String;

.field public final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecret:[B

.field public mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

.field public final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final mBroadcastReceiver:Lcom/android/server/locksettings/LockSettingsService$3;

.field public final mCallbacks:Ljava/util/HashMap;

.field public final mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

.field public final mContext:Landroid/content/Context;

.field public final mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public final mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public mEarlyCreatedUsers:Landroid/util/SparseIntArray;

.field public mEarlyRemovedUsers:Landroid/util/SparseIntArray;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mGatekeeperPasswords:Landroid/util/LongSparseArray;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field protected final mHeadlessAuthSecretLock:Ljava/lang/Object;

.field public mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field public final mKeyStore:Ljava/security/KeyStore;

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mLockTypeForPasswordCheck:I

.field public mMaintenanceModeCallback:Ljava/util/function/Consumer;

.field public final mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPassword:[B

.field public final mPendingVerifiedResults:Landroid/util/SparseArray;

.field public final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field public mRemoteCallback:Landroid/os/IRemoteCallback;

.field public final mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

.field public final mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mSeparateChallengeLock:Ljava/lang/Object;

.field public mShellCommandCallback:Landroid/os/IRemoteCallback;

.field public mShouldUnbind:Z

.field public final mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

.field public final mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

.field public final mSpDumpReceiver:Lcom/android/server/locksettings/LockSettingsService$3;

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mStorageManager:Landroid/os/storage/IStorageManager;

.field public final mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

.field public final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field public final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field public mThirdPartyAppsStarted:Z

.field public final mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

.field public final mUserCreationAndRemovalLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerCache:Ljava/util/HashMap;

.field public final mUserPasswordMetrics:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "dar"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 22
    .line 23
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static -$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p5

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "Unknown or unactivated token: "

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "Set lock credential with token for user "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v8, "credential"

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string/jumbo v10, "type"

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    const-string/jumbo v12, "tokenHandle"

    .line 46
    .line 47
    .line 48
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    const-string/jumbo v14, "token"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v16, "userId"

    .line 56
    .line 57
    .line 58
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v17

    .line 62
    move-object/from16 v15, p4

    .line 63
    .line 64
    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v8, 0x1

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 81
    .line 82
    invoke-virtual {v10, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isInnerAuthUserForDualDarDo(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    :try_start_0
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 93
    .line 94
    move-object/from16 v1, p1

    .line 95
    .line 96
    move-wide/from16 v2, p2

    .line 97
    .line 98
    move-object/from16 v4, p4

    .line 99
    .line 100
    move/from16 v5, p5

    .line 101
    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 103
    .line 104
    .line 105
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "LockSettingsService.DarVirtualLock"

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v3, "Exception : "

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-array v2, v6, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    move v0, v6

    .line 134
    :goto_0
    if-nez v0, :cond_0

    .line 135
    .line 136
    const-string v0, "LockSettingsService.DarVirtualLock"

    .line 137
    .line 138
    const-string v1, "Dual DAR Client failed to reset password with token for user: "

    .line 139
    .line 140
    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-array v2, v6, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    move v8, v6

    .line 150
    goto :goto_2

    .line 151
    :cond_0
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 154
    .line 155
    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 156
    .line 157
    monitor-enter v11

    .line 158
    :try_start_1
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    move-object v0, v1

    .line 169
    move/from16 v1, p5

    .line 170
    .line 171
    move-wide/from16 v2, p2

    .line 172
    .line 173
    move-object/from16 v5, p4

    .line 174
    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 180
    .line 181
    if-nez v1, :cond_1

    .line 182
    .line 183
    const-string v0, "Invalid escrow token supplied"

    .line 184
    .line 185
    invoke-static {v9, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    monitor-exit v11

    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    goto :goto_3

    .line 192
    :cond_1
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 195
    .line 196
    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 197
    .line 198
    .line 199
    move-result-wide v12

    .line 200
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 203
    .line 204
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    const-wide/16 v3, 0x0

    .line 208
    .line 209
    move-object v0, v1

    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    move/from16 v6, p5

    .line 213
    .line 214
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 215
    .line 216
    .line 217
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 222
    .line 223
    invoke-virtual {v0, v7, v12, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    .line 224
    .line 225
    .line 226
    monitor-exit v11

    .line 227
    :goto_2
    move v6, v8

    .line 228
    goto/16 :goto_5

    .line 229
    .line 230
    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    throw v0

    .line 232
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 236
    .line 237
    monitor-enter v2

    .line 238
    :try_start_2
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 239
    .line 240
    invoke-virtual {v3, v7}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->restoreEscrowDataIfNeededLocked(I)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 244
    .line 245
    invoke-virtual {v3, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_6

    .line 250
    .line 251
    move-wide/from16 v3, p2

    .line 252
    .line 253
    invoke-virtual {v0, v3, v4, v7}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-nez v5, :cond_3

    .line 258
    .line 259
    const-string v0, "LockSettingsService"

    .line 260
    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    monitor-exit v2

    .line 281
    goto :goto_5

    .line 282
    :catchall_1
    move-exception v0

    .line 283
    goto :goto_6

    .line 284
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    if-eqz v6, :cond_5

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 292
    .line 293
    monitor-enter v1

    .line 294
    :try_start_3
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 295
    .line 296
    .line 297
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_4

    .line 303
    .line 304
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 305
    .line 306
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    .line 307
    .line 308
    const/4 v3, 0x1

    .line 309
    invoke-direct {v2, v7, v3, v0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    .line 314
    .line 315
    :cond_4
    move-object/from16 v1, p1

    .line 316
    .line 317
    invoke-virtual {v0, v1, v7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :catchall_2
    move-exception v0

    .line 325
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 326
    throw v0

    .line 327
    :cond_5
    :goto_4
    const-string v0, "Result of setting credential with token for user %d : %s"

    .line 328
    .line 329
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v9, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :goto_5
    return v6

    .line 349
    :cond_6
    :try_start_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 350
    .line 351
    const-string v1, "Escrow token is disabled on the current user"

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 358
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/security/Flags;->fixUnlockedDeviceRequiredKeysV2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 6
    .line 7
    const-string/jumbo v0, "ro.build.type"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "userdebug"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string/jumbo v1, "eng"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    .line 42
    .line 43
    const/16 v0, 0x3f8

    .line 44
    .line 45
    const/16 v1, 0x3e8

    .line 46
    .line 47
    filled-new-array {v0, v2, v1}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 52
    .line 53
    sput-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    .line 54
    .line 55
    sput-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v2, Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 35
    .line 36
    new-instance v2, Landroid/util/SparseIntArray;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 42
    .line 43
    new-instance v2, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/Object;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 56
    .line 57
    new-instance v2, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 63
    .line 64
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    .line 73
    .line 74
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$1;

    .line 75
    .line 76
    invoke-direct {v3, v0}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

    .line 80
    .line 81
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$3;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v5, v0, v3}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$4;

    .line 88
    .line 89
    invoke-direct {v4, v0}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 90
    .line 91
    .line 92
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

    .line 93
    .line 94
    new-instance v4, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 100
    .line 101
    const-string v4, "FMM"

    .line 102
    .line 103
    const-string v6, "CarrierLock"

    .line 104
    .line 105
    const-string v7, "RmmLock"

    .line 106
    .line 107
    const-string v8, "KnoxGuard"

    .line 108
    .line 109
    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->RemoteLockType:[Ljava/lang/String;

    .line 114
    .line 115
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$9;

    .line 116
    .line 117
    invoke-direct {v4, v0, v3}, Lcom/android/server/locksettings/LockSettingsService$9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 118
    .line 119
    .line 120
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 121
    .line 122
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$9;

    .line 123
    .line 124
    const/4 v10, 0x1

    .line 125
    invoke-direct {v3, v0, v10}, Lcom/android/server/locksettings/LockSettingsService$9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 126
    .line 127
    .line 128
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 129
    .line 130
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$3;

    .line 131
    .line 132
    invoke-direct {v3, v0, v10}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 133
    .line 134
    .line 135
    new-instance v4, Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 141
    .line 142
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 143
    .line 144
    iget-object v11, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    iput-object v11, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    :try_start_0
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 149
    .line 150
    const-string v4, "AndroidKeyStore"

    .line 151
    .line 152
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    new-instance v4, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 157
    .line 158
    const/16 v6, 0x67

    .line 159
    .line 160
    invoke-direct {v4, v6}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    .line 165
    .line 166
    iput-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 167
    .line 168
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 173
    .line 174
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    const-class v6, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 177
    .line 178
    monitor-enter v6

    .line 179
    :try_start_1
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 180
    .line 181
    if-nez v7, :cond_1

    .line 182
    .line 183
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 184
    .line 185
    const-string/jumbo v8, "recoverablekeystore.db"

    .line 186
    .line 187
    .line 188
    const/4 v9, 0x7

    .line 189
    invoke-direct {v7, v4, v8, v2, v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v10}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 193
    .line 194
    .line 195
    const-wide/16 v8, 0x1e

    .line 196
    .line 197
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    .line 198
    .line 199
    .line 200
    new-instance v15, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 201
    .line 202
    invoke-direct {v15, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    .line 203
    .line 204
    .line 205
    const-string/jumbo v7, "settings_enable_lockscreen_transfer_api"

    .line 206
    .line 207
    .line 208
    invoke-static {v4, v7}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_0

    .line 213
    .line 214
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 215
    .line 216
    invoke-direct {v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .line 218
    .line 219
    move-object/from16 v24, v7

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto/16 :goto_5

    .line 224
    .line 225
    :cond_0
    move-object/from16 v24, v2

    .line 226
    .line 227
    :goto_0
    :try_start_2
    invoke-static {v4, v15}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 228
    .line 229
    .line 230
    move-result-object v20

    .line 231
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 232
    .line 233
    .line 234
    move-result-object v7
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :try_start_3
    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 236
    .line 237
    new-instance v9, Ljava/io/File;

    .line 238
    .line 239
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    const-string/jumbo v14, "system"

    .line 244
    .line 245
    .line 246
    invoke-direct {v9, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-direct {v8, v9}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;-><init>(Ljava/io/File;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    new-instance v14, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 257
    .line 258
    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-direct {v14, v8, v15, v9, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V

    .line 263
    .line 264
    .line 265
    new-instance v9, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 266
    .line 267
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    new-instance v16, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 272
    .line 273
    invoke-direct/range {v16 .. v16}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-static {v10}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 277
    .line 278
    .line 279
    move-result-object v17

    .line 280
    new-instance v13, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 281
    .line 282
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 283
    .line 284
    .line 285
    new-instance v2, Landroid/util/SparseArray;

    .line 286
    .line 287
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 288
    .line 289
    .line 290
    iput-object v2, v13, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    .line 291
    .line 292
    new-instance v2, Landroid/util/ArraySet;

    .line 293
    .line 294
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 295
    .line 296
    .line 297
    iput-object v2, v13, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    .line 298
    .line 299
    new-instance v22, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 300
    .line 301
    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    .line 302
    .line 303
    .line 304
    move-object v2, v13

    .line 305
    move-object v13, v9

    .line 306
    move-object/from16 v23, v14

    .line 307
    .line 308
    move-object v14, v4

    .line 309
    move-object/from16 v18, v8

    .line 310
    .line 311
    move-object/from16 v19, v2

    .line 312
    .line 313
    move-object/from16 v21, v7

    .line 314
    .line 315
    invoke-direct/range {v13 .. v24}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;)V

    .line 316
    .line 317
    .line 318
    sput-object v9, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :catch_0
    move-exception v0

    .line 322
    goto :goto_1

    .line 323
    :catch_1
    move-exception v0

    .line 324
    goto :goto_2

    .line 325
    :goto_1
    new-instance v1, Landroid/os/ServiceSpecificException;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const/16 v2, 0x16

    .line 332
    .line 333
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v1

    .line 337
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 338
    .line 339
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw v1

    .line 343
    :cond_1
    :goto_3
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    .line 345
    monitor-exit v6

    .line 346
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 347
    .line 348
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 349
    .line 350
    const/16 v13, 0xa

    .line 351
    .line 352
    if-nez v2, :cond_2

    .line 353
    .line 354
    new-instance v2, Lcom/android/server/ServiceThread;

    .line 355
    .line 356
    const-string v4, "LockSettingsService"

    .line 357
    .line 358
    invoke-direct {v2, v13, v4, v10}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 359
    .line 360
    .line 361
    iput-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 364
    .line 365
    .line 366
    :cond_2
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 367
    .line 368
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 369
    .line 370
    if-nez v4, :cond_3

    .line 371
    .line 372
    new-instance v4, Landroid/os/Handler;

    .line 373
    .line 374
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    .line 380
    .line 381
    iput-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 382
    .line 383
    :cond_3
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 384
    .line 385
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 386
    .line 387
    new-instance v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 388
    .line 389
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 390
    .line 391
    new-instance v6, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 392
    .line 393
    invoke-direct {v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-direct {v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V

    .line 397
    .line 398
    .line 399
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 400
    .line 401
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 406
    .line 407
    new-instance v7, Landroid/content/IntentFilter;

    .line 408
    .line 409
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v4, "android.intent.action.USER_ADDED"

    .line 413
    .line 414
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const-string v4, "android.intent.action.USER_STARTING"

    .line 418
    .line 419
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    .line 423
    .line 424
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    const-string v4, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 428
    .line 429
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 433
    .line 434
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 435
    .line 436
    const/4 v8, 0x0

    .line 437
    const/4 v9, 0x0

    .line 438
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 439
    .line 440
    .line 441
    new-instance v4, Lcom/android/server/locksettings/LockSettingsStorage;

    .line 442
    .line 443
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    invoke-direct {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 446
    .line 447
    .line 448
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 449
    .line 450
    invoke-direct {v5, v4}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    iput-object v5, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 454
    .line 455
    iget-object v6, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 456
    .line 457
    iput-object v5, v6, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 458
    .line 459
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 460
    .line 461
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    const-string/jumbo v6, "notification"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    check-cast v5, Landroid/app/NotificationManager;

    .line 471
    .line 472
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 473
    .line 474
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 475
    .line 476
    const-string/jumbo v6, "user"

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    check-cast v5, Landroid/os/UserManager;

    .line 484
    .line 485
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 486
    .line 487
    const-string/jumbo v5, "mount"

    .line 488
    .line 489
    .line 490
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    if-eqz v5, :cond_4

    .line 495
    .line 496
    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    goto :goto_4

    .line 501
    :cond_4
    const/4 v5, 0x0

    .line 502
    :goto_4
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 503
    .line 504
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    .line 505
    .line 506
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    .line 511
    .line 512
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

    .line 513
    .line 514
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 515
    .line 516
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 517
    .line 518
    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 519
    .line 520
    .line 521
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 522
    .line 523
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 528
    .line 529
    const/4 v6, 0x2

    .line 530
    invoke-virtual {v2, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 535
    .line 536
    .line 537
    new-instance v2, Landroid/util/LongSparseArray;

    .line 538
    .line 539
    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 540
    .line 541
    .line 542
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 543
    .line 544
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 545
    .line 546
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 547
    .line 548
    const-string/jumbo v6, "user"

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    check-cast v6, Landroid/os/UserManager;

    .line 556
    .line 557
    new-instance v7, Lcom/android/server/locksettings/PasswordSlotManager;

    .line 558
    .line 559
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-direct {v2, v5, v4, v6, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V

    .line 563
    .line 564
    .line 565
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 566
    .line 567
    new-instance v5, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 568
    .line 569
    invoke-direct {v5, v12}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;-><init>(Ljava/security/KeyStore;)V

    .line 570
    .line 571
    .line 572
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 573
    .line 574
    new-instance v5, Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 575
    .line 576
    invoke-direct {v5, v2}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    .line 577
    .line 578
    .line 579
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 580
    .line 581
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 582
    .line 583
    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    new-instance v5, Lcom/android/server/locksettings/RebootEscrowManager;

    .line 587
    .line 588
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 589
    .line 590
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 591
    .line 592
    if-nez v7, :cond_5

    .line 593
    .line 594
    new-instance v7, Lcom/android/server/ServiceThread;

    .line 595
    .line 596
    const-string v8, "LockSettingsService"

    .line 597
    .line 598
    invoke-direct {v7, v13, v8, v10}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 599
    .line 600
    .line 601
    iput-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 602
    .line 603
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 604
    .line 605
    .line 606
    :cond_5
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 607
    .line 608
    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 609
    .line 610
    if-nez v8, :cond_6

    .line 611
    .line 612
    new-instance v8, Landroid/os/Handler;

    .line 613
    .line 614
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    invoke-direct {v8, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 619
    .line 620
    .line 621
    iput-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 622
    .line 623
    :cond_6
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 624
    .line 625
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    new-instance v9, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 630
    .line 631
    invoke-direct {v9, v6, v4, v8}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V

    .line 632
    .line 633
    .line 634
    invoke-direct {v5, v9, v2, v4, v7}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V

    .line 635
    .line 636
    .line 637
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 638
    .line 639
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    .line 640
    .line 641
    if-eqz v2, :cond_7

    .line 642
    .line 643
    const-string v2, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 644
    .line 645
    const-string v4, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    .line 646
    .line 647
    const-string v5, "android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    .line 648
    .line 649
    invoke-static {v2, v4, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 654
    .line 655
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    .line 657
    .line 658
    :cond_7
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 659
    .line 660
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 661
    .line 662
    .line 663
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 664
    .line 665
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 666
    .line 667
    invoke-direct {v1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService;)V

    .line 668
    .line 669
    .line 670
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 671
    .line 672
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 673
    .line 674
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 675
    .line 676
    .line 677
    iput-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 678
    .line 679
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 680
    .line 681
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 682
    .line 683
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 684
    .line 685
    .line 686
    iput-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 687
    .line 688
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 689
    .line 690
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 691
    .line 692
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 696
    .line 697
    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 698
    .line 699
    invoke-direct {v1, v11}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    .line 700
    .line 701
    .line 702
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 703
    .line 704
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 705
    .line 706
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    .line 707
    .line 708
    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 709
    .line 710
    .line 711
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    return-void

    .line 715
    :goto_5
    monitor-exit v6

    .line 716
    throw v0

    .line 717
    :catch_2
    move-exception v0

    .line 718
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 719
    .line 720
    const-string v2, "Cannot load keystore"

    .line 721
    .line 722
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    .line 724
    .line 725
    throw v1
.end method

.method public static isEnablePrevCredential()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.organization_owned"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string/jumbo v1, "true"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    return v0
.end method

.method public static scheduleGc()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x7d0

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "dar"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 18
    .line 19
    const-string/jumbo v3, "automatic_data_decryption"

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 28
    .line 29
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Secure folder user "

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " is not running yet when on unlock system user"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v3, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 62
    .line 63
    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 64
    .line 65
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    if-ne v1, v2, :cond_4

    .line 81
    .line 82
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "Unlock secure folder user "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/android/server/knox/dar/DarManagerService;

    .line 115
    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    .line 128
    .line 129
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 135
    .line 136
    const/16 v3, 0x96

    .line 137
    .line 138
    invoke-virtual {v0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    goto :goto_2

    .line 150
    :catch_0
    move-exception p0

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_4
    :goto_3
    return-void
.end method

.method public final addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "add escrow token for user "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "token"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "userId"

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v0, p1, v1, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "add escrow token for virtual user "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 66
    .line 67
    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Lcom/android/server/locksettings/LockSettingsService;

    .line 71
    .line 72
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 81
    .line 82
    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    xor-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->prepare(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->initializeSyntheticPasswordForVirtualUser(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 103
    .line 104
    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 111
    .line 112
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const/4 v8, 0x0

    .line 123
    move v7, p3

    .line 124
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 129
    .line 130
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Lcom/android/server/locksettings/LockSettingsService;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 135
    .line 136
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->addPendingToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 137
    .line 138
    .line 139
    move-result-wide p1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    .line 145
    .line 146
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 147
    .line 148
    invoke-virtual {p4, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    if-eqz p4, :cond_2

    .line 153
    .line 154
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    .line 157
    .line 158
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 159
    .line 160
    invoke-virtual {p4, p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->getPendingTokenForDualDAR(IJ)[B

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    .line 167
    .line 168
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 169
    .line 170
    invoke-virtual {p4, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 171
    .line 172
    .line 173
    move-result p4

    .line 174
    if-eqz p4, :cond_3

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    move-wide v4, p1

    .line 184
    move v6, p3

    .line 185
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokenForDualDAR(JI[B[B)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 194
    .line 195
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 196
    .line 197
    .line 198
    :cond_3
    :goto_1
    monitor-exit v0

    .line 199
    return-wide p1

    .line 200
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    throw p0

    .line 202
    :cond_4
    const-string v0, "LockSettingsService"

    .line 203
    .line 204
    const-string v2, "Adding escrow token for user %d"

    .line 205
    .line 206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 218
    .line 219
    monitor-enter v0

    .line 220
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_5

    .line 225
    .line 226
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    const/4 v9, 0x0

    .line 241
    move v8, p3

    .line 242
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 247
    .line 248
    const-string v2, "addEscrowToken: saveEscrowDataIfNeededLocked"

    .line 249
    .line 250
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 254
    .line 255
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->saveEscrowDataIfNeededLocked(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :catchall_1
    move-exception p0

    .line 260
    goto :goto_5

    .line 261
    :cond_5
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 262
    .line 263
    .line 264
    const-string v2, "addEscrowToken: restoreEscrowDataIfNeededLocked"

    .line 265
    .line 266
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 270
    .line 271
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->restoreEscrowDataIfNeededLocked(I)V

    .line 272
    .line 273
    .line 274
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 275
    .line 276
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_9

    .line 281
    .line 282
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 283
    .line 284
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->addPendingToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 285
    .line 286
    .line 287
    move-result-wide p1

    .line 288
    if-eqz v1, :cond_7

    .line 289
    .line 290
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    .line 291
    .line 292
    .line 293
    move-result p4

    .line 294
    if-eqz p4, :cond_6

    .line 295
    .line 296
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 297
    .line 298
    invoke-virtual {p4, p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->getPendingTokenForDualDAR(IJ)[B

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 303
    .line 304
    invoke-virtual {p4, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 305
    .line 306
    .line 307
    move-result p4

    .line 308
    if-eqz p4, :cond_8

    .line 309
    .line 310
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 311
    .line 312
    const/4 v8, 0x0

    .line 313
    move-wide v4, p1

    .line 314
    move v6, p3

    .line 315
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokenForDualDAR(JI[B[B)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_6
    const-string p4, "LockSettingsService"

    .line 320
    .line 321
    const-string v2, "Immediately activating escrow token %016x"

    .line 322
    .line 323
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-static {p4, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 335
    .line 336
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_7
    const-string p0, "LockSettingsService"

    .line 341
    .line 342
    const-string p3, "Escrow token %016x will be activated when user is unlocked"

    .line 343
    .line 344
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 345
    .line 346
    .line 347
    move-result-object p4

    .line 348
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p4

    .line 352
    invoke-static {p0, p3, p4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_8
    :goto_4
    monitor-exit v0

    .line 356
    return-wide p1

    .line 357
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 358
    .line 359
    const-string p1, "Escrow token is disabled on the current user"

    .line 360
    .line 361
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p0

    .line 365
    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 366
    throw p0
.end method

.method public final addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Listener can not be null."

    .line 5
    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const/4 p3, 0x1

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-wide p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 8
    .line 9
    iget-boolean v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 10
    .line 11
    iget-object v5, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 12
    .line 13
    check-cast v5, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v6, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 16
    .line 17
    check-cast v6, Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v7, v2, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 20
    .line 21
    iget-object v8, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 22
    .line 23
    check-cast v8, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v9, v2, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    .line 26
    .line 27
    check-cast v9, Ljava/lang/String;

    .line 28
    .line 29
    iget v10, v2, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 30
    .line 31
    int-to-long v10, v10

    .line 32
    iget-wide v12, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 33
    .line 34
    iget v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    .line 35
    .line 36
    int-to-long v14, v14

    .line 37
    move-wide/from16 v16, v14

    .line 38
    .line 39
    iget-boolean v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    .line 40
    .line 41
    iget-boolean v15, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    .line 42
    .line 43
    move/from16 v18, v15

    .line 44
    .line 45
    iget-object v15, v2, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 46
    .line 47
    const/16 v19, 0x0

    .line 48
    .line 49
    if-eqz v15, :cond_2

    .line 50
    .line 51
    const-string/jumbo v2, "customer_app_name"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v20

    .line 58
    if-eqz v20, :cond_0

    .line 59
    .line 60
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    move-object/from16 v20, v2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v20, v19

    .line 70
    .line 71
    :goto_0
    const-string/jumbo v2, "customer_package_name"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v21

    .line 78
    if-eqz v21, :cond_1

    .line 79
    .line 80
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object/from16 v19, v2

    .line 85
    .line 86
    check-cast v19, Ljava/lang/String;

    .line 87
    .line 88
    :cond_1
    move-object/from16 v2, v20

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-object/from16 v2, v19

    .line 92
    .line 93
    :goto_1
    const-string/jumbo v15, "locked"

    .line 94
    .line 95
    .line 96
    move-object/from16 v20, v2

    .line 97
    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v4, "message"

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string/jumbo v4, "phonenumber"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v4, "enableemergencycall"

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string/jumbo v4, "clientname"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string/jumbo v4, "emailaddress"

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v4, "allowfailcount"

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2, v10, v11, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 223
    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string/jumbo v4, "locktime"

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2, v12, v13, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 238
    .line 239
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string/jumbo v4, "permanentblockcount"

    .line 246
    .line 247
    .line 248
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    move-wide/from16 v4, v16

    .line 253
    .line 254
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string/jumbo v4, "skippin"

    .line 263
    .line 264
    .line 265
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v1, v2, v14, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 270
    .line 271
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string/jumbo v4, "skipsupport"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    move/from16 v4, v18

    .line 291
    .line 292
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 293
    .line 294
    .line 295
    move-object/from16 v2, p2

    .line 296
    .line 297
    iget-object v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 298
    .line 299
    if-eqz v4, :cond_3

    .line 300
    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string/jumbo v5, "appname"

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    move-object/from16 v5, v20

    .line 320
    .line 321
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string/jumbo v5, "packagename"

    .line 330
    .line 331
    .line 332
    invoke-static {v3, v4, v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    move-object/from16 v5, v19

    .line 337
    .line 338
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    :cond_3
    const/4 v5, 0x0

    .line 342
    goto :goto_2

    .line 343
    :cond_4
    move-object/from16 v2, p2

    .line 344
    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    const/4 v5, 0x0

    .line 361
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 362
    .line 363
    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string/jumbo v6, "remotelockscreen.lockoutdeadline"

    .line 370
    .line 371
    .line 372
    invoke-static {v3, v4, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    const-wide/16 v6, 0x0

    .line 377
    .line 378
    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 379
    .line 380
    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string/jumbo v8, "remotelockscreen.failedunlockcount"

    .line 387
    .line 388
    .line 389
    invoke-static {v3, v4, v8}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 394
    .line 395
    .line 396
    :goto_2
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 397
    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 407
    .line 408
    const-string/jumbo v3, "failed changeRemoteLockState callback!"

    .line 409
    .line 410
    .line 411
    const-string v4, "LockSettingsService"

    .line 412
    .line 413
    if-eqz v0, :cond_5

    .line 414
    .line 415
    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .line 417
    .line 418
    goto :goto_3

    .line 419
    :catch_0
    move-exception v0

    .line 420
    move-object v6, v0

    .line 421
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    move v0, v5

    .line 428
    goto :goto_4

    .line 429
    :cond_5
    :goto_3
    const/4 v0, 0x1

    .line 430
    :goto_4
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 431
    .line 432
    const/4 v7, 0x4

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    check-cast v6, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 442
    .line 443
    if-eqz v6, :cond_6

    .line 444
    .line 445
    :try_start_1
    invoke-interface {v6, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    .line 447
    .line 448
    move v5, v0

    .line 449
    goto :goto_5

    .line 450
    :catch_1
    move-exception v0

    .line 451
    move-object v6, v0

    .line 452
    const-string v0, "!@ failed changeRemoteLockState callback!"

    .line 453
    .line 454
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_6
    const-string v0, "!@ NULL Callback for changeRemoteLockState!"

    .line 462
    .line 463
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 467
    .line 468
    const/4 v1, 0x5

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 478
    .line 479
    if-eqz v0, :cond_7

    .line 480
    .line 481
    :try_start_2
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 482
    .line 483
    .line 484
    goto :goto_6

    .line 485
    :catch_2
    move-exception v0

    .line 486
    move-object v1, v0

    .line 487
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 491
    .line 492
    .line 493
    :cond_7
    :goto_6
    return v5
.end method

.method public final callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object p3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 40
    .line 41
    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v2, 0x11101bd

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_a

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    if-eqz p3, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_5

    .line 81
    .line 82
    const-string p3, "LockSettingsService"

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Generating new vendor auth secret and storing for user: "

    .line 87
    .line 88
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    const/16 p3, 0x20

    .line 102
    .line 103
    invoke-static {p3}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v0

    .line 110
    :try_start_0
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 111
    .line 112
    monitor-exit v0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_5
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter p3

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 121
    .line 122
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    const-string p0, "LockSettingsService"

    .line 126
    .line 127
    const-string p2, "Creating non-main user "

    .line 128
    .line 129
    const-string p3, " but vendor auth secret is not in memory"

    .line 130
    .line 131
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    move-object p3, v0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    .line 145
    .line 146
    invoke-virtual {p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    new-array v1, v1, [B

    .line 151
    .line 152
    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    const-string/jumbo v3, "vendor_auth_secret"

    .line 157
    .line 158
    .line 159
    const-wide/16 v5, 0x0

    .line 160
    .line 161
    move-object v2, v0

    .line 162
    move v7, p1

    .line 163
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 167
    .line 168
    .line 169
    move-object p2, p3

    .line 170
    goto :goto_2

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    throw p0

    .line 174
    :cond_7
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 175
    .line 176
    iget-object p3, p3, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 177
    .line 178
    const-wide/16 v2, 0x0

    .line 179
    .line 180
    const-string/jumbo v0, "vendor_auth_secret"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3, p1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    if-nez p3, :cond_8

    .line 188
    .line 189
    const/4 p2, 0x0

    .line 190
    goto :goto_1

    .line 191
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    .line 195
    .line 196
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    new-array v0, v1, [B

    .line 201
    .line 202
    invoke-static {p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    :goto_1
    if-nez p2, :cond_9

    .line 207
    .line 208
    const-string p0, "LockSettingsService"

    .line 209
    .line 210
    const-string p2, "Unable to read vendor auth secret for user: "

    .line 211
    .line 212
    invoke-static {p1, p2, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_9
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter p3

    .line 219
    :try_start_3
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 220
    .line 221
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 222
    :goto_2
    const-string p3, "LockSettingsService"

    .line 223
    .line 224
    const-string v0, "Sending vendor auth secret to IAuthSecret HAL as user: "

    .line 225
    .line 226
    invoke-static {p1, v0, p3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 230
    .line 231
    invoke-interface {p0, p2}, Landroid/hardware/authsecret/IAuthSecret;->setPrimaryUserCredential([B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :catch_0
    move-exception p0

    .line 236
    const-string p1, "LockSettingsService"

    .line 237
    .line 238
    const-string p2, "Failed to send vendor auth secret to IAuthSecret HAL"

    .line 239
    .line 240
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .line 242
    .line 243
    :goto_3
    return-void

    .line 244
    :catchall_2
    move-exception p0

    .line 245
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 246
    throw p0

    .line 247
    :cond_a
    :goto_4
    return-void
.end method

.method public final changeToken([BJ[BJI)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v7, p5

    .line 3
    .line 4
    move/from16 v9, p7

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Change token for user "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "newToken"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "newHandle"

    .line 27
    .line 28
    .line 29
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v5, ", oldToken : "

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v6, p4

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ", oldHandle : "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v5, p1

    .line 58
    filled-new-array {v1, p1, v2, v3, v4}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    :try_start_0
    iget-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 68
    .line 69
    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 71
    .line 72
    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    move/from16 v2, p7

    .line 85
    .line 86
    move-wide/from16 v3, p5

    .line 87
    .line 88
    move-object/from16 v6, p4

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 95
    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    const-string v0, "Failed due to invalid token"

    .line 99
    .line 100
    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 107
    .line 108
    move-wide v3, p2

    .line 109
    invoke-virtual {v2, v9, v3, v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-nez v11, :cond_1

    .line 114
    .line 115
    const-string v1, "Failed in new token activation"

    .line 116
    .line 117
    invoke-static {v10, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    if-eqz v11, :cond_2

    .line 121
    .line 122
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    :cond_2
    const-string v0, "Failed in old token elimination"

    .line 129
    .line 130
    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    monitor-exit v12

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 136
    .line 137
    const-string v1, "Excrow token is disabled for current user"

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "Unexpected exception while change token"

    .line 147
    .line 148
    invoke-static {v0, v10, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v1, "Final result of change token : "

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return v11
.end method

.method public final checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "applockbackuppin.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-nez v2, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    const/16 v4, 0x28

    .line 49
    .line 50
    if-ne v3, v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_2
    return v1
.end method

.method public final checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "applockfingerprintpassword.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-nez v2, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    const/16 v4, 0x28

    .line 49
    .line 50
    if-ne v3, v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_2
    return v1
.end method

.method public final checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "applockpassword.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-nez v2, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    const/16 v4, 0x28

    .line 49
    .line 50
    if-ne v3, v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_2
    return v1
.end method

.method public final checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "applockpattern.key"

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    array-length p2, p0

    .line 37
    if-lez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    const/4 p2, 0x1

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    return p2

    .line 45
    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    invoke-static {p3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 p2, 0x0

    .line 59
    :cond_3
    :goto_1
    return p2
.end method

.method public final checkAppLockPin(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "applockpin.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-nez v2, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    const/16 v4, 0x28

    .line 49
    .line 50
    if-ne v3, v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_2
    return v1
.end method

.method public final checkCarrierPassword([BI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "sktpassword.key"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    array-length p2, p0

    .line 27
    if-lez p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 37
    .line 38
    .line 39
    :cond_0
    throw p0

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final checkDatabaseReadPermission(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "uid="

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " needs permission android.permission.ACCESS_KEYGUARD_SECURE_STORAGE to read "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, " for user "

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final checkFMMPassword([BI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "fmmpassword.key"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    array-length p2, p0

    .line 27
    if-lez p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final checkManageWeakEscrowTokenMethodUsage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_WEAK_ESCROW_TOKEN"

    .line 4
    .line 5
    const-string v2, "Requires MANAGE_WEAK_ESCROW_TOKEN permission."

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "android.hardware.type.automotive"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Weak escrow token are only for automotive devices."

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final checkPasswordReadPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 4
    .line 5
    const-string v1, "LockSettingsRead"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 15
    .line 16
    const-string v1, "LockSettingsService"

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    .line 21
    .line 22
    .line 23
    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p3

    .line 26
    new-instance v0, Landroid/content/Intent;

    .line 27
    .line 28
    const-string/jumbo v2, "com.samsung.remotelock.CLIENT_WAKEUP"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string/jumbo v3, "com.samsung.android.permission.REMOTELOCK"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 43
    .line 44
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 47
    .line 48
    const-string/jumbo p0, "failed checkRemoteLockPassword callback!"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    const/4 p2, -0x1

    .line 59
    :goto_0
    const-string/jumbo v0, "result"

    .line 60
    .line 61
    .line 62
    invoke-static {p2, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-lez p2, :cond_1

    .line 67
    .line 68
    const-string/jumbo p2, "locktime"

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .line 77
    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 78
    .line 79
    .line 80
    move-result-wide p0

    .line 81
    const-string/jumbo p2, "timeout"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :try_start_1
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception p0

    .line 92
    const-string/jumbo p1, "failed sendResult callback!"

    .line 93
    .line 94
    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method public final checkWritePermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 4
    .line 5
    const-string v1, "LockSettingsWrite"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final closeSession(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "invalid session"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public deleteRepairModePersistentDataIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "LockSettingsService.SDP"

    .line 8
    .line 9
    const-string p1, "Virtual user can have escrow token"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 16
    .line 17
    const-string/jumbo v1, "e0"

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string/jumbo v5, "p1"

    .line 27
    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, p1, v5, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    :try_start_0
    const-string/jumbo v0, "device_policy_manager"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "deprecate_usermanagerinternal_devicepolicy"

    .line 47
    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    invoke-static {v0, v4, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string v4, "LockSettingsService"

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceStateCache;->isUserOrganizationManaged(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_9

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->isResetPasswordSupported(I)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const-string p0, "Dual DAR enabled Organization Managed profile can have escrow token"

    .line 94
    .line 95
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_3
    :try_start_2
    const-string v0, "Dual DAR enabled Organization Managed profile doesn\'t support reset password. Disable escrow"

    .line 106
    .line 107
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    const-string p0, "Organization managed users can have escrow token"

    .line 112
    .line 113
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserManaged(I)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_8

    .line 134
    .line 135
    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 136
    .line 137
    invoke-virtual {v8, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_7

    .line 142
    .line 143
    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {v8}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->isResetPasswordSupported(I)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_6

    .line 154
    .line 155
    const-string p0, "Dual DAR enabled Managed profile can have escrow token"

    .line 156
    .line 157
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    :try_start_4
    const-string v8, "Dual DAR enabled Managed profile doesn\'t support reset password. Disable escrow"

    .line 165
    .line 166
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    const-string p0, "Managed profile can have escrow token"

    .line 171
    .line 172
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_8
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->isDeviceManaged()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_9

    .line 184
    .line 185
    const-string p0, "Corp-owned device can have escrow token"

    .line 186
    .line 187
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_9
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    const-string p0, "User with knox admin can have escrow token"

    .line 204
    .line 205
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_b

    .line 223
    .line 224
    const-string p0, "Postpone disabling escrow tokens until device is provisioned"

    .line 225
    .line 226
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v6, "android.hardware.type.automotive"

    .line 237
    .line 238
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    return-void

    .line 245
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const-string v6, "Permanently disabling support for escrow tokens on user %d"

    .line 254
    .line 255
    invoke-static {v4, v6, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 259
    .line 260
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    throw p0
.end method

.method public final doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v9, p1

    .line 3
    .line 4
    move/from16 v8, p2

    .line 5
    .line 6
    if-eqz v9, :cond_1a

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1a

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Verify credential for user "

    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "credential"

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string/jumbo v4, "credentialType"

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string/jumbo v6, "userId"

    .line 50
    .line 51
    .line 52
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static/range {p2 .. p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 81
    .line 82
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v10, v2

    .line 85
    check-cast v10, Lcom/android/server/locksettings/LockSettingsService;

    .line 86
    .line 87
    invoke-virtual {v10, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v11, 0x0

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-virtual {v10, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 99
    .line 100
    invoke-virtual {v10}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object/from16 v5, p1

    .line 105
    .line 106
    move/from16 v6, p2

    .line 107
    .line 108
    move-object/from16 v7, p3

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 115
    .line 116
    move-object v14, v2

    .line 117
    move-object v2, v1

    .line 118
    move-object v1, v14

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v3, "Sp not yet applied to user "

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v11, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v2, v11

    .line 138
    :goto_0
    if-nez v1, :cond_1

    .line 139
    .line 140
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 141
    .line 142
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const-string v4, "Result of verification for user %d : %s"

    .line 151
    .line 152
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v11, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_2

    .line 164
    .line 165
    invoke-virtual {v0, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialMismatchedForInner(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v0, v9, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_3

    .line 174
    .line 175
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 176
    .line 177
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    if-eqz v2, :cond_4

    .line 184
    .line 185
    invoke-virtual {v10, v8}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v0, v2, v8, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I[B)V

    .line 200
    .line 201
    .line 202
    :cond_4
    return-object v1

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    const-string v1, "Credential can\'t be null or empty"

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_6
    const/4 v10, 0x0

    .line 212
    const/16 v2, -0x270f

    .line 213
    .line 214
    if-ne v8, v2, :cond_7

    .line 215
    .line 216
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string/jumbo v3, "device_provisioned"

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v3, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_7

    .line 230
    .line 231
    const-string v0, "LockSettingsService"

    .line 232
    .line 233
    const-string v1, "FRP credential can only be verified prior to provisioning."

    .line 234
    .line 235
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 239
    .line 240
    return-object v0

    .line 241
    :cond_7
    const/16 v0, -0x270e

    .line 242
    .line 243
    if-ne v8, v0, :cond_8

    .line 244
    .line 245
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_8

    .line 252
    .line 253
    const-string v0, "LockSettingsService"

    .line 254
    .line 255
    const-string v1, "Repair mode is not active on the device."

    .line 256
    .line 257
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 261
    .line 262
    return-object v0

    .line 263
    :cond_8
    const-string v0, "LockSettingsService"

    .line 264
    .line 265
    const-string v3, "Verifying lockscreen credential for user %d"

    .line 266
    .line 267
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :try_start_0
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 279
    .line 280
    invoke-virtual {v0, v9, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->doVerifyCredentialForDualDAR(Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_9

    .line 289
    .line 290
    const-string v3, "LockSettingsService"

    .line 291
    .line 292
    const-string/jumbo v4, "verifyChallenge for DualDAR failed."

    .line 293
    .line 294
    .line 295
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .line 297
    .line 298
    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    const-string v3, "LockSettingsService"

    .line 301
    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v5, "RemoteException : "

    .line 305
    .line 306
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    :cond_9
    iget-object v11, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 324
    .line 325
    monitor-enter v11

    .line 326
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifySpecialUserCredential(ILandroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_b

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_b

    .line 353
    .line 354
    if-ne v8, v2, :cond_b

    .line 355
    .line 356
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_a

    .line 363
    .line 364
    check-cast v1, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 365
    .line 366
    iget-object v2, v1, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 367
    .line 368
    iget-object v2, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 369
    .line 370
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    :try_start_2
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 372
    .line 373
    iput-boolean v10, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 374
    .line 375
    invoke-virtual {v1, v10}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 376
    .line 377
    .line 378
    monitor-exit v2

    .line 379
    goto :goto_2

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :try_start_3
    throw v0

    .line 383
    :cond_a
    const-string v1, "LockSettingsStorage"

    .line 384
    .line 385
    const-string v2, "Failed to get PersistentDataBlockManagerInternal"

    .line 386
    .line 387
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    goto :goto_2

    .line 391
    :catchall_1
    move-exception v0

    .line 392
    goto/16 :goto_a

    .line 393
    .line 394
    :cond_b
    :goto_2
    monitor-exit v11

    .line 395
    return-object v0

    .line 396
    :cond_c
    invoke-virtual {p0, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 397
    .line 398
    .line 399
    move-result-wide v2

    .line 400
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_d

    .line 405
    .line 406
    const/16 v0, -0x26ab

    .line 407
    .line 408
    if-ne v8, v0, :cond_d

    .line 409
    .line 410
    const-string v0, "LockSettingsService"

    .line 411
    .line 412
    const-string v2, "!@ try unlock with prevCredential!!!"

    .line 413
    .line 414
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 418
    .line 419
    .line 420
    move-result-wide v2

    .line 421
    move-wide v12, v2

    .line 422
    move v0, v10

    .line 423
    goto :goto_3

    .line 424
    :cond_d
    move-wide v12, v2

    .line 425
    move v0, v8

    .line 426
    :goto_3
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    move-wide v4, v12

    .line 433
    move-object/from16 v6, p1

    .line 434
    .line 435
    move v7, v0

    .line 436
    move-object/from16 v8, p3

    .line 437
    .line 438
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 443
    .line 444
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-nez v4, :cond_f

    .line 449
    .line 450
    and-int/lit8 v4, p4, 0x2

    .line 451
    .line 452
    if-eqz v4, :cond_e

    .line 453
    .line 454
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 455
    .line 456
    invoke-virtual {v4, v0, v12, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeRepairModeCredentialLocked(IJ)Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-nez v4, :cond_e

    .line 461
    .line 462
    const-string v0, "LockSettingsService"

    .line 463
    .line 464
    const-string v1, "Failed to write repair mode credential"

    .line 465
    .line 466
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    const-string v0, "Verify success. But failed to write repair mode credential"

    .line 470
    .line 471
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 475
    .line 476
    monitor-exit v11

    .line 477
    return-object v0

    .line 478
    :cond_e
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 479
    .line 480
    iget-object v5, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 481
    .line 482
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    sget-object v6, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 486
    .line 487
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    new-instance v6, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    .line 495
    .line 496
    invoke-direct {v6, v4, v0, v5}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    .line 497
    .line 498
    .line 499
    iget-object v4, v4, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 500
    .line 501
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    .line 503
    .line 504
    :cond_f
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 505
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    const/4 v5, 0x1

    .line 510
    if-nez v4, :cond_15

    .line 511
    .line 512
    const-string v4, "LockSettingsService"

    .line 513
    .line 514
    const-string v6, "Successfully verified lockscreen credential for user %d"

    .line 515
    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    invoke-static {v4, v6, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    invoke-static {v0, v10}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 528
    .line 529
    .line 530
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 531
    .line 532
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    invoke-virtual {p0, v4, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    if-eqz v4, :cond_10

    .line 544
    .line 545
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 546
    .line 547
    iget-object v6, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 548
    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    invoke-virtual {v4, v6, v0, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I[B)V

    .line 554
    .line 555
    .line 556
    :cond_10
    and-int/lit8 v4, p4, 0x1

    .line 557
    .line 558
    if-eqz v4, :cond_13

    .line 559
    .line 560
    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 566
    .line 567
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 572
    .line 573
    monitor-enter v4

    .line 574
    const-wide/16 v6, 0x0

    .line 575
    .line 576
    move-wide v11, v6

    .line 577
    :goto_4
    cmp-long v3, v11, v6

    .line 578
    .line 579
    if-eqz v3, :cond_12

    .line 580
    .line 581
    :try_start_4
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 582
    .line 583
    invoke-virtual {v3, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    if-eqz v3, :cond_11

    .line 588
    .line 589
    goto :goto_5

    .line 590
    :cond_11
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 591
    .line 592
    invoke-virtual {v3, v11, v12, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 596
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 597
    .line 598
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    .line 599
    .line 600
    invoke-direct {v3, p0, v11, v12}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    .line 601
    .line 602
    .line 603
    const-wide/32 v6, 0x927c0

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    .line 608
    .line 609
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 610
    .line 611
    invoke-direct {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    goto :goto_7

    .line 623
    :catchall_2
    move-exception v0

    .line 624
    goto :goto_6

    .line 625
    :cond_12
    :goto_5
    :try_start_5
    sget-object v3, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 626
    .line 627
    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    .line 628
    .line 629
    .line 630
    move-result-wide v11

    .line 631
    goto :goto_4

    .line 632
    :goto_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 633
    throw v0

    .line 634
    :cond_13
    :goto_7
    invoke-virtual {p0, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 635
    .line 636
    .line 637
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    if-eqz v2, :cond_14

    .line 642
    .line 643
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 644
    .line 645
    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->cancelDataLock(I)V

    .line 650
    .line 651
    .line 652
    :cond_14
    const-string/jumbo v2, "persist.escrowvault.sa.signed"

    .line 653
    .line 654
    .line 655
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    const-string/jumbo v6, "isSaSignedIn : "

    .line 662
    .line 663
    .line 664
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    const-string v6, "LockSettingsService"

    .line 675
    .line 676
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    if-eqz v2, :cond_16

    .line 680
    .line 681
    invoke-virtual {p0, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->updateVerifier(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 682
    .line 683
    .line 684
    goto :goto_8

    .line 685
    :cond_15
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    if-ne v2, v5, :cond_16

    .line 690
    .line 691
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 692
    .line 693
    .line 694
    move-result v2

    .line 695
    if-lez v2, :cond_16

    .line 696
    .line 697
    const/16 v2, 0x8

    .line 698
    .line 699
    invoke-virtual {p0, v2, v0}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 700
    .line 701
    .line 702
    :cond_16
    :goto_8
    invoke-static {}, Landroid/security/Flags;->reportPrimaryAuthAttempts()Z

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-eqz v2, :cond_19

    .line 707
    .line 708
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 709
    .line 710
    .line 711
    move-result v2

    .line 712
    if-nez v2, :cond_17

    .line 713
    .line 714
    move v10, v5

    .line 715
    :cond_17
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    if-eqz v2, :cond_19

    .line 726
    .line 727
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    check-cast v2, Lcom/android/internal/widget/LockSettingsStateListener;

    .line 732
    .line 733
    if-eqz v10, :cond_18

    .line 734
    .line 735
    invoke-interface {v2, v0}, Lcom/android/internal/widget/LockSettingsStateListener;->onAuthenticationSucceeded(I)V

    .line 736
    .line 737
    .line 738
    goto :goto_9

    .line 739
    :cond_18
    invoke-interface {v2, v0}, Lcom/android/internal/widget/LockSettingsStateListener;->onAuthenticationFailed(I)V

    .line 740
    .line 741
    .line 742
    goto :goto_9

    .line 743
    :cond_19
    return-object v3

    .line 744
    :goto_a
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 745
    throw v0

    .line 746
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 747
    .line 748
    const-string v1, "Credential can\'t be null or empty"

    .line 749
    .line 750
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    throw v0
.end method

.method public final doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Verify credential for dual-dar user "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "credential"

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    move-object v2, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string/jumbo v0, "null"

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    const-string/jumbo v3, "credentialType"

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/4 v0, -0x1

    .line 44
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "userId"

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string/jumbo v7, "opiotn"

    .line 56
    .line 57
    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    if-eqz p1, :cond_a

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_a

    .line 76
    .line 77
    const-string v0, "LockSettingsService"

    .line 78
    .line 79
    const-string v1, "Verifying lockscreen credential for user %d"

    .line 80
    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 93
    .line 94
    monitor-enter v0

    .line 95
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/4 v7, 0x0

    .line 106
    move-object v5, p1

    .line 107
    move v6, p2

    .line 108
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 121
    .line 122
    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    new-instance v4, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v4, v2, p2, v3}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    .line 139
    .line 140
    .line 141
    iget-object v2, v2, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 153
    .line 154
    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_3

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :cond_2
    :goto_3
    const-string p0, "LockSettingsService"

    .line 171
    .line 172
    const-string/jumbo p1, "verifyChallenge with SP failed."

    .line 173
    .line 174
    .line 175
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 179
    .line 180
    monitor-exit v0

    .line 181
    return-object p0

    .line 182
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/4 v3, 0x1

    .line 188
    if-nez v0, :cond_8

    .line 189
    .line 190
    const-string v0, "LockSettingsService"

    .line 191
    .line 192
    const-string v4, "Successfully verified lockscreen credential for user %d"

    .line 193
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v0, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    and-int/2addr p3, v3

    .line 206
    if-eqz p3, :cond_6

    .line 207
    .line 208
    iget-object p3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 209
    .line 210
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-nez p3, :cond_4

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v3, "Postpone credential verified event for user "

    .line 220
    .line 221
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const/4 v3, 0x0

    .line 232
    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 236
    .line 237
    monitor-enter v4

    .line 238
    :try_start_1
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 239
    .line 240
    invoke-direct {v1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object p4, v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 244
    .line 245
    if-nez p4, :cond_5

    .line 246
    .line 247
    move-object p4, v3

    .line 248
    goto :goto_4

    .line 249
    :cond_5
    invoke-interface {p4}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->asBinder()Landroid/os/IBinder;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    :goto_4
    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 254
    .line 255
    .line 256
    move-result-object p4

    .line 257
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;

    .line 258
    .line 259
    const/4 v6, 0x0

    .line 260
    invoke-direct {v5, v1, v6}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 264
    .line 265
    .line 266
    new-instance p4, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    .line 267
    .line 268
    invoke-direct {p4, p3, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    .line 269
    .line 270
    .line 271
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 272
    .line 273
    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 278
    .line 279
    invoke-virtual {p3, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 280
    .line 281
    .line 282
    move-result p3

    .line 283
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 284
    .line 285
    .line 286
    move-result p4

    .line 287
    if-nez p4, :cond_7

    .line 288
    .line 289
    new-instance p4, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v0, "Auth user "

    .line 292
    .line 293
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v0, " has no credential"

    .line 300
    .line 301
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p4

    .line 308
    invoke-static {v3, p4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 312
    .line 313
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {p4, v0, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :catchall_1
    move-exception p0

    .line 322
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    throw p0

    .line 324
    :cond_6
    iget-object p3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 325
    .line 326
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 327
    .line 328
    .line 329
    move-result-object p4

    .line 330
    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 331
    .line 332
    .line 333
    :cond_7
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 334
    .line 335
    .line 336
    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-eqz p1, :cond_9

    .line 341
    .line 342
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->cancelDataLock(I)V

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-ne p1, v3, :cond_9

    .line 357
    .line 358
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-lez p1, :cond_9

    .line 363
    .line 364
    const/16 p1, 0x8

    .line 365
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 367
    .line 368
    .line 369
    :cond_9
    :goto_6
    return-object v2

    .line 370
    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    throw p0

    .line 372
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 373
    .line 374
    const-string p1, "Credential can\'t be null or empty"

    .line 375
    .line 376
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "LockSettingsService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    .line 5
    const-string v0, "  "

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-direct {v2, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "Current lock settings service state:"

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "knox.device_owner"

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    cmp-long v0, v6, v3

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    move v0, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v5

    .line 38
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v8, "DO Enabled: "

    .line 41
    .line 42
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 56
    .line 57
    .line 58
    const-string v0, "User State:"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move v7, v5

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-ge v7, v8, :cond_4

    .line 78
    .line 79
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 84
    .line 85
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 86
    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v10, "User "

    .line 90
    .line 91
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 105
    .line 106
    .line 107
    iget-object v9, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 108
    .line 109
    monitor-enter v9

    .line 110
    :try_start_0
    const-string v10, "LSKF-based SP protector ID: %016x"

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v11

    .line 116
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-static {v10, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v2, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v10, "LSKF last changed: %s (previous protector: %016x)"

    .line 132
    .line 133
    const-string/jumbo v11, "sp-handle-ts"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v11, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 137
    .line 138
    .line 139
    move-result-wide v11

    .line 140
    invoke-static {v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    const-string/jumbo v12, "prev-sp-handle"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v12, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 148
    .line 149
    .line 150
    move-result-wide v12

    .line 151
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-static {v10, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v2, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    if-nez v8, :cond_1

    .line 167
    .line 168
    const-string v10, "Backup protector: %016x (set : %s, expire : %s)"

    .line 169
    .line 170
    const-string/jumbo v11, "backup-protector-id"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v11, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    const-string/jumbo v12, "backup-protector-ts"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v12, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 185
    .line 186
    .line 187
    move-result-wide v12

    .line 188
    invoke-static {v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    const-string/jumbo v13, "backup-expiration-ts"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v13, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 196
    .line 197
    .line 198
    move-result-wide v13

    .line 199
    invoke-static {v13, v14}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    filled-new-array {v11, v12, v13}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    invoke-static {v10, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v2, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    goto/16 :goto_5

    .line 217
    .line 218
    :cond_1
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const-string v9, "Secure Mode: %d"

    .line 220
    .line 221
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 222
    .line 223
    invoke-virtual {v10, v8}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :try_start_1
    const-string v9, "SID: %016x"

    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    invoke-interface {v10, v8}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v10

    .line 252
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-static {v9, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    .line 266
    .line 267
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v10, "Quality: "

    .line 270
    .line 271
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 275
    .line 276
    const/4 v11, 0x0

    .line 277
    const-string/jumbo v12, "lockscreen.password_type"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v12, v11, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-eqz v11, :cond_2

    .line 289
    .line 290
    move-wide v10, v3

    .line 291
    goto :goto_3

    .line 292
    :cond_2
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v10

    .line 296
    :goto_3
    long-to-int v10, v10

    .line 297
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v9, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v10, "CredentialType: "

    .line 310
    .line 311
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance v9, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v10, "SeparateChallenge: "

    .line 335
    .line 336
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const-string v9, "Metrics: %s"

    .line 354
    .line 355
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    if-eqz v10, :cond_3

    .line 360
    .line 361
    const-string/jumbo v10, "known"

    .line 362
    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_3
    const-string/jumbo v10, "unknown"

    .line 366
    .line 367
    .line 368
    :goto_4
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    invoke-static {v9, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string/jumbo v10, "failed attempt = "

    .line 382
    .line 383
    .line 384
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 388
    .line 389
    invoke-virtual {v10}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    invoke-virtual {v10, v8}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 408
    .line 409
    .line 410
    add-int/lit8 v7, v7, 0x1

    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :goto_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    throw v0

    .line 416
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 420
    .line 421
    .line 422
    const-string v0, "Keys in namespace:"

    .line 423
    .line 424
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 428
    .line 429
    .line 430
    :try_start_3
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_5

    .line 441
    .line 442
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    check-cast v7, Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1

    .line 449
    .line 450
    .line 451
    goto :goto_6

    .line 452
    :catch_1
    move-exception v0

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string v8, "Unable to get keys: "

    .line 456
    .line 457
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const-string v7, "LockSettingsService"

    .line 475
    .line 476
    const-string v8, "Dump error"

    .line 477
    .line 478
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .line 480
    .line 481
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 485
    .line 486
    .line 487
    const-string v0, "Storage:"

    .line 488
    .line 489
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 493
    .line 494
    .line 495
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 496
    .line 497
    iget-object v7, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 498
    .line 499
    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    const-string v9, "%6d %s %s"

    .line 516
    .line 517
    if-eqz v8, :cond_8

    .line 518
    .line 519
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v8

    .line 523
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 524
    .line 525
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 526
    .line 527
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    .line 532
    .line 533
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v11

    .line 537
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v11

    .line 541
    const-string v12, "User %d [%s]:"

    .line 542
    .line 543
    invoke-static {v12, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v11

    .line 547
    invoke-virtual {v2, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 554
    .line 555
    .line 556
    move-result-object v10

    .line 557
    if-eqz v10, :cond_6

    .line 558
    .line 559
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    array-length v11, v10

    .line 563
    move v12, v5

    .line 564
    :goto_8
    if-ge v12, v11, :cond_7

    .line 565
    .line 566
    aget-object v13, v10, v12

    .line 567
    .line 568
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 569
    .line 570
    .line 571
    move-result-wide v14

    .line 572
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    .line 577
    .line 578
    .line 579
    move-result-wide v15

    .line 580
    invoke-static/range {v15 .. v16}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v15

    .line 584
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v13

    .line 588
    filled-new-array {v14, v15, v13}, [Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v13

    .line 592
    invoke-static {v9, v13}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    invoke-virtual {v2, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    add-int/lit8 v12, v12, 0x1

    .line 600
    .line 601
    goto :goto_8

    .line 602
    :cond_6
    const-string v9, "[Not found]"

    .line 603
    .line 604
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 608
    .line 609
    .line 610
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 611
    .line 612
    invoke-static {v2, v8}, Lcom/samsung/android/lock/SPBnRManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 613
    .line 614
    .line 615
    goto :goto_7

    .line 616
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    if-eqz v8, :cond_b

    .line 625
    .line 626
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    const-string v10, "Repair Mode [%s]:"

    .line 635
    .line 636
    invoke-static {v10, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v8

    .line 640
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 647
    .line 648
    .line 649
    move-result-wide v10

    .line 650
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 651
    .line 652
    .line 653
    move-result-object v8

    .line 654
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 655
    .line 656
    .line 657
    move-result-wide v10

    .line 658
    invoke-static {v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v7

    .line 666
    filled-new-array {v8, v10, v7}, [Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    invoke-static {v9, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 678
    .line 679
    .line 680
    move-result-object v7

    .line 681
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    if-nez v0, :cond_9

    .line 686
    .line 687
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 688
    .line 689
    goto :goto_9

    .line 690
    :cond_9
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    :goto_9
    iget v7, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 695
    .line 696
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v7

    .line 700
    iget v8, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 701
    .line 702
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v8

    .line 706
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 707
    .line 708
    if-eqz v0, :cond_a

    .line 709
    .line 710
    array-length v0, v0

    .line 711
    goto :goto_a

    .line 712
    :cond_a
    move v0, v5

    .line 713
    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    filled-new-array {v7, v8, v0}, [Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    const-string/jumbo v7, "type: %d, user id: %d, payload size: %d"

    .line 722
    .line 723
    .line 724
    invoke-static {v7, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 732
    .line 733
    .line 734
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 738
    .line 739
    .line 740
    const-string v0, "StrongAuth:"

    .line 741
    .line 742
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 746
    .line 747
    .line 748
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    const-string v7, "PrimaryAuthFlags state:"

    .line 754
    .line 755
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 759
    .line 760
    .line 761
    move v7, v5

    .line 762
    :goto_b
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 763
    .line 764
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    .line 765
    .line 766
    .line 767
    move-result v8

    .line 768
    const-string/jumbo v9, "userId="

    .line 769
    .line 770
    .line 771
    if-ge v7, v8, :cond_c

    .line 772
    .line 773
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 774
    .line 775
    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 776
    .line 777
    .line 778
    move-result v8

    .line 779
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 780
    .line 781
    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 782
    .line 783
    .line 784
    move-result v10

    .line 785
    const-string v11, ", primaryAuthFlags="

    .line 786
    .line 787
    invoke-static {v8, v9, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    move-result-object v8

    .line 791
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    add-int/lit8 v7, v7, 0x1

    .line 806
    .line 807
    goto :goto_b

    .line 808
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 812
    .line 813
    .line 814
    const-string v7, "NonStrongBiometricAllowed state:"

    .line 815
    .line 816
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 820
    .line 821
    .line 822
    move v7, v5

    .line 823
    :goto_c
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 824
    .line 825
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    .line 826
    .line 827
    .line 828
    move-result v8

    .line 829
    if-ge v7, v8, :cond_d

    .line 830
    .line 831
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 832
    .line 833
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 834
    .line 835
    .line 836
    move-result v8

    .line 837
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 838
    .line 839
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 840
    .line 841
    .line 842
    move-result v10

    .line 843
    new-instance v11, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v8, ", allowed="

    .line 852
    .line 853
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    add-int/lit8 v7, v7, 0x1

    .line 867
    .line 868
    goto :goto_c

    .line 869
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 873
    .line 874
    .line 875
    const-string/jumbo v7, "strong auth timeout state:"

    .line 876
    .line 877
    .line 878
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 882
    .line 883
    .line 884
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 885
    .line 886
    const-string/jumbo v8, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 887
    .line 888
    .line 889
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 893
    .line 894
    const-string/jumbo v9, "lockscreen.strong_bio_timeout"

    .line 895
    .line 896
    .line 897
    invoke-virtual {v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    .line 898
    .line 899
    .line 900
    move-result-wide v8

    .line 901
    cmp-long v10, v8, v3

    .line 902
    .line 903
    if-eqz v10, :cond_e

    .line 904
    .line 905
    new-instance v10, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    const-string/jumbo v11, "strong biometric timeout:"

    .line 908
    .line 909
    .line 910
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    new-instance v11, Ljava/util/Date;

    .line 914
    .line 915
    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v8

    .line 922
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v8

    .line 929
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    :cond_e
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 933
    .line 934
    const-string/jumbo v9, "lockscreen.non_strong_bio_timeout"

    .line 935
    .line 936
    .line 937
    invoke-virtual {v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    .line 938
    .line 939
    .line 940
    move-result-wide v8

    .line 941
    cmp-long v10, v8, v3

    .line 942
    .line 943
    if-eqz v10, :cond_f

    .line 944
    .line 945
    new-instance v10, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    const-string/jumbo v11, "non strong biometric timeout:"

    .line 948
    .line 949
    .line 950
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    new-instance v11, Ljava/util/Date;

    .line 954
    .line 955
    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v8

    .line 962
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v8

    .line 969
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    :cond_f
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 973
    .line 974
    const-string/jumbo v8, "lockscreen.non_strong_bio_idle_timeout"

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    .line 978
    .line 979
    .line 980
    move-result-wide v8

    .line 981
    cmp-long v0, v8, v3

    .line 982
    .line 983
    if-eqz v0, :cond_10

    .line 984
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    .line 986
    .line 987
    const-string/jumbo v3, "non strong biometric idle timeout:"

    .line 988
    .line 989
    .line 990
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    new-instance v3, Ljava/util/Date;

    .line 994
    .line 995
    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v3

    .line 1002
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1022
    .line 1023
    .line 1024
    const-string v0, "RebootEscrow:"

    .line 1025
    .line 1026
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 1033
    .line 1034
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    const-string/jumbo v3, "mRebootEscrowWanted="

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 1044
    .line 1045
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1046
    .line 1047
    .line 1048
    const-string/jumbo v3, "mRebootEscrowReady="

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 1055
    .line 1056
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1057
    .line 1058
    .line 1059
    const-string/jumbo v3, "mRebootEscrowListener="

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    .line 1066
    .line 1067
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1068
    .line 1069
    .line 1070
    const-string/jumbo v3, "mLoadEscrowDataErrorCode="

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    iget v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 1077
    .line 1078
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1079
    .line 1080
    .line 1081
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 1082
    .line 1083
    monitor-enter v3

    .line 1084
    :try_start_4
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 1085
    .line 1086
    if-eqz v4, :cond_11

    .line 1087
    .line 1088
    goto :goto_d

    .line 1089
    :cond_11
    move v6, v5

    .line 1090
    :goto_d
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1091
    const-string/jumbo v3, "mPendingRebootEscrowKey is "

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    if-eqz v6, :cond_12

    .line 1098
    .line 1099
    const-string/jumbo v3, "set"

    .line 1100
    .line 1101
    .line 1102
    goto :goto_e

    .line 1103
    :cond_12
    const-string/jumbo v3, "not set"

    .line 1104
    .line 1105
    .line 1106
    :goto_e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 1110
    .line 1111
    iget-object v3, v3, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 1112
    .line 1113
    if-nez v3, :cond_13

    .line 1114
    .line 1115
    const-string/jumbo v3, "null"

    .line 1116
    .line 1117
    .line 1118
    goto :goto_f

    .line 1119
    :cond_13
    invoke-interface {v3}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    .line 1120
    .line 1121
    .line 1122
    move-result v3

    .line 1123
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    const-string v6, "RebootEscrowProvider type is "

    .line 1130
    .line 1131
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1145
    .line 1146
    .line 1147
    const-string v3, "Event log:"

    .line 1148
    .line 1149
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1153
    .line 1154
    .line 1155
    iget-object v0, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 1156
    .line 1157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1158
    .line 1159
    .line 1160
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1161
    .line 1162
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 1163
    .line 1164
    .line 1165
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1166
    .line 1167
    invoke-direct {v3, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1168
    .line 1169
    .line 1170
    :goto_10
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 1171
    .line 1172
    array-length v6, v4

    .line 1173
    if-ge v5, v6, :cond_16

    .line 1174
    .line 1175
    iget v6, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 1176
    .line 1177
    add-int/2addr v6, v5

    .line 1178
    array-length v7, v4

    .line 1179
    rem-int/2addr v6, v7

    .line 1180
    aget-object v4, v4, v6

    .line 1181
    .line 1182
    if-nez v4, :cond_14

    .line 1183
    .line 1184
    goto :goto_12

    .line 1185
    :cond_14
    const-string v6, "Event #"

    .line 1186
    .line 1187
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1191
    .line 1192
    .line 1193
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    const-string v7, " time="

    .line 1196
    .line 1197
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    new-instance v7, Ljava/util/Date;

    .line 1201
    .line 1202
    iget-wide v8, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    .line 1203
    .line 1204
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v7

    .line 1211
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    const-string v7, " (timestamp="

    .line 1215
    .line 1216
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    iget-wide v7, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    .line 1220
    .line 1221
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    const-string v7, ")"

    .line 1225
    .line 1226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v6

    .line 1233
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    const-string v6, " event="

    .line 1237
    .line 1238
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    iget v6, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    .line 1242
    .line 1243
    packed-switch v6, :pswitch_data_0

    .line 1244
    .line 1245
    .line 1246
    const-string v7, "Unknown event ID "

    .line 1247
    .line 1248
    invoke-static {v6, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v6

    .line 1252
    goto :goto_11

    .line 1253
    :pswitch_0
    const-string v6, "Retrieved LSKF for user"

    .line 1254
    .line 1255
    goto :goto_11

    .line 1256
    :pswitch_1
    const-string v6, "Stored LSKF for user"

    .line 1257
    .line 1258
    goto :goto_11

    .line 1259
    :pswitch_2
    const-string v6, "Requested LSKF"

    .line 1260
    .line 1261
    goto :goto_11

    .line 1262
    :pswitch_3
    const-string v6, "Retrieved stored KEK"

    .line 1263
    .line 1264
    goto :goto_11

    .line 1265
    :pswitch_4
    const-string v6, "Cleared request for LSKF"

    .line 1266
    .line 1267
    goto :goto_11

    .line 1268
    :pswitch_5
    const-string v6, "Set armed status"

    .line 1269
    .line 1270
    goto :goto_11

    .line 1271
    :pswitch_6
    const-string v6, "Found escrow data"

    .line 1272
    .line 1273
    :goto_11
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    iget-object v4, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    .line 1277
    .line 1278
    if-eqz v4, :cond_15

    .line 1279
    .line 1280
    const-string v6, " user="

    .line 1281
    .line 1282
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    :cond_15
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 1289
    .line 1290
    goto :goto_10

    .line 1291
    :cond_16
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1301
    .line 1302
    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    const-string v3, "PasswordHandleCount: "

    .line 1306
    .line 1307
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 1311
    .line 1312
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 1313
    .line 1314
    .line 1315
    move-result v3

    .line 1316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 1327
    .line 1328
    monitor-enter v4

    .line 1329
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .line 1333
    .line 1334
    const-string v3, "ThirdPartyAppsStarted: "

    .line 1335
    .line 1336
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    .line 1339
    iget-boolean v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 1340
    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1352
    const-string v0, "LSSLog:"

    .line 1353
    .line 1354
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->dump(Ljava/io/PrintWriter;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1361
    .line 1362
    .line 1363
    return-void

    .line 1364
    :catchall_1
    move-exception v0

    .line 1365
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1366
    throw v0

    .line 1367
    :catchall_2
    move-exception v0

    .line 1368
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1369
    throw v0

    .line 1370
    nop

    .line 1371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final enforceFrpNotActive()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "LockSettingsService"

    .line 17
    .line 18
    const-string v0, "No Main user on device; skipping enforceFrpNotActive"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string/jumbo v2, "user_setup_complete"

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v3

    .line 44
    :goto_0
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string p0, "LockSettingsStorage"

    .line 70
    .line 71
    const-string v0, "Failed to get PersistentDataBlockManager"

    .line 72
    .line 73
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string/jumbo p0, "secure_frp_mode"

    .line 78
    .line 79
    .line 80
    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-ne p0, v2, :cond_4

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    move v3, v2

    .line 89
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 90
    .line 91
    return-void

    .line 92
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 93
    .line 94
    const-string v0, "Cannot change credential while factory reset protection is active"

    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public final expirePreviousData()V
    .locals 6

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo v0, "expirePreviousData requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    cmp-long v5, v3, v1

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 40
    .line 41
    monitor-enter v5

    .line 42
    :try_start_0
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setBackupLskfBasedProtectorId(IJ)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    .line 48
    .line 49
    .line 50
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final gateKeeperClearSecureUserId(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string p1, "LockSettingsService"

    .line 11
    .line 12
    const-string v0, "Failed to clear SID"

    .line 13
    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getBackupLskfBasedProtectorId(I)J
    .locals 3

    .line 1
    const-string/jumbo v0, "backup-protector-id"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final getBoolean(Ljava/lang/String;ZI)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getCarrierLock(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 7
    .line 8
    const-string/jumbo v0, "getCarrierLock#mSKTLockState = "

    .line 9
    .line 10
    .line 11
    const-string v1, "LockSettingsStorage"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 26
    .line 27
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    move v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iput v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 46
    .line 47
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x2

    .line 52
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 53
    .line 54
    :goto_1
    return v2
.end method

.method public final getCredentialType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 4
    .line 5
    const-string v2, "LockSettingsHave"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getCredentialTypeInternal(I)I
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 33
    .line 34
    if-eq v2, v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 38
    .line 39
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :goto_0
    return v2

    .line 44
    :cond_3
    const/16 v0, -0x26ab

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    if-ne p1, v0, :cond_7

    .line 49
    .line 50
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_7

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    const/4 p1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    cmp-long v3, v5, v3

    .line 65
    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 75
    .line 76
    const-string/jumbo v3, "pwd"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    move p0, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 92
    .line 93
    :goto_1
    if-eq p0, v1, :cond_6

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    move v2, p0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    monitor-exit v0

    .line 99
    :goto_2
    return v2

    .line 100
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 103
    .line 104
    const-string/jumbo v5, "lockscreen.password_type"

    .line 105
    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {v0, v5, v6, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_8

    .line 117
    .line 118
    move-wide v7, v3

    .line 119
    goto :goto_4

    .line 120
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v7

    .line 124
    :goto_4
    long-to-int v0, v7

    .line 125
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualitySmartCard(I)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    const/4 p0, 0x6

    .line 132
    return p0

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 134
    .line 135
    monitor-enter v0

    .line 136
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    cmp-long v5, v7, v3

    .line 141
    .line 142
    if-nez v5, :cond_a

    .line 143
    .line 144
    monitor-exit v0

    .line 145
    return v2

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    goto :goto_7

    .line 148
    :cond_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 149
    .line 150
    iget-object v5, v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 151
    .line 152
    const-string/jumbo v9, "pwd"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, p1, v9, v7, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    if-nez v5, :cond_b

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_b
    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 167
    .line 168
    :goto_5
    if-eq v2, v1, :cond_c

    .line 169
    .line 170
    monitor-exit v0

    .line 171
    return v2

    .line 172
    :cond_c
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 173
    .line 174
    const-string/jumbo v1, "lockscreen.password_type"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1, v6, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_d

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    :goto_6
    long-to-int p0, v3

    .line 193
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    monitor-exit v0

    .line 198
    return p0

    .line 199
    :goto_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    throw p0
.end method

.method public getCurrentLskfBasedProtectorId(I)J
    .locals 3

    .line 1
    const-string/jumbo v0, "sp-handle"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "LockSettingsService"

    .line 10
    .line 11
    const-string v2, "Decrypting password for tied profile %d"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/16 v3, 0xc

    .line 30
    .line 31
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    array-length v5, v0

    .line 36
    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v6, "profile_key_name_decrypt_"

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljavax/crypto/SecretKey;

    .line 63
    .line 64
    const-string v5, "AES/GCM/NoPadding"

    .line 65
    .line 66
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    .line 71
    .line 72
    const/16 v7, 0x80

    .line 73
    .line 74
    invoke-direct {v6, v7, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x2

    .line 78
    invoke-virtual {v5, v4, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 90
    .line 91
    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 97
    .line 98
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 103
    .line 104
    invoke-interface {v0, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 109
    .line 110
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p0

    .line 115
    const-string p1, "Failed to talk to GateKeeper service"

    .line 116
    .line 117
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :goto_0
    return-object v3

    .line 121
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 122
    .line 123
    const-string p1, "Child profile lock file not found"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final getExpireTimeForPrev()J
    .locals 2

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo v0, "expirePreviousData requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->updateExpireTimeForPrev(Z)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public final getFailureCount(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFailureCount(Lcom/samsung/android/service/HermesService/IHermesService;JI)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFailureCount(Landroid/service/gatekeeper/IGateKeeperService;JI)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {p1, v1}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 43
    .line 44
    .line 45
    if-gez v1, :cond_1

    .line 46
    .line 47
    const-string p1, "LockSettingsService"

    .line 48
    .line 49
    const-string/jumbo v0, "getFailureCount error "

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget p1, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    .line 72
    .line 73
    if-lt v1, p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    return v1

    .line 90
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_2
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_3
    const-string v2, "LockSettingsService"

    .line 30
    .line 31
    const-string v3, " Unable to register death recipient"

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :cond_1
    :try_start_4
    const-string v0, "LockSettingsService"

    .line 45
    .line 46
    const-string v1, "Unable to acquire GateKeeperService"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "LockSettingsService"

    .line 5
    .line 6
    const-string v1, "Getting password history hash factor for user %d"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_6

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_1
    move-object v6, p1

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p0

    .line 46
    :try_start_2
    const-string p1, "LockSettingsService"

    .line 47
    .line 48
    const-string p2, "Failed to get unified profile password"

    .line 49
    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :goto_1
    :try_start_3
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 58
    .line 59
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    const/16 v0, -0x26ab

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    if-ne p2, v0, :cond_2

    .line 64
    .line 65
    :try_start_4
    const-string p2, "LockSettingsService"

    .line 66
    .line 67
    const-string v0, "!@ getHashFactor with prev!!!"

    .line 68
    .line 69
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x1

    .line 73
    move v7, v2

    .line 74
    move v2, p2

    .line 75
    goto :goto_2

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    goto :goto_5

    .line 78
    :cond_2
    move v7, p2

    .line 79
    :goto_2
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    :goto_3
    move-wide v4, v2

    .line 86
    goto :goto_4

    .line 87
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    goto :goto_3

    .line 92
    :goto_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v8, 0x0

    .line 99
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 104
    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    const-string p0, "LockSettingsService"

    .line 108
    .line 109
    const-string p2, "Current credential is incorrect"

    .line 110
    .line 111
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_4
    :try_start_5
    sget-object p2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 120
    .line 121
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    :goto_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 132
    :goto_6
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final declared-synchronized getHermesService()Lcom/samsung/android/service/HermesService/IHermesService;
    .locals 3

    .line 1
    const-string/jumbo v0, "getHermesService() is "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string/jumbo v2, "sepunion"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 21
    .line 22
    const-string v2, "HermesService"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

    .line 33
    .line 34
    const-string v1, "LockSettingsService"

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    .line 59
    throw v0
.end method

.method public final getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    const-string v0, "alias is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 20
    .line 21
    const/16 v0, 0x15

    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final getLong(Ljava/lang/String;JI)J
    .locals 1

    .line 1
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    :goto_0
    return-wide p2
.end method

.method public final getPinLength(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 4
    .line 5
    const-string v2, "LockSettingsHave"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget p0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    cmp-long v3, v1, v3

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return v4

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 45
    .line 46
    const-string/jumbo v3, "pwd"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 61
    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return v4

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 29
    .line 30
    if-eq v3, p1, :cond_1

    .line 31
    .line 32
    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 33
    .line 34
    if-ne v4, p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    :cond_1
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-object v0
.end method

.method public final getRecoverySecretTypes()[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getRecoveryStatus()Ljava/util/Map;
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string p0, "_id"

    .line 19
    .line 20
    const-string v9, "alias"

    .line 21
    .line 22
    const-string/jumbo v10, "recovery_status"

    .line 23
    .line 24
    .line 25
    filled-new-array {p0, v9, v10}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    filled-new-array {p0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string/jumbo v2, "keys"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v4, "uid = ?"

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :goto_1
    if-eqz p0, :cond_1

    .line 92
    .line 93
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_2
    throw v0
.end method

.method public final getSeparateProfileChallengeEnabled(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "lockscreen.profilechallenge"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getSeparateProfileChallengeEnabledInternal(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    const-string/jumbo v1, "lockscreen.profilechallenge"

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getStrongAuthForUser(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Landroid/app/admin/PasswordMetrics;

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/app/admin/PasswordMetrics;

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public final hasPendingEscrowToken(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hasSecureLockScreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 2
    .line 3
    return p0
.end method

.method public final haveAppLockBackupPin(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "applockbackuppin.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveAppLockFingerprintPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "applockfingerprintpassword.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveAppLockPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "applockpassword.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveAppLockPattern(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "applockpattern.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveAppLockPin(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "applockpin.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveCarrierPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "sktpassword.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveFMMPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "fmmpassword.key"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 2

    .line 1
    const-string p0, "Failed to initialize Keystore super keys for user "

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/security/AndroidKeyStoreMaintenance;->initUserSuperKeys(I[BZ)I

    .line 18
    .line 19
    .line 20
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    const-string v0, "RecoverableKeyStoreMgr"

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string/jumbo v1, "recoveryServiceCertFile is null"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "recoveryServiceSigFile is null"

    .line 24
    .line 25
    .line 26
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :try_start_1
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "The signature over the cert file is invalid. Cert: "

    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, " Sig: "

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 83
    .line 84
    const/16 p2, 0x1c

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :catch_1
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string p2, "Failed to parse the sig file: "

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 117
    .line 118
    const/16 p2, 0x19

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Initialize sp for user "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string/jumbo v1, "initializeSP"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/samsung/android/lock/LsLog;->enrollRequest(IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "Enroll [User %d NONE][initializeSP]"

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    const-string v1, "LockSettingsService"

    .line 49
    .line 50
    const-string v2, "Initializing synthetic password for user %d"

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    cmp-long v1, v1, v3

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x1

    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    move v1, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v1, v2

    .line 78
    :goto_0
    const-string v4, "Cannot reinitialize SP"

    .line 79
    .line 80
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/4 v6, 0x0

    .line 100
    const-wide/16 v7, 0x0

    .line 101
    .line 102
    move-object v10, v1

    .line 103
    move v11, p1

    .line 104
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(IJ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 112
    .line 113
    .line 114
    sget-boolean v4, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 115
    .line 116
    if-eqz v4, :cond_1

    .line 117
    .line 118
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_2

    .line 124
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 125
    .line 126
    .line 127
    const-string p0, "LockSettingsService"

    .line 128
    .line 129
    const-string v2, "Successfully initialized synthetic password for user %d"

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {p0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, v3}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 147
    .line 148
    .line 149
    monitor-exit v0

    .line 150
    return-object v1

    .line 151
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw p0
.end method

.method public final isCeStorageUnlocked(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "LockSettingsService"

    .line 10
    .line 11
    const-string v0, "Error checking whether CE storage is unlocked"

    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public isCredentialSharableWithParent(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/os/UserManager;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string/jumbo v1, "system"

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-class v1, Landroid/os/UserManager;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/os/UserManager;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    move-object p0, v0

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Failed to create context for user "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final isDualDarAuthUserId(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public final isEnterpriseUserId(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return p0

    .line 35
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final isEscrowTokenActive(JI)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 5
    .line 6
    const-string/jumbo v1, "spblob"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final isKnoxAdminActivated(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo p0, "enterprise_policy"

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresentAsUser(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string p1, "LockSettingsService"

    .line 26
    .line 27
    const-string v0, "Failed talking with enterprise policy service"

    .line 28
    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isProfileWithUnifiedLock(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isRemoteLock(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->haveFMMPassword(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCarrierLock(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    const/4 v2, 0x4

    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "locked"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 47
    :cond_2
    return v0
.end method

.method public final isSupportWeaver()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "security.securehw.available"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isSyntheticPasswordBasedCredentialLocked(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p0, p0, v0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isUserSecure(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isWeakEscrowTokenActive(JI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final isWeakEscrowTokenValid(J[BI)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 10
    .line 11
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 13
    .line 14
    move/from16 v11, p4

    .line 15
    .line 16
    invoke-virtual {v4, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v12, 0x0

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    const-string v0, "LockSettingsService"

    .line 24
    .line 25
    const-string v4, "Escrow token is disabled on the current user"

    .line 26
    .line 27
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return v12

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v9, 0x2

    .line 44
    move-wide v7, p1

    .line 45
    move-object/from16 v10, p3

    .line 46
    .line 47
    move/from16 v11, p4

    .line 48
    .line 49
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "LockSettingsService"

    .line 58
    .line 59
    const-string v4, "Invalid escrow token supplied"

    .line 60
    .line 61
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return v12

    .line 69
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    return v0

    .line 75
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final loadPasswordMetrics(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_f

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_f

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_f

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_f

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v1, 0x1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const-string/jumbo v3, "automatic_data_decryption"

    .line 105
    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-static {p1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-ne p1, v1, :cond_3

    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const v2, 0x1040c3f

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-direct {v3, p1, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(II)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    const-string v2, "Core.PROFILE_ENCRYPTED_TITLE"

    .line 169
    .line 170
    if-eqz p1, :cond_6

    .line 171
    .line 172
    const-string/jumbo p1, "ro.build.characteristics"

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    const-string/jumbo v3, "tablet"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    goto :goto_0

    .line 211
    :cond_5
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    .line 222
    .line 223
    const/4 v4, 0x4

    .line 224
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    goto :goto_0

    .line 232
    :cond_6
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    .line 243
    .line 244
    const/4 v4, 0x5

    .line 245
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_7

    .line 261
    .line 262
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    const v3, 0x1040c3b

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    :goto_1
    move-object v8, v2

    .line 276
    goto :goto_2

    .line 277
    :cond_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 284
    .line 285
    const/4 v5, 0x1

    .line 286
    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(II)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    const-string v3, "Core.PROFILE_ENCRYPTED_MESSAGE"

    .line 306
    .line 307
    if-eqz v2, :cond_8

    .line 308
    .line 309
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    .line 320
    .line 321
    const/4 v5, 0x1

    .line 322
    invoke-direct {v4, p0, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    goto :goto_1

    .line 330
    :cond_8
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 331
    .line 332
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    .line 341
    .line 342
    const/4 v5, 0x2

    .line 343
    invoke-direct {v4, p0, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    goto :goto_1

    .line 351
    :goto_2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    const/4 v9, 0x0

    .line 360
    if-eqz v3, :cond_a

    .line 361
    .line 362
    :cond_9
    move-object v10, v9

    .line 363
    goto :goto_3

    .line 364
    :cond_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 365
    .line 366
    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 371
    .line 372
    const/4 v5, 0x2

    .line 373
    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(II)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 381
    .line 382
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    check-cast v2, Ljava/lang/Boolean;

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_9

    .line 393
    .line 394
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    .line 405
    .line 406
    const/4 v4, 0x3

    .line 407
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 408
    .line 409
    .line 410
    const-string v4, "Core.PROFILE_ENCRYPTED_DETAIL"

    .line 411
    .line 412
    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    move-object v10, v2

    .line 417
    :goto_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 418
    .line 419
    const-string/jumbo v3, "keyguard"

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Landroid/app/KeyguardManager;

    .line 427
    .line 428
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    invoke-virtual {v2, v9, v9, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    if-nez v4, :cond_b

    .line 437
    .line 438
    goto/16 :goto_5

    .line 439
    .line 440
    :cond_b
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-nez v2, :cond_c

    .line 445
    .line 446
    goto/16 :goto_5

    .line 447
    .line 448
    :cond_c
    const/high16 v2, 0x10800000

    .line 449
    .line 450
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 451
    .line 452
    .line 453
    invoke-static {}, Landroid/app/admin/flags/Flags;->hsumUnlockNotificationFix()Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_d

    .line 458
    .line 459
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    const/high16 v5, 0xa000000

    .line 466
    .line 467
    const/4 v6, 0x0

    .line 468
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    goto :goto_4

    .line 473
    :cond_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    const/high16 v5, 0xa000000

    .line 480
    .line 481
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    :goto_4
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    filled-new-array {v3, p2}, [Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object p2

    .line 497
    const-string v3, "LockSettingsService"

    .line 498
    .line 499
    const-string v4, "Showing encryption notification for user %d; reason: %s"

    .line 500
    .line 501
    invoke-static {v3, v4, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 505
    .line 506
    .line 507
    move-result p2

    .line 508
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 509
    .line 510
    .line 511
    move-result p2

    .line 512
    const/16 v3, 0x9

    .line 513
    .line 514
    const v4, 0x106001c

    .line 515
    .line 516
    .line 517
    const-wide/16 v5, 0x0

    .line 518
    .line 519
    const v7, 0x10805fc

    .line 520
    .line 521
    .line 522
    if-eqz p2, :cond_e

    .line 523
    .line 524
    new-instance p2, Landroid/app/Notification$Builder;

    .line 525
    .line 526
    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 527
    .line 528
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 529
    .line 530
    invoke-direct {p2, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 534
    .line 535
    .line 536
    move-result-object p2

    .line 537
    invoke-virtual {p2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 538
    .line 539
    .line 540
    move-result-object p2

    .line 541
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 542
    .line 543
    .line 544
    move-result-object p2

    .line 545
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 546
    .line 547
    .line 548
    move-result-object p2

    .line 549
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 550
    .line 551
    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 580
    .line 581
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 585
    .line 586
    .line 587
    move-result-object p2

    .line 588
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 597
    .line 598
    invoke-virtual {p0, v9, v3, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 599
    .line 600
    .line 601
    goto :goto_5

    .line 602
    :cond_e
    new-instance p2, Landroid/app/Notification$Builder;

    .line 603
    .line 604
    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 605
    .line 606
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 607
    .line 608
    invoke-direct {p2, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    invoke-virtual {p2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 616
    .line 617
    .line 618
    move-result-object p2

    .line 619
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 620
    .line 621
    .line 622
    move-result-object p2

    .line 623
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 624
    .line 625
    .line 626
    move-result-object p2

    .line 627
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 628
    .line 629
    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 634
    .line 635
    .line 636
    move-result-object p2

    .line 637
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 654
    .line 655
    .line 656
    move-result-object p1

    .line 657
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 658
    .line 659
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 663
    .line 664
    .line 665
    move-result-object p2

    .line 666
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 675
    .line 676
    invoke-virtual {p0, v9, v3, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 677
    .line 678
    .line 679
    :cond_f
    :goto_5
    return-void
.end method

.method public final migrateLockSettingsDB()V
    .locals 7

    .line 1
    const-string/jumbo v0, "locksettings_db_backup"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "locksettings_db_restore"

    .line 5
    .line 6
    .line 7
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    .line 8
    .line 9
    const-string v3, "LockSettingsService"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string p0, "!@ migrateLockSettingsDB already finish"

    .line 14
    .line 15
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    const-string v5, "PRAGMA quick_check(1)"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    const-string/jumbo v5, "ok"

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 53
    .line 54
    .line 55
    goto :goto_4

    .line 56
    :catch_0
    move-exception v4

    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v5

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_0
    if-eqz v4, :cond_2

    .line 65
    .line 66
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception v4

    .line 71
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 75
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_3
    move v5, v2

    .line 79
    :goto_4
    if-eqz v5, :cond_5

    .line 80
    .line 81
    const-string v4, "!@ LockSettingsDB, checkIntegrity pass."

    .line 82
    .line 83
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    const-wide/16 v3, 0x0

    .line 87
    .line 88
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    cmp-long v5, v5, v3

    .line 93
    .line 94
    if-nez v5, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    cmp-long v3, v5, v3

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    const-string/jumbo v3, "migrate backup locksettings.db! Maybe FOTA updated or backup failed. try to backup DB!"

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 115
    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    const-string/jumbo v0, "migrate backup locksettings.db! Maybe DB removed. try to restore DB!"

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_4
    const-string/jumbo v0, "migrate backup locksettings.db! Maybe 1st boot!!"

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    const-string v0, "LockSettingsDB, DB Integrity failed! restore locksettings.db!"

    .line 156
    .line 157
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    const-string v0, "LockSettingsDB, DB Integrity failed! but do not have backup!"

    .line 169
    .line 170
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 171
    .line 172
    .line 173
    :goto_5
    return-void

    .line 174
    :catch_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    const-string v0, "LockSettingsDB, Found corrupted! restore locksettings.db!"

    .line 183
    .line 184
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    const-string p0, "LockSettingsDB, Found corrupted! but do not have backup!"

    .line 196
    .line 197
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_6
    const/4 p0, 0x1

    .line 201
    sput-boolean p0, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    .line 202
    .line 203
    return-void
.end method

.method public final migrateMdfppPwdData(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migratePwdDataForKnox(IJ)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public migrateOldDataAfterSystemReady()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const-string/jumbo v0, "migrated_frp2"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 27
    .line 28
    if-eq v0, v3, :cond_1

    .line 29
    .line 30
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq v3, v1, :cond_0

    .line 34
    .line 35
    if-ne v3, v4, :cond_4

    .line 36
    .line 37
    :cond_0
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    array-length v3, v0

    .line 42
    if-lt v3, v4, :cond_4

    .line 43
    .line 44
    aget-byte v3, v0, v2

    .line 45
    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    aget-byte v0, v0, v1

    .line 49
    .line 50
    if-ne v0, v4, :cond_4

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 83
    .line 84
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 91
    .line 92
    monitor-enter v4

    .line 93
    :try_start_0
    const-string/jumbo v0, "lockscreen.password_type"

    .line 94
    .line 95
    .line 96
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 97
    .line 98
    const-wide/16 v6, 0x0

    .line 99
    .line 100
    invoke-virtual {p0, v0, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    long-to-int v0, v5

    .line 105
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 106
    .line 107
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 108
    .line 109
    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    const/high16 v8, 0x20000

    .line 114
    .line 115
    if-eq v0, v8, :cond_3

    .line 116
    .line 117
    const/high16 v9, 0x30000

    .line 118
    .line 119
    if-eq v0, v9, :cond_3

    .line 120
    .line 121
    const/high16 v8, 0x40000

    .line 122
    .line 123
    if-eq v0, v8, :cond_3

    .line 124
    .line 125
    const/high16 v9, 0x50000

    .line 126
    .line 127
    if-eq v0, v9, :cond_3

    .line 128
    .line 129
    const/high16 v9, 0x60000

    .line 130
    .line 131
    if-eq v0, v9, :cond_3

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    move v0, v8

    .line 135
    :goto_0
    invoke-virtual {v5, v6, v7, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 136
    .line 137
    .line 138
    monitor-exit v4

    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0

    .line 143
    :cond_4
    :goto_1
    const-string/jumbo v0, "migrated_frp2"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 147
    .line 148
    .line 149
    :cond_5
    const-string v0, "LockSettingsService"

    .line 150
    .line 151
    const-string/jumbo v3, "lockscreen.pwdata.ver"

    .line 152
    .line 153
    .line 154
    const-string v4, ""

    .line 155
    .line 156
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    sget-object v6, Lcom/samsung/android/lock/LsConstants;->SECURITY_LOG_VERSION:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_7

    .line 167
    .line 168
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_6

    .line 173
    .line 174
    const-string/jumbo v5, "empty"

    .line 175
    .line 176
    .line 177
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v8, "SecurityLog ver updated! "

    .line 180
    .line 181
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v5, " -> "

    .line 188
    .line 189
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {v5}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v3, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 206
    .line 207
    const-string/jumbo v5, "locksettings.log.ver"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v2, v2, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-ge v3, v1, :cond_9

    .line 215
    .line 216
    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->migrate(I)V

    .line 217
    .line 218
    .line 219
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    move v7, v2

    .line 230
    :goto_2
    if-ge v7, v6, :cond_8

    .line 231
    .line 232
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 237
    .line 238
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 239
    .line 240
    const-string v8, "User "

    .line 241
    .line 242
    const-string v9, " list updated!\n"

    .line 243
    .line 244
    invoke-static {v4, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-static {v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-static {v4}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 264
    .line 265
    const-string/jumbo v10, "lockscreen.token"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9, v10, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    add-int/lit8 v7, v7, 0x1

    .line 272
    .line 273
    move-object v4, v8

    .line 274
    goto :goto_2

    .line 275
    :cond_8
    invoke-static {v4}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v3, v5, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    :cond_9
    :try_start_1
    const-string/jumbo v3, "window"

    .line 291
    .line 292
    .line 293
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-interface {v3}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eqz v3, :cond_a

    .line 306
    .line 307
    const-string v2, "!@ safe mode on"

    .line 308
    .line 309
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    .line 313
    .line 314
    .line 315
    goto :goto_4

    .line 316
    :catch_0
    move-exception p0

    .line 317
    goto :goto_3

    .line 318
    :cond_a
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    sget v3, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    .line 323
    .line 324
    if-lt v2, v3, :cond_b

    .line 325
    .line 326
    const-string v2, "!@ debug mode on, Too many failed"

    .line 327
    .line 328
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_b
    const-string p0, "!@ safe mode off"

    .line 336
    .line 337
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v2, "SAFEMODE Exception occurs! "

    .line 344
    .line 345
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-static {p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :goto_4
    return-void
.end method

.method public final migrateSpblob()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "LockSettingsService"

    .line 6
    .line 7
    const-string v0, "!@ migrateSpblob already finish"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "LockSettingsService"

    .line 14
    .line 15
    const-string v1, "!@ migrateSpblob()"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lcom/samsung/android/lock/SPBnRManager;->init(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->resetMode()V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "locksettings_spblob_backup"

    .line 31
    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long v0, v4, v1

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    cmp-long v0, v5, v1

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const-string/jumbo v0, "migrate backup SPBLOB! Maybe FOTA updated or backup failed. try to backup SPBLOB!"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-static {v3, v5, v6, v0, v1}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->startBackup()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    const-string/jumbo v0, "locksettings_spblob_backup"

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 80
    .line 81
    .line 82
    const-string p0, "SPblobBNR, Success backup spblob dir"

    .line 83
    .line 84
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string p0, "SPblobBNR, Failed backup spblob dir"

    .line 89
    .line 90
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string/jumbo p0, "migrate backup SPBLOB! Maybe 1st boot!!"

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    invoke-static {v3, v0, v1, v5, v6}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 113
    .line 114
    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->checkIntegrity()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    const-string p0, "LockSettingsService"

    .line 122
    .line 123
    const-string v1, "!@ SPblobBNR, checkIntegrity pass."

    .line 124
    .line 125
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    const-string/jumbo v1, "locksettings_spblob_backup"

    .line 132
    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    invoke-virtual {p0, v1, v5, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 139
    .line 140
    .line 141
    const-string p0, "SPblobBNR, File corruption detected. Backed up or restored."

    .line 142
    .line 143
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v3}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_1
    sput-boolean v4, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    .line 162
    .line 163
    return-void

    .line 164
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0
.end method

.method public final migrateUserToSpWithBoundCeKeyLocked(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "LockSettingsService"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "User %d is secured; no migration needed"

    .line 18
    .line 19
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v0, v4, v2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "Migrating unsecured user %d to SP-based credential"

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "Existing unsecured user %d has a synthetic password; re-encrypting CE key with it"

    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const/4 v8, 0x0

    .line 74
    move v7, p1

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    .line 92
    .line 93
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final migrateUserToSpWithBoundKeysLocked(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "LockSettingsService"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "User %d is secured; no migration needed"

    .line 18
    .line 19
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v0, v4, v2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "Migrating unsecured user %d to SP-based credential"

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "Existing unsecured user %d has a synthetic password"

    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const/4 v8, 0x0

    .line 74
    move v7, p1

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    .line 92
    .line 93
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    const/4 v2, 0x0

    .line 98
    const/4 v3, 0x0

    .line 99
    const-string/jumbo v4, "migrated_all_users_to_sp_and_bound_ce"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "Encrypting CE key of user %d with synthetic password"

    .line 117
    .line 118
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const-string v3, "Initializing Keystore super keys for user %d"

    .line 133
    .line 134
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final notifySeparateProfileChallengeChanged(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .locals 7

    .line 1
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 8
    .line 9
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->migrateWithAuthToken(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    :cond_2
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 50
    .line 51
    monitor-enter p2

    .line 52
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 56
    .line 57
    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    const-string v4, "LockSettingsService"

    .line 82
    .line 83
    const-string v5, "Activating escrow token %016x for user %d"

    .line 84
    .line 85
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v4, v5, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 97
    .line 98
    invoke-virtual {v1, p3, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :cond_4
    iget-boolean p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSecureFolderAuthToken:Z

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    const-string/jumbo p2, "onCredentialVerified : unlockSecureFolderWithToken is true."

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-static {v1, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_7

    .line 132
    .line 133
    :try_start_2
    const-string/jumbo p2, "password_policy"

    .line 134
    .line 135
    .line 136
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_6

    .line 145
    .line 146
    invoke-interface {p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    .line 147
    .line 148
    .line 149
    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    if-lez p2, :cond_6

    .line 151
    .line 152
    const-string p2, "LockSettingsService"

    .line 153
    .line 154
    const-string v1, "Password change requested so avoid setDeviceLockedForUser false"

    .line 155
    .line 156
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_0
    move-exception p2

    .line 161
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    :cond_6
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    const-class v1, Landroid/app/trust/TrustManager;

    .line 167
    .line 168
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Landroid/app/trust/TrustManager;

    .line 173
    .line 174
    invoke-virtual {p2, p3, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 179
    .line 180
    invoke-virtual {p2, v0, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 181
    .line 182
    .line 183
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 186
    .line 187
    const/4 v1, 0x5

    .line 188
    invoke-virtual {p2, v1, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    throw p0
.end method

.method public final onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "ppp_enroll_timestamp"

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-static {v0, v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    const-string/jumbo v0, "lockscreen.passwordhistory"

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, ""

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    move-object v2, v3

    .line 46
    :cond_2
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 47
    .line 48
    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 55
    .line 56
    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v4, p2

    .line 62
    :goto_0
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5, v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "LockSettingsService"

    .line 84
    .line 85
    const-string v5, "Adding new password to password history for user %d"

    .line 86
    .line 87
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string/jumbo v5, "lockscreen.password_salt"

    .line 95
    .line 96
    .line 97
    const-wide/16 v6, 0x0

    .line 98
    .line 99
    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    cmp-long v6, v8, v6

    .line 104
    .line 105
    if-nez v6, :cond_5

    .line 106
    .line 107
    sget-object v6, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    invoke-virtual {p0, v5, v8, v9, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {p1, v5, v3}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-nez v3, :cond_6

    .line 129
    .line 130
    const-string v0, "Failed to compute password hash; password history won\'t be updated"

    .line 131
    .line 132
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_7

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    const-string v4, ","

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    new-instance v5, Ljava/util/StringJoiner;

    .line 150
    .line 151
    invoke-direct {v5, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 155
    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    :goto_1
    add-int/lit8 v4, v1, -0x1

    .line 159
    .line 160
    if-ge v3, v4, :cond_8

    .line 161
    .line 162
    array-length v4, v2

    .line 163
    if-ge v3, v4, :cond_8

    .line 164
    .line 165
    aget-object v4, v2, v3

    .line 166
    .line 167
    invoke-virtual {v5, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 168
    .line 169
    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    invoke-virtual {v5}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :goto_2
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    :goto_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    const-class v1, Landroid/app/trust/TrustManager;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/app/trust/TrustManager;

    .line 189
    .line 190
    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_9

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eq p2, v0, :cond_a

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_a
    new-instance v0, Landroid/content/Intent;

    .line 217
    .line 218
    const-string v1, "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v2, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 228
    .line 229
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updateVerifier(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x7d0

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 14
    .line 15
    const-string v1, "Caller must be shell"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v3, 0x0

    .line 39
    aget-object v3, p4, v3

    .line 40
    .line 41
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "LockSettingsService"

    .line 54
    .line 55
    const-string v5, "Executing shell command \'%s\'; callingPid=%d, callingUid=%d"

    .line 56
    .line 57
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v9

    .line 64
    :try_start_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    .line 65
    .line 66
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    .line 68
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 79
    .line 80
    iput-object v1, v3, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    .line 81
    .line 82
    move-object v1, v3

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, p1

    .line 85
    move-object v4, p2

    .line 86
    move-object v5, p3

    .line 87
    move-object v6, p4

    .line 88
    move-object/from16 v7, p5

    .line 89
    .line 90
    move-object/from16 v8, p6

    .line 91
    .line 92
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public final onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "LockSettingsService"

    .line 13
    .line 14
    const-string p1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 21
    .line 22
    iget-byte v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    .line 23
    .line 24
    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 25
    .line 26
    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    const-string v0, "RebootEscrowManager"

    .line 41
    .line 42
    const-string v1, "Not storing escrow data, RebootEscrowProvider is unavailable"

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_2
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    .line 63
    .line 64
    .line 65
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    iput-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 67
    .line 68
    monitor-exit v3

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    const-string v4, "RebootEscrowManager"

    .line 71
    .line 72
    const-string v6, "Could not generate reboot escrow key"

    .line 73
    .line 74
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    move-object v4, v5

    .line 79
    :goto_0
    if-nez v4, :cond_4

    .line 80
    .line 81
    const-string v0, "RebootEscrowManager"

    .line 82
    .line 83
    const-string v1, "Could not generate escrow key"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_4
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 91
    .line 92
    iget-object v6, v3, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter v6

    .line 95
    :try_start_3
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    move-object v5, v3

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_5
    :try_start_4
    const-string v3, "AES"

    .line 108
    .line 109
    const-string v7, "AndroidKeyStore"

    .line 110
    .line 111
    invoke-static {v3, v7}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 116
    .line 117
    const-string/jumbo v8, "reboot_escrow_key_store_encryption_key"

    .line 118
    .line 119
    .line 120
    const/4 v9, 0x3

    .line 121
    invoke-direct {v7, v8, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    const/16 v8, 0x100

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const-string v8, "GCM"

    .line 131
    .line 132
    filled-new-array {v8}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const-string v8, "NoPadding"

    .line 141
    .line 142
    filled-new-array {v8}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    const/16 v8, 0x78

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v3, v7}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 163
    .line 164
    .line 165
    move-result-object v5
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    :try_start_5
    monitor-exit v6

    .line 167
    goto :goto_1

    .line 168
    :catch_1
    move-exception v3

    .line 169
    const-string v7, "RebootEscrowKeyStoreManager"

    .line 170
    .line 171
    const-string v8, "Unable to generate key from keystore."

    .line 172
    .line 173
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    :goto_1
    if-nez v5, :cond_6

    .line 178
    .line 179
    const-string v0, "RebootEscrowManager"

    .line 180
    .line 181
    const-string v1, "Failed to generate encryption key from keystore."

    .line 182
    .line 183
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    :try_start_6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget-object v3, v4, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 191
    .line 192
    invoke-static {v2, v3}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-static {v2, v5}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v4, Ljava/io/DataOutputStream;

    .line 206
    .line 207
    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 208
    .line 209
    .line 210
    const/4 v5, 0x2

    .line 211
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 221
    .line 222
    .line 223
    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 224
    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 225
    .line 226
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    const/4 v4, 0x1

    .line 231
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 240
    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const/4 v5, 0x6

    .line 246
    invoke-direct {v2, v5, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 247
    .line 248
    .line 249
    iget v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 250
    .line 251
    iget-object v5, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 252
    .line 253
    aput-object v2, v5, v3

    .line 254
    .line 255
    add-int/2addr v3, v4

    .line 256
    array-length v2, v5

    .line 257
    rem-int/2addr v3, v2

    .line 258
    iput v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 259
    .line 260
    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :catch_2
    move-exception v1

    .line 265
    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 267
    .line 268
    .line 269
    const-string v0, "RebootEscrowManager"

    .line 270
    .line 271
    const-string v2, "Could not escrow reboot data"

    .line 272
    .line 273
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .line 275
    .line 276
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :goto_3
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 281
    throw p0

    .line 282
    :goto_4
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 283
    throw p0
.end method

.method public onUserStopped(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "LockSettingsService"

    .line 19
    .line 20
    const-string v3, "Hiding encryption notification for user %d"

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/16 v3, 0x9

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 52
    .line 53
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 77
    .line 78
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method

.method public final passwordToHash(I[B)[B
    .locals 5

    .line 1
    const-string/jumbo v0, "lockscreen.password_salt"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    cmp-long v1, v3, v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p2, p0}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 43
    .line 44
    iget-object v6, v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    move-object v4, v5

    .line 53
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 54
    .line 55
    :try_start_0
    invoke-static {v4, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p0

    .line 77
    :try_start_1
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const/16 p2, 0x16

    .line 84
    .line 85
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 97
    .line 98
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    .line 100
    const-string p2, "Application uid="

    .line 101
    .line 102
    const-string p3, " does not have pending session \'"

    .line 103
    .line 104
    const-string v0, "\'"

    .line 105
    .line 106
    invoke-static {v1, p2, p3, p1, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 p2, 0x18

    .line 111
    .line 112
    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final refreshStoredPinLength(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 4
    .line 5
    const-string v2, "LockSettingsHave"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isAutoPinConfirmationFeatureAvailable()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 34
    .line 35
    const-string/jumbo v4, "pwd"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1, v4, v6, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget v3, v1, Landroid/app/admin/PasswordMetrics;->length:I

    .line 50
    .line 51
    iget v1, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    if-ne v1, v4, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    if-ge v3, v1, :cond_3

    .line 66
    .line 67
    :cond_2
    const/4 v3, -0x1

    .line 68
    :cond_3
    iget v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 69
    .line 70
    if-eq v1, v3, :cond_4

    .line 71
    .line 72
    iput v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 73
    .line 74
    const-string/jumbo v4, "pwd"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    move-object v3, p0

    .line 82
    move v8, p1

    .line 83
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    const/4 v2, 0x1

    .line 90
    :goto_0
    monitor-exit v0

    .line 91
    return v2

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const-string p0, "LockSettingsService"

    .line 95
    .line 96
    const-string p1, "PasswordMetrics is not available"

    .line 97
    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    monitor-exit v0

    .line 102
    return v2

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public final registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    const-string/jumbo v0, "registerRemoteLockCallback!!"

    .line 28
    .line 29
    .line 30
    const-string v1, "LockSettingsService"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 53
    .line 54
    if-ne v2, p1, :cond_3

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-interface {p2, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string/jumbo p1, "failed checkRemoteLockPassword callback!! after register"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    const/4 p1, -0x1

    .line 75
    :goto_1
    const-string/jumbo p2, "result"

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :try_start_1
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 83
    .line 84
    invoke-interface {p2, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception p1

    .line 89
    const-string/jumbo p2, "failed sendResult callback!! after register"

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_2
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public final registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final removeCachedUnifiedChallenge(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .locals 6

    .line 1
    const-string v0, "Clearing activated reset pwd token for DualDAR user: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    cmp-long v2, p1, v2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string p0, "LockSettingsService"

    .line 16
    .line 17
    const-string p1, "Escrow token handle equals LSKF-based protector ID"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return v3

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 27
    .line 28
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x1

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    monitor-exit v1

    .line 65
    return v5

    .line 66
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 67
    .line 68
    const-string/jumbo v4, "spblob"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p3, v4, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 78
    .line 79
    invoke-virtual {v2, p3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(IJ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    const-string v2, "LockSettingsService"

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 112
    .line 113
    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->clearResetPasswordToken(IJ)V

    .line 118
    .line 119
    .line 120
    :cond_3
    monitor-exit v1

    .line 121
    return v5

    .line 122
    :cond_4
    monitor-exit v1

    .line 123
    return v3

    .line 124
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method

.method public final removeGatekeeperPasswordHandle(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final removeKey(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    const-string v0, "alias is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v4, p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string/jumbo v5, "keys"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v6, "uid = ? AND alias = ?"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-lez v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v2, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 51
    .line 52
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final removeKeystoreProfileKey(I)V
    .locals 5

    .line 1
    const-string v0, "LockSettingsService"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v1, "profile_key_name_encrypt_"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string/jumbo v2, "profile_key_name_decrypt_"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const-string v3, "Removing keystore profile key for user %d"

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v1, "Error removing keystore profile key for user %d"

    .line 76
    .line 77
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_2
    return-void
.end method

.method public final removeStateForReusedUserIdIfNecessary(II)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    const-string/jumbo v1, "serial-number"

    .line 7
    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eq v0, p2, :cond_2

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "LockSettingsService"

    .line 35
    .line 36
    const-string v3, "Removing stale state for reused userId %d (serial %d => %d)"

    .line 37
    .line 38
    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final removeUserState(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final removeWeakEscrowToken(JI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final reportSuccessfulBiometricUnlock(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    .line 4
    .line 5
    const-string v2, "LockSettingsBiometric"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "reportSuccessfulBiometricUnlock for isStrongBiometric="

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", userId="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "LockSettingsStrongAuth"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    const/16 p1, 0x8

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    const/4 p1, 0x7

    .line 65
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final requestRemoteLockInfo(I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v0, 0x4

    .line 11
    if-ge v4, v0, :cond_2

    .line 12
    .line 13
    new-instance v5, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v7, "locked"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v1, v6, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v8, "message"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-virtual {v1, v7, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v10, "phonenumber"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v1, v9, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v11, "enableemergencycall"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string/jumbo v12, "clientname"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v1, v11, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string/jumbo v13, "emailaddress"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v1, v12, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const-string v13, "allowfailcount"

    .line 154
    .line 155
    invoke-static {v4, v13}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    const-wide/16 v14, 0x0

    .line 160
    .line 161
    move-object/from16 v16, v9

    .line 162
    .line 163
    invoke-virtual {v1, v13, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 164
    .line 165
    .line 166
    move-result-wide v8

    .line 167
    long-to-int v8, v8

    .line 168
    const-string/jumbo v9, "locktime"

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v9}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    move v13, v8

    .line 176
    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    const-string/jumbo v0, "permanentblockcount"

    .line 181
    .line 182
    .line 183
    invoke-static {v4, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 188
    .line 189
    .line 190
    move-result-wide v14

    .line 191
    long-to-int v0, v14

    .line 192
    new-instance v14, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string/jumbo v15, "skippin"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual {v1, v14, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    new-instance v15, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string/jumbo v3, "skipsupport"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    const/4 v15, 0x0

    .line 233
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    new-instance v15, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move/from16 v17, v3

    .line 246
    .line 247
    const-string/jumbo v3, "appname"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    const/4 v15, 0x0

    .line 258
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const-string/jumbo v15, "customer_app_name"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string/jumbo v15, "packagename"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    const/4 v15, 0x0

    .line 287
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    const-string/jumbo v15, "customer_package_name"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    new-instance v3, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 298
    .line 299
    invoke-direct {v3, v4, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    move-object/from16 v6, v16

    .line 307
    .line 308
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v3, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v3, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3, v13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {v3, v8, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    move/from16 v3, v17

    .line 341
    .line 342
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 355
    .line 356
    const/4 v5, 0x4

    .line 357
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 366
    .line 367
    const-string/jumbo v5, "failed changeRemoteLockState callback!"

    .line 368
    .line 369
    .line 370
    const-string v6, "LockSettingsService"

    .line 371
    .line 372
    if-eqz v0, :cond_0

    .line 373
    .line 374
    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .line 376
    .line 377
    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    move-object v7, v0

    .line 380
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 384
    .line 385
    .line 386
    :cond_0
    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 387
    .line 388
    const/4 v7, 0x5

    .line 389
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 398
    .line 399
    if-eqz v0, :cond_1

    .line 400
    .line 401
    :try_start_1
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    .line 403
    .line 404
    goto :goto_2

    .line 405
    :catch_1
    move-exception v0

    .line 406
    move-object v3, v0

    .line 407
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 411
    .line 412
    .line 413
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 414
    .line 415
    const/4 v3, 0x0

    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_2
    return-void
.end method

.method public final requireStrongAuth(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final resetKeyStore(I)V
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Resetting keystore for user %d"

    .line 20
    .line 21
    const-string v2, "LockSettingsService"

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 57
    .line 58
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 59
    .line 60
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 67
    .line 68
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 75
    .line 76
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    :try_start_0
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 89
    .line 90
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    .line 108
    const-string v5, "Failed to decrypt child profile key"

    .line 109
    .line 110
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const/4 v2, -0x1

    .line 115
    const/4 v3, 0x0

    .line 116
    :try_start_1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 117
    .line 118
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    array-length v5, v4

    .line 123
    move v6, v3

    .line 124
    :goto_1
    if-ge v6, v5, :cond_4

    .line 125
    .line 126
    aget v7, v4, v6

    .line 127
    .line 128
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 129
    .line 130
    array-length v9, v8

    .line 131
    move v10, v3

    .line 132
    :goto_2
    if-ge v10, v9, :cond_3

    .line 133
    .line 134
    aget v11, v8, v10

    .line 135
    .line 136
    invoke-static {v7, v11}, Landroid/os/UserHandle;->getUid(II)I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    int-to-long v11, v11

    .line 141
    invoke-static {v3, v11, v12}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 142
    .line 143
    .line 144
    add-int/lit8 v10, v10, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catchall_0
    move-exception v4

    .line 148
    goto :goto_4

    .line 149
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 153
    .line 154
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_5

    .line 163
    .line 164
    const/4 v4, 0x2

    .line 165
    const-wide/16 v5, 0x66

    .line 166
    .line 167
    invoke-static {v4, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-ge v3, v4, :cond_8

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    .line 191
    .line 192
    if-eq v4, v2, :cond_6

    .line 193
    .line 194
    if-eqz v5, :cond_6

    .line 195
    .line 196
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    if-eqz v5, :cond_7

    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 202
    .line 203
    .line 204
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    return-void

    .line 208
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-ge v3, v5, :cond_b

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ljava/lang/Integer;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Lcom/android/internal/widget/LockscreenCredential;

    .line 229
    .line 230
    if-eq v5, v2, :cond_9

    .line 231
    .line 232
    if-eqz v6, :cond_9

    .line 233
    .line 234
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 235
    .line 236
    .line 237
    :cond_9
    if-eqz v6, :cond_a

    .line 238
    .line 239
    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 240
    .line 241
    .line 242
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_b
    throw v4
.end method

.method public final scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    .line 4
    .line 5
    const-string v2, "LockSettingsBiometric"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "scheduleNonStrongBiometricIdleTimeout for userId="

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "LockSettingsStrongAuth"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    const/16 v0, 0x9

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final sendCredentialsOnChangeIfRequired(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 17

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    move-object v12, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v13

    .line 28
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    move-object/from16 v14, p0

    .line 45
    .line 46
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 47
    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string v15, "RecoverableKeyStoreMgr"

    .line 56
    .line 57
    :try_start_0
    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 62
    .line 63
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 64
    .line 65
    iget-object v4, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    new-instance v10, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v16, Landroid/security/Scrypt;

    .line 79
    .line 80
    invoke-direct/range {v16 .. v16}, Landroid/security/Scrypt;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 81
    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    move-object v1, v0

    .line 85
    move-object v7, v12

    .line 86
    move-object/from16 p2, v12

    .line 87
    .line 88
    move-object v12, v11

    .line 89
    move-object/from16 v11, v16

    .line 90
    .line 91
    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 95
    .line 96
    const-wide/16 v2, 0x7d0

    .line 97
    .line 98
    invoke-interface {v12, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_6

    .line 102
    :catch_0
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :catch_1
    move-exception v0

    .line 105
    goto :goto_4

    .line 106
    :catch_2
    move-exception v0

    .line 107
    goto :goto_5

    .line 108
    :catch_3
    move-exception v0

    .line 109
    move-object/from16 p2, v12

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_4
    move-exception v0

    .line 113
    move-object/from16 p2, v12

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catch_5
    move-exception v0

    .line 117
    move-object/from16 p2, v12

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :goto_3
    const-string v1, "InsecureUserException during lock screen secret update"

    .line 121
    .line 122
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    goto :goto_6

    .line 126
    :goto_4
    const-string v1, "Key store error encountered during recoverable key sync"

    .line 127
    .line 128
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :goto_5
    const-string v1, "Should never happen - algorithm unavailable for KeySync"

    .line 133
    .line 134
    invoke-static {v15, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    :goto_6
    move-object/from16 v12, p2

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    return-void
.end method

.method public final sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v14, "RecoverableKeyStoreMgr"

    .line 73
    .line 74
    :try_start_0
    iget-object v15, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    .line 76
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v4, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 79
    .line 80
    iget-object v5, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 81
    .line 82
    iget-object v6, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 83
    .line 84
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 85
    .line 86
    invoke-static {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    new-instance v12, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 91
    .line 92
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v13, Landroid/security/Scrypt;

    .line 96
    .line 97
    invoke-direct {v13}, Landroid/security/Scrypt;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v10, 0x0

    .line 101
    move-object v3, v0

    .line 102
    invoke-direct/range {v3 .. v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    .line 107
    const-wide/16 v4, 0x7d0

    .line 108
    .line 109
    invoke-interface {v15, v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto :goto_2

    .line 117
    :catch_2
    move-exception v0

    .line 118
    goto :goto_3

    .line 119
    :goto_1
    const-string v3, "Impossible - insecure user, but user just entered lock screen"

    .line 120
    .line 121
    invoke-static {v14, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :goto_2
    const-string v3, "Key store error encountered during recoverable key sync"

    .line 126
    .line 127
    invoke-static {v14, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :goto_3
    const-string v3, "Should never happen - algorithm unavailable for KeySync"

    .line 132
    .line 133
    invoke-static {v14, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    return-void
.end method

.method public final sendLockTypeChangedInfo(I)V
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo p1, "sendLockTypeChangedInfo requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "applockbackuppin.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "applockfingerprintpassword.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setAppLockPassword(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "applockpassword.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setAppLockPattern(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "applockpattern.key"

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setAppLockPin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "applockpin.key"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setBackupLskfBasedProtectorId(IJ)V
    .locals 9

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "!@ setBackupLskfBasedProtectorId : %016x"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "LockSettingsService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    cmp-long v0, v2, p2

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string/jumbo v0, "backup-protector-id"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "backup-protector-ts"

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    cmp-long v0, v2, p2

    .line 48
    .line 49
    const-string/jumbo v4, "backup-expiration-ts"

    .line 50
    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, v4, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    const-wide/32 v7, 0xf731400

    .line 63
    .line 64
    .line 65
    add-long/2addr v5, v7

    .line 66
    invoke-virtual {p0, v4, v5, v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 67
    .line 68
    .line 69
    :goto_0
    const-string/jumbo v0, "prev.attempts.count"

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string p3, "LockSettingsDB, setBackupLskfBasedProtectorId User %d [%016x]"

    .line 89
    .line 90
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-static {p2}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo p2, "locksettings_db_backup"

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 105
    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    const-string p0, "SPblobBNR, Backups are only supported for system users"

    .line 110
    .line 111
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 125
    .line 126
    const-wide/16 p2, 0x1f4

    .line 127
    .line 128
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method

.method public final setBoolean(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string p2, "1"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, "0"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setCarrierLockEnabled(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 5

    .line 1
    const-string v0, "Failed to protect CE key for user "

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 32
    .line 33
    .line 34
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string v4, "LockSettingsService"

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    :try_start_1
    const-string v3, "Do not substitute outer-layer-key in case of DualDAR on DO!"

    .line 40
    .line 41
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo p2, "need to get secret for DualDAR user"

    .line 46
    .line 47
    .line 48
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string/jumbo v3, "getChangedStorageSecretIfDualDAR"

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const-string/jumbo v3, "fetchOuterLayerKey()"

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p2, Lcom/android/server/locksettings/LockSettingsService;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-string/jumbo v3, "fetchOuterLayerKey Finished"

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 89
    .line 90
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setCeStorageProtection(I[B)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 99
    .line 100
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setCeStorageProtection(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_2
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final setCurrentLskfBasedProtectorId(IJ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string/jumbo v2, "sp-handle"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v2, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "prev-sp-handle"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "sp-handle-ts"

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string p3, "LockSettingsDB, setCurrentLskfBasedProtectorId User %d [%016x]"

    .line 40
    .line 41
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide p2

    .line 52
    const/4 v0, 0x0

    .line 53
    const-string/jumbo v1, "locksettings_db_backup"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    const-string p0, "LockSettingsService"

    .line 62
    .line 63
    const-string p1, "SPblobBNR, Backups are only supported for system users"

    .line 64
    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 79
    .line 80
    const-wide/16 p2, 0x1f4

    .line 81
    .line 82
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public setKeystorePassword([BI)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2, p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserPasswordChanged(I[B)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v0, "setKeystore, user "

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, ", ret = "

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p0

    .line 9
    :catch_0
    const-string p0, "LockSettingsService"

    .line 10
    .line 11
    const-string/jumbo p1, "failed applyRemoteLock!"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final setLockCarrierPassword([BI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p1, "sktpassword.key"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 24

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p4

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/16 v0, -0x26ab

    .line 14
    .line 15
    const/4 v11, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    move/from16 v2, p3

    .line 18
    .line 19
    if-ne v2, v0, :cond_0

    .line 20
    .line 21
    const-string v0, "LockSettingsService"

    .line 22
    .line 23
    const-string v2, "!@ set credential with prev!!!"

    .line 24
    .line 25
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move v7, v1

    .line 29
    move v2, v11

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v7, v2

    .line 32
    move v2, v1

    .line 33
    :goto_0
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->resetMode()V

    .line 34
    .line 35
    .line 36
    invoke-static {v7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const-string v0, "Set credential for user virtual "

    .line 44
    .line 45
    const-string v4, " credentialType:"

    .line 46
    .line 47
    invoke-static {v7, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v12, "credential"

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    const-string/jumbo v14, "credentialType"

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    const-string/jumbo v16, "savedCredential"

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 87
    .line 88
    .line 89
    move-result-object v17

    .line 90
    const-string/jumbo v18, "savedCredentialType"

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v19

    .line 101
    const-string/jumbo v20, "userId"

    .line 102
    .line 103
    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v21

    .line 108
    const-string/jumbo v22, "isLockTiedToParent"

    .line 109
    .line 110
    .line 111
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v23

    .line 115
    filled-new-array/range {v12 .. v23}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Clear virtual lock for user "

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 153
    .line 154
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    const-wide/16 v4, 0x0

    .line 159
    .line 160
    cmp-long v6, v1, v4

    .line 161
    .line 162
    if-eqz v6, :cond_1

    .line 163
    .line 164
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v2, "Handle(%d) detected at the moment of clearing lock for user %d"

    .line 177
    .line 178
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 186
    .line 187
    const-string/jumbo v2, "handle"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v7, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 191
    .line 192
    .line 193
    invoke-static {v7, v4, v5, v2}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJLjava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 209
    .line 210
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v0, "credential is NONE"

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/Throwable;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v2, "LockSettingsService.DarVirtualLock"

    .line 222
    .line 223
    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    return v11

    .line 227
    :cond_2
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v4, Lcom/android/server/locksettings/LockSettingsService;

    .line 230
    .line 231
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 232
    .line 233
    monitor-enter v4

    .line 234
    :try_start_0
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v5, Lcom/android/server/locksettings/LockSettingsService;

    .line 237
    .line 238
    invoke-virtual {v5, v7}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-nez v5, :cond_3

    .line 243
    .line 244
    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->prepare(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->initializeSyntheticPasswordForVirtualUser(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    goto :goto_2

    .line 253
    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const-string/jumbo v0, "progressing to set credential for virtual user"

    .line 255
    .line 256
    .line 257
    new-instance v4, Ljava/lang/Throwable;

    .line 258
    .line 259
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v5, "LockSettingsService.DarVirtualLock"

    .line 263
    .line 264
    invoke-static {v5, v0, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    throw v0

    .line 270
    :cond_4
    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    const-string v0, "Set credential for user enterprise "

    .line 277
    .line 278
    const-string v4, " credentialType:"

    .line 279
    .line 280
    invoke-static {v7, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string/jumbo v12, "credential"

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    const-string/jumbo v14, "credentialType"

    .line 306
    .line 307
    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v15

    .line 316
    const-string/jumbo v16, "savedCredential"

    .line 317
    .line 318
    .line 319
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 320
    .line 321
    .line 322
    move-result-object v17

    .line 323
    const-string/jumbo v18, "savedCredentialType"

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v19

    .line 334
    const-string/jumbo v20, "userId"

    .line 335
    .line 336
    .line 337
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v21

    .line 341
    const-string/jumbo v22, "isLockTiedToParent"

    .line 342
    .line 343
    .line 344
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 345
    .line 346
    .line 347
    move-result-object v23

    .line 348
    filled-new-array/range {v12 .. v23}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    const-string v5, "Check accessor - UID : %d, PID : %d"

    .line 381
    .line 382
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-static {v3, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string v4, "Empty"

    .line 390
    .line 391
    const-string v5, "Hidden"

    .line 392
    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    if-eqz v6, :cond_5

    .line 398
    .line 399
    move-object v6, v4

    .line 400
    goto :goto_4

    .line 401
    :cond_5
    move-object v6, v5

    .line 402
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 403
    .line 404
    .line 405
    move-result v12

    .line 406
    if-eqz v12, :cond_6

    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_6
    move-object v4, v5

    .line 410
    :goto_5
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 411
    .line 412
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_7

    .line 417
    .line 418
    const-string v0, "Yes"

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_7
    const-string v0, "No"

    .line 422
    .line 423
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    filled-new-array {v6, v4, v0, v5, v12}, [Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const-string v4, "Check requisites - Given : %s, Saved : %s, Unified : %s, Type : %d, User : %d"

    .line 440
    .line 441
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :cond_8
    iget-object v6, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 449
    .line 450
    monitor-enter v6

    .line 451
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_9

    .line 456
    .line 457
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 458
    .line 459
    .line 460
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    if-eqz v0, :cond_9

    .line 462
    .line 463
    :try_start_3
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 464
    .line 465
    .line 466
    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    goto :goto_8

    .line 468
    :catchall_1
    move-exception v0

    .line 469
    move-object v13, v6

    .line 470
    goto/16 :goto_d

    .line 471
    .line 472
    :catch_0
    move-exception v0

    .line 473
    :try_start_4
    const-string v4, "LockSettingsService"

    .line 474
    .line 475
    const-string v5, "Failed to decrypt child profile key"

    .line 476
    .line 477
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .line 479
    .line 480
    const-string v4, "Failed to decrypt child profile key"

    .line 481
    .line 482
    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    goto :goto_7

    .line 486
    :catch_1
    move-exception v0

    .line 487
    move-object v4, v0

    .line 488
    const-string v0, "LockSettingsService"

    .line 489
    .line 490
    const-string v5, "Child profile key not found"

    .line 491
    .line 492
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    const-string v0, "Child profile key not found"

    .line 496
    .line 497
    invoke-static {v4, v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    :cond_9
    :goto_7
    move-object/from16 v0, p2

    .line 501
    .line 502
    :goto_8
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-eqz v4, :cond_a

    .line 507
    .line 508
    if-eqz v2, :cond_a

    .line 509
    .line 510
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 511
    .line 512
    .line 513
    move-result-wide v4

    .line 514
    iget-object v12, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    const/16 v18, 0x0

    .line 521
    .line 522
    move-wide v14, v4

    .line 523
    move-object/from16 v16, v0

    .line 524
    .line 525
    move/from16 v17, v7

    .line 526
    .line 527
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    goto :goto_9

    .line 532
    :cond_a
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 533
    .line 534
    .line 535
    move-result-wide v4

    .line 536
    iget-object v12, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 537
    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 539
    .line 540
    .line 541
    move-result-object v13

    .line 542
    const/16 v18, 0x0

    .line 543
    .line 544
    move-wide v14, v4

    .line 545
    move-object/from16 v16, v0

    .line 546
    .line 547
    move/from16 v17, v7

    .line 548
    .line 549
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 550
    .line 551
    .line 552
    move-result-object v12

    .line 553
    :goto_9
    iget-object v13, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 554
    .line 555
    iget-object v12, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 556
    .line 557
    if-nez v12, :cond_e

    .line 558
    .line 559
    const-string v0, "Untrusted credential reset not acceptable"

    .line 560
    .line 561
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    if-eqz v13, :cond_d

    .line 565
    .line 566
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    const/4 v2, -0x1

    .line 571
    if-ne v0, v2, :cond_b

    .line 572
    .line 573
    goto :goto_a

    .line 574
    :cond_b
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-ne v0, v11, :cond_c

    .line 579
    .line 580
    const-string v0, "LockSettingsService"

    .line 581
    .line 582
    const-string v2, "Failed to enroll: rate limit exceeded."

    .line 583
    .line 584
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    const-string v0, "Failed to enroll: rate limit exceeded."

    .line 588
    .line 589
    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 590
    .line 591
    .line 592
    monitor-exit v6

    .line 593
    return v1

    .line 594
    :cond_c
    const-string/jumbo v0, "credential change failed. sp is null"

    .line 595
    .line 596
    .line 597
    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 598
    .line 599
    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 601
    .line 602
    const-string/jumbo v1, "password change failed"

    .line 603
    .line 604
    .line 605
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw v0

    .line 609
    :cond_d
    :goto_a
    const-string v0, "LockSettingsService"

    .line 610
    .line 611
    const-string v2, "Failed to enroll: incorrect credential."

    .line 612
    .line 613
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    const-string v0, "Failed to enroll: incorrect credential."

    .line 617
    .line 618
    invoke-static {v0, v11}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 619
    .line 620
    .line 621
    monitor-exit v6

    .line 622
    return v1

    .line 623
    :cond_e
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    if-eqz v3, :cond_f

    .line 628
    .line 629
    if-nez v2, :cond_f

    .line 630
    .line 631
    if-nez v7, :cond_f

    .line 632
    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->expirePreviousData()V

    .line 634
    .line 635
    .line 636
    :cond_f
    invoke-virtual {v8, v7, v12, v1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 637
    .line 638
    .line 639
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    if-eqz v1, :cond_10

    .line 644
    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-nez v1, :cond_10

    .line 650
    .line 651
    if-nez v7, :cond_10

    .line 652
    .line 653
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-nez v1, :cond_10

    .line 658
    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 660
    .line 661
    .line 662
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 663
    if-nez v1, :cond_10

    .line 664
    .line 665
    move-object/from16 v1, p0

    .line 666
    .line 667
    move-object/from16 v2, p1

    .line 668
    .line 669
    move-object v3, v0

    .line 670
    move-object v13, v6

    .line 671
    move-object v6, v12

    .line 672
    move v14, v7

    .line 673
    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 674
    .line 675
    .line 676
    goto :goto_b

    .line 677
    :catchall_2
    move-exception v0

    .line 678
    goto :goto_d

    .line 679
    :cond_10
    move-object v13, v6

    .line 680
    move v14, v7

    .line 681
    const/4 v3, 0x0

    .line 682
    const-wide/16 v4, 0x0

    .line 683
    .line 684
    move-object/from16 v1, p0

    .line 685
    .line 686
    move-object/from16 v2, p1

    .line 687
    .line 688
    move-object v6, v12

    .line 689
    move v7, v14

    .line 690
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 691
    .line 692
    .line 693
    :goto_b
    invoke-virtual {v8, v14, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 694
    .line 695
    .line 696
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 697
    .line 698
    invoke-virtual {v1, v14}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->saveEscrowDataIfNeededLocked(I)V

    .line 699
    .line 700
    .line 701
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 702
    .line 703
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    .line 707
    .line 708
    .line 709
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 710
    if-eqz v1, :cond_11

    .line 711
    .line 712
    :try_start_6
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 713
    .line 714
    invoke-virtual {v1, v9, v0, v14, v10}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 715
    .line 716
    .line 717
    goto :goto_c

    .line 718
    :catch_2
    move-exception v0

    .line 719
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 720
    .line 721
    .line 722
    :cond_11
    :goto_c
    monitor-exit v13

    .line 723
    return v11

    .line 724
    :goto_d
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 725
    throw v0
.end method

.method public final setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    const-string p1, "This operation requires secure lock screen feature"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    const-string v0, "android.permission.SET_INITIAL_LOCK"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    .line 56
    const-string/jumbo p1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    const/16 v1, -0x26ab

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-ne p3, v1, :cond_4

    .line 71
    .line 72
    move p3, v0

    .line 73
    move v3, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v3, v0

    .line 76
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpNotActive()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_5

    .line 94
    .line 95
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 96
    .line 97
    invoke-virtual {v6, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 102
    .line 103
    invoke-virtual {p0, p2, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    goto :goto_3

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 118
    .line 119
    invoke-virtual {v6, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    const/4 v7, 0x0

    .line 128
    if-eqz v6, :cond_6

    .line 129
    .line 130
    const-string v8, "User %d identified as sdp not-supported secure folder user"

    .line 131
    .line 132
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v7, v8}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_7

    .line 152
    .line 153
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p2}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    :cond_7
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-nez v8, :cond_8

    .line 166
    .line 167
    if-eqz v6, :cond_9

    .line 168
    .line 169
    :cond_8
    const-string v6, "SEP-Lite User %d identified as SecureFolder user"

    .line 170
    .line 171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v7, v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 187
    .line 188
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eq v6, v2, :cond_9

    .line 197
    .line 198
    const-string/jumbo p0, "sdp not supported : setSecureFolderLockCredential success"

    .line 199
    .line 200
    .line 201
    invoke-static {v7, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .line 206
    .line 207
    return v2

    .line 208
    :cond_9
    :try_start_1
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 209
    .line 210
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    if-eqz v3, :cond_a

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    move v1, p3

    .line 215
    :goto_4
    :try_start_2
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_b

    .line 220
    .line 221
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 222
    .line 223
    .line 224
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    .line 227
    .line 228
    return v0

    .line 229
    :catchall_1
    move-exception p0

    .line 230
    goto :goto_6

    .line 231
    :cond_b
    :try_start_3
    invoke-virtual {p0, p3, v2, v7}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 232
    .line 233
    .line 234
    if-eqz p4, :cond_c

    .line 235
    .line 236
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 237
    .line 238
    .line 239
    move-result p4

    .line 240
    if-eqz p4, :cond_c

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 244
    .line 245
    .line 246
    :goto_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :try_start_4
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 248
    .line 249
    .line 250
    move-result p4

    .line 251
    if-eqz p4, :cond_d

    .line 252
    .line 253
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    const-class v1, Landroid/app/trust/TrustManager;

    .line 256
    .line 257
    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p4

    .line 261
    check-cast p4, Landroid/app/trust/TrustManager;

    .line 262
    .line 263
    invoke-virtual {p4, p3, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 264
    .line 265
    .line 266
    :cond_d
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-eqz p0, :cond_e

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 282
    .line 283
    .line 284
    :cond_e
    invoke-static {p3, v0}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 285
    .line 286
    .line 287
    invoke-static {p3}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-static {p0, v2}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    .line 296
    .line 297
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    .line 299
    .line 300
    return v2

    .line 301
    :goto_6
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 302
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    .line 305
    .line 306
    throw p0
.end method

.method public final setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p5

    .line 4
    .line 5
    move/from16 v11, p6

    .line 6
    .line 7
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "Changing lockscreen credential of user %d; newCredentialType=%s\n"

    .line 24
    .line 25
    const-string v12, "LockSettingsService"

    .line 26
    .line 27
    invoke-static {v12, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v14

    .line 38
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    move-object/from16 v4, p2

    .line 45
    .line 46
    move-wide/from16 v5, p3

    .line 47
    .line 48
    move-object/from16 v7, p1

    .line 49
    .line 50
    move-object/from16 v8, p5

    .line 51
    .line 52
    move/from16 v9, p6

    .line 53
    .line 54
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string/jumbo v2, "handle"

    .line 63
    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const-wide/16 v5, 0x0

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 73
    .line 74
    invoke-virtual {v0, v11, v2, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :try_start_0
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 90
    .line 91
    invoke-virtual {v10, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v2, v11, v7, v7, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 96
    .line 97
    .line 98
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_0

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-string/jumbo v3, "handle"

    .line 110
    .line 111
    .line 112
    const-wide/16 v17, 0x0

    .line 113
    .line 114
    move-object v2, v0

    .line 115
    move-wide/from16 v19, v14

    .line 116
    .line 117
    move-wide v14, v5

    .line 118
    move-wide/from16 v5, v17

    .line 119
    .line 120
    move/from16 v7, p6

    .line 121
    .line 122
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 135
    .line 136
    .line 137
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 138
    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 142
    .line 143
    invoke-virtual {v10, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v1, "Fail to create new SID for user "

    .line 158
    .line 159
    const-string v3, " response: "

    .line 160
    .line 161
    invoke-static {v11, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    const-string v2, "Failed to create new SID for user"

    .line 184
    .line 185
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :cond_1
    move-wide/from16 v19, v14

    .line 190
    .line 191
    move-wide v14, v5

    .line 192
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 193
    const/4 v7, 0x0

    .line 194
    goto/16 :goto_6

    .line 195
    .line 196
    :cond_3
    move-wide/from16 v19, v14

    .line 197
    .line 198
    move-wide v14, v5

    .line 199
    invoke-static/range {p6 .. p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_4

    .line 204
    .line 205
    :goto_1
    const/4 v7, 0x0

    .line 206
    goto :goto_4

    .line 207
    :cond_4
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    new-instance v7, Landroid/util/ArrayMap;

    .line 215
    .line 216
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 220
    .line 221
    invoke-virtual {v0, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    move/from16 v5, v16

    .line 230
    .line 231
    :goto_2
    if-ge v5, v4, :cond_8

    .line 232
    .line 233
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 238
    .line 239
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 240
    .line 241
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_6

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_6
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 249
    .line 250
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_7

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_7
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    invoke-virtual {v7, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :catch_1
    move-exception v0

    .line 270
    new-instance v14, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string/jumbo v15, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    .line 273
    .line 274
    .line 275
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v12, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .line 287
    .line 288
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 289
    .line 290
    const-wide/16 v14, 0x0

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 294
    .line 295
    const-wide/16 v3, 0x0

    .line 296
    .line 297
    invoke-virtual {v0, v11, v2, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 298
    .line 299
    .line 300
    invoke-static {v11, v3, v4, v2}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJLjava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 310
    .line 311
    .line 312
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 313
    .line 314
    if-eqz v0, :cond_9

    .line 315
    .line 316
    invoke-static/range {p6 .. p6}, Landroid/security/AndroidKeyStoreMaintenance;->onUserLskfRemoved(I)I

    .line 317
    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    goto :goto_5

    .line 321
    :cond_9
    const/4 v2, 0x0

    .line 322
    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 323
    .line 324
    .line 325
    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 326
    .line 327
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    .line 328
    .line 329
    const/4 v4, 0x0

    .line 330
    invoke-direct {v3, v11, v4, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    .line 335
    .line 336
    :goto_6
    invoke-virtual {v1, v11, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(IJ)V

    .line 337
    .line 338
    .line 339
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 340
    .line 341
    .line 342
    invoke-static/range {p6 .. p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_b

    .line 347
    .line 348
    :cond_a
    :goto_7
    move-object/from16 v2, p1

    .line 349
    .line 350
    goto/16 :goto_a

    .line 351
    .line 352
    :cond_b
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_c

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_c
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 364
    .line 365
    invoke-virtual {v3, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v6, "Synchronize challenge along with user "

    .line 376
    .line 377
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-static {v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    const-string v6, "Feasible for profiles(%d) ? %b"

    .line 403
    .line 404
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v2, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move/from16 v5, v16

    .line 412
    .line 413
    :goto_8
    if-ge v5, v4, :cond_a

    .line 414
    .line 415
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 420
    .line 421
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 422
    .line 423
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    if-eqz v10, :cond_10

    .line 428
    .line 429
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    if-eqz v10, :cond_d

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_d
    if-eqz v0, :cond_e

    .line 437
    .line 438
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 439
    .line 440
    .line 441
    move-result-object v10

    .line 442
    invoke-virtual {v1, v10, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 443
    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_e
    const-string v10, "Profile("

    .line 447
    .line 448
    if-eqz v7, :cond_f

    .line 449
    .line 450
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v14

    .line 454
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v14

    .line 458
    if-eqz v14, :cond_f

    .line 459
    .line 460
    new-instance v14, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v10, ") credential found! Clear profile credential."

    .line 469
    .line 470
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-static {v2, v10}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v14

    .line 488
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v14

    .line 492
    check-cast v14, Lcom/android/internal/widget/LockscreenCredential;

    .line 493
    .line 494
    const/4 v15, 0x1

    .line 495
    invoke-virtual {v1, v10, v14, v6, v15}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 496
    .line 497
    .line 498
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 499
    .line 500
    invoke-virtual {v10, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 501
    .line 502
    .line 503
    move-result-object v14

    .line 504
    invoke-virtual {v10, v14}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 508
    .line 509
    .line 510
    goto :goto_9

    .line 511
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v6, ") credential not found... Clear profile credential."

    .line 520
    .line 521
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    invoke-static {v2, v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    const-string v6, "Attempt to clear tied challenge, but no password supplied."

    .line 532
    .line 533
    invoke-static {v12, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    :cond_10
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 537
    .line 538
    goto :goto_8

    .line 539
    :goto_a
    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 540
    .line 541
    .line 542
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 543
    .line 544
    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 545
    .line 546
    .line 547
    const/4 v0, -0x1

    .line 548
    if-eq v13, v0, :cond_12

    .line 549
    .line 550
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 551
    .line 552
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 553
    .line 554
    const-string/jumbo v5, "spblob"

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v11, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    check-cast v6, Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    .line 569
    .line 570
    move-result v10

    .line 571
    if-eqz v10, :cond_12

    .line 572
    .line 573
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v10

    .line 577
    check-cast v10, Ljava/lang/Long;

    .line 578
    .line 579
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 580
    .line 581
    .line 582
    move-result-wide v14

    .line 583
    invoke-virtual {v4, v11, v5, v14, v15}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 584
    .line 585
    .line 586
    move-result-object v10

    .line 587
    invoke-static {v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    .line 588
    .line 589
    .line 590
    move-result-object v10

    .line 591
    iget-byte v10, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 592
    .line 593
    const/4 v0, 0x2

    .line 594
    if-ne v10, v0, :cond_11

    .line 595
    .line 596
    invoke-virtual {v3, v11, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(IJ)V

    .line 597
    .line 598
    .line 599
    :cond_11
    const/4 v0, -0x1

    .line 600
    goto :goto_b

    .line 601
    :cond_12
    if-eqz v7, :cond_13

    .line 602
    .line 603
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    if-eqz v3, :cond_13

    .line 616
    .line 617
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    check-cast v3, Ljava/util/Map$Entry;

    .line 622
    .line 623
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    .line 628
    .line 629
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 630
    .line 631
    .line 632
    goto :goto_c

    .line 633
    :cond_13
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_14

    .line 638
    .line 639
    const/4 v0, -0x1

    .line 640
    if-eq v13, v0, :cond_14

    .line 641
    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    if-eq v2, v0, :cond_14

    .line 647
    .line 648
    if-nez v11, :cond_14

    .line 649
    .line 650
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 651
    .line 652
    .line 653
    move-result-wide v2

    .line 654
    const-wide/16 v4, 0x0

    .line 655
    .line 656
    cmp-long v0, v2, v4

    .line 657
    .line 658
    if-nez v0, :cond_14

    .line 659
    .line 660
    move-wide/from16 v2, v19

    .line 661
    .line 662
    invoke-virtual {v1, v11, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBackupLskfBasedProtectorId(IJ)V

    .line 663
    .line 664
    .line 665
    goto :goto_d

    .line 666
    :cond_14
    move-wide/from16 v2, v19

    .line 667
    .line 668
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 669
    .line 670
    invoke-virtual {v0, v11, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    .line 671
    .line 672
    .line 673
    :goto_d
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    const-string v1, "Successfully changed lockscreen credential of user %d"

    .line 682
    .line 683
    invoke-static {v12, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    return-wide v8
.end method

.method public final setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 10

    .line 1
    const-string v0, "Dual DAR Client failed to reset password with token for user: "

    .line 2
    .line 3
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "Resetting lockscreen credential of user %d using escrow token %016x"

    .line 16
    .line 17
    const-string v3, "LockSettingsService"

    .line 18
    .line 19
    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isDualDarAuthUserId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 30
    .line 31
    move-object v5, p1

    .line 32
    move-wide v6, p2

    .line 33
    move-object v8, p4

    .line 34
    move v9, p5

    .line 35
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "Exception : "

    .line 61
    .line 62
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-array v1, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v3, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    move v5, p5

    .line 88
    move-wide v6, p2

    .line 89
    move-object v9, p4

    .line 90
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 95
    .line 96
    if-nez p3, :cond_1

    .line 97
    .line 98
    const-string p0, "Invalid escrow token supplied"

    .line 99
    .line 100
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_1
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_2

    .line 111
    .line 112
    const-string p0, "Obsolete token: synthetic password decrypted but it fails GK verification."

    .line 113
    .line 114
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :cond_2
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 119
    .line 120
    invoke-virtual {p0, p5, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 121
    .line 122
    .line 123
    iget-object v8, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    const-wide/16 v6, 0x0

    .line 127
    .line 128
    move-object v3, p0

    .line 129
    move-object v4, p1

    .line 130
    move v9, p5

    .line 131
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 132
    .line 133
    .line 134
    const/4 p0, 0x1

    .line 135
    return p0
.end method

.method public final setLockFMMPassword([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string/jumbo p1, "fmmpassword.key"

    .line 11
    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    array-length v1, p0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    const/4 p0, 0x4

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo p1, "setLockModeChangedCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    .line 30
    .line 31
    return-void
.end method

.method public final setLong(Ljava/lang/String;JI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    const-string/jumbo p2, "lockscreen.samsung_biometric"

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p4, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda11;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public final setRecoverySecretTypes([I)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "secretTypes is null"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-string v4, "RecoverableKeyStoreMgr"

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const-string p0, "Not updating secret types - same as old value."

    .line 35
    .line 36
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v5, Landroid/content/ContentValues;

    .line 47
    .line 48
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v6, Ljava/util/StringJoiner;

    .line 52
    .line 53
    const-string v7, ","

    .line 54
    .line 55
    invoke-direct {v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    invoke-direct {v7, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;-><init>(Ljava/util/StringJoiner;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v7}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string/jumbo v6, "secret_types"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    filled-new-array {p1, v6}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string/jumbo v6, "recovery_service_metadata"

    .line 96
    .line 97
    .line 98
    const-string/jumbo v7, "user_id = ? AND uid = ?"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6, v5, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    int-to-long v5, p1

    .line 106
    const-wide/16 v7, 0x0

    .line 107
    .line 108
    cmp-long p1, v5, v7

    .line 109
    .line 110
    if-ltz p1, :cond_3

    .line 111
    .line 112
    array-length p1, v2

    .line 113
    if-nez p1, :cond_1

    .line 114
    .line 115
    const-string p0, "Initialized secret types."

    .line 116
    .line 117
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string p1, "Updated secret types. Snapshot pending."

    .line 122
    .line 123
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const-string/jumbo p1, "snapshot_version"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 136
    .line 137
    .line 138
    const-string p0, "Updated secret types. Snapshot must be updated"

    .line 139
    .line 140
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const-string p0, "Updated secret types. Snapshot didn\'t exist"

    .line 145
    .line 146
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void

    .line 150
    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 151
    .line 152
    const/16 p1, 0x16

    .line 153
    .line 154
    const-string v0, "Database error trying to set secret types."

    .line 155
    .line 156
    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
.end method

.method public final setRecoveryStatus(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    const-string v0, "alias is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v1, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string/jumbo v2, "recovery_status"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string/jumbo p2, "keys"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "uid = ? AND alias = ?"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    int-to-long p0, p0

    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    cmp-long p0, p0, v0

    .line 60
    .line 61
    if-ltz p0, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 65
    .line 66
    const/16 p1, 0x16

    .line 67
    .line 68
    const-string p2, "Failed to set the key recovery status in the local DB."

    .line 69
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const-string p0, "LockSettingsService"

    .line 9
    .line 10
    const-string/jumbo p1, "failed applyRemoteLock!"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final setSecurityDebugLevel(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "!@ setSecurityDebugLevel = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "LockSettingsService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->setSecurityDebugLevel(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-lt p1, v0, :cond_c

    .line 25
    .line 26
    const-string/jumbo p1, "lock state (0)"

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string/jumbo v3, "prev-sp-handle"

    .line 42
    .line 43
    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "SP ID: %016x (prev: %016x)"

    .line 59
    .line 60
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string/jumbo v2, "sp-handle-ts"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "LSKF last changed: %s "

    .line 83
    .line 84
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v2, "backup-protector-id"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    cmp-long v6, v2, v4

    .line 99
    .line 100
    if-nez v6, :cond_0

    .line 101
    .line 102
    const-string v2, "N-1 : None"

    .line 103
    .line 104
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string/jumbo v3, "backup-expiration-ts"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    invoke-static {v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v3, "N-1 ID: %016x (expire : %s)"

    .line 128
    .line 129
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, "LockType: "

    .line 139
    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    const/4 v7, -0x1

    .line 153
    if-ne v6, v7, :cond_2

    .line 154
    .line 155
    const-string/jumbo v0, "lockscreen.disabled"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    .line 164
    const-string v0, "NONE"

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    const-string v0, "SWIPE"

    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    if-ne v6, v0, :cond_3

    .line 184
    .line 185
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    .line 186
    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    invoke-virtual {p0, v0, v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_5

    .line 194
    .line 195
    const-string v6, ":V="

    .line 196
    .line 197
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    const/4 v0, 0x3

    .line 206
    if-ne v6, v0, :cond_5

    .line 207
    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 209
    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v6, ":A="

    .line 219
    .line 220
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getPinLength(I)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_4
    const-string v0, ":A=F"

    .line 239
    .line 240
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :cond_5
    :goto_1
    const-string/jumbo v0, "lockscreen.samsung_biometric"

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v0, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    long-to-int v0, v4

    .line 251
    and-int/lit8 v4, v0, 0x1

    .line 252
    .line 253
    if-eqz v4, :cond_6

    .line 254
    .line 255
    const-string v4, ", Fingerprint"

    .line 256
    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    :cond_6
    and-int/lit16 v0, v0, 0x100

    .line 261
    .line 262
    if-eqz v0, :cond_7

    .line 263
    .line 264
    const-string v0, ", Face"

    .line 265
    .line 266
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    :cond_7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->haveFMMPassword(I)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_8

    .line 274
    .line 275
    const-string v0, ", FMM"

    .line 276
    .line 277
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    goto :goto_3

    .line 283
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCarrierLock(I)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_9

    .line 288
    .line 289
    const-string v0, ", CarrierLock"

    .line 290
    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v5, "!@ RemoteException occurs! "

    .line 298
    .line 299
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_9
    :goto_4
    move v0, p1

    .line 306
    :goto_5
    const/4 v1, 0x4

    .line 307
    if-ge v0, v1, :cond_b

    .line 308
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string/jumbo v4, "locked"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {p0, v1, p1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_a

    .line 332
    .line 333
    const-string v1, ", "

    .line 334
    .line 335
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->RemoteLockType:[Ljava/lang/String;

    .line 339
    .line 340
    aget-object v1, v1, v0

    .line 341
    .line 342
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v1, "FailureCount: "

    .line 365
    .line 366
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v1, "/"

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 402
    .line 403
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    .line 407
    .line 408
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 409
    .line 410
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 411
    .line 412
    const-wide/32 v0, 0xea60

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    .line 417
    .line 418
    :cond_c
    return-void
.end method

.method public final setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "This operation requires secure lock screen feature."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    const-string v1, "Enable"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const-string v1, "Disable"

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " separate challenge for user "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "userId"

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string/jumbo v3, "enabled"

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string/jumbo v5, "profileUserPassword"

    .line 78
    .line 79
    .line 80
    move-object v6, p3

    .line 81
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    if-eqz p3, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 99
    .line 100
    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0
.end method

.method public final setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 17
    .line 18
    .line 19
    xor-int/lit8 v2, p2, 0x1

    .line 20
    .line 21
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3, v2, p1}, Landroid/sec/enterprise/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz p2, :cond_2

    .line 35
    .line 36
    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method public final setServerParams([B)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 15
    .line 16
    const-string/jumbo v2, "server_params"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-string v5, "RecoverableKeyStoreMgr"

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    const-string p0, "Not updating server params - same as old value."

    .line 32
    .line 33
    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v6, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v2, "recovery_service_metadata"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v7, "user_id = ? AND uid = ?"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    int-to-long v6, p1

    .line 77
    const-wide/16 v8, 0x0

    .line 78
    .line 79
    cmp-long p1, v6, v8

    .line 80
    .line 81
    if-ltz p1, :cond_3

    .line 82
    .line 83
    if-nez v3, :cond_1

    .line 84
    .line 85
    const-string p0, "Initialized server params."

    .line 86
    .line 87
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo p1, "snapshot_version"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 101
    .line 102
    .line 103
    const-string p0, "Updated server params. Snapshot must be updated"

    .line 104
    .line 105
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string p0, "Updated server params. Snapshot didn\'t exist"

    .line 110
    .line 111
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 116
    .line 117
    const/16 p1, 0x16

    .line 118
    .line 119
    const-string v0, "Database failure trying to set server params."

    .line 120
    .line 121
    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 5
    .line 6
    return-void
.end method

.method public final setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 11
    .line 12
    const-string v1, "Registered listener for agent with uid "

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    const-string v2, "RecoverySnapshotLstnrs"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const-string v1, "RecoverySnapshotLstnrs"

    .line 50
    .line 51
    const-string v2, "Snapshot already created for agent. Immediately triggering intent."

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->tryToSendIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit p0

    .line 65
    throw p1
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    const-string p0, "RecoverableKeyStoreMgr"

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string/jumbo v1, "invalid session"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "verifierCertPath is null"

    .line 24
    .line 25
    .line 26
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "vaultParams is null"

    .line 30
    .line 31
    .line 32
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "vaultChallenge is null"

    .line 36
    .line 37
    .line 38
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "secrets is null"

    .line 42
    .line 43
    .line 44
    invoke-static {p6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x19

    .line 48
    .line 49
    :try_start_0
    invoke-virtual {p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    .line 50
    .line 51
    .line 52
    move-result-object p3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {v2, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Ljava/security/cert/Certificate;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    move-object v1, p1

    .line 86
    move-object v3, p4

    .line 87
    move-object v4, p5

    .line 88
    move-object v5, p6

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_0
    const-string p1, "Failed to encode verifierPublicKey"

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 100
    .line 101
    invoke-direct {p0, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :catch_0
    move-exception p1

    .line 106
    const-string p2, "Failed to validate the given cert path"

    .line 107
    .line 108
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 112
    .line 113
    const/16 p2, 0x1c

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :catch_1
    move-exception p0

    .line 124
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public final startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkVerifyRemoteLockscreenPermission()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockPatternUtilsToKeyguardType(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->startSession(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    rsub-int/lit8 v0, v0, 0x5

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    new-instance v2, Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/app/RemoteLockscreenValidationSession$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setLockType(I)Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setRemainingAttempts(I)Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v1}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setSourcePublicKey([B)Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->build()Landroid/app/RemoteLockscreenValidationSession;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 84
    .line 85
    const-string v0, "Under development"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final systemReady()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.software.secure_lock_screen"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 17
    .line 18
    const-string v0, "LockSettingsService"

    .line 19
    .line 20
    const-string v1, "!@ migrateOldData"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/lock/LsLog;->prepare()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v1, v0}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateLockSettingsDB()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateSpblob()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "migrated_keystore_namespace"

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v3, 0x1

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    move v6, v1

    .line 80
    move v7, v3

    .line 81
    :goto_0
    if-ge v6, v5, :cond_1

    .line 82
    .line 83
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 88
    .line 89
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 90
    .line 91
    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_0

    .line 96
    .line 97
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 98
    .line 99
    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_0

    .line 104
    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string/jumbo v10, "profile_key_name_encrypt_"

    .line 108
    .line 109
    .line 110
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 114
    .line 115
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {v9}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    and-int/2addr v7, v9

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v10, "profile_key_name_decrypt_"

    .line 130
    .line 131
    .line 132
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 136
    .line 137
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v8}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    and-int/2addr v7, v8

    .line 149
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    and-int v0, v4, v7

    .line 153
    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    const-string/jumbo v0, "migrated_keystore_namespace"

    .line 157
    .line 158
    .line 159
    const-string/jumbo v4, "true"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    const-string v0, "LockSettingsService"

    .line 166
    .line 167
    const-string v4, "Migrated keys to LSS namespace"

    .line 168
    .line 169
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    const-string v0, "LockSettingsService"

    .line 174
    .line 175
    const-string v4, "Failed to migrate keys to LSS namespace"

    .line 176
    .line 177
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    throw p0

    .line 184
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object v4, Landroid/hardware/authsecret/IAuthSecret;->DESCRIPTOR:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v5, "/default"

    .line 195
    .line 196
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-nez v0, :cond_4

    .line 208
    .line 209
    move-object v4, v2

    .line 210
    goto :goto_2

    .line 211
    :cond_4
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_5

    .line 216
    .line 217
    instance-of v5, v4, Landroid/hardware/authsecret/IAuthSecret;

    .line 218
    .line 219
    if-eqz v5, :cond_5

    .line 220
    .line 221
    check-cast v4, Landroid/hardware/authsecret/IAuthSecret;

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_5
    new-instance v4, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;

    .line 225
    .line 226
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object v0, v4, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 230
    .line 231
    :goto_2
    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 232
    .line 233
    const-string v0, "LockSettingsService"

    .line 234
    .line 235
    if-eqz v4, :cond_6

    .line 236
    .line 237
    const-string v4, "Device implements AIDL AuthSecret HAL"

    .line 238
    .line 239
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_6
    :try_start_2
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    new-instance v5, Lcom/android/server/locksettings/AuthSecretHidlAdapter;

    .line 248
    .line 249
    invoke-direct {v5, v4}, Lcom/android/server/locksettings/AuthSecretHidlAdapter;-><init>(Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;)V

    .line 250
    .line 251
    .line 252
    iput-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 253
    .line 254
    const-string v4, "Device implements HIDL AuthSecret HAL"

    .line 255
    .line 256
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :catch_0
    move-exception v4

    .line 261
    const-string v5, "Failed to get AuthSecret HAL(hidl)"

    .line 262
    .line 263
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :catch_1
    const-string v4, "Device doesn\'t implement AuthSecret HAL"

    .line 268
    .line 269
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :goto_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 273
    .line 274
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 275
    .line 276
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_7

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_8

    .line 293
    .line 294
    const-string v4, "LockSettingsService"

    .line 295
    .line 296
    const-string v5, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately"

    .line 297
    .line 298
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    :try_start_3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :catch_2
    move-exception v0

    .line 312
    const-string v4, "LockSettingsService"

    .line 313
    .line 314
    const-string v5, "Failure reporting to IGateKeeperService"

    .line 315
    .line 316
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .line 318
    .line 319
    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 328
    .line 329
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 330
    .line 331
    iget-object v5, v4, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    const-string v6, "android.hardware.fingerprint"

    .line 338
    .line 339
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_9

    .line 344
    .line 345
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 346
    .line 347
    const-string/jumbo v5, "fingerprint"

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_9
    move-object v4, v2

    .line 358
    :goto_5
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 359
    .line 360
    iget-object v6, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 361
    .line 362
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    const-string v7, "android.hardware.biometrics.face"

    .line 367
    .line 368
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    if-eqz v6, :cond_a

    .line 373
    .line 374
    iget-object v2, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    const-string/jumbo v5, "face"

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Landroid/hardware/face/FaceManager;

    .line 384
    .line 385
    :cond_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 386
    .line 387
    iget-object v5, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    const-string/jumbo v6, "biometric"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    check-cast v5, Landroid/hardware/biometrics/BiometricManager;

    .line 397
    .line 398
    iput-object v4, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 399
    .line 400
    iput-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 401
    .line 402
    iput-object v5, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 403
    .line 404
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_b

    .line 409
    .line 410
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_b

    .line 415
    .line 416
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_b

    .line 421
    .line 422
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

    .line 423
    .line 424
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

    .line 425
    .line 426
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManagerInternal;->registerStorageLockEventListener(Landroid/os/storage/ICeStorageLockEventListener;)V

    .line 427
    .line 428
    .line 429
    :cond_b
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 430
    .line 431
    .line 432
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    const/16 v2, 0x22

    .line 437
    .line 438
    if-ge v0, v2, :cond_f

    .line 439
    .line 440
    const-string/jumbo v0, "migrated_mdfpp_pwd_data"

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_c

    .line 448
    .line 449
    const-string v4, "No"

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_c
    const-string v4, "YES"

    .line 453
    .line 454
    :goto_6
    const-string v5, "Need pwdData migration ? "

    .line 455
    .line 456
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    const-string v5, "LockSettingsService"

    .line 461
    .line 462
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    xor-int/2addr v2, v3

    .line 466
    if-eqz v2, :cond_f

    .line 467
    .line 468
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 469
    .line 470
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    move v4, v1

    .line 475
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    if-ge v4, v5, :cond_d

    .line 480
    .line 481
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 486
    .line 487
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 488
    .line 489
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->migrateMdfppPwdData(I)V

    .line 490
    .line 491
    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 493
    .line 494
    goto :goto_7

    .line 495
    :cond_d
    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 496
    .line 497
    invoke-direct {v2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getVirtualUsers()[I

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    array-length v4, v2

    .line 505
    move v5, v1

    .line 506
    :goto_8
    if-ge v5, v4, :cond_e

    .line 507
    .line 508
    aget v6, v2, v5

    .line 509
    .line 510
    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->migrateMdfppPwdData(I)V

    .line 511
    .line 512
    .line 513
    add-int/lit8 v5, v5, 0x1

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_e
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 517
    .line 518
    .line 519
    :cond_f
    return-void
.end method

.method public final tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    .line 1
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Tie lock if necessary for user "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string/jumbo v1, "profileUserPassword"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "profileUserId"

    .line 33
    .line 34
    .line 35
    filled-new-array {v2, v0, v1, p1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 79
    .line 80
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x1

    .line 94
    const-string v3, "LockSettingsService"

    .line 95
    .line 96
    if-nez v1, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "Clearing password for profile user %d to match parent"

    .line 113
    .line 114
    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    .line 130
    .line 131
    invoke-interface {v1, v4}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const-wide/16 v5, 0x0

    .line 136
    .line 137
    cmp-long v1, v3, v5

    .line 138
    .line 139
    if-nez v1, :cond_7

    .line 140
    .line 141
    return-void

    .line 142
    :cond_7
    const/16 v1, 0x28

    .line 143
    .line 144
    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    array-length v6, v5

    .line 153
    new-array v6, v6, [B

    .line 154
    .line 155
    const/4 v7, 0x0

    .line 156
    move v8, v7

    .line 157
    :goto_0
    array-length v9, v5

    .line 158
    if-ge v8, v9, :cond_8

    .line 159
    .line 160
    aget-char v9, v5, v8

    .line 161
    .line 162
    int-to-byte v9, v9

    .line 163
    aput-byte v9, v6, v8

    .line 164
    .line 165
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_8
    invoke-static {v6}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 173
    .line 174
    .line 175
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 176
    .line 177
    .line 178
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 179
    .line 180
    .line 181
    :try_start_1
    invoke-virtual {p0, v8, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 182
    .line 183
    .line 184
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 185
    .line 186
    invoke-virtual {p0, p2, p1, v8}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 190
    .line 191
    invoke-virtual {p1, p2, v8, v3, v4}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_9

    .line 199
    .line 200
    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, v8, p2, p1, v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catchall_0
    move-exception p0

    .line 206
    goto :goto_2

    .line 207
    :cond_9
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :goto_2
    if-eqz v8, :cond_a

    .line 212
    .line 213
    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catchall_1
    move-exception p1

    .line 218
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :cond_a
    :goto_3
    throw p0

    .line 222
    :catch_0
    move-exception p0

    .line 223
    const-string p1, "Failed to talk to GateKeeper service"

    .line 224
    .line 225
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V
    .locals 10

    .line 1
    const-string v0, "NoPadding"

    .line 2
    .line 3
    const-string v1, "GCM"

    .line 4
    .line 5
    const-string/jumbo v2, "profile_key_name_encrypt_"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "profile_key_name_decrypt_"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "LockSettingsService"

    .line 24
    .line 25
    const-string v6, "Tying lock for profile user %d to parent user %d"

    .line 26
    .line 27
    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4, p2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    .line 37
    :try_start_1
    const-string p2, "AES"

    .line 38
    .line 39
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v4, Ljava/security/SecureRandom;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 52
    .line 53
    .line 54
    move-result-object p2
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :try_start_2
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    .line 70
    .line 71
    invoke-direct {v6, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 72
    .line 73
    .line 74
    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 78
    .line 79
    .line 80
    filled-new-array {v1}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v4, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 104
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    .line 118
    .line 119
    invoke-direct {v5, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 120
    .line 121
    .line 122
    new-instance p2, Landroid/security/keystore/KeyProtection$Builder;

    .line 123
    .line 124
    const/4 v6, 0x2

    .line 125
    invoke-direct {p2, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 126
    .line 127
    .line 128
    filled-new-array {v1}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    filled-new-array {v0}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v4, v3, v5, p2}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p2, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 171
    .line 172
    const-string v0, "AES/GCM/NoPadding"

    .line 173
    .line 174
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v8, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 190
    .line 191
    .line 192
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    .line 209
    .line 210
    array-length v0, p3

    .line 211
    const/16 v1, 0xc

    .line 212
    .line 213
    if-ne v0, v1, :cond_0

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 216
    .line 217
    filled-new-array {p3, p2}, [[B

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string p2, "Invalid iv length: "

    .line 238
    .line 239
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    array-length p2, p3

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :catch_0
    move-exception p0

    .line 255
    goto :goto_0

    .line 256
    :catchall_0
    move-exception p2

    .line 257
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 258
    .line 259
    new-instance p3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p2
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0

    .line 275
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    const-string p2, "Failed to encrypt key"

    .line 278
    .line 279
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    throw p1

    .line 283
    :catch_1
    move-exception p0

    .line 284
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 285
    .line 286
    const-string p2, "Failed to talk to GateKeeper service"

    .line 287
    .line 288
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    throw p1
.end method

.method public final tryUnlockWithCachedUnifiedChallenge(I)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, [B

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    move-object v2, v3

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v6, "com.android.server.locksettings.unified_profile_cache_v2_"

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v0, v5, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    :try_start_2
    monitor-exit v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v5, 0xc

    .line 53
    .line 54
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    array-length v7, v2

    .line 59
    invoke-static {v2, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :try_start_3
    const-string v5, "AES/GCM/NoPadding"

    .line 64
    .line 65
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    .line 70
    .line 71
    const/16 v8, 0x80

    .line 72
    .line 73
    invoke-direct {v7, v8, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x2

    .line 77
    invoke-virtual {v5, v6, v0, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_3
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 89
    .line 90
    .line 91
    monitor-exit v1

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v2, "UnifiedProfilePasswordCache"

    .line 95
    .line 96
    const-string v5, "Cannot decrypt"

    .line 97
    .line 98
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    monitor-exit v1

    .line 102
    goto :goto_0

    .line 103
    :catch_1
    const-string v0, "UnifiedProfilePasswordCache"

    .line 104
    .line 105
    const-string v2, "Device not unlocked for more than 7 days"

    .line 106
    .line 107
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    monitor-exit v1

    .line 111
    goto :goto_0

    .line 112
    :catch_2
    move-exception v0

    .line 113
    const-string v2, "UnifiedProfilePasswordCache"

    .line 114
    .line 115
    const-string v5, "Cannot get key"

    .line 116
    .line 117
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    goto :goto_0

    .line 122
    :goto_1
    if-nez v2, :cond_3

    .line 123
    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 127
    .line 128
    .line 129
    :cond_2
    return v4

    .line 130
    :cond_3
    :try_start_5
    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 135
    .line 136
    .line 137
    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    if-nez p0, :cond_4

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 142
    .line 143
    .line 144
    return v4

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    :try_start_6
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_2
    move-exception p1

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    throw p0

    .line 155
    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 156
    throw p0
.end method

.method public final unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "LockSettingsService"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "CE storage for user %d is already unlocked"

    .line 25
    .line 26
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string/jumbo v0, "secured"

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo v0, "unsecured"

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 v2, 0x0

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 54
    .line 55
    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const-string v3, "Do not substitute outer-layer-key in case of DualDAR on DO!"

    .line 68
    .line 69
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-string/jumbo v3, "need to get secret for DualDAR user"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string/jumbo v4, "getChangedStorageSecretIfDualDAR"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const-string/jumbo v4, "fetchOuterLayerKey()"

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v3, Lcom/android/server/locksettings/LockSettingsService;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string/jumbo v4, "fetchOuterLayerKey Finished"

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 117
    .line 118
    invoke-interface {p0, p1, v3}, Landroid/os/storage/IStorageManager;->unlockCeStorage(I[B)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_6

    .line 124
    :catch_0
    move-exception p0

    .line 125
    goto :goto_4

    .line 126
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 127
    .line 128
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->unlockCeStorage(I[B)V

    .line 129
    .line 130
    .line 131
    :goto_2
    const-string p0, "!@Unlocked CE storage for %s user %d"

    .line 132
    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v1, p0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    :goto_3
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :goto_4
    :try_start_1
    const-string v3, "Failed to unlock CE storage for %s user %d"

    .line 149
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v1, p0, v3, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :goto_5
    return-void

    .line 163
    :goto_6
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public final unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v0, "unlockKeystore fail, user "

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ", ret = "

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x1

    .line 53
    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLog;->keyErr(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final unlockUser(I)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "!@BOOT: Unlocking user %d"

    .line 17
    .line 18
    const-string v2, "LockSettingsService"

    .line 19
    .line 20
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$5;

    .line 36
    .line 37
    invoke-direct {v3, v1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 41
    .line 42
    invoke-interface {v4, p1, v3}, Landroid/app/IActivityManager;->unlockUser2(ILandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    .line 44
    .line 45
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    const-wide/16 v4, 0xf

    .line 48
    .line 49
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_a

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 122
    .line 123
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 124
    .line 125
    if-ne v4, p1, :cond_4

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_8

    .line 142
    .line 143
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 144
    .line 145
    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_8

    .line 154
    .line 155
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 156
    .line 157
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_7

    .line 164
    .line 165
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 166
    .line 167
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const/4 v6, 0x0

    .line 172
    const/4 v7, 0x0

    .line 173
    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_1
    move-exception v4

    .line 178
    instance-of v5, v4, Ljava/io/FileNotFoundException;

    .line 179
    .line 180
    if-eqz v5, :cond_6

    .line 181
    .line 182
    const-string v4, "Child profile key not found"

    .line 183
    .line 184
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    const-string v5, "Failed to decrypt child profile key"

    .line 189
    .line 190
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    :try_start_3
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 195
    .line 196
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catch_2
    move-exception v4

    .line 201
    const-string v5, "Cache unified profile password failed"

    .line 202
    .line 203
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_9

    .line 217
    .line 218
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    if-nez v0, :cond_3

    .line 222
    .line 223
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->clearCallingIdentity()J

    .line 224
    .line 225
    .line 226
    move-result-wide v4

    .line 227
    :try_start_4
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 228
    .line 229
    const-string/jumbo v6, "parent unlocked"

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    .line 234
    .line 235
    invoke-static {v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :catchall_0
    move-exception p0

    .line 240
    invoke-static {v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_a
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    new-instance p1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    .line 250
    .line 251
    invoke-direct {p1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    .line 252
    .line 253
    .line 254
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 255
    .line 256
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :catch_3
    move-exception p0

    .line 261
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    throw p0
.end method

.method public final unlockUserKeyIfUnsecured(I)V
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "migrated_dualdar_user_to_sp_and_bound_ce"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "true"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v1, "false"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    const-string v2, "LockSettingsService"

    .line 35
    .line 36
    const-string v3, "Migrating unsecured DualDar user."

    .line 37
    .line 38
    new-array v4, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v2, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundCeKeyLocked(I)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-string v0, "LockSettingsService"

    .line 48
    .line 49
    const-string v2, "Migrated unsecured DualDar user."

    .line 50
    .line 51
    new-array v3, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v0, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v0, "migrated_dualdar_user_to_sp_and_bound_ce"

    .line 57
    .line 58
    .line 59
    const-string/jumbo v2, "true"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 70
    .line 71
    monitor-enter v0

    .line 72
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const-string p0, "LockSettingsService"

    .line 79
    .line 80
    const-string v1, "CE storage for user %d is already unlocked"

    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    const-string p0, "LockSettingsService"

    .line 105
    .line 106
    const-string v1, "Not unlocking CE storage for user %d yet because user is secured"

    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 122
    .line 123
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->isDualDARUser(I)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x1

    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 143
    .line 144
    const-string v5, "LockSettingsService"

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    if-ne v2, v4, :cond_6

    .line 148
    .line 149
    const-string v2, "Password2Auth has already been completed for: "

    .line 150
    .line 151
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    new-array v4, v6, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v5, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    const-string/jumbo v2, "dualdar data is not unlocked yet!"

    .line 162
    .line 163
    .line 164
    new-array v3, v6, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-static {v5, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    move v3, v6

    .line 170
    :goto_1
    if-nez v3, :cond_7

    .line 171
    .line 172
    const-string p0, "LockSettingsService"

    .line 173
    .line 174
    const-string/jumbo v1, "unlocking CE storage for dualdar user %d is failed"

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 190
    :cond_7
    const-string v2, "LockSettingsService"

    .line 191
    .line 192
    const-string v3, "Unwrapping synthetic password for unsecured user %d"

    .line 193
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v7

    .line 215
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    const/4 v11, 0x0

    .line 220
    move v10, p1

    .line 221
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 226
    .line 227
    if-nez v3, :cond_8

    .line 228
    .line 229
    const-string p0, "LockSettingsService"

    .line 230
    .line 231
    const-string v1, "Failed to unwrap synthetic password for unsecured user %d"

    .line 232
    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 246
    :cond_8
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 247
    .line 248
    .line 249
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 250
    .line 251
    if-eqz v1, :cond_9

    .line 252
    .line 253
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 254
    .line 255
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 259
    .line 260
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 261
    .line 262
    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 265
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    throw p0
.end method

.method public final unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 1

    .line 1
    const-string p2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    const-string p2, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, " hasn\'t been registered!!"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "LockSettingsService"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method public final unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final updateCarrierLock(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string p1, "LockSettingsStorage"

    .line 10
    .line 11
    const-string/jumbo v0, "updateCarrierLock!!"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 29
    .line 30
    :goto_0
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 31
    .line 32
    if-ne p0, v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_1
    return v0
.end method

.method public final updateExpireTimeForPrev(Z)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v1, v3, v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-wide v3

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const-string/jumbo v5, "backup-expiration-ts"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v5, v3, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    cmp-long p1, v1, v5

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->expirePreviousData()V

    .line 31
    .line 32
    .line 33
    return-wide v3

    .line 34
    :cond_1
    return-wide v5
.end method

.method public final updateSdpMdfppForSystem(IJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateVerifier(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 3

    .line 1
    const-string v0, "LockSettingsService"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "updateVerifier"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "user is not owner"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const-string/jumbo p0, "credential is none"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 34
    .line 35
    const-string/jumbo v1, "com.samsung.android.kmxservice.escrowvault.UPDATE_VERIFIER"

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "com.samsung.android.kmxservice"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "service_name"

    .line 48
    .line 49
    .line 50
    const-string v2, "KmxService"

    .line 51
    .line 52
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;-><init>(Lcom/android/server/locksettings/LockSettingsService;[BI)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Ljava/lang/Thread;

    .line 73
    .line 74
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;

    .line 75
    .line 76
    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/content/Intent;Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;)V

    .line 77
    .line 78
    .line 79
    const-string p0, "KMX_UPDATE_VERIFIER_SERVICE_CONNECTION"

    .line 80
    .line 81
    invoke-direct {p1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo p2, "updateVerifier exception : "

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method

.method public final userPresent(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->updateExpireTimeForPrev(Z)J

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->tryUpload(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkVerifyRemoteLockscreenPermission()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->get(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x5

    .line 24
    rsub-int/lit8 v3, v3, 0x5

    .line 25
    .line 26
    if-gtz v3, :cond_0

    .line 27
    .line 28
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_8

    .line 47
    .line 48
    :cond_0
    if-nez v2, :cond_1

    .line 49
    .line 50
    :try_start_1
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v4}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :try_start_2
    iget-object v2, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static {v2, v4, v3, p1}, Lcom/android/security/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockPatternUtilsToKeyguardType(I)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    if-eq v4, v5, :cond_3

    .line 94
    .line 95
    const/4 v5, 0x2

    .line 96
    if-ne v4, v5, :cond_2

    .line 97
    .line 98
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    const-string p1, "Lockscreen is not set"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_3
    new-instance v4, Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 118
    .line 119
    .line 120
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    new-instance v4, Ljava/lang/String;

    .line 126
    .line 127
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 128
    .line 129
    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 133
    .line 134
    .line 135
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    :goto_0
    const/4 v5, 0x0

    .line 137
    :try_start_5
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v4, v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v0, p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->handleVerifyCredentialResponse(Lcom/android/internal/widget/VerifyCredentialResponse;I)Landroid/app/RemoteLockscreenValidationResult;

    .line 145
    .line 146
    .line 147
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    if-eqz v4, :cond_5

    .line 149
    .line 150
    :try_start_6
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    :goto_1
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 157
    .line 158
    .line 159
    monitor-exit v0

    .line 160
    :goto_2
    return-object p0

    .line 161
    :catchall_2
    move-exception p0

    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    :try_start_8
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :catchall_3
    move-exception p1

    .line 169
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 173
    :goto_4
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    goto :goto_5

    .line 179
    :catch_1
    move-exception p0

    .line 180
    goto :goto_6

    .line 181
    :catch_2
    move-exception p0

    .line 182
    goto :goto_7

    .line 183
    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string v1, "Could not decrypt credentials guess"

    .line 186
    .line 187
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :goto_6
    const-string p1, "RecoverableKeyStoreMgr"

    .line 192
    .line 193
    const-string v1, "Got InvalidKeyException during lock screen credentials decryption"

    .line 194
    .line 195
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :goto_7
    const-string p1, "RecoverableKeyStoreMgr"

    .line 205
    .line 206
    const-string v1, "Missing SecureBox algorithm. AOSP required to support this."

    .line 207
    .line 208
    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .line 210
    .line 211
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 217
    :goto_8
    monitor-exit v0

    .line 218
    throw p0
.end method

.method public final verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string/jumbo p1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUserId(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/dar/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 60
    .line 61
    .line 62
    :cond_2
    throw p0

    .line 63
    :cond_3
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, [B

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    :try_start_1
    const-string p0, "LockSettingsService"

    .line 23
    .line 24
    const-string p2, "No gatekeeper password for handle"

    .line 25
    .line 26
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move v2, p5

    .line 41
    move-wide v3, p3

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    monitor-exit p1

    .line 47
    return-object p0

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw p0
.end method

.method public final verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Verifying tied profile challenge for user %d"

    .line 13
    .line 14
    const-string v2, "LockSettingsService"

    .line 15
    .line 16
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    :try_start_1
    const-string p1, "Failed to decrypt child profile key"

    .line 61
    .line 62
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p1, "Unable to get tied profile token"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p1, "User id must be managed/clone profile with unified lock"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Verify token for user "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "token"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "tokenHandle"

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string/jumbo v5, "userId"

    .line 29
    .line 30
    .line 31
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    move-object v2, p1

    .line 36
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 47
    .line 48
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 50
    .line 51
    invoke-virtual {v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    move v5, p4

    .line 64
    move-wide v6, p2

    .line 65
    move-object v9, p1

    .line 66
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 71
    .line 72
    if-nez p2, :cond_0

    .line 73
    .line 74
    const-string p0, "Failed due to invalid escrow token supplied"

    .line 75
    .line 76
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 83
    .line 84
    invoke-virtual {p0, p4, p2}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->migrateWithAuthToken(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 85
    .line 86
    .line 87
    new-instance p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object p0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    .line 108
    .line 109
    .line 110
    :goto_0
    monitor-exit v2

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 113
    .line 114
    const-string p1, "Escrow token is disabled on the current user"

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    const-string p1, "Unexpected exception while verify token"

    .line 124
    .line 125
    invoke-static {p0, v1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string p1, "Result of token verification : "

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v0
.end method
