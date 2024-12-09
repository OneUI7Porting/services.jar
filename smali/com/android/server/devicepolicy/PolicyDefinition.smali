.class public final Lcom/android/server/devicepolicy/PolicyDefinition;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final POLICY_DEFINITIONS:Ljava/util/Map;

.field public static final SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static final USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final USER_RESTRICTION_FLAGS:Ljava/util/Map;


# instance fields
.field public final mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

.field public final mPolicyFlags:I

.field public final mPolicyKey:Landroid/app/admin/PolicyKey;

.field public final mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

.field public final mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 1
    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 2
    .line 3
    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    invoke-direct {v0, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    invoke-direct {v1, v3}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 31
    .line 32
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 33
    .line 34
    invoke-direct {v1, v3}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    .line 38
    .line 39
    invoke-direct {v4, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 50
    .line 51
    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 52
    .line 53
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 54
    .line 55
    const-string/jumbo v5, "autoTimezone"

    .line 56
    .line 57
    .line 58
    invoke-direct {v10, v5}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v13, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 65
    .line 66
    .line 67
    new-instance v14, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 68
    .line 69
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    const/4 v12, 0x1

    .line 73
    move-object v9, v15

    .line 74
    move-object v11, v0

    .line 75
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 79
    .line 80
    new-instance v1, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 81
    .line 82
    const-string/jumbo v14, "permissionGrant"

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v14}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v9, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 89
    .line 90
    new-instance v10, Landroid/app/admin/IntegerPolicyValue;

    .line 91
    .line 92
    const/4 v11, 0x2

    .line 93
    invoke-direct {v10, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 94
    .line 95
    .line 96
    new-instance v11, Landroid/app/admin/IntegerPolicyValue;

    .line 97
    .line 98
    invoke-direct {v11, v3}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    .line 102
    .line 103
    invoke-direct {v3, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v10, v11, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-direct {v9, v3}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/16 v10, 0x12

    .line 116
    .line 117
    invoke-direct {v3, v10}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v21, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 121
    .line 122
    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    const/16 v19, 0x2

    .line 126
    .line 127
    move-object/from16 v16, v4

    .line 128
    .line 129
    move-object/from16 v17, v1

    .line 130
    .line 131
    move-object/from16 v18, v9

    .line 132
    .line 133
    move-object/from16 v20, v3

    .line 134
    .line 135
    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 136
    .line 137
    .line 138
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 139
    .line 140
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 141
    .line 142
    const-string/jumbo v1, "securityLogging"

    .line 143
    .line 144
    .line 145
    invoke-direct {v10, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    const/4 v9, 0x1

    .line 151
    invoke-direct {v13, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 152
    .line 153
    .line 154
    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 155
    .line 156
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    const/4 v12, 0x1

    .line 160
    move-object v9, v3

    .line 161
    move-object v11, v0

    .line 162
    move-object/from16 v22, v14

    .line 163
    .line 164
    move-object/from16 v14, v16

    .line 165
    .line 166
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 167
    .line 168
    .line 169
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 170
    .line 171
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 172
    .line 173
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 174
    .line 175
    const-string/jumbo v13, "auditLogging"

    .line 176
    .line 177
    .line 178
    invoke-direct {v10, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 182
    .line 183
    const/4 v9, 0x2

    .line 184
    invoke-direct {v12, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 185
    .line 186
    .line 187
    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 188
    .line 189
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    const/16 v17, 0x1

    .line 193
    .line 194
    move-object v9, v14

    .line 195
    move-object v11, v0

    .line 196
    move-object/from16 v18, v12

    .line 197
    .line 198
    move/from16 v12, v17

    .line 199
    .line 200
    move-object/from16 v23, v13

    .line 201
    .line 202
    move-object/from16 v13, v18

    .line 203
    .line 204
    move-object v6, v14

    .line 205
    move-object/from16 v14, v16

    .line 206
    .line 207
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 208
    .line 209
    .line 210
    sput-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 211
    .line 212
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 213
    .line 214
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 215
    .line 216
    const-string/jumbo v13, "lockTask"

    .line 217
    .line 218
    .line 219
    invoke-direct {v9, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v10, Lcom/android/server/devicepolicy/TopPriority;

    .line 223
    .line 224
    const-string/jumbo v11, "role:android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    .line 225
    .line 226
    .line 227
    const-string/jumbo v12, "enterprise"

    .line 228
    .line 229
    .line 230
    move-object/from16 v16, v1

    .line 231
    .line 232
    invoke-static {v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-direct {v10, v1}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    move-object/from16 v18, v3

    .line 242
    .line 243
    const/4 v3, 0x3

    .line 244
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 245
    .line 246
    .line 247
    new-instance v29, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    .line 248
    .line 249
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 250
    .line 251
    .line 252
    const/16 v27, 0x2

    .line 253
    .line 254
    move-object/from16 v24, v14

    .line 255
    .line 256
    move-object/from16 v25, v9

    .line 257
    .line 258
    move-object/from16 v26, v10

    .line 259
    .line 260
    move-object/from16 v28, v1

    .line 261
    .line 262
    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 263
    .line 264
    .line 265
    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 266
    .line 267
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 268
    .line 269
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 270
    .line 271
    const-string/jumbo v10, "userControlDisabledPackages"

    .line 272
    .line 273
    .line 274
    invoke-direct {v1, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v32, Lcom/android/server/devicepolicy/PackageSetUnion;

    .line 278
    .line 279
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 280
    .line 281
    .line 282
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 283
    .line 284
    move-object/from16 v19, v4

    .line 285
    .line 286
    const/4 v4, 0x4

    .line 287
    invoke-direct {v9, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 288
    .line 289
    .line 290
    new-instance v35, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 291
    .line 292
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 293
    .line 294
    .line 295
    const/16 v33, 0x0

    .line 296
    .line 297
    move-object/from16 v30, v3

    .line 298
    .line 299
    move-object/from16 v31, v1

    .line 300
    .line 301
    move-object/from16 v34, v9

    .line 302
    .line 303
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 304
    .line 305
    .line 306
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 307
    .line 308
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 309
    .line 310
    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    .line 311
    .line 312
    const-string/jumbo v9, "persistentPreferredActivity"

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v9}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v20, v3

    .line 319
    .line 320
    new-instance v3, Lcom/android/server/devicepolicy/TopPriority;

    .line 321
    .line 322
    invoke-static {v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-direct {v3, v11}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    .line 327
    .line 328
    .line 329
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    const/4 v12, 0x5

    .line 332
    invoke-direct {v11, v12}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 333
    .line 334
    .line 335
    new-instance v29, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    .line 336
    .line 337
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 338
    .line 339
    .line 340
    const/16 v27, 0x2

    .line 341
    .line 342
    move-object/from16 v24, v4

    .line 343
    .line 344
    move-object/from16 v25, v1

    .line 345
    .line 346
    move-object/from16 v26, v3

    .line 347
    .line 348
    move-object/from16 v28, v11

    .line 349
    .line 350
    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 351
    .line 352
    .line 353
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 354
    .line 355
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 356
    .line 357
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 358
    .line 359
    const-string/jumbo v12, "packageUninstallBlocked"

    .line 360
    .line 361
    .line 362
    invoke-direct {v1, v12}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 366
    .line 367
    move-object/from16 v21, v4

    .line 368
    .line 369
    const/4 v4, 0x6

    .line 370
    invoke-direct {v11, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 371
    .line 372
    .line 373
    new-instance v4, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 374
    .line 375
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 376
    .line 377
    .line 378
    const/16 v24, 0x2

    .line 379
    .line 380
    move-object/from16 v36, v9

    .line 381
    .line 382
    move-object v9, v3

    .line 383
    move-object/from16 v37, v10

    .line 384
    .line 385
    move-object v10, v1

    .line 386
    move-object v1, v11

    .line 387
    move-object v11, v0

    .line 388
    move-object/from16 v25, v8

    .line 389
    .line 390
    move-object v8, v12

    .line 391
    move/from16 v12, v24

    .line 392
    .line 393
    move-object/from16 v38, v13

    .line 394
    .line 395
    move-object v13, v1

    .line 396
    move-object v1, v14

    .line 397
    move-object v14, v4

    .line 398
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 399
    .line 400
    .line 401
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 402
    .line 403
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 404
    .line 405
    new-instance v9, Landroid/app/admin/PackagePolicyKey;

    .line 406
    .line 407
    const-string/jumbo v14, "applicationRestrictions"

    .line 408
    .line 409
    .line 410
    invoke-direct {v9, v14}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    .line 414
    .line 415
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 416
    .line 417
    .line 418
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 419
    .line 420
    const/4 v11, 0x7

    .line 421
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 422
    .line 423
    .line 424
    new-instance v31, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    .line 425
    .line 426
    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    const/16 v29, 0x2e

    .line 430
    .line 431
    move-object/from16 v26, v4

    .line 432
    .line 433
    move-object/from16 v27, v9

    .line 434
    .line 435
    move-object/from16 v30, v10

    .line 436
    .line 437
    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 438
    .line 439
    .line 440
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 441
    .line 442
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 443
    .line 444
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 445
    .line 446
    const-string/jumbo v12, "resetPasswordToken"

    .line 447
    .line 448
    .line 449
    invoke-direct {v9, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 453
    .line 454
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 455
    .line 456
    .line 457
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 458
    .line 459
    const/16 v11, 0x8

    .line 460
    .line 461
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 462
    .line 463
    .line 464
    new-instance v44, Lcom/android/server/devicepolicy/LongPolicySerializer;

    .line 465
    .line 466
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 467
    .line 468
    .line 469
    const/16 v42, 0xa

    .line 470
    .line 471
    move-object/from16 v39, v13

    .line 472
    .line 473
    move-object/from16 v40, v9

    .line 474
    .line 475
    move-object/from16 v43, v10

    .line 476
    .line 477
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 478
    .line 479
    .line 480
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 481
    .line 482
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 483
    .line 484
    const-string/jumbo v10, "keyguardDisabledFeatures"

    .line 485
    .line 486
    .line 487
    invoke-direct {v9, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    new-instance v28, Lcom/android/server/devicepolicy/FlagUnion;

    .line 491
    .line 492
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 493
    .line 494
    .line 495
    move-object/from16 v24, v1

    .line 496
    .line 497
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 498
    .line 499
    move-object/from16 v32, v3

    .line 500
    .line 501
    const/16 v3, 0xa

    .line 502
    .line 503
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 504
    .line 505
    .line 506
    new-instance v31, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 507
    .line 508
    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 509
    .line 510
    .line 511
    const/16 v29, 0x2

    .line 512
    .line 513
    move-object/from16 v26, v11

    .line 514
    .line 515
    move-object/from16 v27, v9

    .line 516
    .line 517
    move-object/from16 v30, v1

    .line 518
    .line 519
    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 520
    .line 521
    .line 522
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 523
    .line 524
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 525
    .line 526
    const-string/jumbo v9, "applicationHidden"

    .line 527
    .line 528
    .line 529
    invoke-direct {v1, v9}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move-object/from16 v26, v12

    .line 533
    .line 534
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 535
    .line 536
    move-object/from16 v27, v4

    .line 537
    .line 538
    const/16 v4, 0xb

    .line 539
    .line 540
    invoke-direct {v12, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 541
    .line 542
    .line 543
    new-instance v4, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 544
    .line 545
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 546
    .line 547
    .line 548
    const/16 v28, 0x6

    .line 549
    .line 550
    move-object/from16 v45, v9

    .line 551
    .line 552
    move-object v9, v3

    .line 553
    move-object/from16 v46, v10

    .line 554
    .line 555
    move-object v10, v1

    .line 556
    move-object v1, v11

    .line 557
    move-object v11, v0

    .line 558
    move-object/from16 v29, v7

    .line 559
    .line 560
    move-object/from16 v7, v26

    .line 561
    .line 562
    move-object/from16 v26, v12

    .line 563
    .line 564
    move/from16 v12, v28

    .line 565
    .line 566
    move-object/from16 v47, v13

    .line 567
    .line 568
    move-object/from16 v13, v26

    .line 569
    .line 570
    move-object/from16 v26, v7

    .line 571
    .line 572
    move-object v7, v14

    .line 573
    move-object v14, v4

    .line 574
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 575
    .line 576
    .line 577
    sput-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 578
    .line 579
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 580
    .line 581
    new-instance v10, Landroid/app/admin/AccountTypePolicyKey;

    .line 582
    .line 583
    const-string v14, "accountManagementDisabled"

    .line 584
    .line 585
    invoke-direct {v10, v14}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 589
    .line 590
    const/16 v9, 0xc

    .line 591
    .line 592
    invoke-direct {v13, v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 593
    .line 594
    .line 595
    new-instance v28, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 596
    .line 597
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 598
    .line 599
    .line 600
    const/4 v12, 0x6

    .line 601
    move-object v9, v4

    .line 602
    move-object v11, v0

    .line 603
    move-object/from16 v48, v14

    .line 604
    .line 605
    move-object/from16 v14, v28

    .line 606
    .line 607
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 608
    .line 609
    .line 610
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 611
    .line 612
    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 613
    .line 614
    new-instance v9, Landroid/app/admin/NoArgsPolicyKey;

    .line 615
    .line 616
    const-string/jumbo v13, "permittedInputMethods"

    .line 617
    .line 618
    .line 619
    invoke-direct {v9, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 623
    .line 624
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 625
    .line 626
    .line 627
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 628
    .line 629
    const/16 v11, 0xd

    .line 630
    .line 631
    invoke-direct {v10, v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 632
    .line 633
    .line 634
    new-instance v44, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 635
    .line 636
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 637
    .line 638
    .line 639
    const/16 v42, 0x6

    .line 640
    .line 641
    move-object/from16 v39, v14

    .line 642
    .line 643
    move-object/from16 v40, v9

    .line 644
    .line 645
    move-object/from16 v43, v10

    .line 646
    .line 647
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 648
    .line 649
    .line 650
    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 651
    .line 652
    new-instance v12, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 653
    .line 654
    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    .line 655
    .line 656
    const-string/jumbo v11, "screenCaptureDisabled"

    .line 657
    .line 658
    .line 659
    invoke-direct {v10, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 663
    .line 664
    move-object/from16 v28, v1

    .line 665
    .line 666
    const/16 v1, 0xe

    .line 667
    .line 668
    invoke-direct {v9, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 669
    .line 670
    .line 671
    new-instance v1, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 672
    .line 673
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 674
    .line 675
    .line 676
    const/16 v30, 0x4

    .line 677
    .line 678
    move-object/from16 v31, v9

    .line 679
    .line 680
    move-object v9, v12

    .line 681
    move-object/from16 v49, v11

    .line 682
    .line 683
    move-object v11, v0

    .line 684
    move-object v0, v12

    .line 685
    move/from16 v12, v30

    .line 686
    .line 687
    move-object/from16 v50, v13

    .line 688
    .line 689
    move-object/from16 v13, v31

    .line 690
    .line 691
    move-object/from16 v51, v14

    .line 692
    .line 693
    move-object v14, v1

    .line 694
    invoke-direct/range {v9 .. v14}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 695
    .line 696
    .line 697
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 698
    .line 699
    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 700
    .line 701
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 702
    .line 703
    const-string/jumbo v10, "personalAppsSuspended"

    .line 704
    .line 705
    .line 706
    invoke-direct {v1, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    new-instance v41, Lcom/android/server/devicepolicy/MostRecent;

    .line 710
    .line 711
    invoke-direct/range {v41 .. v41}, Ljava/lang/Object;-><init>()V

    .line 712
    .line 713
    .line 714
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 715
    .line 716
    const/16 v12, 0xf

    .line 717
    .line 718
    invoke-direct {v11, v12}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 719
    .line 720
    .line 721
    new-instance v44, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 722
    .line 723
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 724
    .line 725
    .line 726
    const/16 v42, 0x6

    .line 727
    .line 728
    move-object/from16 v39, v9

    .line 729
    .line 730
    move-object/from16 v40, v1

    .line 731
    .line 732
    move-object/from16 v43, v11

    .line 733
    .line 734
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 735
    .line 736
    .line 737
    sput-object v9, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 738
    .line 739
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 740
    .line 741
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 742
    .line 743
    const-string/jumbo v12, "usbDataSignaling"

    .line 744
    .line 745
    .line 746
    invoke-direct {v1, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 750
    .line 751
    const/16 v14, 0x10

    .line 752
    .line 753
    invoke-direct {v13, v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 754
    .line 755
    .line 756
    new-instance v14, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 757
    .line 758
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 759
    .line 760
    .line 761
    const/16 v30, 0x1

    .line 762
    .line 763
    move-object/from16 v52, v0

    .line 764
    .line 765
    move-object v0, v11

    .line 766
    move-object/from16 v53, v16

    .line 767
    .line 768
    move-object/from16 v54, v24

    .line 769
    .line 770
    move-object/from16 v55, v28

    .line 771
    .line 772
    move-object/from16 v56, v3

    .line 773
    .line 774
    move-object/from16 v16, v12

    .line 775
    .line 776
    move-object/from16 v12, v18

    .line 777
    .line 778
    move-object/from16 v18, v9

    .line 779
    .line 780
    move-object/from16 v9, v20

    .line 781
    .line 782
    move-object/from16 v20, v10

    .line 783
    .line 784
    move-object/from16 v10, v32

    .line 785
    .line 786
    move/from16 v3, v30

    .line 787
    .line 788
    move-object/from16 v60, v4

    .line 789
    .line 790
    move-object/from16 v57, v19

    .line 791
    .line 792
    move-object/from16 v58, v21

    .line 793
    .line 794
    move-object/from16 v59, v27

    .line 795
    .line 796
    move-object v4, v13

    .line 797
    move-object v13, v5

    .line 798
    move-object v5, v14

    .line 799
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 800
    .line 801
    .line 802
    sput-object v11, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 803
    .line 804
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 805
    .line 806
    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    .line 807
    .line 808
    const-string/jumbo v2, "contentProtection"

    .line 809
    .line 810
    .line 811
    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    new-instance v32, Lcom/android/server/devicepolicy/MostRecent;

    .line 815
    .line 816
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 817
    .line 818
    .line 819
    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 820
    .line 821
    const/16 v4, 0x11

    .line 822
    .line 823
    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 824
    .line 825
    .line 826
    new-instance v35, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 827
    .line 828
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 829
    .line 830
    .line 831
    const/16 v33, 0x2

    .line 832
    .line 833
    move-object/from16 v30, v0

    .line 834
    .line 835
    move-object/from16 v31, v1

    .line 836
    .line 837
    move-object/from16 v34, v3

    .line 838
    .line 839
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 840
    .line 841
    .line 842
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 843
    .line 844
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 845
    .line 846
    new-instance v3, Landroid/app/admin/NoArgsPolicyKey;

    .line 847
    .line 848
    const-string/jumbo v4, "passwordComplexity"

    .line 849
    .line 850
    .line 851
    invoke-direct {v3, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    new-instance v5, Lcom/android/server/devicepolicy/MostRestrictive;

    .line 855
    .line 856
    new-instance v14, Landroid/app/admin/IntegerPolicyValue;

    .line 857
    .line 858
    move-object/from16 v19, v4

    .line 859
    .line 860
    const/high16 v4, 0x50000

    .line 861
    .line 862
    invoke-direct {v14, v4}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 863
    .line 864
    .line 865
    new-instance v4, Landroid/app/admin/IntegerPolicyValue;

    .line 866
    .line 867
    move-object/from16 v21, v0

    .line 868
    .line 869
    const/high16 v0, 0x30000

    .line 870
    .line 871
    invoke-direct {v4, v0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 872
    .line 873
    .line 874
    new-instance v0, Landroid/app/admin/IntegerPolicyValue;

    .line 875
    .line 876
    move-object/from16 v24, v2

    .line 877
    .line 878
    const/high16 v2, 0x10000

    .line 879
    .line 880
    invoke-direct {v0, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 881
    .line 882
    .line 883
    new-instance v2, Landroid/app/admin/IntegerPolicyValue;

    .line 884
    .line 885
    move-object/from16 v27, v11

    .line 886
    .line 887
    const/4 v11, 0x0

    .line 888
    invoke-direct {v2, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 889
    .line 890
    .line 891
    invoke-static {v14, v4, v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-direct {v5, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    .line 896
    .line 897
    .line 898
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 899
    .line 900
    const/16 v2, 0xa

    .line 901
    .line 902
    invoke-direct {v0, v2}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 903
    .line 904
    .line 905
    new-instance v44, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    .line 906
    .line 907
    invoke-direct/range {v44 .. v44}, Ljava/lang/Object;-><init>()V

    .line 908
    .line 909
    .line 910
    const/16 v42, 0x2

    .line 911
    .line 912
    move-object/from16 v39, v1

    .line 913
    .line 914
    move-object/from16 v40, v3

    .line 915
    .line 916
    move-object/from16 v41, v5

    .line 917
    .line 918
    move-object/from16 v43, v0

    .line 919
    .line 920
    invoke-direct/range {v39 .. v44}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 921
    .line 922
    .line 923
    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 924
    .line 925
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 926
    .line 927
    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    .line 928
    .line 929
    const-string/jumbo v3, "packagesSuspended"

    .line 930
    .line 931
    .line 932
    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    new-instance v32, Lcom/android/server/devicepolicy/PackageSetUnion;

    .line 936
    .line 937
    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    .line 938
    .line 939
    .line 940
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 941
    .line 942
    const/16 v5, 0xd

    .line 943
    .line 944
    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 945
    .line 946
    .line 947
    new-instance v35, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    .line 948
    .line 949
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 950
    .line 951
    .line 952
    const/16 v33, 0x0

    .line 953
    .line 954
    move-object/from16 v30, v0

    .line 955
    .line 956
    move-object/from16 v31, v2

    .line 957
    .line 958
    move-object/from16 v34, v4

    .line 959
    .line 960
    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 961
    .line 962
    .line 963
    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 964
    .line 965
    new-instance v2, Ljava/util/HashMap;

    .line 966
    .line 967
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 968
    .line 969
    .line 970
    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 971
    .line 972
    new-instance v4, Ljava/util/HashMap;

    .line 973
    .line 974
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 975
    .line 976
    .line 977
    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 978
    .line 979
    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-object/from16 v11, v22

    .line 983
    .line 984
    move-object/from16 v5, v57

    .line 985
    .line 986
    invoke-virtual {v2, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-object/from16 v5, v53

    .line 990
    .line 991
    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-object/from16 v5, v23

    .line 995
    .line 996
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-object/from16 v6, v38

    .line 1000
    .line 1001
    move-object/from16 v5, v54

    .line 1002
    .line 1003
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-object/from16 v5, v37

    .line 1007
    .line 1008
    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-object/from16 v6, v36

    .line 1012
    .line 1013
    move-object/from16 v5, v58

    .line 1014
    .line 1015
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-object/from16 v5, v59

    .line 1022
    .line 1023
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-object/from16 v6, v26

    .line 1027
    .line 1028
    move-object/from16 v5, v47

    .line 1029
    .line 1030
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-object/from16 v6, v46

    .line 1034
    .line 1035
    move-object/from16 v5, v55

    .line 1036
    .line 1037
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-object/from16 v6, v45

    .line 1041
    .line 1042
    move-object/from16 v5, v56

    .line 1043
    .line 1044
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-object/from16 v6, v48

    .line 1048
    .line 1049
    move-object/from16 v5, v60

    .line 1050
    .line 1051
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-object/from16 v6, v50

    .line 1055
    .line 1056
    move-object/from16 v5, v51

    .line 1057
    .line 1058
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-object/from16 v6, v49

    .line 1062
    .line 1063
    move-object/from16 v5, v52

    .line 1064
    .line 1065
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-object/from16 v5, v18

    .line 1069
    .line 1070
    move-object/from16 v6, v20

    .line 1071
    .line 1072
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-object/from16 v6, v16

    .line 1076
    .line 1077
    move-object/from16 v5, v27

    .line 1078
    .line 1079
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-object/from16 v5, v21

    .line 1083
    .line 1084
    move-object/from16 v6, v24

    .line 1085
    .line 1086
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-object/from16 v5, v19

    .line 1090
    .line 1091
    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    const-string/jumbo v0, "no_modify_accounts"

    .line 1098
    .line 1099
    .line 1100
    move-object/from16 v1, v29

    .line 1101
    .line 1102
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    const-string/jumbo v0, "no_config_wifi"

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    const-string/jumbo v0, "no_change_wifi_state"

    .line 1112
    .line 1113
    .line 1114
    move-object/from16 v2, v25

    .line 1115
    .line 1116
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    const-string/jumbo v0, "no_wifi_tethering"

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    const-string/jumbo v0, "no_grant_admin"

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    const-string/jumbo v0, "no_sharing_admin_configured_wifi"

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    const-string/jumbo v0, "no_wifi_direct"

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    const-string/jumbo v0, "no_add_wifi_config"

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    const-string/jumbo v0, "no_config_locale"

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    const-string/jumbo v0, "no_install_apps"

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    const-string/jumbo v0, "no_uninstall_apps"

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    const-string/jumbo v0, "no_share_location"

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    const-string/jumbo v0, "no_airplane_mode"

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    const-string/jumbo v0, "no_config_brightness"

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    const-string/jumbo v0, "no_ambient_display"

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    const-string/jumbo v0, "no_config_screen_timeout"

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    const-string/jumbo v0, "no_install_unknown_sources"

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    const-string/jumbo v0, "no_install_unknown_sources_globally"

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    const-string/jumbo v0, "no_config_bluetooth"

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    const-string/jumbo v0, "no_bluetooth"

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    const-string/jumbo v0, "no_bluetooth_sharing"

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    const-string/jumbo v0, "no_usb_file_transfer"

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    const-string/jumbo v0, "no_config_credentials"

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    const-string/jumbo v0, "no_remove_user"

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    const-string/jumbo v0, "no_remove_managed_profile"

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    const-string/jumbo v0, "no_debugging_features"

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    const-string/jumbo v0, "no_config_vpn"

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    const-string/jumbo v0, "no_config_location"

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    const-string/jumbo v0, "no_config_date_time"

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    const-string/jumbo v0, "no_config_tethering"

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    const-string/jumbo v0, "no_network_reset"

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    const-string/jumbo v0, "no_factory_reset"

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    const-string/jumbo v0, "no_add_user"

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    const-string/jumbo v0, "no_add_managed_profile"

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    const-string/jumbo v0, "no_add_clone_profile"

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    const-string/jumbo v0, "no_add_private_profile"

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    const-string/jumbo v0, "ensure_verify_apps"

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    const-string/jumbo v0, "no_config_cell_broadcasts"

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    const-string/jumbo v0, "no_config_mobile_networks"

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    const-string/jumbo v0, "no_control_apps"

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    const-string/jumbo v0, "no_physical_media"

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    const-string/jumbo v0, "no_unmute_microphone"

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    const-string/jumbo v0, "no_adjust_volume"

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    const-string/jumbo v0, "no_outgoing_calls"

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    const-string/jumbo v0, "no_sms"

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    const-string/jumbo v0, "no_fun"

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    const-string/jumbo v0, "no_create_windows"

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    const-string/jumbo v0, "no_system_error_dialogs"

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    const-string/jumbo v0, "no_outgoing_beam"

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    const-string/jumbo v0, "no_wallpaper"

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    .line 1406
    .line 1407
    const-string/jumbo v0, "no_set_wallpaper"

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    const-string/jumbo v0, "no_safe_boot"

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    const-string/jumbo v0, "no_record_audio"

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    const-string/jumbo v0, "no_run_in_background"

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    const-string/jumbo v0, "no_camera"

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    const-string/jumbo v0, "disallow_unmute_device"

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    const-string/jumbo v0, "no_data_roaming"

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    const-string/jumbo v0, "no_set_user_icon"

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    const-string/jumbo v0, "no_oem_unlock"

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    const-string/jumbo v0, "no_unified_password"

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    const-string v0, "allow_parent_profile_app_linking"

    .line 1468
    .line 1469
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    const-string/jumbo v0, "no_autofill"

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    const-string/jumbo v0, "no_content_capture"

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    const-string/jumbo v0, "no_content_suggestions"

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    const-string/jumbo v0, "no_user_switch"

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    const-string/jumbo v0, "no_sharing_into_profile"

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    const-string/jumbo v0, "no_printing"

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    const-string/jumbo v0, "disallow_config_private_dns"

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    const-string/jumbo v0, "disallow_microphone_toggle"

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    const-string/jumbo v0, "disallow_camera_toggle"

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    const-string/jumbo v0, "disallow_biometric"

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    const-string/jumbo v0, "disallow_config_default_apps"

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    const-string/jumbo v0, "no_cellular_2g"

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    const-string/jumbo v0, "no_ultra_wideband_radio"

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    const-string/jumbo v0, "no_sim_globally"

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    const-string/jumbo v0, "no_assist_content"

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    .line 1561
    .line 1562
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;->threadUserRestrictionEnabled()Z

    .line 1563
    .line 1564
    .line 1565
    move-result v3

    .line 1566
    if-eqz v3, :cond_0

    .line 1567
    .line 1568
    const-string/jumbo v3, "no_thread_network"

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    :cond_0
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v0

    .line 1585
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1586
    .line 1587
    .line 1588
    move-result v1

    .line 1589
    if-eqz v1, :cond_1

    .line 1590
    .line 1591
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v1

    .line 1595
    check-cast v1, Ljava/lang/String;

    .line 1596
    .line 1597
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 1598
    .line 1599
    check-cast v2, Ljava/util/HashMap;

    .line 1600
    .line 1601
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v2

    .line 1605
    check-cast v2, Ljava/lang/Integer;

    .line 1606
    .line 1607
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1608
    .line 1609
    .line 1610
    move-result v2

    .line 1611
    invoke-static {v1}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v3

    .line 1615
    new-instance v10, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 1616
    .line 1617
    invoke-direct {v10, v3, v1}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    or-int/lit8 v7, v2, 0x14

    .line 1621
    .line 1622
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 1623
    .line 1624
    new-instance v8, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    .line 1625
    .line 1626
    const/16 v2, 0x9

    .line 1627
    .line 1628
    invoke-direct {v8, v2}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1629
    .line 1630
    .line 1631
    new-instance v9, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    .line 1632
    .line 1633
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1634
    .line 1635
    .line 1636
    sget-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 1637
    .line 1638
    move-object v4, v1

    .line 1639
    move-object v5, v10

    .line 1640
    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 1641
    .line 1642
    .line 1643
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 1644
    .line 1645
    invoke-virtual {v10}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v3

    .line 1649
    check-cast v2, Ljava/util/HashMap;

    .line 1650
    .line 1651
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    .line 1653
    .line 1654
    goto :goto_0

    .line 1655
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    and-int/lit8 p0, p3, 0x2

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "Non-coexistable global policies not supported,please add support."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public static ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/AccountTypePolicyKey;

    .line 7
    .line 8
    const-string v2, "accountManagementDisabled"

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    .line 7
    .line 8
    const-string/jumbo v2, "applicationRestrictions"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    .line 7
    .line 8
    const-string/jumbo v2, "persistentPreferredActivity"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Unsupported user restriction "

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/app/admin/PolicyKey;->readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "PolicyDefinition"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Error parsing PolicyKey, GenericPolicyKey is null"

    .line 11
    .line 12
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Error parsing PolicyKey, Unknown generic policy key: "

    .line 35
    .line 36
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    iget-object v0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/app/admin/PolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method


# virtual methods
.method public final createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public final isGlobalOnlyPolicy()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isNonCoexistablePolicy()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PolicyDefinition{ mPolicyKey= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mResolutionMechanism= "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mPolicyFlags= "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 29
    .line 30
    const-string v1, " }"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
