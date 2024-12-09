.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

.field public final synthetic f$10:Landroid/os/Bundle;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZIIZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 13
    .line 14
    iput-wide p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$5:J

    .line 15
    .line 16
    iput-boolean p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$6:Z

    .line 17
    .line 18
    iput p10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$7:I

    .line 19
    .line 20
    iput p11, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$8:I

    .line 21
    .line 22
    iput-boolean p12, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$9:Z

    .line 23
    .line 24
    iput-object p13, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$10:Landroid/os/Bundle;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 6
    .line 7
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$2:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$3:J

    .line 10
    .line 11
    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 12
    .line 13
    iget-wide v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$5:J

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$6:Z

    .line 16
    .line 17
    iget v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$7:I

    .line 18
    .line 19
    iget v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$8:I

    .line 20
    .line 21
    iget-boolean v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$9:Z

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$10:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 29
    .line 30
    .line 31
    move-result v31

    .line 32
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-static {v12}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 37
    .line 38
    .line 39
    move-result v21

    .line 40
    iget-object v8, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 41
    .line 42
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 49
    .line 50
    const/4 v9, 0x1

    .line 51
    invoke-virtual {v8, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 52
    .line 53
    .line 54
    move-result-object v27

    .line 55
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 56
    .line 57
    iget-object v9, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    move/from16 v16, v11

    .line 60
    .line 61
    iget-object v11, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 62
    .line 63
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 70
    .line 71
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 72
    .line 73
    move-object/from16 v28, v0

    .line 74
    .line 75
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 76
    .line 77
    move/from16 v18, v3

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    invoke-virtual {v6, v3, v7, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger$1(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 81
    .line 82
    .line 83
    move-result-object v19

    .line 84
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 85
    .line 86
    iget-object v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 87
    .line 88
    iget-object v3, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 89
    .line 90
    move-object/from16 v17, v7

    .line 91
    .line 92
    iget-object v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 93
    .line 94
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 101
    .line 102
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 103
    .line 104
    invoke-static {v12}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 105
    .line 106
    .line 107
    move-result v26

    .line 108
    move-object/from16 v22, v0

    .line 109
    .line 110
    move-object/from16 v20, v1

    .line 111
    .line 112
    iget-wide v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mPowerSinglePressedTimeStamp:J

    .line 113
    .line 114
    move-wide/from16 v29, v0

    .line 115
    .line 116
    move-object v1, v7

    .line 117
    move-object/from16 v0, v17

    .line 118
    .line 119
    move-object v7, v8

    .line 120
    move-object/from16 v32, v6

    .line 121
    .line 122
    move-object v6, v8

    .line 123
    move-object v8, v9

    .line 124
    move-object v9, v11

    .line 125
    move/from16 p0, v12

    .line 126
    .line 127
    move/from16 v24, v16

    .line 128
    .line 129
    move-wide v11, v4

    .line 130
    move/from16 v16, v2

    .line 131
    .line 132
    move-object/from16 v17, v20

    .line 133
    .line 134
    move-object/from16 v20, v22

    .line 135
    .line 136
    move-object/from16 v22, v0

    .line 137
    .line 138
    move-object/from16 v23, v3

    .line 139
    .line 140
    move-object/from16 v25, v1

    .line 141
    .line 142
    invoke-direct/range {v7 .. v30}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/fingerprint/FingerprintAuthenticateOptions;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILcom/android/server/biometrics/sensors/LockoutTracker;Landroid/os/Bundle;J)V

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    iget v1, v6, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 155
    .line 156
    invoke-virtual {v6, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 161
    .line 162
    :cond_0
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 163
    .line 164
    if-eqz v1, :cond_1

    .line 165
    .line 166
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 167
    .line 168
    or-int/lit8 v1, v1, 0x1b

    .line 169
    .line 170
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_1
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSettingApp:Z

    .line 174
    .line 175
    if-eqz v1, :cond_2

    .line 176
    .line 177
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 178
    .line 179
    const/4 v2, 0x2

    .line 180
    or-int/2addr v1, v2

    .line 181
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 182
    .line 183
    :cond_2
    :goto_0
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 184
    .line 185
    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 186
    .line 187
    const-string/jumbo v3, "sem_privileged_attr"

    .line 188
    .line 189
    .line 190
    const/4 v9, 0x0

    .line 191
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    or-int/2addr v1, v2

    .line 196
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 197
    .line 198
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 199
    .line 200
    const/4 v2, 0x4

    .line 201
    if-eqz v1, :cond_4

    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iput v1, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    .line 208
    .line 209
    and-int/lit8 v7, v1, 0x1

    .line 210
    .line 211
    if-eqz v7, :cond_3

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_3
    and-int/2addr v1, v2

    .line 215
    if-eqz v1, :cond_4

    .line 216
    .line 217
    :goto_1
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 218
    .line 219
    or-int/2addr v1, v0

    .line 220
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 221
    .line 222
    :cond_4
    invoke-virtual {v6, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_5

    .line 227
    .line 228
    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCanIgnoreLockout:Z

    .line 229
    .line 230
    :cond_5
    const/16 v1, 0x8

    .line 231
    .line 232
    invoke-virtual {v6, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_6

    .line 237
    .line 238
    iput-boolean v9, v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 239
    .line 240
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_7

    .line 245
    .line 246
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 247
    .line 248
    or-int/2addr v1, v2

    .line 249
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 250
    .line 251
    :cond_7
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 252
    .line 253
    if-eqz v1, :cond_8

    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_8
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 260
    .line 261
    const-string v7, "EXTRA_KEY_DISPLAY_ID"

    .line 262
    .line 263
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v7, "FingerprintClientExt: "

    .line 269
    .line 270
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 274
    .line 275
    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v7, ", "

    .line 283
    .line 284
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget v7, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    .line 288
    .line 289
    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const-string v7, "FingerprintAuthenticationClient.Ext"

    .line 301
    .line 302
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldCancelIfBackgroundAuthentication:Z

    .line 306
    .line 307
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 308
    .line 309
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_e

    .line 314
    .line 315
    const/16 v1, 0x10

    .line 316
    .line 317
    invoke-virtual {v6, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_9

    .line 322
    .line 323
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 324
    .line 325
    const-string v7, "EXTRA_KEY_AUTH_FLAG"

    .line 326
    .line 327
    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    const v7, 0x8000

    .line 332
    .line 333
    .line 334
    and-int/2addr v1, v7

    .line 335
    if-eqz v1, :cond_a

    .line 336
    .line 337
    :cond_9
    move v9, v0

    .line 338
    :cond_a
    invoke-virtual {v6, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->createUdfpsSysUiImpl(Z)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 343
    .line 344
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 345
    .line 346
    if-eqz v1, :cond_b

    .line 347
    .line 348
    iput v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 349
    .line 350
    :cond_b
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-nez v0, :cond_e

    .line 355
    .line 356
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 357
    .line 358
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->checkGuideLayerAndTouchBlock(I)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 364
    .line 365
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 366
    .line 367
    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    const-string v7, "EXTRA_KEY_ICON_COLOR"

    .line 373
    .line 374
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    const-string v9, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    .line 379
    .line 380
    if-nez v8, :cond_c

    .line 381
    .line 382
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    if-nez v8, :cond_c

    .line 387
    .line 388
    and-int/lit8 v8, v2, 0x20

    .line 389
    .line 390
    if-eqz v8, :cond_d

    .line 391
    .line 392
    :cond_c
    new-instance v8, Landroid/os/Bundle;

    .line 393
    .line 394
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 395
    .line 396
    .line 397
    iput-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 398
    .line 399
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    invoke-virtual {v8, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 407
    .line 408
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 416
    .line 417
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    .line 419
    .line 420
    :cond_d
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 421
    .line 422
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;

    .line 423
    .line 424
    invoke-direct {v1, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V

    .line 428
    .line 429
    .line 430
    :cond_e
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

    .line 431
    .line 432
    move-object v0, v7

    .line 433
    move-object/from16 v1, v32

    .line 434
    .line 435
    move/from16 v2, v31

    .line 436
    .line 437
    move/from16 v3, p0

    .line 438
    .line 439
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIJ)V

    .line 440
    .line 441
    .line 442
    move/from16 v1, p0

    .line 443
    .line 444
    move-object/from16 v0, v32

    .line 445
    .line 446
    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 447
    .line 448
    .line 449
    return-void
.end method
