.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActiveServices;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActiveServices;

    .line 9
    .line 10
    iget v2, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$1:I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    .line 13
    .line 14
    move-object/from16 v3, p1

    .line 15
    .line 16
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 22
    .line 23
    if-eq v4, v2, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_1
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 29
    .line 30
    iget-object v4, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v6, 0x0

    .line 37
    move v7, v6

    .line 38
    :goto_0
    if-ge v7, v4, :cond_0

    .line 39
    .line 40
    iget-object v8, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 47
    .line 48
    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    move v10, v6

    .line 55
    :goto_1
    if-ge v10, v9, :cond_9

    .line 56
    .line 57
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    check-cast v11, Ljava/util/ArrayList;

    .line 62
    .line 63
    move v12, v6

    .line 64
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-ge v12, v13, :cond_8

    .line 69
    .line 70
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    check-cast v13, Lcom/android/server/am/ConnectionRecord;

    .line 75
    .line 76
    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 77
    .line 78
    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 79
    .line 80
    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 81
    .line 82
    if-eq v14, v2, :cond_7

    .line 83
    .line 84
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    if-eqz v15, :cond_2

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_2
    iget-object v15, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 96
    .line 97
    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 98
    .line 99
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    const/16 v16, 0x1

    .line 104
    .line 105
    const/4 v5, 0x2

    .line 106
    if-ne v15, v5, :cond_3

    .line 107
    .line 108
    move/from16 v17, v16

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move/from16 v17, v6

    .line 112
    .line 113
    :goto_3
    if-ge v15, v5, :cond_4

    .line 114
    .line 115
    const/high16 v5, 0x100000

    .line 116
    .line 117
    invoke-virtual {v13, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_4
    move/from16 v16, v6

    .line 125
    .line 126
    :goto_4
    if-nez v17, :cond_6

    .line 127
    .line 128
    if-eqz v16, :cond_5

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    :goto_5
    invoke-static {v15}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    goto :goto_7

    .line 148
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :goto_7
    return-object v5

    .line 158
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActiveServices;

    .line 159
    .line 160
    iget v2, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$1:I

    .line 161
    .line 162
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    .line 163
    .line 164
    move-object/from16 v3, p1

    .line 165
    .line 166
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 172
    .line 173
    if-ne v4, v2, :cond_10

    .line 174
    .line 175
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 176
    .line 177
    iget-object v4, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/4 v5, 0x0

    .line 184
    move v13, v5

    .line 185
    :goto_8
    if-ge v13, v4, :cond_10

    .line 186
    .line 187
    iget-object v6, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 188
    .line 189
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 194
    .line 195
    iget-object v14, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    move v12, v5

    .line 202
    :goto_9
    if-ge v12, v15, :cond_f

    .line 203
    .line 204
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    move-object v11, v6

    .line 209
    check-cast v11, Ljava/util/ArrayList;

    .line 210
    .line 211
    move v10, v5

    .line 212
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-ge v10, v6, :cond_e

    .line 217
    .line 218
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 223
    .line 224
    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 225
    .line 226
    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 227
    .line 228
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 229
    .line 230
    if-eqz v8, :cond_b

    .line 231
    .line 232
    :cond_a
    :goto_b
    move/from16 v20, v10

    .line 233
    .line 234
    move-object/from16 v17, v11

    .line 235
    .line 236
    move/from16 v19, v12

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_b
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 240
    .line 241
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 242
    .line 243
    if-eq v8, v2, :cond_a

    .line 244
    .line 245
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_c

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_c
    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 257
    .line 258
    sget-object v16, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 259
    .line 260
    const/16 v17, 0x0

    .line 261
    .line 262
    move-object v6, v1

    .line 263
    move-object/from16 p0, v7

    .line 264
    .line 265
    move/from16 v18, v8

    .line 266
    .line 267
    move v8, v9

    .line 268
    move/from16 v19, v9

    .line 269
    .line 270
    move/from16 v9, v18

    .line 271
    .line 272
    move/from16 v20, v10

    .line 273
    .line 274
    move-object/from16 v10, v17

    .line 275
    .line 276
    move-object/from16 v17, v11

    .line 277
    .line 278
    move-object/from16 v11, v16

    .line 279
    .line 280
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    const/4 v11, 0x0

    .line 285
    move/from16 v8, v19

    .line 286
    .line 287
    move-object/from16 v10, p0

    .line 288
    .line 289
    move/from16 v19, v12

    .line 290
    .line 291
    move-object/from16 v12, v16

    .line 292
    .line 293
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    const/4 v7, -0x1

    .line 298
    if-eq v6, v7, :cond_d

    .line 299
    .line 300
    new-instance v0, Landroid/util/Pair;

    .line 301
    .line 302
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    move-object/from16 v2, p0

    .line 307
    .line 308
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_d

    .line 312
    :cond_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    :goto_c
    add-int/lit8 v10, v20, 0x1

    .line 320
    .line 321
    move-object/from16 v11, v17

    .line 322
    .line 323
    move/from16 v12, v19

    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_e
    move/from16 v19, v12

    .line 327
    .line 328
    add-int/lit8 v12, v19, 0x1

    .line 329
    .line 330
    goto/16 :goto_9

    .line 331
    .line 332
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 333
    .line 334
    goto/16 :goto_8

    .line 335
    .line 336
    :cond_10
    const/4 v0, 0x0

    .line 337
    :goto_d
    return-object v0

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
