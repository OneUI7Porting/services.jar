.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG_INSTANT:Z

.field public static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    .line 4
    .line 5
    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    move-object/from16 v3, p9

    .line 8
    .line 9
    move-object/from16 v4, p11

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    new-instance v6, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    .line 20
    const/high16 v7, 0x40800000    # 4.0f

    .line 21
    .line 22
    or-int/2addr v5, v7

    .line 23
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v5, "android.intent.extra.INSTANT_APP_TOKEN"

    .line 29
    .line 30
    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v7, "android.intent.extra.INSTANT_APP_HOSTNAME"

    .line 48
    .line 49
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v5, "android.intent.extra.INSTANT_APP_ACTION"

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const-string v5, "android.intent.extra.INTENT"

    .line 62
    .line 63
    move-object/from16 v7, p1

    .line 64
    .line 65
    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    if-eqz p10, :cond_2

    .line 69
    .line 70
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 71
    .line 72
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const/4 v8, 0x1

    .line 82
    invoke-virtual {v7, v8}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const-string v9, "android.intent.extra.SPLIT_NAME"

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    if-nez p2, :cond_3

    .line 90
    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    :cond_3
    if-eqz v2, :cond_5

    .line 94
    .line 95
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    .line 96
    .line 97
    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ne v2, v8, :cond_4

    .line 110
    .line 111
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 116
    .line 117
    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v11, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {v11, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    move-object/from16 v11, p2

    .line 127
    .line 128
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    new-array v2, v8, [Landroid/content/Intent;

    .line 133
    .line 134
    aput-object v11, v2, v10

    .line 135
    .line 136
    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v20

    .line 140
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 141
    .line 142
    .line 143
    move-result-object v22

    .line 144
    const/16 v18, 0x1

    .line 145
    .line 146
    const/high16 v21, 0x54000000

    .line 147
    .line 148
    const/4 v13, 0x2

    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    move-object/from16 v14, p3

    .line 154
    .line 155
    move-object/from16 v15, p4

    .line 156
    .line 157
    move-object/from16 v19, v2

    .line 158
    .line 159
    move/from16 v23, p7

    .line 160
    .line 161
    invoke-interface/range {v12 .. v23}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    new-instance v5, Landroid/content/IntentSender;

    .line 166
    .line 167
    invoke-direct {v5, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 168
    .line 169
    .line 170
    const-string v2, "android.intent.extra.INSTANT_APP_FAILURE"

    .line 171
    .line 172
    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    :catch_0
    :cond_6
    new-instance v2, Landroid/content/Intent;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    new-array v0, v8, [Landroid/content/Intent;

    .line 188
    .line 189
    aput-object v2, v0, v10

    .line 190
    .line 191
    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v19

    .line 195
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v21

    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    const/high16 v20, 0x54000000

    .line 202
    .line 203
    const/4 v12, 0x2

    .line 204
    const/4 v15, 0x0

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    move-object/from16 v13, p3

    .line 208
    .line 209
    move-object/from16 v14, p4

    .line 210
    .line 211
    move-object/from16 v18, v0

    .line 212
    .line 213
    move/from16 v22, p7

    .line 214
    .line 215
    invoke-interface/range {v11 .. v22}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v2, Landroid/content/IntentSender;

    .line 220
    .line 221
    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 222
    .line 223
    .line 224
    const-string v0, "android.intent.extra.INSTANT_APP_SUCCESS"

    .line 225
    .line 226
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    .line 228
    .line 229
    :catch_1
    if-eqz v1, :cond_7

    .line 230
    .line 231
    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    .line 232
    .line 233
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    .line 235
    .line 236
    :cond_7
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    .line 237
    .line 238
    move-object/from16 v1, p3

    .line 239
    .line 240
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    if-eqz v4, :cond_b

    .line 244
    .line 245
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    new-array v0, v0, [Landroid/os/Bundle;

    .line 250
    .line 251
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    move v2, v10

    .line 256
    :goto_1
    if-ge v2, v1, :cond_a

    .line 257
    .line 258
    new-instance v3, Landroid/os/Bundle;

    .line 259
    .line 260
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 268
    .line 269
    iget-object v7, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 270
    .line 271
    if-eqz v7, :cond_8

    .line 272
    .line 273
    invoke-virtual {v7}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-eqz v7, :cond_8

    .line 278
    .line 279
    move v7, v8

    .line 280
    goto :goto_2

    .line 281
    :cond_8
    move v7, v10

    .line 282
    :goto_2
    const-string v11, "android.intent.extra.UNKNOWN_INSTANT_APP"

    .line 283
    .line 284
    invoke-virtual {v3, v11, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    .line 286
    .line 287
    const-string v7, "android.intent.extra.PACKAGE_NAME"

    .line 288
    .line 289
    iget-object v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v7, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v7, "android.intent.extra.LONG_VERSION_CODE"

    .line 300
    .line 301
    iget-wide v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    .line 302
    .line 303
    invoke-virtual {v3, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    .line 305
    .line 306
    const-string v7, "android.intent.extra.INSTANT_APP_EXTRAS"

    .line 307
    .line 308
    iget-object v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    .line 309
    .line 310
    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    .line 312
    .line 313
    aput-object v3, v0, v2

    .line 314
    .line 315
    if-nez v2, :cond_9

    .line 316
    .line 317
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 318
    .line 319
    .line 320
    iget-wide v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    .line 321
    .line 322
    long-to-int v3, v11

    .line 323
    const-string v5, "android.intent.extra.VERSION_CODE"

    .line 324
    .line 325
    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_a
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    .line 332
    .line 333
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    :cond_b
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 337
    .line 338
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    :goto_3
    return-object v6
.end method

.method public static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    or-int/2addr p0, v1

    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    and-int/lit16 p0, p0, -0x801

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 27

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->isWebIntent()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    array-length v4, v3

    .line 26
    if-lez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    and-int/lit16 v4, v4, 0x800

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v4, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    move v4, v5

    .line 40
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v9, v8

    .line 46
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_1b

    .line 51
    .line 52
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Landroid/content/pm/InstantAppResolveInfo;

    .line 57
    .line 58
    const-string v11, "PackageManager"

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_3

    .line 67
    .line 68
    const-string v10, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    .line 69
    .line 70
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    array-length v13, v3

    .line 79
    if-lez v13, :cond_6

    .line 80
    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    array-length v13, v12

    .line 84
    if-lez v13, :cond_6

    .line 85
    .line 86
    :cond_4
    array-length v13, v3

    .line 87
    sub-int/2addr v13, v5

    .line 88
    :goto_3
    if-ltz v13, :cond_2

    .line 89
    .line 90
    aget-object v14, v2, v13

    .line 91
    .line 92
    invoke-static {v14, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-eqz v14, :cond_5

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    add-int/lit8 v13, v13, -0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    :goto_4
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_7

    .line 107
    .line 108
    new-instance v11, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 109
    .line 110
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-direct {v11, v10, v8, v12}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    move-object/from16 v14, p1

    .line 122
    .line 123
    move-object/from16 v24, v2

    .line 124
    .line 125
    move-object/from16 v25, v3

    .line 126
    .line 127
    move/from16 v26, v4

    .line 128
    .line 129
    move/from16 v23, v5

    .line 130
    .line 131
    :goto_5
    move-object/from16 v2, p0

    .line 132
    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :cond_7
    if-eqz v0, :cond_8

    .line 136
    .line 137
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-nez v12, :cond_8

    .line 146
    .line 147
    move-object/from16 v14, p1

    .line 148
    .line 149
    move-object/from16 v24, v2

    .line 150
    .line 151
    move-object/from16 v25, v3

    .line 152
    .line 153
    move/from16 v26, v4

    .line 154
    .line 155
    move/from16 v23, v5

    .line 156
    .line 157
    move-object v10, v8

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    sget-boolean v13, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    .line 164
    .line 165
    if-eqz v12, :cond_9

    .line 166
    .line 167
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    if-eqz v14, :cond_a

    .line 172
    .line 173
    :cond_9
    move-object/from16 v14, p1

    .line 174
    .line 175
    move-object/from16 v24, v2

    .line 176
    .line 177
    move-object/from16 v25, v3

    .line 178
    .line 179
    move/from16 v26, v4

    .line 180
    .line 181
    move/from16 v23, v5

    .line 182
    .line 183
    move-object/from16 v2, p0

    .line 184
    .line 185
    goto/16 :goto_e

    .line 186
    .line 187
    :cond_a
    new-instance v15, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;

    .line 188
    .line 189
    move-object/from16 v14, p1

    .line 190
    .line 191
    invoke-direct {v15, v14}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    add-int/lit8 v16, v16, -0x1

    .line 199
    .line 200
    move/from16 v8, v16

    .line 201
    .line 202
    :goto_6
    if-ltz v8, :cond_12

    .line 203
    .line 204
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    check-cast v16, Landroid/content/pm/InstantAppIntentFilter;

    .line 209
    .line 210
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    if-eqz v5, :cond_b

    .line 215
    .line 216
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v17

    .line 220
    if-eqz v17, :cond_c

    .line 221
    .line 222
    :cond_b
    move-object/from16 v24, v2

    .line 223
    .line 224
    move-object/from16 v25, v3

    .line 225
    .line 226
    move/from16 v26, v4

    .line 227
    .line 228
    const/16 v23, 0x1

    .line 229
    .line 230
    :goto_7
    move-object/from16 v2, p0

    .line 231
    .line 232
    goto/16 :goto_c

    .line 233
    .line 234
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v17

    .line 238
    const/16 v23, 0x1

    .line 239
    .line 240
    add-int/lit8 v17, v17, -0x1

    .line 241
    .line 242
    move/from16 v0, v17

    .line 243
    .line 244
    :goto_8
    if-ltz v0, :cond_11

    .line 245
    .line 246
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v17

    .line 250
    move-object/from16 v24, v2

    .line 251
    .line 252
    move-object/from16 v2, v17

    .line 253
    .line 254
    check-cast v2, Landroid/content/IntentFilter;

    .line 255
    .line 256
    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v17

    .line 260
    if-eqz v17, :cond_d

    .line 261
    .line 262
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v17

    .line 266
    if-nez v17, :cond_e

    .line 267
    .line 268
    :cond_d
    move-object/from16 v25, v3

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_e
    move-object/from16 v25, v3

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :goto_9
    const-string v3, "http"

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-nez v3, :cond_f

    .line 281
    .line 282
    const-string v3, "https"

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_10

    .line 289
    .line 290
    :cond_f
    const-string v3, "android.intent.action.VIEW"

    .line 291
    .line 292
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_10

    .line 297
    .line 298
    const-string v3, "android.intent.category.BROWSABLE"

    .line 299
    .line 300
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_10

    .line 305
    .line 306
    move-object/from16 v2, p0

    .line 307
    .line 308
    move/from16 v26, v4

    .line 309
    .line 310
    move-object/from16 v17, v5

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_10
    :goto_a
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 314
    .line 315
    move/from16 v26, v4

    .line 316
    .line 317
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    move-object/from16 v17, v5

    .line 322
    .line 323
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-direct {v3, v2, v10, v4, v5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v2, p0

    .line 331
    .line 332
    invoke-virtual {v15, v2, v3}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :goto_b
    add-int/lit8 v0, v0, -0x1

    .line 336
    .line 337
    move-object/from16 v5, v17

    .line 338
    .line 339
    move-object/from16 v2, v24

    .line 340
    .line 341
    move-object/from16 v3, v25

    .line 342
    .line 343
    move/from16 v4, v26

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_11
    move-object/from16 v24, v2

    .line 347
    .line 348
    move-object/from16 v25, v3

    .line 349
    .line 350
    move/from16 v26, v4

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :goto_c
    add-int/lit8 v8, v8, -0x1

    .line 354
    .line 355
    move-object/from16 v0, p6

    .line 356
    .line 357
    move/from16 v5, v23

    .line 358
    .line 359
    move-object/from16 v2, v24

    .line 360
    .line 361
    move-object/from16 v3, v25

    .line 362
    .line 363
    move/from16 v4, v26

    .line 364
    .line 365
    goto/16 :goto_6

    .line 366
    .line 367
    :cond_12
    move-object/from16 v24, v2

    .line 368
    .line 369
    move-object/from16 v25, v3

    .line 370
    .line 371
    move/from16 v26, v4

    .line 372
    .line 373
    move/from16 v23, v5

    .line 374
    .line 375
    move-object/from16 v2, p0

    .line 376
    .line 377
    const-wide/16 v21, 0x0

    .line 378
    .line 379
    const/16 v19, 0x0

    .line 380
    .line 381
    move-object/from16 v16, p0

    .line 382
    .line 383
    move-object/from16 v17, p3

    .line 384
    .line 385
    move-object/from16 v18, p4

    .line 386
    .line 387
    move/from16 v20, p5

    .line 388
    .line 389
    invoke-virtual/range {v15 .. v22}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    const-string v4, "["

    .line 398
    .line 399
    if-nez v3, :cond_14

    .line 400
    .line 401
    if-eqz v13, :cond_13

    .line 402
    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v4, "] Found match(es); "

    .line 412
    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    :cond_13
    move-object v10, v0

    .line 427
    goto :goto_f

    .line 428
    :cond_14
    if-eqz v13, :cond_15

    .line 429
    .line 430
    const-string v0, "] No matches found package: "

    .line 431
    .line 432
    invoke-static {v4, v1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v3, ", versionCode: "

    .line 444
    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    :cond_15
    :goto_d
    const/4 v10, 0x0

    .line 463
    goto :goto_f

    .line 464
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->isWebIntent()Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-eqz v0, :cond_16

    .line 469
    .line 470
    goto :goto_d

    .line 471
    :cond_16
    if-eqz v13, :cond_17

    .line 472
    .line 473
    const-string v0, "No app filters; go to phase 2"

    .line 474
    .line 475
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    :goto_f
    if-eqz v10, :cond_1a

    .line 483
    .line 484
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_18

    .line 489
    .line 490
    move/from16 v6, v23

    .line 491
    .line 492
    :cond_18
    if-nez v9, :cond_19

    .line 493
    .line 494
    new-instance v9, Ljava/util/ArrayList;

    .line 495
    .line 496
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    .line 498
    .line 499
    goto :goto_10

    .line 500
    :cond_19
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    .line 502
    .line 503
    :cond_1a
    :goto_10
    move-object/from16 v0, p6

    .line 504
    .line 505
    move/from16 v5, v23

    .line 506
    .line 507
    move-object/from16 v2, v24

    .line 508
    .line 509
    move-object/from16 v3, v25

    .line 510
    .line 511
    move/from16 v4, v26

    .line 512
    .line 513
    const/4 v8, 0x0

    .line 514
    goto/16 :goto_2

    .line 515
    .line 516
    :cond_1b
    if-eqz v9, :cond_1c

    .line 517
    .line 518
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-nez v0, :cond_1c

    .line 523
    .line 524
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 525
    .line 526
    move-object/from16 v2, p3

    .line 527
    .line 528
    invoke-static {v2, v1}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    move-object/from16 p0, v0

    .line 533
    .line 534
    move-object/from16 p1, p7

    .line 535
    .line 536
    move/from16 p2, v6

    .line 537
    .line 538
    move-object/from16 p3, v2

    .line 539
    .line 540
    move-object/from16 p4, v9

    .line 541
    .line 542
    move-object/from16 p5, p8

    .line 543
    .line 544
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V

    .line 545
    .line 546
    .line 547
    return-object v0

    .line 548
    :cond_1c
    const/4 v0, 0x0

    .line 549
    return-object v0
.end method

.method public static logMetrics(IIJLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x4

    .line 7
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    sub-long/2addr v1, p2

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x385

    .line 22
    .line 23
    invoke-virtual {p0, p2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 p2, 0x387

    .line 28
    .line 29
    invoke-virtual {p0, p2, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p2, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x386

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 54
    .line 55
    :cond_0
    sget-object p1, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-direct {v0, p0, v1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    sget-object p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 37
    .line 38
    return-object p0
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, ""

    .line 49
    .line 50
    invoke-static {v1, v2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    return-object v0
.end method
