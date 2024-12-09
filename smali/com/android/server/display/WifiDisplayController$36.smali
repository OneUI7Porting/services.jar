.class public final Lcom/android/server/display/WifiDisplayController$36;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayChanged(Landroid/view/Surface;III)V
    .locals 9

    .line 1
    const-string/jumbo v0, "onDisplayChanged, width : "

    .line 2
    .line 3
    .line 4
    const-string v1, ", height : "

    .line 5
    .line 6
    const-string v2, "WifiDisplayController"

    .line 7
    .line 8
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 12
    .line 13
    iget-object p0, v3, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, v3, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object v4, v3, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v5, p1

    .line 26
    move v6, p2

    .line 27
    move v7, p3

    .line 28
    move v8, p4

    .line 29
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onDisplayConnected(Landroid/view/Surface;IIIILjava/lang/String;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    move/from16 v8, p3

    .line 5
    .line 6
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 9
    .line 10
    if-eqz v3, :cond_15

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 13
    .line 14
    if-eqz v2, :cond_15

    .line 15
    .line 16
    const-string/jumbo v2, "onDisplayConnected, width : "

    .line 17
    .line 18
    .line 19
    const-string v3, " , height : "

    .line 20
    .line 21
    const-string v4, " , flags : "

    .line 22
    .line 23
    invoke-static {v0, v8, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    and-int/lit8 v4, p4, 0x1

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const-string v4, "SECURE"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    and-int/lit8 v4, p4, 0x2

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const-string v4, "LANDSCAPE"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    and-int/lit8 v9, p4, 0x4

    .line 56
    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    const-string v4, "PORTRAIT_90"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    and-int/lit8 v10, p4, 0x8

    .line 65
    .line 66
    if-eqz v10, :cond_3

    .line 67
    .line 68
    const-string v4, "PORTRAIT_270"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    and-int/lit8 v4, p4, 0x10

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    const-string v4, "AUDIO_ONLY"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_4
    and-int/lit8 v4, p4, 0x20

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    const-string v5, "HIGH_RESOLUTION_SUPPORT"

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_5
    and-int/lit8 v5, p4, 0x40

    .line 92
    .line 93
    if-eqz v5, :cond_6

    .line 94
    .line 95
    const-string v6, "DMR_SUPPORT"

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, "\nOpened RTSP connection with Wifi display: "

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v3, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 115
    .line 116
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 117
    .line 118
    const-string v11, "WifiDisplayController"

    .line 119
    .line 120
    invoke-static {v2, v3, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 124
    .line 125
    iget-object v3, v2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    const/4 v13, 0x6

    .line 132
    invoke-virtual {v12, v13}, Landroid/hardware/display/WifiDisplay;->setState(I)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayConfig;->getFlags()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v12, v3}, Landroid/hardware/display/WifiDisplay;->setFlags(I)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 145
    .line 146
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v12, v3}, Landroid/hardware/display/WifiDisplay;->setMode(I)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 154
    .line 155
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayConfig;->getMode()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_8

    .line 160
    .line 161
    if-eqz v5, :cond_7

    .line 162
    .line 163
    const-string/jumbo v3, "wfd_sec_dmr_support"

    .line 164
    .line 165
    .line 166
    const-string/jumbo v5, "enable"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12, v3, v5}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    if-eqz v4, :cond_8

    .line 173
    .line 174
    const-string/jumbo v3, "high_resolution_mode"

    .line 175
    .line 176
    .line 177
    const-string/jumbo v4, "support"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12, v3, v4}, Landroid/hardware/display/WifiDisplay;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_8
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    const/4 v14, 0x2

    .line 190
    if-ne v2, v14, :cond_9

    .line 191
    .line 192
    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplay;->getSamsungDeviceType()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_9

    .line 197
    .line 198
    invoke-virtual {v12, v13}, Landroid/hardware/display/WifiDisplay;->setSamsungDeviceType(I)V

    .line 199
    .line 200
    .line 201
    :cond_9
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 202
    .line 203
    move-object v3, v12

    .line 204
    move-object/from16 v4, p1

    .line 205
    .line 206
    move/from16 v5, p2

    .line 207
    .line 208
    move/from16 v6, p3

    .line 209
    .line 210
    move/from16 v7, p4

    .line 211
    .line 212
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 216
    .line 217
    const/4 v3, 0x1

    .line 218
    if-nez v9, :cond_b

    .line 219
    .line 220
    if-eqz v10, :cond_a

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_a
    const/4 v4, 0x0

    .line 224
    goto :goto_1

    .line 225
    :cond_b
    :goto_0
    move v4, v3

    .line 226
    :goto_1
    iput-boolean v4, v2, Lcom/android/server/display/WifiDisplayController;->mIsPortraitDisplay:Z

    .line 227
    .line 228
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 229
    .line 230
    int-to-float v0, v0

    .line 231
    int-to-float v4, v8

    .line 232
    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/wfd/WFDUibcManager;->setUIBCNegotiagedResolution(FF)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 236
    .line 237
    iput-boolean v3, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 238
    .line 239
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Lcom/android/server/display/WifiDisplayController$6;

    .line 242
    .line 243
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 247
    .line 248
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 249
    .line 250
    new-instance v4, Lcom/android/server/display/WifiDisplayController$29;

    .line 251
    .line 252
    const/4 v5, 0x0

    .line 253
    invoke-direct {v4, v0, v3, v5}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;ZI)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    .line 258
    .line 259
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 260
    .line 261
    invoke-virtual {v0, v14}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(I)V

    .line 262
    .line 263
    .line 264
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 265
    .line 266
    new-instance v2, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    .line 272
    .line 273
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 274
    .line 275
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 276
    .line 277
    move-object/from16 v4, p6

    .line 278
    .line 279
    invoke-static {v0, v2, v4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    .line 280
    .line 281
    .line 282
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 283
    .line 284
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getParameters()Ljava/util/concurrent/ConcurrentHashMap;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_c

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    .line 310
    iget-object v4, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 311
    .line 312
    iget-object v4, v4, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    .line 313
    .line 314
    new-instance v5, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 315
    .line 316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    check-cast v6, Ljava/lang/String;

    .line 321
    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Ljava/lang/String;

    .line 327
    .line 328
    invoke-direct {v5, v6, v2}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_c
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 336
    .line 337
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    .line 338
    .line 339
    :try_start_0
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    .line 340
    .line 341
    if-eqz v4, :cond_d

    .line 342
    .line 343
    invoke-interface {v4, v2}, Landroid/hardware/display/IWifiDisplayConnectionCallback;->onSuccess(Ljava/util/List;)V

    .line 344
    .line 345
    .line 346
    const/4 v2, 0x0

    .line 347
    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCallback:Landroid/hardware/display/IWifiDisplayConnectionCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .line 349
    goto :goto_3

    .line 350
    :catch_0
    const-string v0, "Failed to onSuccess"

    .line 351
    .line 352
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    :cond_d
    :goto_3
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 356
    .line 357
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mParameterList:Ljava/util/List;

    .line 358
    .line 359
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V

    .line 365
    .line 366
    .line 367
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 368
    .line 369
    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 370
    .line 371
    if-eqz v2, :cond_e

    .line 372
    .line 373
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 374
    .line 375
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 376
    .line 377
    move/from16 v5, p5

    .line 378
    .line 379
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iget-object v4, v2, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 384
    .line 385
    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 386
    .line 387
    monitor-enter v4

    .line 388
    :try_start_1
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 389
    .line 390
    iput-object v0, v2, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 391
    .line 392
    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 393
    .line 394
    .line 395
    monitor-exit v4

    .line 396
    goto :goto_4

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    throw v0

    .line 400
    :cond_e
    :goto_4
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 401
    .line 402
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 403
    .line 404
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_f

    .line 409
    .line 410
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 411
    .line 412
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 413
    .line 414
    new-instance v4, Lcom/android/server/display/WifiDisplayController$6;

    .line 415
    .line 416
    const/4 v5, 0x5

    .line 417
    invoke-direct {v4, v0, v5}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    .line 422
    .line 423
    :cond_f
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 426
    .line 427
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eq v0, v14, :cond_10

    .line 432
    .line 433
    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplay;->getSamsungDeviceType()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-ne v0, v13, :cond_14

    .line 438
    .line 439
    :cond_10
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    const-string/jumbo v2, "registerCallback. ret: "

    .line 445
    .line 446
    .line 447
    :try_start_2
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 448
    .line 449
    if-nez v4, :cond_11

    .line 450
    .line 451
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    if-eqz v4, :cond_11

    .line 456
    .line 457
    invoke-static {v4}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    iput-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 462
    .line 463
    goto :goto_5

    .line 464
    :catch_1
    move-exception v0

    .line 465
    goto :goto_6

    .line 466
    :cond_11
    :goto_5
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 467
    .line 468
    if-eqz v4, :cond_13

    .line 469
    .line 470
    invoke-interface {v4}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-ne v4, v3, :cond_12

    .line 475
    .line 476
    const-string v4, "Set low latency mode"

    .line 477
    .line 478
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    const-string/jumbo v4, "lowl"

    .line 482
    .line 483
    .line 484
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 485
    .line 486
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    :cond_12
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 490
    .line 491
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/android/server/display/WifiDisplayController$32;

    .line 492
    .line 493
    invoke-interface {v4, v0}, Lcom/samsung/android/game/IGameManagerService;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    goto :goto_7

    .line 513
    :cond_13
    const-string/jumbo v0, "failed to get game manager"

    .line 514
    .line 515
    .line 516
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 517
    .line 518
    .line 519
    goto :goto_7

    .line 520
    :goto_6
    const-string/jumbo v2, "registerCallback failed."

    .line 521
    .line 522
    .line 523
    invoke-static {v0, v2, v11}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :goto_7
    const-string v0, "android.samsung.media.action.AUDIO_MODE"

    .line 527
    .line 528
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 533
    .line 534
    iget-object v4, v2, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 535
    .line 536
    iget-object v5, v2, Lcom/android/server/display/WifiDisplayController;->mAudioModeChangedReceiver:Lcom/android/server/display/WifiDisplayController$20;

    .line 537
    .line 538
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 539
    .line 540
    const/4 v6, 0x2

    .line 541
    const/4 v7, 0x0

    .line 542
    move-object/from16 p1, v4

    .line 543
    .line 544
    move-object/from16 p2, v5

    .line 545
    .line 546
    move-object/from16 p3, v0

    .line 547
    .line 548
    move-object/from16 p4, v7

    .line 549
    .line 550
    move-object/from16 p5, v2

    .line 551
    .line 552
    move/from16 p6, v6

    .line 553
    .line 554
    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 555
    .line 556
    .line 557
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 558
    .line 559
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 560
    .line 561
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 562
    .line 563
    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    invoke-static {v0, v2, v4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendVoipModeMessageIfNecessary(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V

    .line 568
    .line 569
    .line 570
    :cond_14
    iget-object v0, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 571
    .line 572
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 573
    .line 574
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getMode()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 579
    .line 580
    new-instance v5, Lcom/android/server/display/WifiDisplayController$21;

    .line 581
    .line 582
    const/4 v6, 0x0

    .line 583
    invoke-direct {v5, v0, v3, v2, v6}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;III)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    .line 588
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string/jumbo v2, "onDisplayConnected wifidisplay "

    .line 592
    .line 593
    .line 594
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 598
    .line 599
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 600
    .line 601
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    :cond_15
    return-void
.end method

.method public final onDisplayDisconnected()V
    .locals 6

    .line 1
    const-string v0, "WifiDisplayController"

    .line 2
    .line 3
    const-string/jumbo v1, "onDisplayDisconnected"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v3, Lcom/android/server/display/WifiDisplayController$29;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;ZI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 30
    .line 31
    if-ne v2, v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Closed RTSP connection with Wifi display: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 43
    .line 44
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 65
    .line 66
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Lcom/android/server/display/WifiDisplayController$20;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    const-string/jumbo v1, "unregisterReceiver:: mInitiateReceiver not registered"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    :try_start_1
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    iget-object v3, v1, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/android/server/display/WifiDisplayController$32;

    .line 90
    .line 91
    invoke-interface {v2, v3}, Lcom/samsung/android/game/IGameManagerService;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    iput-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception v1

    .line 99
    const-string/jumbo v2, "mGameManagerService.unregisterCallback error"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 109
    .line 110
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mAudioModeChangedReceiver:Lcom/android/server/display/WifiDisplayController$20;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_2
    const-string/jumbo v1, "unregisterReceiver:: mAudioModeChangedReceiver not registered"

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :goto_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 125
    .line 126
    invoke-virtual {p0, v4}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final onDisplayError(I)V
    .locals 6

    .line 1
    const-string v0, "WifiDisplayController"

    .line 2
    .line 3
    const-string/jumbo v1, "onDisplayError"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v3, Lcom/android/server/display/WifiDisplayController$29;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;ZI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    const-string p1, "HDCP Key is no written"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$misVpnConnected(Lcom/android/server/display/WifiDisplayController;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 52
    .line 53
    if-ne v2, v1, :cond_1

    .line 54
    .line 55
    const-string v1, "Lost RTSP connection with Wifi display due to error "

    .line 56
    .line 57
    const-string v2, ": "

    .line 58
    .line 59
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 66
    .line 67
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 73
    .line 74
    const/4 p1, 0x4

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method
