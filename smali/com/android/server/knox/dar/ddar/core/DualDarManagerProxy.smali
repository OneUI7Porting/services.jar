.class public final Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z

.field public static sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;


# instance fields
.field public mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string/jumbo v2, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string/jumbo v1, "userdebug"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 34
    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->DEBUG:Z

    .line 35
    .line 36
    return-void
.end method

.method public static enforceCallingUser(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1482

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x3e8

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    const-string v1, "Can only be called by system user. callingUid: "

    .line 32
    .line 33
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v3, "DualDarManagerProxy"

    .line 17
    .line 18
    const-string v4, "DualDarManagerProxy created"

    .line 19
    .line 20
    invoke-static {v3, v4, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 24
    .line 25
    new-instance v3, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    .line 26
    .line 27
    invoke-direct {v3, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 34
    .line 35
    sput-object v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->sInstance:Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object p0

    .line 44
    :goto_1
    monitor-exit v0

    .line 45
    throw p0
.end method


# virtual methods
.method public final onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    const-string/jumbo v0, "onMessage() "

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "DualDarManagerProxy"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    sparse-switch v1, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :sswitch_0
    const-string v1, "SCHEDULE_DATA_LOCK"

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    const/4 p2, 0x3

    .line 53
    goto :goto_2

    .line 54
    :sswitch_1
    const-string v1, "ON_DEVICE_OWNER_PROVISIONING"

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    move p2, v2

    .line 63
    goto :goto_2

    .line 64
    :sswitch_2
    const-string v1, "ENSURE_DATA_UNLOCKED"

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    const/4 p2, 0x2

    .line 73
    goto :goto_2

    .line 74
    :sswitch_3
    const-string v1, "IS_INNER_LAYER_UNLOCKED"

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_1

    .line 81
    .line 82
    move p2, v3

    .line 83
    goto :goto_2

    .line 84
    :sswitch_4
    const-string v1, "CLEAR_TRIAL_PERIOD_TIME"

    .line 85
    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_1

    .line 91
    .line 92
    const/4 p2, 0x6

    .line 93
    goto :goto_2

    .line 94
    :sswitch_5
    const-string v1, "CANCEL_DATA_LOCK"

    .line 95
    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    const/4 p2, 0x4

    .line 103
    goto :goto_2

    .line 104
    :sswitch_6
    const-string v1, "SET_TRIAL_PERIOD_TIME"

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    if-eqz p2, :cond_1

    .line 111
    .line 112
    const/4 p2, 0x5

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    :goto_1
    const/4 p2, -0x1

    .line 115
    :goto_2
    const-string/jumbo v1, "user_id"

    .line 116
    .line 117
    .line 118
    const-string v4, "DualDarManagerImpl"

    .line 119
    .line 120
    const-string/jumbo v5, "dual_dar_response"

    .line 121
    .line 122
    .line 123
    packed-switch p2, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 132
    .line 133
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleClearDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_4

    .line 141
    .line 142
    :pswitch_1
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 146
    .line 147
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleScheduleDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :pswitch_2
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_2

    .line 173
    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :cond_2
    const-string p1, "Cancel data lock"

    .line 177
    .line 178
    new-array p2, v2, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-static {v4, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sput-boolean v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

    .line 188
    .line 189
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :pswitch_3
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDataLock(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :pswitch_4
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 212
    .line 213
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_3

    .line 218
    .line 219
    const-string/jumbo p0, "handleEnsureDataUnlocked - Not able to ensure while device lockscreen is set"

    .line 220
    .line 221
    .line 222
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_3
    sget-object p1, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    .line 227
    .line 228
    invoke-static {v2, p1}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 229
    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    const-string/jumbo p1, "trust"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Landroid/app/trust/TrustManager;

    .line 241
    .line 242
    invoke-virtual {p0, v2, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 243
    .line 244
    .line 245
    move v2, v3

    .line 246
    :goto_3
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 251
    .line 252
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getDualDARLockstate()Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string/jumbo p2, "isInnerLayerUnlocked - result : "

    .line 268
    .line 269
    .line 270
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    xor-int/2addr p0, v3

    .line 274
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :pswitch_6
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    .line 289
    .line 290
    .line 291
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    .line 292
    .line 293
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDeviceOwnerProvisioning(Landroid/os/Bundle;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    .line 299
    .line 300
    :goto_4
    return-object v0

    .line 301
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .line 303
    .line 304
    const/4 p0, 0x0

    .line 305
    return-object p0

    .line 306
    nop

    .line 307
    :sswitch_data_0
    .sparse-switch
        -0x69b863fb -> :sswitch_6
        -0x68086ae5 -> :sswitch_5
        0x6bc9530 -> :sswitch_4
        0x37362b4f -> :sswitch_3
        0x3e778197 -> :sswitch_2
        0x481c6342 -> :sswitch_1
        0x552734f8 -> :sswitch_0
    .end sparse-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
