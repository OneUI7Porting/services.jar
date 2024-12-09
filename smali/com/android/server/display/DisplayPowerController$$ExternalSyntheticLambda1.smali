.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Z

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Z

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/os/IBinder;

.field public final synthetic f$8:Lcom/android/server/display/DisplayDeviceInfo;

.field public final synthetic f$9:Lcom/android/server/display/HighBrightnessModeMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/display/DisplayDevice;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/display/DisplayDeviceConfig;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$7:Landroid/os/IBinder;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$8:Lcom/android/server/display/DisplayDeviceInfo;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$9:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 23
    .line 24
    iput p11, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$10:I

    .line 25
    .line 26
    iput p12, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$11:I

    .line 27
    .line 28
    iput-boolean p13, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$12:Z

    .line 29
    .line 30
    iput-object p14, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$13:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$1:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$2:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/display/DisplayDevice;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/display/DisplayDeviceConfig;

    .line 14
    .line 15
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$7:Landroid/os/IBinder;

    .line 18
    .line 19
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$8:Lcom/android/server/display/DisplayDeviceInfo;

    .line 20
    .line 21
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$9:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 22
    .line 23
    iget v6, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$10:I

    .line 24
    .line 25
    iget v7, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$11:I

    .line 26
    .line 27
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$12:Z

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$13:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    move-object/from16 p0, v0

    .line 35
    .line 36
    if-ne v9, v2, :cond_1

    .line 37
    .line 38
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 39
    .line 40
    if-eq v9, v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 46
    .line 47
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 48
    .line 49
    move v2, v10

    .line 50
    :goto_1
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 51
    .line 52
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 53
    .line 54
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 55
    .line 56
    if-eq v3, v4, :cond_4

    .line 57
    .line 58
    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 59
    .line 60
    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 67
    .line 68
    iput-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 69
    .line 70
    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 71
    .line 72
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    invoke-direct {v2, v0, v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;

    .line 89
    .line 90
    move-object v6, v3

    .line 91
    move-object v7, v0

    .line 92
    move-object v9, v15

    .line 93
    move v4, v10

    .line 94
    move-object v10, v14

    .line 95
    move/from16 v16, v11

    .line 96
    .line 97
    move-object v11, v12

    .line 98
    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v15, v14, v12}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 105
    .line 106
    .line 107
    move-object/from16 v17, v5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move v4, v10

    .line 111
    move/from16 v16, v11

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 114
    .line 115
    .line 116
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 128
    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 130
    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v3, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    invoke-direct {v3, v0, v2}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 144
    .line 145
    .line 146
    new-instance v11, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;

    .line 147
    .line 148
    move-object v6, v11

    .line 149
    move-object v7, v0

    .line 150
    move-object v10, v9

    .line 151
    move-object v9, v15

    .line 152
    move-object v4, v10

    .line 153
    move-object v10, v14

    .line 154
    move-object/from16 v17, v5

    .line 155
    .line 156
    move-object v5, v11

    .line 157
    move-object v11, v2

    .line 158
    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3, v5}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v15, v14, v2}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 168
    .line 169
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 172
    .line 173
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 176
    .line 177
    iput-object v2, v4, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 178
    .line 179
    iput-object v3, v4, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 180
    .line 181
    iput-object v5, v4, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v0, v4, Lcom/android/server/display/BrightnessThrottler;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessThrottler;->resetThermalThrottlingData()V

    .line 186
    .line 187
    .line 188
    :goto_2
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 189
    .line 190
    iput-object v12, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    .line 193
    .line 194
    .line 195
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    iput v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 199
    .line 200
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 201
    .line 202
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    if-eqz v0, :cond_3

    .line 206
    .line 207
    iput-boolean v3, v0, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    .line 208
    .line 209
    :cond_3
    :goto_3
    move v10, v3

    .line 210
    :goto_4
    move/from16 v0, v16

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_4
    move-object/from16 v17, v5

    .line 214
    .line 215
    move-object v4, v9

    .line 216
    move v3, v10

    .line 217
    move/from16 v16, v11

    .line 218
    .line 219
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v5, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-nez v5, :cond_5

    .line 226
    .line 227
    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v0, v12, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 230
    .line 231
    iget-object v2, v12, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 232
    .line 233
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v0, v4, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 236
    .line 237
    iput-object v13, v4, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 238
    .line 239
    iput-object v5, v4, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 240
    .line 241
    iput-object v2, v4, Lcom/android/server/display/BrightnessThrottler;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/android/server/display/BrightnessThrottler;->resetThermalThrottlingData()V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_5
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 248
    .line 249
    if-nez v3, :cond_7

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 252
    .line 253
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 254
    .line 255
    if-ne v3, v6, :cond_6

    .line 256
    .line 257
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 258
    .line 259
    if-eq v3, v7, :cond_7

    .line 260
    .line 261
    :cond_6
    iput v6, v0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 262
    .line 263
    iput v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 264
    .line 265
    :cond_7
    move v10, v2

    .line 266
    goto :goto_4

    .line 267
    :goto_5
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 268
    .line 269
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 270
    .line 271
    move-object/from16 v3, p0

    .line 272
    .line 273
    move-object/from16 v2, v17

    .line 274
    .line 275
    invoke-direct {v0, v2, v13, v3, v12}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 279
    .line 280
    iget-object v2, v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 281
    .line 282
    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    .line 283
    .line 284
    const/4 v4, 0x2

    .line 285
    invoke-direct {v3, v4, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    check-cast v2, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 291
    .line 292
    .line 293
    if-eqz v10, :cond_8

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 296
    .line 297
    .line 298
    :cond_8
    return-void
.end method
