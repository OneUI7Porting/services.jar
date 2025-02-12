.class public final Lcom/android/server/bgslotmanager/CameraKillModeManager;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static CAMERA_DHA_VER:I


# instance fields
.field public dha_camera_map:Ljava/util/LinkedHashMap;

.field public dha_cameraclientexcept_map:Ljava/util/HashMap;

.field public isOriginBG:Z

.field public mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mCamKillStartTime:I

.field public mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mMinFreeMax:F

.field public mSzDHAThresholdRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "cam_dha_ver"

    .line 2
    .line 3
    .line 4
    const-string v1, "0"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    sget v4, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    .line 10
    .line 11
    if-nez v4, :cond_1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 23
    .line 24
    const-string v7, "DynamicHiddenApp_CameraKillModeManager"

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    const-string v6, "Camera Callback on DHA [id] "

    .line 29
    .line 30
    const-string v8, " [faceing] "

    .line 31
    .line 32
    const-string v9, " [newState] "

    .line 33
    .line 34
    move/from16 v10, p2

    .line 35
    .line 36
    invoke-static {v10, v6, v1, v8, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v6, " [clientName] "

    .line 44
    .line 45
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_2
    const-wide/32 v8, 0x927c0

    .line 59
    .line 60
    .line 61
    cmp-long v1, v4, v8

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    if-ltz v1, :cond_5

    .line 65
    .line 66
    sget v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    .line 67
    .line 68
    and-int/2addr v1, v6

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    const-string/jumbo v1, "com.sec.android.app.camera"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_3
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    invoke-virtual {v1, v2, v8}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->setState(IZ)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    .line 89
    .line 90
    iget v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 91
    .line 92
    const/4 v10, 0x3

    .line 93
    iget-object v1, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 94
    .line 95
    if-ne v9, v10, :cond_4

    .line 96
    .line 97
    iget-boolean v7, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    .line 98
    .line 99
    if-nez v7, :cond_5

    .line 100
    .line 101
    iput-boolean v6, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 104
    .line 105
    iget v7, v1, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 106
    .line 107
    and-int/lit8 v7, v7, -0x2

    .line 108
    .line 109
    iput v7, v1, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 112
    .line 113
    .line 114
    const-string v1, "DynamicHiddenApp_BGSlotManager"

    .line 115
    .line 116
    const-string v7, "CameraBGSlot Recovered"

    .line 117
    .line 118
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-boolean v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    .line 123
    .line 124
    if-ne v9, v6, :cond_5

    .line 125
    .line 126
    iget-object v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 127
    .line 128
    iget-object v10, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 129
    .line 130
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 131
    .line 132
    .line 133
    iget-object v10, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 134
    .line 135
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    iget-object v12, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 140
    .line 141
    invoke-virtual {v12}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    .line 142
    .line 143
    .line 144
    move-result-wide v12

    .line 145
    iget-object v14, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 146
    .line 147
    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    .line 148
    .line 149
    .line 150
    move-result-wide v14

    .line 151
    iget-object v9, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    .line 152
    .line 153
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    .line 154
    .line 155
    .line 156
    move-result-wide v16

    .line 157
    add-long/2addr v10, v12

    .line 158
    sub-long v14, v14, v16

    .line 159
    .line 160
    sub-long/2addr v10, v14

    .line 161
    const-string v9, "Available Mem: "

    .line 162
    .line 163
    const-string v12, " CAM TH "

    .line 164
    .line 165
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    iget v12, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mMinFreeMax:F

    .line 170
    .line 171
    iget v13, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    .line 172
    .line 173
    mul-float/2addr v12, v13

    .line 174
    float-to-long v12, v12

    .line 175
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget v7, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mMinFreeMax:F

    .line 186
    .line 187
    iget v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    .line 188
    .line 189
    mul-float/2addr v7, v9

    .line 190
    float-to-long v12, v7

    .line 191
    cmp-long v7, v10, v12

    .line 192
    .line 193
    if-gez v7, :cond_5

    .line 194
    .line 195
    iget-object v7, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 196
    .line 197
    iget v9, v7, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 198
    .line 199
    or-int/2addr v9, v6

    .line 200
    iput v9, v7, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 201
    .line 202
    invoke-virtual {v7}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 203
    .line 204
    .line 205
    iput-boolean v8, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    .line 206
    .line 207
    :cond_5
    :goto_0
    iget v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCamKillStartTime:I

    .line 208
    .line 209
    int-to-long v7, v1

    .line 210
    cmp-long v1, v4, v7

    .line 211
    .line 212
    if-ltz v1, :cond_9

    .line 213
    .line 214
    sget v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    .line 215
    .line 216
    and-int/lit8 v1, v1, 0x2

    .line 217
    .line 218
    if-eqz v1, :cond_9

    .line 219
    .line 220
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_9

    .line 227
    .line 228
    const-string/jumbo v1, "vendor."

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_9

    .line 236
    .line 237
    const-string/jumbo v1, "client."

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_6
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_8

    .line 254
    .line 255
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    const/16 v4, 0x64

    .line 262
    .line 263
    if-le v1, v4, :cond_7

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_7
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 267
    .line 268
    const/4 v4, -0x1

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v1, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_8
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 278
    .line 279
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 290
    .line 291
    iget-object v5, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    iget-object v3, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    .line 305
    .line 306
    invoke-virtual {v3, v2, v6}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->setState(IZ)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    .line 310
    .line 311
    iget-object v2, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    .line 312
    .line 313
    iget-object v2, v2, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 314
    .line 315
    if-eqz v2, :cond_9

    .line 316
    .line 317
    iget v0, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 318
    .line 319
    invoke-static {v0, v4, v1}, Lcom/android/server/am/DynamicHiddenApp;->setLmkdCameraKillBoost(III)V

    .line 320
    .line 321
    .line 322
    :cond_9
    :goto_2
    return-void
.end method
