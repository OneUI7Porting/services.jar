.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory$3;
.super Landroid/os/CountDownTimer;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "CountDownTimer finished = "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 15
    .line 16
    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 17
    .line 18
    const-string v2, "ExynosDisplayFactory"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 27
    .line 28
    return-void
.end method

.method public final onTick(J)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 2
    .line 3
    iget p2, p1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const-string v1, "0"

    .line 7
    .line 8
    const-string/jumbo v2, "xml array size wrong: "

    .line 9
    .line 10
    .line 11
    const-string v3, "ExynosDisplayFactory"

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    if-gtz p2, :cond_5

    .line 16
    .line 17
    move p1, v5

    .line 18
    :goto_0
    if-ge p1, v4, :cond_42

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 21
    .line 22
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 23
    .line 24
    aget-object v6, v6, p1

    .line 25
    .line 26
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 27
    .line 28
    aget v6, v6, v7

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 34
    .line 35
    aget v6, v6, p1

    .line 36
    .line 37
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 45
    .line 46
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 49
    .line 50
    aget-object v7, v7, p1

    .line 51
    .line 52
    const-string/jumbo v8, "setCalibrationAPS"

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :try_start_0
    const-string/jumbo v8, "aps"

    .line 59
    .line 60
    .line 61
    invoke-static {v5, v5, v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-nez v6, :cond_2

    .line 66
    .line 67
    const-string/jumbo p2, "xml aps not found"

    .line 68
    .line 69
    .line 70
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception p2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    array-length v7, v6

    .line 77
    if-ge v7, v0, :cond_3

    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    array-length v6, v6

    .line 85
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    aget-object v6, v6, v5

    .line 97
    .line 98
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-nez v7, :cond_4

    .line 111
    .line 112
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    const/16 v6, 0x8

    .line 125
    .line 126
    const/16 v7, 0xa

    .line 127
    .line 128
    if-gt p2, v0, :cond_a

    .line 129
    .line 130
    move p1, v5

    .line 131
    :goto_3
    if-ge p1, v4, :cond_42

    .line 132
    .line 133
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 134
    .line 135
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 136
    .line 137
    aget-object v1, v1, p1

    .line 138
    .line 139
    iget v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 140
    .line 141
    aget v1, v1, v2

    .line 142
    .line 143
    if-nez v1, :cond_6

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_6
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 147
    .line 148
    aget v1, v1, p1

    .line 149
    .line 150
    invoke-static {p2, v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-nez p2, :cond_7

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 158
    .line 159
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 162
    .line 163
    aget-object v2, v2, p1

    .line 164
    .line 165
    const-string/jumbo v8, "degamma"

    .line 166
    .line 167
    .line 168
    const-string/jumbo v9, "setCalibrationDEGAMMA"

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :try_start_1
    invoke-static {v5, v5, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    iget-object v10, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v9, :cond_8

    .line 181
    .line 182
    :try_start_2
    array-length v11, v9

    .line 183
    if-lt v11, v0, :cond_8

    .line 184
    .line 185
    aget-object v1, v9, v5

    .line 186
    .line 187
    invoke-virtual {p2, v1, v10}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :catch_1
    move-exception p2

    .line 192
    goto :goto_4

    .line 193
    :cond_8
    invoke-static {v7, v5, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    if-eqz v9, :cond_9

    .line 198
    .line 199
    array-length v11, v9

    .line 200
    if-lt v11, v0, :cond_9

    .line 201
    .line 202
    aget-object v9, v9, v5

    .line 203
    .line 204
    invoke-virtual {p2, v9, v10}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v6, v5, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_9

    .line 212
    .line 213
    array-length v2, v1

    .line 214
    if-lt v2, v0, :cond_9

    .line 215
    .line 216
    aget-object v1, v1, v5

    .line 217
    .line 218
    iget-object v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_a
    if-gt p2, v4, :cond_f

    .line 231
    .line 232
    move p1, v5

    .line 233
    :goto_6
    if-ge p1, v4, :cond_42

    .line 234
    .line 235
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 236
    .line 237
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 238
    .line 239
    aget-object v1, v1, p1

    .line 240
    .line 241
    iget v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 242
    .line 243
    aget v1, v1, v2

    .line 244
    .line 245
    if-nez v1, :cond_b

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_b
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 249
    .line 250
    aget v1, v1, p1

    .line 251
    .line 252
    invoke-static {p2, v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-nez p2, :cond_c

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_c
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 260
    .line 261
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 264
    .line 265
    aget-object v2, v2, p1

    .line 266
    .line 267
    const-string/jumbo v8, "gamma"

    .line 268
    .line 269
    .line 270
    const-string/jumbo v9, "setCalibrationGAMMA"

    .line 271
    .line 272
    .line 273
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :try_start_3
    invoke-static {v5, v5, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 280
    iget-object v10, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v9, :cond_d

    .line 283
    .line 284
    :try_start_4
    array-length v11, v9

    .line 285
    if-lt v11, v0, :cond_d

    .line 286
    .line 287
    aget-object v1, v9, v5

    .line 288
    .line 289
    invoke-virtual {p2, v1, v10}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :catch_2
    move-exception p2

    .line 294
    goto :goto_7

    .line 295
    :cond_d
    invoke-static {v7, v5, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    if-eqz v9, :cond_e

    .line 300
    .line 301
    array-length v11, v9

    .line 302
    if-lt v11, v0, :cond_e

    .line 303
    .line 304
    aget-object v9, v9, v5

    .line 305
    .line 306
    invoke-virtual {p2, v9, v10}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v6, v5, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-eqz v1, :cond_e

    .line 314
    .line 315
    array-length v2, v1

    .line 316
    if-lt v2, v0, :cond_e

    .line 317
    .line 318
    aget-object v1, v1, v5

    .line 319
    .line 320
    iget-object v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :goto_7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .line 328
    .line 329
    :cond_e
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_f
    const/4 v6, 0x3

    .line 333
    if-gt p2, v6, :cond_15

    .line 334
    .line 335
    move p1, v5

    .line 336
    :goto_9
    if-ge p1, v4, :cond_42

    .line 337
    .line 338
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 339
    .line 340
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 341
    .line 342
    aget-object v6, v6, p1

    .line 343
    .line 344
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 345
    .line 346
    aget v6, v6, v7

    .line 347
    .line 348
    if-nez v6, :cond_10

    .line 349
    .line 350
    goto :goto_b

    .line 351
    :cond_10
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 352
    .line 353
    aget v6, v6, p1

    .line 354
    .line 355
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 356
    .line 357
    .line 358
    move-result p2

    .line 359
    if-nez p2, :cond_11

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :cond_11
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 363
    .line 364
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 367
    .line 368
    aget-object v7, v7, p1

    .line 369
    .line 370
    const-string/jumbo v8, "setCalibrationGAMMA_MATRIX"

    .line 371
    .line 372
    .line 373
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    :try_start_5
    const-string/jumbo v8, "gamma_matrix"

    .line 377
    .line 378
    .line 379
    invoke-static {v5, v5, v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    if-nez v6, :cond_12

    .line 384
    .line 385
    const-string/jumbo p2, "xml gamma_matrix not found"

    .line 386
    .line 387
    .line 388
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    goto :goto_b

    .line 392
    :catch_3
    move-exception p2

    .line 393
    goto :goto_a

    .line 394
    :cond_12
    array-length v7, v6

    .line 395
    if-ge v7, v0, :cond_13

    .line 396
    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    array-length v6, v6

    .line 403
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_13
    aget-object v6, v6, v5

    .line 415
    .line 416
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    if-eqz v7, :cond_14

    .line 423
    .line 424
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    if-nez v7, :cond_14

    .line 429
    .line 430
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 433
    .line 434
    .line 435
    goto :goto_b

    .line 436
    :goto_a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    .line 438
    .line 439
    :cond_14
    :goto_b
    add-int/lit8 p1, p1, 0x1

    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_15
    const/4 v8, 0x4

    .line 443
    if-gt p2, v8, :cond_1b

    .line 444
    .line 445
    move p1, v5

    .line 446
    :goto_c
    if-ge p1, v4, :cond_42

    .line 447
    .line 448
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 449
    .line 450
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 451
    .line 452
    aget-object v1, v1, p1

    .line 453
    .line 454
    iget v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 455
    .line 456
    aget v1, v1, v2

    .line 457
    .line 458
    if-nez v1, :cond_16

    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_16
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 462
    .line 463
    aget v1, v1, p1

    .line 464
    .line 465
    invoke-static {p2, v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 466
    .line 467
    .line 468
    move-result p2

    .line 469
    if-nez p2, :cond_17

    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_17
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 473
    .line 474
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 475
    .line 476
    iget-object v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 477
    .line 478
    aget-object v2, v2, p1

    .line 479
    .line 480
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 481
    .line 482
    sub-int/2addr v7, v8

    .line 483
    const-string/jumbo v9, "setCalibrationHSC48_LCG: "

    .line 484
    .line 485
    .line 486
    invoke-static {v7, v9, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    move v7, v5

    .line 490
    :goto_d
    if-ge v7, v6, :cond_1a

    .line 491
    .line 492
    :try_start_6
    const-string/jumbo v9, "hsc48_lcg"

    .line 493
    .line 494
    .line 495
    invoke-static {v7, v5, v1, v2, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    if-eqz v9, :cond_19

    .line 500
    .line 501
    array-length v10, v9

    .line 502
    if-ge v10, v0, :cond_18

    .line 503
    .line 504
    goto :goto_e

    .line 505
    :cond_18
    aget-object v9, v9, v5

    .line 506
    .line 507
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    iget-object v11, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 512
    .line 513
    invoke-static {v11, v10}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    iget-object v10, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 517
    .line 518
    invoke-static {v10, v9}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    .line 520
    .line 521
    add-int/lit8 v7, v7, 0x1

    .line 522
    .line 523
    goto :goto_d

    .line 524
    :catch_4
    move-exception p2

    .line 525
    goto :goto_f

    .line 526
    :cond_19
    :goto_e
    const-string/jumbo p2, "xml hsc48_lcg not found"

    .line 527
    .line 528
    .line 529
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 530
    .line 531
    .line 532
    goto :goto_10

    .line 533
    :goto_f
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    .line 535
    .line 536
    :cond_1a
    :goto_10
    add-int/lit8 p1, p1, 0x1

    .line 537
    .line 538
    goto :goto_c

    .line 539
    :cond_1b
    const/4 v6, 0x5

    .line 540
    if-gt p2, v6, :cond_21

    .line 541
    .line 542
    move p1, v5

    .line 543
    :goto_11
    if-ge p1, v4, :cond_42

    .line 544
    .line 545
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 546
    .line 547
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 548
    .line 549
    aget-object v6, v6, p1

    .line 550
    .line 551
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 552
    .line 553
    aget v6, v6, v7

    .line 554
    .line 555
    if-nez v6, :cond_1c

    .line 556
    .line 557
    goto :goto_13

    .line 558
    :cond_1c
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 559
    .line 560
    aget v6, v6, p1

    .line 561
    .line 562
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 563
    .line 564
    .line 565
    move-result p2

    .line 566
    if-nez p2, :cond_1d

    .line 567
    .line 568
    goto :goto_13

    .line 569
    :cond_1d
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 570
    .line 571
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 572
    .line 573
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 574
    .line 575
    aget-object v7, v7, p1

    .line 576
    .line 577
    const-string/jumbo v8, "setCalibrationHSC"

    .line 578
    .line 579
    .line 580
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    :try_start_7
    const-string/jumbo v8, "hsc"

    .line 584
    .line 585
    .line 586
    invoke-static {v5, v5, v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v6

    .line 590
    if-nez v6, :cond_1e

    .line 591
    .line 592
    const-string/jumbo p2, "xml hsc not found"

    .line 593
    .line 594
    .line 595
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    goto :goto_13

    .line 599
    :catch_5
    move-exception p2

    .line 600
    goto :goto_12

    .line 601
    :cond_1e
    array-length v7, v6

    .line 602
    if-ge v7, v0, :cond_1f

    .line 603
    .line 604
    new-instance p2, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    array-length v6, v6

    .line 610
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p2

    .line 617
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_1f
    aget-object v6, v6, v5

    .line 622
    .line 623
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    if-eqz v7, :cond_20

    .line 630
    .line 631
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v7

    .line 635
    if-nez v7, :cond_20

    .line 636
    .line 637
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 638
    .line 639
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 640
    .line 641
    .line 642
    goto :goto_13

    .line 643
    :goto_12
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 644
    .line 645
    .line 646
    :cond_20
    :goto_13
    add-int/lit8 p1, p1, 0x1

    .line 647
    .line 648
    goto :goto_11

    .line 649
    :cond_21
    const/4 v6, 0x6

    .line 650
    if-gt p2, v6, :cond_27

    .line 651
    .line 652
    move p1, v5

    .line 653
    :goto_14
    if-ge p1, v4, :cond_42

    .line 654
    .line 655
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 656
    .line 657
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 658
    .line 659
    aget-object v6, v6, p1

    .line 660
    .line 661
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 662
    .line 663
    aget v6, v6, v7

    .line 664
    .line 665
    if-nez v6, :cond_22

    .line 666
    .line 667
    goto :goto_16

    .line 668
    :cond_22
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 669
    .line 670
    aget v6, v6, p1

    .line 671
    .line 672
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 673
    .line 674
    .line 675
    move-result p2

    .line 676
    if-nez p2, :cond_23

    .line 677
    .line 678
    goto :goto_16

    .line 679
    :cond_23
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 680
    .line 681
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 682
    .line 683
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 684
    .line 685
    aget-object v7, v7, p1

    .line 686
    .line 687
    const-string/jumbo v8, "setCalibrationSCL"

    .line 688
    .line 689
    .line 690
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    :try_start_8
    const-string/jumbo v8, "scl"

    .line 694
    .line 695
    .line 696
    invoke-static {v5, v5, v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v6

    .line 700
    if-nez v6, :cond_24

    .line 701
    .line 702
    const-string/jumbo p2, "xml scl not found"

    .line 703
    .line 704
    .line 705
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    goto :goto_16

    .line 709
    :catch_6
    move-exception p2

    .line 710
    goto :goto_15

    .line 711
    :cond_24
    array-length v7, v6

    .line 712
    if-ge v7, v0, :cond_25

    .line 713
    .line 714
    new-instance p2, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    array-length v6, v6

    .line 720
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object p2

    .line 727
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    goto :goto_16

    .line 731
    :cond_25
    aget-object v6, v6, v5

    .line 732
    .line 733
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 734
    .line 735
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    if-eqz v7, :cond_26

    .line 740
    .line 741
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    if-nez v7, :cond_26

    .line 746
    .line 747
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 748
    .line 749
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 750
    .line 751
    .line 752
    goto :goto_16

    .line 753
    :goto_15
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 754
    .line 755
    .line 756
    :cond_26
    :goto_16
    add-int/lit8 p1, p1, 0x1

    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_27
    const/16 v6, 0x9

    .line 760
    .line 761
    if-gt p2, v6, :cond_2d

    .line 762
    .line 763
    move p1, v5

    .line 764
    :goto_17
    if-ge p1, v4, :cond_42

    .line 765
    .line 766
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 767
    .line 768
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 769
    .line 770
    aget-object v1, v1, p1

    .line 771
    .line 772
    iget v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 773
    .line 774
    aget v1, v1, v2

    .line 775
    .line 776
    if-nez v1, :cond_28

    .line 777
    .line 778
    goto :goto_1b

    .line 779
    :cond_28
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 780
    .line 781
    aget v1, v1, p1

    .line 782
    .line 783
    invoke-static {p2, v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 784
    .line 785
    .line 786
    move-result p2

    .line 787
    if-nez p2, :cond_29

    .line 788
    .line 789
    goto :goto_1b

    .line 790
    :cond_29
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 791
    .line 792
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 793
    .line 794
    iget-object v2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 795
    .line 796
    aget-object v2, v2, p1

    .line 797
    .line 798
    iget v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 799
    .line 800
    add-int/lit8 v6, v6, -0x7

    .line 801
    .line 802
    const-string/jumbo v7, "setCalibrationCGC17_ENC + "

    .line 803
    .line 804
    .line 805
    invoke-static {v6, v7, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    move v7, v5

    .line 809
    :goto_18
    const/16 v8, 0x11

    .line 810
    .line 811
    if-ge v7, v8, :cond_2c

    .line 812
    .line 813
    :try_start_9
    const-string/jumbo v8, "cgc17_enc"

    .line 814
    .line 815
    .line 816
    invoke-static {v6, v7, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v8

    .line 820
    if-eqz v8, :cond_2b

    .line 821
    .line 822
    array-length v9, v8

    .line 823
    if-ge v9, v0, :cond_2a

    .line 824
    .line 825
    goto :goto_19

    .line 826
    :cond_2a
    aget-object v8, v8, v5

    .line 827
    .line 828
    mul-int/lit8 v9, v6, 0x11

    .line 829
    .line 830
    add-int/2addr v9, v7

    .line 831
    invoke-virtual {p2, v9}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_IDX(I)V

    .line 832
    .line 833
    .line 834
    iget-object v9, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 835
    .line 836
    invoke-static {v9, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 837
    .line 838
    .line 839
    add-int/lit8 v7, v7, 0x1

    .line 840
    .line 841
    goto :goto_18

    .line 842
    :catch_7
    move-exception p2

    .line 843
    goto :goto_1a

    .line 844
    :cond_2b
    :goto_19
    const-string/jumbo p2, "xml cgc17_enc not found"

    .line 845
    .line 846
    .line 847
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 848
    .line 849
    .line 850
    goto :goto_1b

    .line 851
    :goto_1a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 852
    .line 853
    .line 854
    :cond_2c
    const-string/jumbo p2, "setCalibrationCGC17_ENC - "

    .line 855
    .line 856
    .line 857
    invoke-static {v6, p2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    .line 861
    .line 862
    goto :goto_17

    .line 863
    :cond_2d
    if-gt p2, v7, :cond_30

    .line 864
    .line 865
    :goto_1c
    if-ge v5, v4, :cond_42

    .line 866
    .line 867
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 868
    .line 869
    iget-object p2, p1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 870
    .line 871
    aget-object p2, p2, v5

    .line 872
    .line 873
    iget v1, p1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 874
    .line 875
    aget p2, p2, v1

    .line 876
    .line 877
    if-nez p2, :cond_2e

    .line 878
    .line 879
    goto :goto_1d

    .line 880
    :cond_2e
    iget-object p2, p1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 881
    .line 882
    aget p2, p2, v5

    .line 883
    .line 884
    invoke-static {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 885
    .line 886
    .line 887
    move-result p1

    .line 888
    if-nez p1, :cond_2f

    .line 889
    .line 890
    goto :goto_1d

    .line 891
    :cond_2f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 892
    .line 893
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    .line 895
    .line 896
    const-string/jumbo p2, "setCalibrationCGC17_DEC"

    .line 897
    .line 898
    .line 899
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .line 901
    .line 902
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 903
    .line 904
    const-string p2, "7"

    .line 905
    .line 906
    invoke-static {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    .line 908
    .line 909
    :goto_1d
    add-int/lit8 v5, v5, 0x1

    .line 910
    .line 911
    goto :goto_1c

    .line 912
    :cond_30
    const/16 v6, 0xb

    .line 913
    .line 914
    if-gt p2, v6, :cond_36

    .line 915
    .line 916
    move p1, v5

    .line 917
    :goto_1e
    if-ge p1, v4, :cond_42

    .line 918
    .line 919
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 920
    .line 921
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 922
    .line 923
    aget-object v6, v6, p1

    .line 924
    .line 925
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 926
    .line 927
    aget v6, v6, v7

    .line 928
    .line 929
    if-nez v6, :cond_31

    .line 930
    .line 931
    goto :goto_20

    .line 932
    :cond_31
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 933
    .line 934
    aget v6, v6, p1

    .line 935
    .line 936
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 937
    .line 938
    .line 939
    move-result p2

    .line 940
    if-nez p2, :cond_32

    .line 941
    .line 942
    goto :goto_20

    .line 943
    :cond_32
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 944
    .line 945
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 946
    .line 947
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 948
    .line 949
    aget-object v7, v7, p1

    .line 950
    .line 951
    const-string/jumbo v8, "setCalibrationCGC17_CON"

    .line 952
    .line 953
    .line 954
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    :try_start_a
    const-string/jumbo v8, "cgc17_con"

    .line 958
    .line 959
    .line 960
    invoke-static {v5, v5, v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v6

    .line 964
    if-nez v6, :cond_33

    .line 965
    .line 966
    const-string/jumbo p2, "xml cgc17_con not found"

    .line 967
    .line 968
    .line 969
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    goto :goto_20

    .line 973
    :catch_8
    move-exception p2

    .line 974
    goto :goto_1f

    .line 975
    :cond_33
    array-length v7, v6

    .line 976
    if-ge v7, v0, :cond_34

    .line 977
    .line 978
    new-instance p2, Ljava/lang/StringBuilder;

    .line 979
    .line 980
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    array-length v6, v6

    .line 984
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object p2

    .line 991
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    goto :goto_20

    .line 995
    :cond_34
    aget-object v6, v6, v5

    .line 996
    .line 997
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 998
    .line 999
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v7

    .line 1003
    if-eqz v7, :cond_35

    .line 1004
    .line 1005
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v7

    .line 1009
    if-nez v7, :cond_35

    .line 1010
    .line 1011
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 1012
    .line 1013
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1014
    .line 1015
    .line 1016
    goto :goto_20

    .line 1017
    :goto_1f
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1018
    .line 1019
    .line 1020
    :cond_35
    :goto_20
    add-int/lit8 p1, p1, 0x1

    .line 1021
    .line 1022
    goto :goto_1e

    .line 1023
    :cond_36
    const/16 v6, 0xc

    .line 1024
    .line 1025
    if-gt p2, v6, :cond_3b

    .line 1026
    .line 1027
    move p1, v5

    .line 1028
    :goto_21
    if-ge p1, v4, :cond_42

    .line 1029
    .line 1030
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1031
    .line 1032
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 1033
    .line 1034
    aget-object v1, v1, p1

    .line 1035
    .line 1036
    iget v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1037
    .line 1038
    aget v1, v1, v6

    .line 1039
    .line 1040
    if-nez v1, :cond_37

    .line 1041
    .line 1042
    goto :goto_23

    .line 1043
    :cond_37
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 1044
    .line 1045
    aget v1, v1, p1

    .line 1046
    .line 1047
    invoke-static {p2, v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1048
    .line 1049
    .line 1050
    move-result p2

    .line 1051
    if-nez p2, :cond_38

    .line 1052
    .line 1053
    goto :goto_23

    .line 1054
    :cond_38
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1055
    .line 1056
    iget-object v1, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 1057
    .line 1058
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 1059
    .line 1060
    aget-object v6, v6, p1

    .line 1061
    .line 1062
    const-string/jumbo v7, "setCalibrationCGC_DITHER"

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    :try_start_b
    const-string/jumbo v7, "cgc_dither"

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v5, v5, v1, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    if-nez v1, :cond_39

    .line 1076
    .line 1077
    const-string/jumbo p2, "xml degamma not found"

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    .line 1082
    .line 1083
    goto :goto_23

    .line 1084
    :catch_9
    move-exception p2

    .line 1085
    goto :goto_22

    .line 1086
    :cond_39
    array-length v6, v1

    .line 1087
    if-ge v6, v0, :cond_3a

    .line 1088
    .line 1089
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    array-length v1, v1

    .line 1095
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object p2

    .line 1102
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .line 1104
    .line 1105
    goto :goto_23

    .line 1106
    :cond_3a
    aget-object v1, v1, v5

    .line 1107
    .line 1108
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-static {p2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1111
    .line 1112
    .line 1113
    goto :goto_23

    .line 1114
    :goto_22
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1115
    .line 1116
    .line 1117
    :goto_23
    add-int/lit8 p1, p1, 0x1

    .line 1118
    .line 1119
    goto :goto_21

    .line 1120
    :cond_3b
    const/16 v6, 0xd

    .line 1121
    .line 1122
    if-gt p2, v6, :cond_41

    .line 1123
    .line 1124
    move p1, v5

    .line 1125
    :goto_24
    if-ge p1, v4, :cond_42

    .line 1126
    .line 1127
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1128
    .line 1129
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 1130
    .line 1131
    aget-object v6, v6, p1

    .line 1132
    .line 1133
    iget v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1134
    .line 1135
    aget v6, v6, v7

    .line 1136
    .line 1137
    if-nez v6, :cond_3c

    .line 1138
    .line 1139
    goto :goto_26

    .line 1140
    :cond_3c
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 1141
    .line 1142
    aget v6, v6, p1

    .line 1143
    .line 1144
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1145
    .line 1146
    .line 1147
    move-result p2

    .line 1148
    if-nez p2, :cond_3d

    .line 1149
    .line 1150
    goto :goto_26

    .line 1151
    :cond_3d
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1152
    .line 1153
    iget-object v6, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 1154
    .line 1155
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 1156
    .line 1157
    aget-object v7, v7, p1

    .line 1158
    .line 1159
    const-string/jumbo v8, "setCalibrationDE"

    .line 1160
    .line 1161
    .line 1162
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .line 1164
    .line 1165
    :try_start_c
    const-string/jumbo v8, "de"

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v5, v5, v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v6

    .line 1172
    if-nez v6, :cond_3e

    .line 1173
    .line 1174
    const-string/jumbo p2, "xml de not found"

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .line 1179
    .line 1180
    goto :goto_26

    .line 1181
    :catch_a
    move-exception p2

    .line 1182
    goto :goto_25

    .line 1183
    :cond_3e
    array-length v7, v6

    .line 1184
    if-ge v7, v0, :cond_3f

    .line 1185
    .line 1186
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    array-length v6, v6

    .line 1192
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object p2

    .line 1199
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    goto :goto_26

    .line 1203
    :cond_3f
    aget-object v6, v6, v5

    .line 1204
    .line 1205
    iget-object v7, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 1206
    .line 1207
    invoke-static {v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v7

    .line 1211
    if-eqz v7, :cond_40

    .line 1212
    .line 1213
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v7

    .line 1217
    if-nez v7, :cond_40

    .line 1218
    .line 1219
    iget-object p2, p2, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 1220
    .line 1221
    invoke-static {p2, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 1222
    .line 1223
    .line 1224
    goto :goto_26

    .line 1225
    :goto_25
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1226
    .line 1227
    .line 1228
    :cond_40
    :goto_26
    add-int/lit8 p1, p1, 0x1

    .line 1229
    .line 1230
    goto :goto_24

    .line 1231
    :cond_41
    const/16 v1, 0xe

    .line 1232
    .line 1233
    if-gt p2, v1, :cond_42

    .line 1234
    .line 1235
    invoke-static {p1, v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1236
    .line 1237
    .line 1238
    :cond_42
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1239
    .line 1240
    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1241
    .line 1242
    add-int/2addr p1, v0

    .line 1243
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1244
    .line 1245
    return-void
.end method
