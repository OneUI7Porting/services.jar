.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    check-cast v6, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x1

    .line 24
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Lcom/android/server/pm/Computer;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v3, v0

    .line 36
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 37
    .line 38
    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v4, "PackageManager"

    .line 44
    .line 45
    invoke-static {v3}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v5, 0x0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    :goto_0
    move-object v6, v5

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_0
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v6, Landroid/util/ArraySet;

    .line 61
    .line 62
    const/16 v7, 0x1f4

    .line 63
    .line 64
    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const-string v9, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    .line 72
    .line 73
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Landroid/content/pm/PackageManager$Property;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    move-object v9, v0

    .line 84
    check-cast v9, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 85
    .line 86
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 97
    .line 98
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 99
    .line 100
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 101
    .line 102
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 103
    .line 104
    sget-object v18, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 105
    .line 106
    const/16 v20, 0x0

    .line 107
    .line 108
    const/16 v21, 0x0

    .line 109
    .line 110
    const/4 v11, 0x0

    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    move-object/from16 v16, v9

    .line 116
    .line 117
    invoke-virtual/range {v10 .. v21}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 122
    .line 123
    .line 124
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eq v9, v1, :cond_3

    .line 130
    .line 131
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    const/4 v10, 0x2

    .line 136
    if-ne v9, v10, :cond_2

    .line 137
    .line 138
    const-string v9, "deny-ownership"

    .line 139
    .line 140
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_2

    .line 149
    .line 150
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    .line 151
    .line 152
    .line 153
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    if-eqz v9, :cond_2

    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/lang/String;->isBlank()Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-nez v10, :cond_2

    .line 164
    .line 165
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-le v9, v7, :cond_2

    .line 173
    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v10, "Deny list defined by "

    .line 180
    .line 181
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, " was trucated to maximum size of "

    .line 192
    .line 193
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    move-object v6, v0

    .line 209
    goto :goto_2

    .line 210
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catch_0
    move-exception v0

    .line 215
    goto :goto_4

    .line 216
    :goto_2
    if-eqz v8, :cond_4

    .line 217
    .line 218
    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    move-object v7, v0

    .line 224
    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    :goto_3
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 228
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v7, "Failed to parse update owner list for "

    .line 231
    .line 232
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :goto_5
    if-eqz v6, :cond_9

    .line 250
    .line 251
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_9

    .line 256
    .line 257
    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 258
    .line 259
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v4, v0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    .line 262
    .line 263
    monitor-enter v4

    .line 264
    const/4 v7, 0x0

    .line 265
    :goto_6
    :try_start_5
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-ge v7, v8, :cond_6

    .line 270
    .line 271
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    check-cast v8, Ljava/lang/String;

    .line 276
    .line 277
    iget-object v9, v0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    .line 278
    .line 279
    new-instance v10, Landroid/util/ArraySet;

    .line 280
    .line 281
    filled-new-array {v3}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v8, v10}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    check-cast v8, Landroid/util/ArraySet;

    .line 293
    .line 294
    if-eqz v8, :cond_5

    .line 295
    .line 296
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :catchall_2
    move-exception v0

    .line 301
    goto :goto_a

    .line 302
    :cond_5
    :goto_7
    add-int/2addr v7, v1

    .line 303
    goto :goto_6

    .line 304
    :cond_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 305
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 310
    .line 311
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 312
    .line 313
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 314
    .line 315
    monitor-enter v1

    .line 316
    :try_start_6
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    :cond_7
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_8

    .line 325
    .line 326
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Ljava/lang/String;

    .line 331
    .line 332
    iget-object v6, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 333
    .line 334
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 335
    .line 336
    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    if-eqz v6, :cond_7

    .line 341
    .line 342
    iget-object v7, v0, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    .line 343
    .line 344
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    check-cast v4, Ljava/lang/String;

    .line 349
    .line 350
    if-nez v4, :cond_7

    .line 351
    .line 352
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :catchall_3
    move-exception v0

    .line 357
    goto :goto_9

    .line 358
    :cond_8
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 359
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :goto_9
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 363
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 364
    .line 365
    throw v0

    .line 366
    :goto_a
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 367
    throw v0

    .line 368
    :cond_9
    :goto_b
    return-void

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
