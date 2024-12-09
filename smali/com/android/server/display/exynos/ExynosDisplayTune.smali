.class public final Lcom/android/server/display/exynos/ExynosDisplayTune;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public CALIB_DATA_XML_PATH:Ljava/lang/String;

.field public CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public DE_SYSFS_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public SCL_SYSFS_PATH:Ljava/lang/String;

.field public mDelayMs:J

.field public mPeriodMs:J

.field public mTuneTimer:Ljava/util/Timer;


# direct methods
.method public static getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    array-length v3, v1

    .line 10
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-static {v1, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    array-length p0, v1

    .line 24
    if-ge p0, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    aget-object p0, v1, v0

    .line 28
    .line 29
    const-string p1, "\\s*,\\s*"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    aget-object p0, p0, v0

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    :goto_1
    return v0

    .line 43
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_3
    return v0
.end method


# virtual methods
.method public final enableTuneTimer(Z)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v1, Ljava/util/Timer;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune$1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplayTune$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V

    .line 17
    .line 18
    .line 19
    iget-wide v3, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    .line 20
    .line 21
    iget-wide v5, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 36
    .line 37
    :cond_1
    :goto_0
    const-string/jumbo p0, "enableTuneTimer: enable="

    .line 38
    .line 39
    .line 40
    const-string v0, "ExynosDisplayTune"

    .line 41
    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string/jumbo v4, "de"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v5, "cgc17_con"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v6, "scl"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v7, "hsc"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v8, "gamma_matrix"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v9, "cgc_dither"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v10, "gamma"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v11, "degamma"

    .line 29
    .line 30
    .line 31
    const-string v12, "ExynosDisplayTune"

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string/jumbo v0, "xml version: "

    .line 41
    .line 42
    .line 43
    const/4 v13, 0x1

    .line 44
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    if-eqz v15, :cond_2

    .line 49
    .line 50
    array-length v14, v15

    .line 51
    if-ge v14, v13, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v14, 0x0

    .line 55
    aget-object v15, v15, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .line 57
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    const/4 v15, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    :try_start_2
    const-string/jumbo v0, "xml version not found"

    .line 79
    .line 80
    .line 81
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    .line 84
    const/4 v15, 0x0

    .line 85
    goto :goto_2

    .line 86
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_2
    if-nez v15, :cond_3

    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v14, "setCalibrationDQE+ ("

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 101
    .line 102
    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    const-string v13, ")"

    .line 107
    .line 108
    invoke-static {v0, v15, v13, v12}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    new-array v0, v0, [I

    .line 116
    .line 117
    const/4 v13, 0x0

    .line 118
    :goto_3
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 119
    .line 120
    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-ge v13, v14, :cond_4

    .line 125
    .line 126
    const/4 v14, 0x0

    .line 127
    aput v14, v0, v13

    .line 128
    .line 129
    add-int/lit8 v13, v13, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    :try_start_3
    invoke-static {v2, v3, v9}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    new-instance v14, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string/jumbo v15, "cgc_dither: enable = "

    .line 142
    .line 143
    .line 144
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    if-lez v13, :cond_5

    .line 158
    .line 159
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 160
    .line 161
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    const/4 v14, 0x1

    .line 166
    aput v14, v0, v13

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :catch_2
    move-exception v0

    .line 170
    move-object/from16 v18, v12

    .line 171
    .line 172
    goto/16 :goto_10

    .line 173
    .line 174
    :cond_5
    :goto_4
    invoke-static {v2, v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string/jumbo v15, "degamma: enable = "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    if-lez v13, :cond_6

    .line 200
    .line 201
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 202
    .line 203
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    const/4 v14, 0x1

    .line 208
    aput v14, v0, v13

    .line 209
    .line 210
    :cond_6
    invoke-static {v2, v3, v10}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    new-instance v14, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string/jumbo v15, "gamma: enable = "

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    if-lez v13, :cond_7

    .line 236
    .line 237
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 238
    .line 239
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    const/4 v14, 0x1

    .line 244
    aput v14, v0, v13

    .line 245
    .line 246
    :cond_7
    invoke-static {v2, v3, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    new-instance v14, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string/jumbo v15, "gamma_matrix: enable = "

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v14

    .line 268
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    if-lez v13, :cond_8

    .line 272
    .line 273
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 274
    .line 275
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    const/4 v14, 0x1

    .line 280
    aput v14, v0, v13

    .line 281
    .line 282
    :cond_8
    invoke-static {v2, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    new-instance v14, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string/jumbo v15, "hsc: enable = "

    .line 292
    .line 293
    .line 294
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    if-lez v13, :cond_a

    .line 308
    .line 309
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 310
    .line 311
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    :goto_5
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 316
    .line 317
    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    if-gt v13, v14, :cond_9

    .line 322
    .line 323
    const/4 v14, 0x1

    .line 324
    aput v14, v0, v13

    .line 325
    .line 326
    add-int/lit8 v13, v13, 0x1

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_9
    const/4 v14, 0x1

    .line 330
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 331
    .line 332
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 333
    .line 334
    .line 335
    move-result v13

    .line 336
    aput v14, v0, v13

    .line 337
    .line 338
    :cond_a
    invoke-static {v2, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    new-instance v14, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string/jumbo v15, "scl: enable = "

    .line 348
    .line 349
    .line 350
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    if-lez v13, :cond_b

    .line 364
    .line 365
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 366
    .line 367
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 368
    .line 369
    .line 370
    move-result v13

    .line 371
    const/4 v14, 0x1

    .line 372
    aput v14, v0, v13

    .line 373
    .line 374
    :cond_b
    invoke-static {v2, v3, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    new-instance v14, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string/jumbo v15, "cgc17_con: enable = "

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    if-lez v13, :cond_d

    .line 400
    .line 401
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 402
    .line 403
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 404
    .line 405
    .line 406
    move-result v13

    .line 407
    :goto_6
    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 408
    .line 409
    invoke-virtual {v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 410
    .line 411
    .line 412
    move-result v14

    .line 413
    if-gt v13, v14, :cond_c

    .line 414
    .line 415
    const/4 v14, 0x1

    .line 416
    aput v14, v0, v13

    .line 417
    .line 418
    add-int/lit8 v13, v13, 0x1

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_c
    const/4 v14, 0x1

    .line 422
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 423
    .line 424
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    aput v14, v0, v13

    .line 429
    .line 430
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 431
    .line 432
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 433
    .line 434
    .line 435
    move-result v13

    .line 436
    aput v14, v0, v13

    .line 437
    .line 438
    :cond_d
    invoke-static {v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    new-instance v14, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string/jumbo v15, "de: enable = "

    .line 448
    .line 449
    .line 450
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v14

    .line 460
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    if-lez v13, :cond_e

    .line 464
    .line 465
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 466
    .line 467
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    const/4 v14, 0x1

    .line 472
    aput v14, v0, v13

    .line 473
    .line 474
    :cond_e
    const/4 v14, 0x0

    .line 475
    :goto_7
    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 476
    .line 477
    invoke-virtual {v13}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 478
    .line 479
    .line 480
    move-result v13

    .line 481
    if-ge v14, v13, :cond_27

    .line 482
    .line 483
    aget v13, v0, v14

    .line 484
    .line 485
    sget-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 486
    .line 487
    invoke-virtual {v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 488
    .line 489
    .line 490
    move-result v15

    .line 491
    if-gt v14, v15, :cond_10

    .line 492
    .line 493
    move-object/from16 v17, v0

    .line 494
    .line 495
    move-object/from16 v16, v9

    .line 496
    .line 497
    :goto_8
    move-object/from16 v18, v12

    .line 498
    .line 499
    :goto_9
    const/4 v9, 0x0

    .line 500
    :cond_f
    :goto_a
    const/4 v13, 0x1

    .line 501
    goto/16 :goto_f

    .line 502
    .line 503
    :cond_10
    sget-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 504
    .line 505
    invoke-virtual {v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 506
    .line 507
    .line 508
    move-result v15

    .line 509
    if-gt v14, v15, :cond_13

    .line 510
    .line 511
    const/4 v15, 0x0

    .line 512
    invoke-static {v15, v15, v2, v3, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v13

    .line 516
    if-eqz v13, :cond_12

    .line 517
    .line 518
    array-length v15, v13

    .line 519
    move-object/from16 v16, v9

    .line 520
    .line 521
    const/4 v9, 0x1

    .line 522
    if-lt v15, v9, :cond_11

    .line 523
    .line 524
    const/4 v9, 0x0

    .line 525
    aget-object v13, v13, v9

    .line 526
    .line 527
    iget-object v9, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 528
    .line 529
    invoke-static {v9, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-object/from16 v17, v0

    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_11
    move-object/from16 v17, v0

    .line 536
    .line 537
    move v13, v9

    .line 538
    move-object/from16 v18, v12

    .line 539
    .line 540
    :goto_b
    const/4 v9, 0x0

    .line 541
    goto/16 :goto_f

    .line 542
    .line 543
    :cond_12
    move-object/from16 v16, v9

    .line 544
    .line 545
    move-object/from16 v17, v0

    .line 546
    .line 547
    move-object/from16 v18, v12

    .line 548
    .line 549
    move v9, v15

    .line 550
    goto :goto_a

    .line 551
    :cond_13
    move-object/from16 v16, v9

    .line 552
    .line 553
    sget-object v9, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 554
    .line 555
    invoke-virtual {v9}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 556
    .line 557
    .line 558
    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 559
    iget-object v15, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    .line 560
    .line 561
    move-object/from16 v17, v0

    .line 562
    .line 563
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    .line 564
    .line 565
    move-object/from16 v18, v12

    .line 566
    .line 567
    if-gt v14, v9, :cond_18

    .line 568
    .line 569
    const/4 v9, 0x0

    .line 570
    :try_start_4
    invoke-static {v9, v9, v2, v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v13

    .line 574
    if-eqz v13, :cond_15

    .line 575
    .line 576
    array-length v12, v13

    .line 577
    move-object/from16 v19, v4

    .line 578
    .line 579
    const/4 v4, 0x1

    .line 580
    if-lt v12, v4, :cond_14

    .line 581
    .line 582
    aget-object v4, v13, v9

    .line 583
    .line 584
    if-eqz v4, :cond_17

    .line 585
    .line 586
    if-eqz v0, :cond_17

    .line 587
    .line 588
    iget-object v9, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 589
    .line 590
    invoke-static {v9, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 591
    .line 592
    .line 593
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 594
    .line 595
    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 596
    .line 597
    .line 598
    goto :goto_e

    .line 599
    :catch_3
    move-exception v0

    .line 600
    goto/16 :goto_10

    .line 601
    .line 602
    :cond_14
    :goto_c
    move v4, v9

    .line 603
    const/16 v9, 0xa

    .line 604
    .line 605
    goto :goto_d

    .line 606
    :cond_15
    move-object/from16 v19, v4

    .line 607
    .line 608
    goto :goto_c

    .line 609
    :goto_d
    invoke-static {v9, v4, v2, v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    if-eqz v9, :cond_17

    .line 614
    .line 615
    array-length v12, v9

    .line 616
    const/4 v13, 0x1

    .line 617
    if-lt v12, v13, :cond_17

    .line 618
    .line 619
    aget-object v9, v9, v4

    .line 620
    .line 621
    if-eqz v9, :cond_16

    .line 622
    .line 623
    if-eqz v0, :cond_16

    .line 624
    .line 625
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 626
    .line 627
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    .line 629
    .line 630
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 631
    .line 632
    invoke-static {v0, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 633
    .line 634
    .line 635
    :cond_16
    const/16 v0, 0x8

    .line 636
    .line 637
    const/4 v4, 0x0

    .line 638
    invoke-static {v0, v4, v2, v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    if-eqz v0, :cond_17

    .line 643
    .line 644
    array-length v9, v0

    .line 645
    const/4 v12, 0x1

    .line 646
    if-lt v9, v12, :cond_17

    .line 647
    .line 648
    aget-object v0, v0, v4

    .line 649
    .line 650
    if-eqz v0, :cond_17

    .line 651
    .line 652
    if-eqz v15, :cond_17

    .line 653
    .line 654
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 655
    .line 656
    invoke-static {v4, v15}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 660
    .line 661
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 662
    .line 663
    .line 664
    :cond_17
    :goto_e
    move-object/from16 v4, v19

    .line 665
    .line 666
    goto/16 :goto_9

    .line 667
    .line 668
    :cond_18
    move-object/from16 v19, v4

    .line 669
    .line 670
    sget-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 671
    .line 672
    invoke-virtual {v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-gt v14, v4, :cond_1b

    .line 677
    .line 678
    const/4 v4, 0x0

    .line 679
    invoke-static {v4, v4, v2, v3, v10}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v9

    .line 683
    if-eqz v9, :cond_19

    .line 684
    .line 685
    array-length v12, v9

    .line 686
    const/4 v13, 0x1

    .line 687
    if-lt v12, v13, :cond_19

    .line 688
    .line 689
    aget-object v9, v9, v4

    .line 690
    .line 691
    if-eqz v9, :cond_17

    .line 692
    .line 693
    if-eqz v0, :cond_17

    .line 694
    .line 695
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 696
    .line 697
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 698
    .line 699
    .line 700
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 701
    .line 702
    invoke-static {v0, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 703
    .line 704
    .line 705
    goto :goto_e

    .line 706
    :cond_19
    const/16 v9, 0xa

    .line 707
    .line 708
    invoke-static {v9, v4, v2, v3, v10}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v9

    .line 712
    if-eqz v9, :cond_17

    .line 713
    .line 714
    array-length v12, v9

    .line 715
    const/4 v13, 0x1

    .line 716
    if-lt v12, v13, :cond_17

    .line 717
    .line 718
    aget-object v9, v9, v4

    .line 719
    .line 720
    if-eqz v9, :cond_1a

    .line 721
    .line 722
    if-eqz v0, :cond_1a

    .line 723
    .line 724
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 725
    .line 726
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 730
    .line 731
    invoke-static {v0, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 732
    .line 733
    .line 734
    :cond_1a
    const/16 v0, 0x8

    .line 735
    .line 736
    const/4 v4, 0x0

    .line 737
    invoke-static {v0, v4, v2, v3, v10}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    if-eqz v0, :cond_17

    .line 742
    .line 743
    array-length v9, v0

    .line 744
    const/4 v12, 0x1

    .line 745
    if-lt v9, v12, :cond_17

    .line 746
    .line 747
    aget-object v0, v0, v4

    .line 748
    .line 749
    if-eqz v0, :cond_17

    .line 750
    .line 751
    if-eqz v15, :cond_17

    .line 752
    .line 753
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 754
    .line 755
    invoke-static {v4, v15}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 756
    .line 757
    .line 758
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 759
    .line 760
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 761
    .line 762
    .line 763
    goto :goto_e

    .line 764
    :cond_1b
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 765
    .line 766
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-gt v14, v0, :cond_1e

    .line 771
    .line 772
    const/4 v4, 0x0

    .line 773
    invoke-static {v4, v4, v2, v3, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    if-eqz v0, :cond_1d

    .line 778
    .line 779
    array-length v9, v0

    .line 780
    const/4 v12, 0x1

    .line 781
    if-lt v9, v12, :cond_1c

    .line 782
    .line 783
    aget-object v0, v0, v4

    .line 784
    .line 785
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 786
    .line 787
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 788
    .line 789
    .line 790
    goto :goto_e

    .line 791
    :cond_1c
    move v9, v4

    .line 792
    move v13, v12

    .line 793
    move-object/from16 v4, v19

    .line 794
    .line 795
    goto/16 :goto_f

    .line 796
    .line 797
    :cond_1d
    move v9, v4

    .line 798
    move-object/from16 v4, v19

    .line 799
    .line 800
    goto/16 :goto_a

    .line 801
    .line 802
    :cond_1e
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 803
    .line 804
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-gt v14, v0, :cond_20

    .line 809
    .line 810
    const/4 v4, 0x1

    .line 811
    if-ne v13, v4, :cond_1f

    .line 812
    .line 813
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 814
    .line 815
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    sub-int v0, v14, v0

    .line 820
    .line 821
    const-string/jumbo v4, "hsc48_lcg"

    .line 822
    .line 823
    .line 824
    const/4 v9, 0x0

    .line 825
    invoke-static {v0, v9, v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    if-eqz v4, :cond_17

    .line 830
    .line 831
    array-length v12, v4

    .line 832
    const/4 v13, 0x1

    .line 833
    if-lt v12, v13, :cond_17

    .line 834
    .line 835
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    aget-object v4, v4, v9

    .line 840
    .line 841
    iget-object v9, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 842
    .line 843
    invoke-static {v9, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 844
    .line 845
    .line 846
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 847
    .line 848
    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 849
    .line 850
    .line 851
    goto/16 :goto_e

    .line 852
    .line 853
    :cond_1f
    move v13, v4

    .line 854
    move-object/from16 v4, v19

    .line 855
    .line 856
    goto/16 :goto_b

    .line 857
    .line 858
    :cond_20
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 859
    .line 860
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-gt v14, v0, :cond_21

    .line 865
    .line 866
    const/4 v4, 0x0

    .line 867
    invoke-static {v4, v4, v2, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    if-eqz v0, :cond_1d

    .line 872
    .line 873
    array-length v9, v0

    .line 874
    const/4 v12, 0x1

    .line 875
    if-lt v9, v12, :cond_1c

    .line 876
    .line 877
    aget-object v0, v0, v4

    .line 878
    .line 879
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 880
    .line 881
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 882
    .line 883
    .line 884
    goto/16 :goto_e

    .line 885
    .line 886
    :cond_21
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 887
    .line 888
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    if-gt v14, v0, :cond_22

    .line 893
    .line 894
    const/4 v4, 0x0

    .line 895
    invoke-static {v4, v4, v2, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    if-eqz v0, :cond_1d

    .line 900
    .line 901
    array-length v9, v0

    .line 902
    const/4 v12, 0x1

    .line 903
    if-lt v9, v12, :cond_1c

    .line 904
    .line 905
    aget-object v0, v0, v4

    .line 906
    .line 907
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 908
    .line 909
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 910
    .line 911
    .line 912
    goto/16 :goto_e

    .line 913
    .line 914
    :cond_22
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 915
    .line 916
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-gt v14, v0, :cond_23

    .line 921
    .line 922
    const/4 v4, 0x1

    .line 923
    if-ne v13, v4, :cond_1f

    .line 924
    .line 925
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 926
    .line 927
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 928
    .line 929
    .line 930
    move-result v4

    .line 931
    sub-int v4, v14, v4

    .line 932
    .line 933
    div-int/lit8 v4, v4, 0x11

    .line 934
    .line 935
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    sub-int v0, v14, v0

    .line 940
    .line 941
    rem-int/lit8 v0, v0, 0x11

    .line 942
    .line 943
    const-string/jumbo v9, "cgc17_enc"

    .line 944
    .line 945
    .line 946
    invoke-static {v4, v0, v2, v3, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v9

    .line 950
    if-eqz v9, :cond_17

    .line 951
    .line 952
    array-length v12, v9

    .line 953
    const/4 v13, 0x1

    .line 954
    if-lt v12, v13, :cond_17

    .line 955
    .line 956
    new-instance v12, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    .line 960
    .line 961
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v4, " "

    .line 969
    .line 970
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    const/4 v4, 0x0

    .line 985
    aget-object v9, v9, v4

    .line 986
    .line 987
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 988
    .line 989
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 990
    .line 991
    .line 992
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 993
    .line 994
    invoke-static {v0, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 995
    .line 996
    .line 997
    goto/16 :goto_e

    .line 998
    .line 999
    :cond_23
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1002
    .line 1003
    .line 1004
    move-result v0

    .line 1005
    if-gt v14, v0, :cond_24

    .line 1006
    .line 1007
    const/4 v4, 0x1

    .line 1008
    if-ne v13, v4, :cond_1f

    .line 1009
    .line 1010
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 1011
    .line 1012
    const-string v4, "7"

    .line 1013
    .line 1014
    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1015
    .line 1016
    .line 1017
    goto/16 :goto_e

    .line 1018
    .line 1019
    :cond_24
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1020
    .line 1021
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    if-gt v14, v0, :cond_25

    .line 1026
    .line 1027
    const/4 v4, 0x0

    .line 1028
    invoke-static {v4, v4, v2, v3, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    if-eqz v0, :cond_1d

    .line 1033
    .line 1034
    array-length v9, v0

    .line 1035
    const/4 v12, 0x1

    .line 1036
    if-lt v9, v12, :cond_1c

    .line 1037
    .line 1038
    aget-object v0, v0, v4

    .line 1039
    .line 1040
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 1041
    .line 1042
    invoke-static {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_e

    .line 1046
    .line 1047
    :cond_25
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 1048
    .line 1049
    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    if-gt v14, v0, :cond_28

    .line 1054
    .line 1055
    move-object/from16 v4, v19

    .line 1056
    .line 1057
    const/4 v9, 0x0

    .line 1058
    invoke-static {v9, v9, v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    if-eqz v0, :cond_f

    .line 1063
    .line 1064
    array-length v12, v0

    .line 1065
    const/4 v13, 0x1

    .line 1066
    if-lt v12, v13, :cond_26

    .line 1067
    .line 1068
    aget-object v0, v0, v9

    .line 1069
    .line 1070
    iget-object v12, v1, Lcom/android/server/display/exynos/ExynosDisplayTune;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 1071
    .line 1072
    invoke-static {v12, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1073
    .line 1074
    .line 1075
    :cond_26
    :goto_f
    add-int/lit8 v14, v14, 0x1

    .line 1076
    .line 1077
    move-object/from16 v9, v16

    .line 1078
    .line 1079
    move-object/from16 v0, v17

    .line 1080
    .line 1081
    move-object/from16 v12, v18

    .line 1082
    .line 1083
    goto/16 :goto_7

    .line 1084
    .line 1085
    :cond_27
    move-object/from16 v18, v12

    .line 1086
    .line 1087
    goto :goto_11

    .line 1088
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1089
    .line 1090
    .line 1091
    :cond_28
    :goto_11
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    .line 1092
    .line 1093
    .line 1094
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    .line 1095
    .line 1096
    .line 1097
    const-string/jumbo v0, "setCalibrationDQE-"

    .line 1098
    .line 1099
    .line 1100
    move-object/from16 v1, v18

    .line 1101
    .line 1102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .line 1104
    .line 1105
    return-void
.end method
