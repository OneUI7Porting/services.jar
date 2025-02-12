.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDefaultInterface:Ljava/lang/String;

.field public mIsWifiConfigured:Z

.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onAvailable being called for netId "

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "KnoxNetworkEventService"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "onCapabilitiesChanged being called for wifi with netId "

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "KnoxNetworkEventService"

    .line 28
    .line 29
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "onLinkPropertiesChanged being called for netId "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " for interface "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "KnoxNetworkEventService"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 50
    .line 51
    const/16 v4, 0xf

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v3, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sget-object v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 64
    .line 65
    sget-object v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 66
    .line 67
    const-string v14, " -m owner --uid-owner "

    .line 68
    .line 69
    const-string v15, "-"

    .line 70
    .line 71
    const v16, 0x1869f

    .line 72
    .line 73
    .line 74
    const v17, 0x186a0

    .line 75
    .line 76
    .line 77
    const/16 v18, 0x4e1f

    .line 78
    .line 79
    const/16 v19, 0x2710

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    :cond_0
    move-object/from16 v21, v2

    .line 84
    .line 85
    move-object/from16 v20, v15

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_1
    const-string v3, "NetworkCallback: insertRulesForAbnormalPackets"

    .line 90
    .line 91
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 97
    .line 98
    check-cast v3, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_0

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const-string v5, "NetworkCallback: insertRulesForAbnormalPackets userId = "

    .line 121
    .line 122
    invoke-static {v4, v5, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 126
    .line 127
    iget-object v5, v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 128
    .line 129
    iget-object v9, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    new-instance v8, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v7, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    if-nez v4, :cond_2

    .line 145
    .line 146
    move/from16 v4, v18

    .line 147
    .line 148
    move/from16 v5, v19

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    mul-int v4, v4, v17

    .line 152
    .line 153
    add-int/lit8 v5, v4, 0x1

    .line 154
    .line 155
    add-int v4, v4, v16

    .line 156
    .line 157
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 176
    .line 177
    const-string/jumbo v20, "knox_nw_event_2_mch"

    .line 178
    .line 179
    .line 180
    const-string v21, ""

    .line 181
    .line 182
    const-string/jumbo v22, "knox_nw_event_2"

    .line 183
    .line 184
    .line 185
    const-string v23, ""

    .line 186
    .line 187
    move-object v4, v5

    .line 188
    move-object v12, v5

    .line 189
    move-object/from16 v5, v22

    .line 190
    .line 191
    move-object v13, v6

    .line 192
    move-object/from16 v6, v23

    .line 193
    .line 194
    move-object/from16 v22, v3

    .line 195
    .line 196
    move-object v3, v7

    .line 197
    move-object/from16 v7, v20

    .line 198
    .line 199
    move-object/from16 v20, v15

    .line 200
    .line 201
    move-object v15, v8

    .line 202
    move-object/from16 v8, v21

    .line 203
    .line 204
    move-object/from16 v21, v2

    .line 205
    .line 206
    move-object v2, v9

    .line 207
    move-object v9, v11

    .line 208
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v12, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 215
    .line 216
    const-string/jumbo v7, "knox_nw_event_2_mch"

    .line 217
    .line 218
    .line 219
    const-string v8, ""

    .line 220
    .line 221
    const-string/jumbo v5, "knox_nw_event_2"

    .line 222
    .line 223
    .line 224
    const-string v6, ""

    .line 225
    .line 226
    move-object v4, v12

    .line 227
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    const/4 v4, 0x0

    .line 238
    move/from16 v23, v4

    .line 239
    .line 240
    move/from16 v24, v23

    .line 241
    .line 242
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_5

    .line 247
    .line 248
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    check-cast v4, Ljava/net/InetAddress;

    .line 253
    .line 254
    instance-of v5, v4, Ljava/net/Inet4Address;

    .line 255
    .line 256
    const-string v6, " -o "

    .line 257
    .line 258
    const-string v7, " -p udp --dport 53 -d "

    .line 259
    .line 260
    if-eqz v5, :cond_3

    .line 261
    .line 262
    new-instance v9, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 263
    .line 264
    invoke-static {v14, v13, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    const-string v7, "RETURN"

    .line 286
    .line 287
    const-string v8, ""

    .line 288
    .line 289
    const-string/jumbo v5, "knox_nw_event_2_mch"

    .line 290
    .line 291
    .line 292
    move-object v4, v9

    .line 293
    move-object/from16 v25, v0

    .line 294
    .line 295
    move-object v0, v9

    .line 296
    move-object v9, v10

    .line 297
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    const/16 v23, 0x1

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_3
    move-object/from16 v25, v0

    .line 307
    .line 308
    instance-of v0, v4, Ljava/net/Inet6Address;

    .line 309
    .line 310
    if-eqz v0, :cond_4

    .line 311
    .line 312
    new-instance v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 313
    .line 314
    invoke-static {v14, v13, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    const-string v7, "RETURN"

    .line 336
    .line 337
    const-string v8, ""

    .line 338
    .line 339
    const-string/jumbo v5, "knox_nw_event_2_mch"

    .line 340
    .line 341
    .line 342
    move-object v4, v0

    .line 343
    move-object v9, v10

    .line 344
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    const/16 v24, 0x1

    .line 351
    .line 352
    :cond_4
    :goto_3
    move-object/from16 v0, v25

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_5
    move-object/from16 v25, v0

    .line 356
    .line 357
    const-string v0, " -p udp --dport 53 -o "

    .line 358
    .line 359
    if-eqz v23, :cond_6

    .line 360
    .line 361
    new-instance v12, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 362
    .line 363
    invoke-static {v14, v13, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    const-string/jumbo v7, "knox_nw_event_2_act"

    .line 368
    .line 369
    .line 370
    const-string v8, ""

    .line 371
    .line 372
    const-string/jumbo v5, "knox_nw_event_2_mch"

    .line 373
    .line 374
    .line 375
    move-object v4, v12

    .line 376
    move-object v9, v11

    .line 377
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    :cond_6
    if-eqz v24, :cond_7

    .line 384
    .line 385
    new-instance v12, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 386
    .line 387
    invoke-static {v14, v13, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    const-string/jumbo v7, "knox_nw_event_2_act"

    .line 392
    .line 393
    .line 394
    const-string v8, ""

    .line 395
    .line 396
    const-string/jumbo v5, "knox_nw_event_2_mch"

    .line 397
    .line 398
    .line 399
    move-object v4, v12

    .line 400
    move-object v9, v11

    .line 401
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    :cond_7
    const/4 v0, 0x4

    .line 408
    const/4 v2, 0x0

    .line 409
    const/4 v4, 0x1

    .line 410
    invoke-static {v4, v2, v15, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 411
    .line 412
    .line 413
    const/4 v0, 0x6

    .line 414
    invoke-static {v4, v2, v3, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v15, v20

    .line 418
    .line 419
    move-object/from16 v2, v21

    .line 420
    .line 421
    move-object/from16 v3, v22

    .line 422
    .line 423
    move-object/from16 v0, v25

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :goto_4
    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 428
    .line 429
    if-eqz v0, :cond_e

    .line 430
    .line 431
    iget-boolean v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    .line 432
    .line 433
    if-eqz v2, :cond_e

    .line 434
    .line 435
    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 436
    .line 437
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    :try_start_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    if-eqz v0, :cond_9

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_9

    .line 465
    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    check-cast v2, Ljava/net/InterfaceAddress;

    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    invoke-static {v3, v4}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    instance-of v4, v3, Ljava/net/Inet6Address;

    .line 485
    .line 486
    if-eqz v4, :cond_8

    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v3, "/"

    .line 502
    .line 503
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    goto :goto_6

    .line 518
    :catch_0
    move-exception v0

    .line 519
    goto :goto_7

    .line 520
    :cond_9
    const/4 v2, 0x0

    .line 521
    :goto_6
    move-object/from16 v3, v21

    .line 522
    .line 523
    goto :goto_8

    .line 524
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v3, " "

    .line 527
    .line 528
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    move-object/from16 v3, v21

    .line 532
    .line 533
    invoke-static {v0, v2, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    const/4 v2, 0x0

    .line 537
    :goto_8
    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 538
    .line 539
    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    :try_start_1
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    if-eqz v0, :cond_b

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    check-cast v0, Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-eqz v4, :cond_b

    .line 569
    .line 570
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    check-cast v4, Ljava/net/InterfaceAddress;

    .line 575
    .line 576
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    instance-of v5, v5, Ljava/net/Inet4Address;

    .line 581
    .line 582
    if-eqz v5, :cond_a

    .line 583
    .line 584
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 592
    goto :goto_9

    .line 593
    :catch_1
    :cond_b
    const/4 v0, 0x0

    .line 594
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string/jumbo v5, "mDefaultInterface: "

    .line 597
    .line 598
    .line 599
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 603
    .line 604
    const-string v6, " destIpRange: "

    .line 605
    .line 606
    const-string v7, " broadcastIpAddress: "

    .line 607
    .line 608
    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-static {v4, v0, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 615
    .line 616
    iget-object v4, v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 617
    .line 618
    const/16 v5, 0x10

    .line 619
    .line 620
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    check-cast v4, Ljava/util/HashSet;

    .line 625
    .line 626
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    if-nez v4, :cond_c

    .line 631
    .line 632
    goto/16 :goto_c

    .line 633
    .line 634
    :cond_c
    const-string v4, "NetworkCallback: insertRuleForLocalNetworkPackets"

    .line 635
    .line 636
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 640
    .line 641
    iget-object v4, v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 642
    .line 643
    check-cast v4, Ljava/util/HashSet;

    .line 644
    .line 645
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 646
    .line 647
    .line 648
    move-result-object v12

    .line 649
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    .line 651
    .line 652
    move-result v4

    .line 653
    if-eqz v4, :cond_e

    .line 654
    .line 655
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    check-cast v4, Ljava/lang/Integer;

    .line 660
    .line 661
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    const-string v5, "NetworkCallback: insertRuleForLocalNetworkPackets userId = "

    .line 666
    .line 667
    invoke-static {v4, v5, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    iget-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 671
    .line 672
    iget-object v5, v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 673
    .line 674
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    new-instance v13, Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .line 681
    .line 682
    if-nez v4, :cond_d

    .line 683
    .line 684
    move/from16 v4, v18

    .line 685
    .line 686
    move/from16 v5, v19

    .line 687
    .line 688
    goto :goto_b

    .line 689
    :cond_d
    mul-int v4, v4, v17

    .line 690
    .line 691
    add-int/lit8 v5, v4, 0x1

    .line 692
    .line 693
    add-int v4, v4, v16

    .line 694
    .line 695
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    move-object/from16 v15, v20

    .line 704
    .line 705
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v9

    .line 715
    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 716
    .line 717
    const-string/jumbo v7, "knox_nw_event_3_mch"

    .line 718
    .line 719
    .line 720
    const-string v20, ""

    .line 721
    .line 722
    const-string/jumbo v5, "knox_nw_event_3"

    .line 723
    .line 724
    .line 725
    const-string v6, ""

    .line 726
    .line 727
    move-object v4, v8

    .line 728
    move-object v1, v8

    .line 729
    move-object/from16 v8, v20

    .line 730
    .line 731
    move-object/from16 v21, v3

    .line 732
    .line 733
    move-object v3, v9

    .line 734
    move-object v9, v11

    .line 735
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 742
    .line 743
    const-string v4, " -p udp -m multiport --dports 1900,5353"

    .line 744
    .line 745
    invoke-static {v14, v3, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v6

    .line 749
    const-string v7, "RETURN"

    .line 750
    .line 751
    const-string v8, ""

    .line 752
    .line 753
    const-string/jumbo v5, "knox_nw_event_3_mch"

    .line 754
    .line 755
    .line 756
    move-object v4, v1

    .line 757
    move-object v9, v10

    .line 758
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 765
    .line 766
    const-string v4, " -p udp -d 224.0.0.0/24"

    .line 767
    .line 768
    invoke-static {v14, v3, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    const-string/jumbo v7, "knox_nw_event_3_act"

    .line 773
    .line 774
    .line 775
    const-string v8, ""

    .line 776
    .line 777
    const-string/jumbo v5, "knox_nw_event_3_mch"

    .line 778
    .line 779
    .line 780
    move-object v4, v1

    .line 781
    move-object v9, v11

    .line 782
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 789
    .line 790
    const-string v4, " -p udp -d "

    .line 791
    .line 792
    invoke-static {v14, v3, v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    const-string/jumbo v7, "knox_nw_event_3_act"

    .line 797
    .line 798
    .line 799
    const-string v8, ""

    .line 800
    .line 801
    const-string/jumbo v5, "knox_nw_event_3_mch"

    .line 802
    .line 803
    .line 804
    move-object v4, v1

    .line 805
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 812
    .line 813
    const-string v4, " -p tcp -m state --state NEW -d "

    .line 814
    .line 815
    invoke-static {v14, v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v6

    .line 819
    const-string/jumbo v7, "knox_nw_event_3_act"

    .line 820
    .line 821
    .line 822
    const-string v8, ""

    .line 823
    .line 824
    const-string/jumbo v5, "knox_nw_event_3_mch"

    .line 825
    .line 826
    .line 827
    move-object v4, v1

    .line 828
    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    const/16 v1, 0x2e

    .line 835
    .line 836
    const/4 v3, 0x0

    .line 837
    const/4 v4, 0x1

    .line 838
    invoke-static {v4, v3, v13, v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 839
    .line 840
    .line 841
    move-object/from16 v1, p0

    .line 842
    .line 843
    move-object/from16 v20, v15

    .line 844
    .line 845
    move-object/from16 v3, v21

    .line 846
    .line 847
    goto/16 :goto_a

    .line 848
    .line 849
    :cond_e
    :goto_c
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onLost being called for netId "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "KnoxNetworkEventService"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 34
    .line 35
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 46
    .line 47
    sget-object p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
