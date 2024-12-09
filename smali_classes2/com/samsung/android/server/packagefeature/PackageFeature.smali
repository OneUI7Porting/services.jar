.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeature;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;


# instance fields
.field public final mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

.field public final mEnabled:Z

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mMigrationListener:Lcom/samsung/android/server/packagefeature/PackageFeatureMigrationListener;

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 2
    .line 3
    sget-object v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 4
    .line 5
    new-instance v6, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;

    .line 6
    .line 7
    const-string v0, "-setForceDisplayCompatMode"

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v5, "displayCompat"

    .line 18
    .line 19
    const-string v1, "DISPLAY_COMPAT"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v0, v7

    .line 23
    move-object v4, v8

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 25
    .line 26
    .line 27
    sput-object v7, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 28
    .line 29
    new-instance v9, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 30
    .line 31
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MIN_ASPECT_RATIO_LIST:Z

    .line 32
    .line 33
    new-instance v6, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;

    .line 34
    .line 35
    const-string v0, "-setFixedAspectRatio"

    .line 36
    .line 37
    const-string v1, "-ratio"

    .line 38
    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    const-string v5, "fixedAspectRatio"

    .line 48
    .line 49
    const-string v1, "MIN_ASPECT_RATIO"

    .line 50
    .line 51
    move-object v0, v9

    .line 52
    move-object v4, v8

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 54
    .line 55
    .line 56
    sput-object v9, Lcom/samsung/android/server/packagefeature/PackageFeature;->MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 57
    .line 58
    new-instance v10, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const-string v1, "FULL_SCREEN"

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    const/4 v3, 0x1

    .line 65
    const-string v5, "fullScreen"

    .line 66
    .line 67
    move-object v0, v10

    .line 68
    move-object v4, v8

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 70
    .line 71
    .line 72
    sput-object v10, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 73
    .line 74
    new-instance v11, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 75
    .line 76
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 77
    .line 78
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 79
    .line 80
    const-string v0, "-setIgnoreAppRotation"

    .line 81
    .line 82
    filled-new-array {v0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v2, 0x3

    .line 90
    const-string v5, "ignoreAppRotation"

    .line 91
    .line 92
    const-string v1, "IGNORE_APP_ROTATION"

    .line 93
    .line 94
    move-object v0, v11

    .line 95
    move v3, v12

    .line 96
    move-object v4, v8

    .line 97
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 98
    .line 99
    .line 100
    sput-object v11, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 101
    .line 102
    new-instance v13, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 103
    .line 104
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 105
    .line 106
    const-string v0, "-setIgnoreAppRotationDisabled"

    .line 107
    .line 108
    filled-new-array {v0}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 v2, 0x4

    .line 116
    const-string v5, "ignoreAppRotationDisabled"

    .line 117
    .line 118
    const-string v1, "IGNORE_APP_ROTATION_DISABLED"

    .line 119
    .line 120
    move-object v0, v13

    .line 121
    move v3, v12

    .line 122
    move-object v4, v8

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 124
    .line 125
    .line 126
    sput-object v13, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 127
    .line 128
    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 129
    .line 130
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 131
    .line 132
    const-string v0, "-setTabletAppRotationCompat"

    .line 133
    .line 134
    filled-new-array {v0}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 v2, 0x5

    .line 142
    const-string/jumbo v5, "tabletAppRotationCompat"

    .line 143
    .line 144
    .line 145
    const-string v1, "TABLET_APP_ROTATION_COMPAT"

    .line 146
    .line 147
    move-object v0, v14

    .line 148
    move v3, v12

    .line 149
    move-object v4, v8

    .line 150
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 151
    .line 152
    .line 153
    sput-object v14, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 154
    .line 155
    new-instance v15, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 156
    .line 157
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_MODE_APP_LIST:Z

    .line 158
    .line 159
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 160
    .line 161
    const-string v0, "-setFlexModeApp"

    .line 162
    .line 163
    filled-new-array {v0}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 v2, 0x6

    .line 171
    const-string v5, "flexModeApp"

    .line 172
    .line 173
    const-string v1, "FLEX_MODE_APP"

    .line 174
    .line 175
    move-object v0, v15

    .line 176
    move-object v4, v8

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 178
    .line 179
    .line 180
    sput-object v15, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 181
    .line 182
    new-instance v16, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 183
    .line 184
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_PANEL_DEFAULT_LIST:Z

    .line 185
    .line 186
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 187
    .line 188
    const-string v0, "-setFlexPanelDefault"

    .line 189
    .line 190
    filled-new-array {v0}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 v2, 0x7

    .line 198
    const-string v5, "flexPanelDefault"

    .line 199
    .line 200
    const-string v1, "FLEX_PANEL_DEFAULT"

    .line 201
    .line 202
    move-object/from16 v0, v16

    .line 203
    .line 204
    move-object v4, v8

    .line 205
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 206
    .line 207
    .line 208
    sput-object v16, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 209
    .line 210
    new-instance v17, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 211
    .line 212
    const/4 v6, 0x0

    .line 213
    const-string v1, "SPLIT_ACTIVITY"

    .line 214
    .line 215
    const/16 v2, 0x8

    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    const-string/jumbo v5, "splitActivity"

    .line 219
    .line 220
    .line 221
    move-object/from16 v0, v17

    .line 222
    .line 223
    move-object v4, v8

    .line 224
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 225
    .line 226
    .line 227
    new-instance v18, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 228
    .line 229
    const/4 v6, 0x0

    .line 230
    const-string v1, "DEX_LAUNCH_B"

    .line 231
    .line 232
    const/16 v2, 0x9

    .line 233
    .line 234
    const/4 v3, 0x1

    .line 235
    const-string v5, "dexLaunchBlock"

    .line 236
    .line 237
    move-object/from16 v0, v18

    .line 238
    .line 239
    move-object v4, v8

    .line 240
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 241
    .line 242
    .line 243
    sput-object v18, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 244
    .line 245
    new-instance v19, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 246
    .line 247
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 248
    .line 249
    const-string v0, "-setDexRestart"

    .line 250
    .line 251
    filled-new-array {v0}, [Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 v3, 0x1

    .line 259
    const-string v5, "dexLaunchRestart"

    .line 260
    .line 261
    const-string v1, "DEX_LAUNCH_RESTART"

    .line 262
    .line 263
    const/16 v2, 0xa

    .line 264
    .line 265
    move-object/from16 v0, v19

    .line 266
    .line 267
    move-object v4, v8

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 269
    .line 270
    .line 271
    new-instance v20, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 272
    .line 273
    new-instance v6, Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;

    .line 274
    .line 275
    const-string v0, "-setCoverLauncherWidgetPackage"

    .line 276
    .line 277
    filled-new-array {v0}, [Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/4 v3, 0x0

    .line 285
    const-string v5, "coverLauncherWidget"

    .line 286
    .line 287
    const-string v1, "COVER_LAUNCHER_WIDGET"

    .line 288
    .line 289
    const/16 v2, 0xb

    .line 290
    .line 291
    move-object/from16 v0, v20

    .line 292
    .line 293
    move-object v4, v8

    .line 294
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 295
    .line 296
    .line 297
    new-instance v21, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 298
    .line 299
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_LAUNCHER_WIDGET_POLICY_CHN:Z

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    const-string v1, "COVER_LAUNCHER_WIDGET_CHN"

    .line 303
    .line 304
    const/16 v2, 0xc

    .line 305
    .line 306
    const-string v5, "coverLauncherWidgetChn"

    .line 307
    .line 308
    move-object/from16 v0, v21

    .line 309
    .line 310
    move-object v4, v8

    .line 311
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 312
    .line 313
    .line 314
    new-instance v22, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 315
    .line 316
    const/4 v6, 0x0

    .line 317
    const-string v1, "REMOTE_CONTROL_FEATURES"

    .line 318
    .line 319
    const/16 v2, 0xd

    .line 320
    .line 321
    const-string/jumbo v5, "remoteControlFeatures"

    .line 322
    .line 323
    .line 324
    move-object/from16 v0, v22

    .line 325
    .line 326
    move v3, v12

    .line 327
    move-object v4, v8

    .line 328
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 329
    .line 330
    .line 331
    new-instance v30, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 332
    .line 333
    sget-boolean v26, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    .line 334
    .line 335
    sget-object v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 336
    .line 337
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 338
    .line 339
    const-string v1, "-setLowRefreshRate"

    .line 340
    .line 341
    filled-new-array {v1}, [Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const/16 v25, 0xe

    .line 349
    .line 350
    const-string v28, "lowRefreshRate"

    .line 351
    .line 352
    const-string v24, "LOW_REFRESH_RATE"

    .line 353
    .line 354
    move-object/from16 v23, v30

    .line 355
    .line 356
    move-object/from16 v27, v8

    .line 357
    .line 358
    move-object/from16 v29, v0

    .line 359
    .line 360
    invoke-direct/range {v23 .. v29}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 361
    .line 362
    .line 363
    sput-object v30, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 364
    .line 365
    new-instance v23, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 366
    .line 367
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 368
    .line 369
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 370
    .line 371
    const-string v0, "-setHighRefreshRate"

    .line 372
    .line 373
    filled-new-array {v0}, [Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const/16 v2, 0xf

    .line 381
    .line 382
    const-string v5, "highRefreshRate"

    .line 383
    .line 384
    const-string v1, "HIGH_REFRESH_RATE"

    .line 385
    .line 386
    move-object/from16 v0, v23

    .line 387
    .line 388
    move-object v4, v8

    .line 389
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 390
    .line 391
    .line 392
    sput-object v23, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 393
    .line 394
    new-instance v24, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 395
    .line 396
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    .line 397
    .line 398
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 399
    .line 400
    const-string v0, "-setNaviAppLowRefreshRate"

    .line 401
    .line 402
    filled-new-array {v0}, [Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-direct {v6, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const/16 v2, 0x10

    .line 410
    .line 411
    const-string/jumbo v5, "naviAppLowRefreshRate"

    .line 412
    .line 413
    .line 414
    const-string v1, "NAVIGATION_LOW_REFRESH_RATE"

    .line 415
    .line 416
    move-object/from16 v0, v24

    .line 417
    .line 418
    move-object v4, v8

    .line 419
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 420
    .line 421
    .line 422
    sput-object v24, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 423
    .line 424
    new-instance v25, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 425
    .line 426
    sget-object v35, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 427
    .line 428
    const/16 v37, 0x0

    .line 429
    .line 430
    const-string v32, "BROADCAST_RECEIVER_ALLOW_LIST"

    .line 431
    .line 432
    const/16 v33, 0x11

    .line 433
    .line 434
    const/16 v34, 0x1

    .line 435
    .line 436
    const-string v36, "BroadcastReceiverAllowList"

    .line 437
    .line 438
    move-object/from16 v31, v25

    .line 439
    .line 440
    invoke-direct/range {v31 .. v37}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 441
    .line 442
    .line 443
    sput-object v25, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 444
    .line 445
    new-instance v26, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 446
    .line 447
    sget-object v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 448
    .line 449
    const/4 v6, 0x0

    .line 450
    const-string v1, "appcategory"

    .line 451
    .line 452
    const/16 v2, 0x12

    .line 453
    .line 454
    const/4 v3, 0x1

    .line 455
    const-string v5, "appcategory"

    .line 456
    .line 457
    move-object/from16 v0, v26

    .line 458
    .line 459
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 460
    .line 461
    .line 462
    sput-object v26, Lcom/samsung/android/server/packagefeature/PackageFeature;->appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 463
    .line 464
    new-instance v27, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 465
    .line 466
    sget-object v35, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 467
    .line 468
    const/16 v37, 0x0

    .line 469
    .line 470
    const-string v32, "TEST_PACKAGE_FEATURE"

    .line 471
    .line 472
    const/16 v33, 0x13

    .line 473
    .line 474
    const/16 v34, 0x0

    .line 475
    .line 476
    const-string/jumbo v36, "testPackageFeature"

    .line 477
    .line 478
    .line 479
    move-object/from16 v31, v27

    .line 480
    .line 481
    invoke-direct/range {v31 .. v37}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    .line 482
    .line 483
    .line 484
    move-object v0, v7

    .line 485
    move-object v1, v9

    .line 486
    move-object v2, v10

    .line 487
    move-object v3, v11

    .line 488
    move-object v4, v13

    .line 489
    move-object v5, v14

    .line 490
    move-object v6, v15

    .line 491
    move-object/from16 v7, v16

    .line 492
    .line 493
    move-object/from16 v8, v17

    .line 494
    .line 495
    move-object/from16 v9, v18

    .line 496
    .line 497
    move-object/from16 v10, v19

    .line 498
    .line 499
    move-object/from16 v11, v20

    .line 500
    .line 501
    move-object/from16 v12, v21

    .line 502
    .line 503
    move-object/from16 v13, v22

    .line 504
    .line 505
    move-object/from16 v14, v30

    .line 506
    .line 507
    move-object/from16 v15, v23

    .line 508
    .line 509
    move-object/from16 v16, v24

    .line 510
    .line 511
    move-object/from16 v17, v25

    .line 512
    .line 513
    move-object/from16 v18, v26

    .line 514
    .line 515
    move-object/from16 v19, v27

    .line 516
    .line 517
    filled-new-array/range {v0 .. v19}, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 522
    .line 523
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p6, 0x0

    .line 14
    :goto_0
    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 15
    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    check-cast v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method
