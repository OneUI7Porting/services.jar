.class public final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAvrStatusCount:I

.field public final mIsTvDevice:Z

.field public mTimeoutCount:I


# direct methods
.method public static -$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, p2, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/util/BitSet;

    .line 17
    .line 18
    const/16 v5, 0xf

    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/util/BitSet;

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 54
    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    move v5, v3

    .line 58
    :goto_1
    const/4 v6, 0x1

    .line 59
    add-int/2addr v5, v6

    .line 60
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v7, 0x0

    .line 65
    const-string v8, "HotPlugDetectionAction"

    .line 66
    .line 67
    const/4 v9, 0x5

    .line 68
    if-eq v5, v3, :cond_b

    .line 69
    .line 70
    iget-boolean v10, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 71
    .line 72
    if-eqz v10, :cond_1

    .line 73
    .line 74
    if-ne v5, v9, :cond_1

    .line 75
    .line 76
    move-object v11, v0

    .line 77
    check-cast v11, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 78
    .line 79
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    if-eqz v12, :cond_1

    .line 84
    .line 85
    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 90
    .line 91
    .line 92
    iget-object v11, v11, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 93
    .line 94
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 95
    .line 96
    .line 97
    iget-object v11, v11, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 98
    .line 99
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 100
    .line 101
    .line 102
    iget-object v11, v11, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 103
    .line 104
    invoke-interface {v11, v12}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_1

    .line 109
    .line 110
    iget v11, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 111
    .line 112
    add-int/2addr v11, v6

    .line 113
    iput v11, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v11, "Ack not returned from AVR. count: "

    .line 118
    .line 119
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v11, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 123
    .line 124
    invoke-static {v6, v11, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 128
    .line 129
    const/4 v11, 0x3

    .line 130
    if-ge v6, v11, :cond_1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    const-string v6, "Remove device by hot-plug detection:"

    .line 134
    .line 135
    invoke-static {v5, v6, v8}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 139
    .line 140
    iget-object v8, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 141
    .line 142
    if-eqz v10, :cond_6

    .line 143
    .line 144
    iget-object v10, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 145
    .line 146
    invoke-virtual {v10, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    if-eqz v10, :cond_2

    .line 151
    .line 152
    move-object v11, v0

    .line 153
    check-cast v11, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 154
    .line 155
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    invoke-static {v10, v12}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_2

    .line 171
    .line 172
    iget-object v10, v11, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 173
    .line 174
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    invoke-virtual {v10, v12}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    invoke-virtual {v11, v12, v10, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 187
    .line 188
    .line 189
    :cond_2
    const-class v10, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 190
    .line 191
    invoke-virtual {v0, v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    if-eqz v11, :cond_4

    .line 204
    .line 205
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    check-cast v11, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 210
    .line 211
    iget v12, v11, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 212
    .line 213
    if-ne v12, v5, :cond_3

    .line 214
    .line 215
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 219
    .line 220
    .line 221
    iget-object v12, v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_4
    invoke-static {v9, v5}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-nez v9, :cond_5

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    move-object v9, v0

    .line 238
    check-cast v9, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 239
    .line 240
    invoke-virtual {v9, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-eqz v10, :cond_6

    .line 248
    .line 249
    invoke-virtual {v9, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel$1(Z)V

    .line 250
    .line 251
    .line 252
    new-instance v9, Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 253
    .line 254
    invoke-direct {v9, v0, v5, v7}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiControlService$35;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 258
    .line 259
    .line 260
    :cond_6
    :goto_3
    const-class v9, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 261
    .line 262
    invoke-virtual {v0, v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    if-eqz v11, :cond_8

    .line 275
    .line 276
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    check-cast v11, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 281
    .line 282
    iget-object v11, v11, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 283
    .line 284
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-ne v11, v5, :cond_7

    .line 289
    .line 290
    invoke-virtual {v6, v9, v7}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_8
    const-class v10, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 295
    .line 296
    invoke-virtual {v0, v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-eqz v11, :cond_a

    .line 309
    .line 310
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    check-cast v11, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 315
    .line 316
    iget-object v11, v11, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 317
    .line 318
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    if-ne v11, v5, :cond_9

    .line 323
    .line 324
    invoke-virtual {v6, v9, v7}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_a
    iget-object v6, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 329
    .line 330
    invoke-virtual {v6, v0, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_b
    invoke-virtual {p1, v9}, Ljava/util/BitSet;->get(I)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-nez p1, :cond_c

    .line 340
    .line 341
    iput v2, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 342
    .line 343
    :cond_c
    invoke-static {v1, p2, v6}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {v4}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    check-cast p2, Ljava/util/BitSet;

    .line 352
    .line 353
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 354
    .line 355
    .line 356
    move p1, v3

    .line 357
    :goto_6
    add-int/2addr p1, v6

    .line 358
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-eq p1, v3, :cond_d

    .line 363
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v1, "Add device by hot-plug detection:"

    .line 367
    .line 368
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    const/16 v1, 0x83

    .line 386
    .line 387
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 392
    .line 393
    invoke-virtual {v1, v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 394
    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_d
    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 18
    .line 19
    return-void
.end method

.method public static infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x5

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    move v4, v2

    .line 41
    :goto_2
    if-eqz p2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const v6, 0xffff

    .line 48
    .line 49
    .line 50
    if-eq v5, v6, :cond_3

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move v2, v3

    .line 54
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    if-ne v0, p1, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 14
    .line 15
    add-int/2addr v0, p1

    .line 16
    rem-int/lit8 v0, v0, 0x3

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 27
    .line 28
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const-string p1, "HotPlugDetectionAction"

    .line 37
    .line 38
    const-string v0, "Poll audio system."

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;I)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    const v2, 0x10002

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IJ)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 58
    .line 59
    const/16 v0, 0x1388

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 69
    .line 70
    const v0, 0xea60

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public final pollAllDevices()V
    .locals 4

    .line 1
    const-string v0, "HotPlugDetectionAction"

    .line 2
    .line 3
    const-string v1, "Poll all devices."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;I)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v1, 0x1f4

    .line 22
    .line 23
    :goto_0
    const v3, 0x10001

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IJ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final start()V
    .locals 2

    .line 1
    const-string v0, "HotPlugDetectionAction"

    .line 2
    .line 3
    const-string v1, "Hot-plug detection started."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x1388

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v1, 0xea60

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
