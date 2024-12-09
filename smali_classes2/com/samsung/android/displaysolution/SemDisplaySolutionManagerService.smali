.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final BURN_IN_APPLY_COUNT:Ljava/lang/String;

.field public final BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

.field public final DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public final DOU_BRIGHTNESS_SUPPORT_VALUE:I

.field public final DOU_VERSION:I

.field public final IRC_MODE_NODE:Ljava/lang/String;

.field public final IRC_MODE_SUB_NODE:Ljava/lang/String;

.field public final SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field public final adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

.field public final ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

.field public mAdaptiveScreenModeEnabled:Z

.field public final mAfcType:I

.field public mAppBrightnessScale:Z

.field public mAutoBrightnessModeEnabled:Z

.field public mAutoCurrentLimitOffEnable:Z

.field public final mBrightnessBacklightValueStringArray:[Ljava/lang/String;

.field public final mBrightnessCameraAppArray:[F

.field public mBrightnessCompensation:F

.field public final mBrightnessExtraBrightnessArray:[F

.field public final mBrightnessGalleryAppArray:[F

.field public final mBrightnessNitsValueStringArray:[Ljava/lang/String;

.field public final mBrightnessOverHeatAppArray:[F

.field public final mBrightnessSamsungVideoAppArray:[F

.field public final mBrightnessVideoEnhancerArray:[F

.field public mBrowserAppBrightnessControl:Z

.field public mBurnInPrevention:Z

.field public final mBurnInScaleFactorStringArray:[Ljava/lang/String;

.field public final mBurnInScaleFactorValueArray:[F

.field public final mCameraAppBrightnessStringArray:[Ljava/lang/String;

.field public mCameraEnable:Z

.field public mColorBlind:Z

.field public final mContext:Landroid/content/Context;

.field public mDouAppEnable:Z

.field public mExtraBrightness:Z

.field public mExtraBrightnessModeEnabled:Z

.field public final mExtraBrightnessStringArray:[Ljava/lang/String;

.field public final mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

.field public final mGalleryAppBrightnessStringArray:[Ljava/lang/String;

.field public mGalleryEnable:Z

.field public final mGammaArray:[F

.field public final mGammaStringArray:[Ljava/lang/String;

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeScaleFactorValue:F

.field public mIsFolded:Z

.field public mLastScaleFactorValue:F

.field public final mLock:Ljava/lang/Object;

.field public mMSCSEnable:Z

.field public mName:Ljava/lang/String;

.field public mOnPixelRatioValue:Ljava/lang/String;

.field public final mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRealHDR:Z

.field public final mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

.field public mScaleFactor:F

.field public final mScaleFactorStringArray:[Ljava/lang/String;

.field public final mScaleFactorValueArray:[F

.field public mSettingValue:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public final mUseEyeComfortSolutionServiceConfig:Z

.field public mVideoEnable:Z

.field public final mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

.field public final mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field public temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

.field public temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_BURNIN_PREVENTION_ON:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "eng"

    .line 5
    .line 6
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 53
    .line 54
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 55
    .line 56
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 57
    .line 58
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 59
    .line 60
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 61
    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    .line 64
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 65
    .line 66
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 67
    .line 68
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 69
    .line 70
    const-string v2, "/sys/class/lcd/panel/irc_mode"

    .line 71
    .line 72
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 73
    .line 74
    const-string v2, "/sys/class/lcd/panel1/irc_mode"

    .line 75
    .line 76
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "/efs/afc/apply_count"

    .line 79
    .line 80
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    .line 81
    .line 82
    const-string v2, "/efs/afc1/apply_count"

    .line 83
    .line 84
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    .line 85
    .line 86
    const-string/jumbo v2, "ro.build.scafe.version"

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const v3, 0x11101e0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const v4, 0x1110017

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const v5, 0x1110061

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const v6, 0x10e0136

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const v7, 0x1070051

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    const v7, 0x107004f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const v7, 0x1070050

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const v7, 0x1070065

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    const v7, 0x107006a

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    const v7, 0x1070048

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    const v7, 0x107007b

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    const v7, 0x1070079

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    const v7, 0x1070084

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const v7, 0x107007d

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    const v7, 0x107007e

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    const v7, 0x10e0067

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    const v7, 0x10e0066

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    const v7, 0x10e0098

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    const v7, 0x10e000b

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 332
    .line 333
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    const-string v7, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 338
    .line 339
    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    const/4 v7, 0x1

    .line 344
    if-lez v6, :cond_0

    .line 345
    .line 346
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 347
    .line 348
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    const-string v8, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    .line 353
    .line 354
    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    const-string v8, "DDI"

    .line 359
    .line 360
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    if-eqz v2, :cond_1

    .line 364
    .line 365
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 366
    .line 367
    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 368
    .line 369
    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    .line 370
    .line 371
    .line 372
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 373
    .line 374
    :cond_1
    if-eqz v3, :cond_2

    .line 375
    .line 376
    new-instance v6, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 377
    .line 378
    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;-><init>(Landroid/content/Context;)V

    .line 379
    .line 380
    .line 381
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 382
    .line 383
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 384
    .line 385
    if-eqz v6, :cond_3

    .line 386
    .line 387
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 388
    .line 389
    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;-><init>(Landroid/content/Context;)V

    .line 390
    .line 391
    .line 392
    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 393
    .line 394
    :cond_3
    if-eqz v4, :cond_4

    .line 395
    .line 396
    new-instance v4, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 397
    .line 398
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string v6, "eng"

    .line 402
    .line 403
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    new-instance v6, Landroid/os/HandlerThread;

    .line 409
    .line 410
    const-string v8, "BigDataLoggingServiceThread"

    .line 411
    .line 412
    invoke-direct {v6, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 416
    .line 417
    .line 418
    new-instance v8, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    .line 419
    .line 420
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    const/4 v9, 0x0

    .line 425
    invoke-direct {v8, v6, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    const v8, 0x1110061

    .line 433
    .line 434
    .line 435
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    const-string/jumbo v8, "sys.bigdatalogging.bdlon"

    .line 440
    .line 441
    .line 442
    const-string v9, "false"

    .line 443
    .line 444
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v9, Landroid/content/IntentFilter;

    .line 448
    .line 449
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    .line 453
    .line 454
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v10, "android.intent.action.SCREEN_ON"

    .line 458
    .line 459
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const-string v10, "android.intent.action.SCREEN_OFF"

    .line 463
    .line 464
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v10, "android.intent.action.USER_PRESENT"

    .line 468
    .line 469
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    new-instance v10, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    .line 473
    .line 474
    invoke-direct {v10, v4}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 478
    .line 479
    .line 480
    if-eqz v6, :cond_4

    .line 481
    .line 482
    const-string/jumbo p1, "true"

    .line 483
    .line 484
    .line 485
    invoke-static {v8, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :cond_4
    const/16 p1, 0xff

    .line 489
    .line 490
    if-le v5, p1, :cond_5

    .line 491
    .line 492
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 493
    .line 494
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string/jumbo v4, "mUseMdnieScenarioControlServiceConfig : "

    .line 497
    .line 498
    .line 499
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    const-string v4, "SemDisplaySolutionManagerService"

    .line 510
    .line 511
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string/jumbo v6, "mUseAdaptiveDisplaySolutionServiceConfig : "

    .line 517
    .line 518
    .line 519
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    const-string/jumbo v3, "mUseEyeComfortSolutionServiceConfig : "

    .line 535
    .line 536
    .line 537
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 541
    .line 542
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string/jumbo v3, "mUseBigDataLoggingServiceConfig : "

    .line 555
    .line 556
    .line 557
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    const-string/jumbo v2, "mScreenBrightnessExtendedMaximumConfig : "

    .line 573
    .line 574
    .line 575
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    new-array p1, v7, [F

    .line 589
    .line 590
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 591
    .line 592
    move p1, v1

    .line 593
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    .line 594
    .line 595
    array-length v3, v2

    .line 596
    if-ge p1, v3, :cond_6

    .line 597
    .line 598
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 599
    .line 600
    aget-object v2, v2, p1

    .line 601
    .line 602
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    aput v2, v3, p1

    .line 607
    .line 608
    add-int/lit8 p1, p1, 0x1

    .line 609
    .line 610
    goto :goto_0

    .line 611
    :cond_6
    const/16 p1, 0xa

    .line 612
    .line 613
    new-array p1, p1, [F

    .line 614
    .line 615
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 616
    .line 617
    move p1, v1

    .line 618
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    .line 619
    .line 620
    array-length v3, v2

    .line 621
    if-ge p1, v3, :cond_7

    .line 622
    .line 623
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 624
    .line 625
    aget-object v2, v2, p1

    .line 626
    .line 627
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    aput v2, v3, p1

    .line 632
    .line 633
    add-int/lit8 p1, p1, 0x1

    .line 634
    .line 635
    goto :goto_1

    .line 636
    :cond_7
    new-array p1, v7, [F

    .line 637
    .line 638
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 639
    .line 640
    move p1, v1

    .line 641
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    .line 642
    .line 643
    array-length v3, v2

    .line 644
    if-ge p1, v3, :cond_8

    .line 645
    .line 646
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 647
    .line 648
    aget-object v2, v2, p1

    .line 649
    .line 650
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    aput v2, v3, p1

    .line 655
    .line 656
    add-int/lit8 p1, p1, 0x1

    .line 657
    .line 658
    goto :goto_2

    .line 659
    :cond_8
    new-array p1, v7, [F

    .line 660
    .line 661
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 662
    .line 663
    move p1, v1

    .line 664
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    .line 665
    .line 666
    array-length v3, v2

    .line 667
    if-ge p1, v3, :cond_9

    .line 668
    .line 669
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 670
    .line 671
    aget-object v2, v2, p1

    .line 672
    .line 673
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    aput v2, v3, p1

    .line 678
    .line 679
    add-int/lit8 p1, p1, 0x1

    .line 680
    .line 681
    goto :goto_3

    .line 682
    :cond_9
    new-array p1, v7, [F

    .line 683
    .line 684
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 685
    .line 686
    move p1, v1

    .line 687
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    .line 688
    .line 689
    array-length v3, v2

    .line 690
    if-ge p1, v3, :cond_a

    .line 691
    .line 692
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 693
    .line 694
    aget-object v2, v2, p1

    .line 695
    .line 696
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    aput v2, v3, p1

    .line 701
    .line 702
    add-int/lit8 p1, p1, 0x1

    .line 703
    .line 704
    goto :goto_4

    .line 705
    :cond_a
    new-array p1, v7, [F

    .line 706
    .line 707
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 708
    .line 709
    move p1, v1

    .line 710
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    .line 711
    .line 712
    array-length v3, v2

    .line 713
    if-ge p1, v3, :cond_b

    .line 714
    .line 715
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 716
    .line 717
    aget-object v2, v2, p1

    .line 718
    .line 719
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    aput v2, v3, p1

    .line 724
    .line 725
    add-int/lit8 p1, p1, 0x1

    .line 726
    .line 727
    goto :goto_5

    .line 728
    :cond_b
    new-array p1, v7, [F

    .line 729
    .line 730
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 731
    .line 732
    move p1, v1

    .line 733
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    .line 734
    .line 735
    array-length v3, v2

    .line 736
    if-ge p1, v3, :cond_c

    .line 737
    .line 738
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 739
    .line 740
    aget-object v2, v2, p1

    .line 741
    .line 742
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    aput v2, v3, p1

    .line 747
    .line 748
    add-int/lit8 p1, p1, 0x1

    .line 749
    .line 750
    goto :goto_6

    .line 751
    :cond_c
    const/4 p1, 0x2

    .line 752
    new-array p1, p1, [F

    .line 753
    .line 754
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 755
    .line 756
    move p1, v1

    .line 757
    :goto_7
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    .line 758
    .line 759
    array-length v3, v2

    .line 760
    if-ge p1, v3, :cond_d

    .line 761
    .line 762
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 763
    .line 764
    aget-object v2, v2, p1

    .line 765
    .line 766
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    aput v2, v3, p1

    .line 771
    .line 772
    add-int/lit8 p1, p1, 0x1

    .line 773
    .line 774
    goto :goto_7

    .line 775
    :cond_d
    new-array p1, v7, [F

    .line 776
    .line 777
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 778
    .line 779
    move p1, v1

    .line 780
    :goto_8
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    .line 781
    .line 782
    array-length v3, v2

    .line 783
    if-ge p1, v3, :cond_e

    .line 784
    .line 785
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 786
    .line 787
    aget-object v2, v2, p1

    .line 788
    .line 789
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    aput v2, v3, p1

    .line 794
    .line 795
    add-int/lit8 p1, p1, 0x1

    .line 796
    .line 797
    goto :goto_8

    .line 798
    :cond_e
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    .line 799
    .line 800
    new-instance v2, Landroid/os/Handler;

    .line 801
    .line 802
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 803
    .line 804
    .line 805
    invoke-direct {p1, p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    .line 806
    .line 807
    .line 808
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 809
    .line 810
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 815
    .line 816
    const-string/jumbo v5, "power"

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    check-cast v3, Landroid/os/PowerManager;

    .line 824
    .line 825
    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 826
    .line 827
    const-string v3, "high_brightness_mode_pms_enter"

    .line 828
    .line 829
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 830
    .line 831
    .line 832
    move-result-object v3

    .line 833
    const/4 v5, -0x1

    .line 834
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 835
    .line 836
    .line 837
    const-string/jumbo v3, "screen_mode_automatic_setting"

    .line 838
    .line 839
    .line 840
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 845
    .line 846
    .line 847
    const-string/jumbo v3, "screen_extra_brightness"

    .line 848
    .line 849
    .line 850
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 855
    .line 856
    .line 857
    const-string/jumbo v3, "screen_brightness_mode"

    .line 858
    .line 859
    .line 860
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 865
    .line 866
    .line 867
    const-string v3, "blue_light_filter"

    .line 868
    .line 869
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 874
    .line 875
    .line 876
    const-string v3, "blue_light_filter_night_dim"

    .line 877
    .line 878
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 883
    .line 884
    .line 885
    const-string/jumbo p1, "registerDisplayStateListener"

    .line 886
    .line 887
    .line 888
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    .line 892
    .line 893
    invoke-direct {p1, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    .line 894
    .line 895
    .line 896
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    .line 897
    .line 898
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    .line 903
    .line 904
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    .line 908
    .line 909
    .line 910
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    .line 915
    .line 916
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 917
    .line 918
    .line 919
    move-result p1

    .line 920
    if-eqz p1, :cond_10

    .line 921
    .line 922
    new-instance p1, Ljava/lang/StringBuilder;

    .line 923
    .line 924
    const-string v0, "mAutoBrightnessModeEnabled : "

    .line 925
    .line 926
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 930
    .line 931
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string v0, " , mExtraBrightnessModeEnabled : "

    .line 935
    .line 936
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 940
    .line 941
    invoke-static {v4, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 942
    .line 943
    .line 944
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 945
    .line 946
    if-nez p1, :cond_f

    .line 947
    .line 948
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 949
    .line 950
    if-eqz p1, :cond_f

    .line 951
    .line 952
    const-string p1, "extra_brightness_on"

    .line 953
    .line 954
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    goto :goto_9

    .line 958
    :cond_f
    const-string p1, "extra_brightness_off"

    .line 959
    .line 960
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    :cond_10
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 964
    .line 965
    const-string/jumbo v0, "mHighBrightnessModeEnabled : "

    .line 966
    .line 967
    .line 968
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 972
    .line 973
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    const-string v0, " , mAdaptiveScreenModeEnabled : "

    .line 977
    .line 978
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 982
    .line 983
    invoke-static {v4, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 984
    .line 985
    .line 986
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 987
    .line 988
    if-nez p1, :cond_12

    .line 989
    .line 990
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 991
    .line 992
    if-nez p1, :cond_12

    .line 993
    .line 994
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 995
    .line 996
    invoke-static {v7, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 997
    .line 998
    .line 999
    new-instance p1, Ljava/io/File;

    .line 1000
    .line 1001
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1002
    .line 1003
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 1007
    .line 1008
    .line 1009
    move-result p1

    .line 1010
    if-eqz p1, :cond_11

    .line 1011
    .line 1012
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1013
    .line 1014
    invoke-static {v7, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 1015
    .line 1016
    .line 1017
    :cond_11
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 1018
    .line 1019
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .line 1021
    .line 1022
    goto :goto_a

    .line 1023
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 1024
    .line 1025
    invoke-static {v1, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 1026
    .line 1027
    .line 1028
    new-instance p1, Ljava/io/File;

    .line 1029
    .line 1030
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1031
    .line 1032
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 1036
    .line 1037
    .line 1038
    move-result p1

    .line 1039
    if-eqz p1, :cond_13

    .line 1040
    .line 1041
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-static {v1, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 1044
    .line 1045
    .line 1046
    :cond_13
    const-string p0, "IRC Mode : moderato_mode"

    .line 1047
    .line 1048
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .line 1050
    .line 1051
    :goto_a
    return-void
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "File Close error"

    .line 15
    .line 16
    const-string v3, "SemDisplaySolutionManagerService"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 22
    .line 23
    new-instance v6, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :catch_0
    move-exception p0

    .line 36
    move-object v1, v4

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    move-object v5, v4

    .line 39
    :goto_1
    if-eqz v5, :cond_4

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 42
    .line 43
    .line 44
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    if-lez p0, :cond_2

    .line 46
    .line 47
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 48
    .line 49
    add-int/lit8 v7, p0, -0x1

    .line 50
    .line 51
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-direct {v6, v1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 54
    .line 55
    .line 56
    move-object v4, v6

    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    move-object v4, v5

    .line 60
    goto :goto_5

    .line 61
    :catch_1
    move-exception v1

    .line 62
    move v2, p0

    .line 63
    move-object p0, v1

    .line 64
    :goto_2
    move-object v1, v4

    .line 65
    move-object v4, v5

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_7

    .line 71
    :catch_2
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :goto_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "Exception : "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, " , in : "

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, " , value : "

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " , length : "

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .line 119
    .line 120
    if-eqz v4, :cond_6

    .line 121
    .line 122
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    .line 124
    .line 125
    goto :goto_9

    .line 126
    :catch_3
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_9

    .line 130
    :goto_5
    if-eqz v4, :cond_3

    .line 131
    .line 132
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catch_4
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_6
    throw p0

    .line 140
    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 141
    .line 142
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 143
    .line 144
    .line 145
    goto :goto_8

    .line 146
    :catch_5
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_8
    move-object v1, v4

    .line 150
    :cond_6
    :goto_9
    return-object v1
.end method

.method public static sysfsWrite(ILjava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    move-object p1, v2

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_2
    move-exception p0

    .line 41
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_3
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_1
    return v1
.end method


# virtual methods
.method public final controlScaleFactorValue(FLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 7
    .line 8
    const-string p1, "application"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "NumberFormatException : "

    .line 15
    .line 16
    const-string v1, "burn_in_brightness_compensation() sub raw : "

    .line 17
    .line 18
    const-string v2, "burn_in_brightness_compensation() raw : "

    .line 19
    .line 20
    new-instance v3, Ljava/io/File;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "SemDisplaySolutionManagerService"

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/io/File;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_7

    .line 47
    .line 48
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p2

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_1
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-object v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, " "

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    array-length v3, v1

    .line 118
    const/4 v5, 0x2

    .line 119
    if-ne v3, v5, :cond_5

    .line 120
    .line 121
    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    if-ne v3, v5, :cond_3

    .line 125
    .line 126
    aget-object v1, v1, v6

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const v3, 0x3c23d70a    # 0.01f

    .line 137
    .line 138
    .line 139
    mul-float/2addr v1, v3

    .line 140
    add-float/2addr v1, v2

    .line 141
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_1
    move-exception v1

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    const/4 v5, 0x3

    .line 147
    if-lt v3, v5, :cond_4

    .line 148
    .line 149
    const/4 v5, 0x7

    .line 150
    if-gt v3, v5, :cond_4

    .line 151
    .line 152
    aget-object v1, v1, v6

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const v3, 0x3ba3d70a    # 0.005f

    .line 163
    .line 164
    .line 165
    mul-float/2addr v1, v3

    .line 166
    add-float/2addr v1, v2

    .line 167
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    const/16 v5, 0x8

    .line 171
    .line 172
    if-lt v3, v5, :cond_7

    .line 173
    .line 174
    aget-object v1, v1, v6

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    const v3, 0x3be56042    # 0.007f

    .line 185
    .line 186
    .line 187
    mul-float/2addr v1, v3

    .line 188
    add-float/2addr v1, v2

    .line 189
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_5
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_8

    .line 224
    .line 225
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 226
    .line 227
    if-eqz p1, :cond_8

    .line 228
    .line 229
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 230
    .line 231
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 232
    .line 233
    mul-float/2addr p1, p2

    .line 234
    const/4 p2, 0x0

    .line 235
    cmpg-float p1, p1, p2

    .line 236
    .line 237
    if-ltz p1, :cond_8

    .line 238
    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string/jumbo p2, "where : "

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p2, " what : "

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string p2, " setScreenBrightnessScaleFactor("

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p2, ") , mBrightnessCompensation : "

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string p2, " , PMS value : "

    .line 283
    .line 284
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 288
    .line 289
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 290
    .line 291
    mul-float/2addr p2, v1

    .line 292
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 303
    .line 304
    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 305
    .line 306
    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 307
    .line 308
    mul-float/2addr p2, p0

    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    return-void
.end method

.method public final getAlphaMaskLevel(FFF)F
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getAlphaMaskLevel() CurrentPlatformBrightnessValue : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " , FingerPrintPlatformValue : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " , br_ctrl : "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " , gamma : "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aget v3, v3, v4

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "SemDisplaySolutionManagerService"

    .line 45
    .line 46
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    cmpl-float v5, p1, v0

    .line 51
    .line 52
    const/high16 v6, -0x40800000    # -1.0f

    .line 53
    .line 54
    if-ltz v5, :cond_0

    .line 55
    .line 56
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 57
    .line 58
    float-to-int p1, p1

    .line 59
    aget-object p1, v5, p1

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move p1, v6

    .line 67
    :goto_0
    cmpl-float v0, p2, v0

    .line 68
    .line 69
    if-ltz v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 72
    .line 73
    float-to-int p2, p2

    .line 74
    aget-object p2, v0, p2

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    .line 81
    .line 82
    aget p0, p0, v4

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "calculateAlphaBlendingValue() currentNits : "

    .line 87
    .line 88
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " , targetNits : "

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    mul-float/2addr p1, p3

    .line 122
    div-float/2addr p1, v6

    .line 123
    float-to-double p1, p1

    .line 124
    const/high16 p3, 0x3f800000    # 1.0f

    .line 125
    .line 126
    div-float/2addr p3, p0

    .line 127
    float-to-double v0, p3

    .line 128
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide p0

    .line 132
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 133
    .line 134
    sub-double/2addr p2, p0

    .line 135
    double-to-float p0, p2

    .line 136
    return p0
.end method

.method public final getAutoCurrentLimitOffModeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getBlfAdaptiveCurrentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getCameraModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getDouAppModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getFingerPrintBacklightValue(I)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    add-int/lit8 v2, v2, -0x1

    .line 6
    .line 7
    if-gt v0, v2, :cond_1

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt p1, v1, :cond_0

    .line 16
    .line 17
    const-string v1, "getFingerPrintBacklightValue() brightnessNits : "

    .line 18
    .line 19
    const-string v2, " , FingerPrintBacklightValue : "

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 26
    .line 27
    aget-object v1, v1, v0

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " , mBrightnessNitsValueStringArray_Size : "

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    const-string v2, "SemDisplaySolutionManagerService"

    .line 45
    .line 46
    invoke-static {p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object p0, p0, v0

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    .line 62
    .line 63
    return p0
.end method

.method public final getGalleryModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getOnPixelRatioValueForPMS()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoEnhancerSettingState(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getVideoModeEnable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getting_auto_brightness_mode_enabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "screen_brightness_mode"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_0
    return v1
.end method

.method public final getting_platform_brightness_value()F
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x2

    .line 8
    const-string/jumbo v1, "screen_brightness"

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-float p0, p0

    .line 17
    return p0
.end method

.method public final isBlueLightFilterScheduledTime()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "mBlueLightFilterAdaptiveModeEnabled: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " , mBlueLightFilterScheduledTime: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "EyeComfortSolutionService"

    .line 36
    .line 37
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    :cond_0
    monitor-exit v0

    .line 50
    return v1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    monitor-exit v0

    .line 54
    return v1

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final isMdnieScenarioControlServiceEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onAutoCurrentLimitOffMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onAutoCurrentLimitStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onAutoCurrentLimitStateChangedInt(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-lt v2, v3, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v2, :cond_0

    .line 21
    .line 22
    const/4 v2, -0x2

    .line 23
    const-string/jumbo v3, "screen_brightness_mode"

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x2

    .line 34
    .line 35
    :cond_0
    const-string/jumbo v1, "setAutoCurrentLimitStateInt("

    .line 36
    .line 37
    .line 38
    const-string v2, ") , mADSEnableCondition : "

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "AdaptiveDisplaySolutionService"

    .line 54
    .line 55
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onBurnInPreventionDisabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onDetailVeiwStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final setAutoCurrentLimitOffModeEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setBlfEnableTimeBySchedule(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlfEnableTimeBySchedule(ZI)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final setCameraModeEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setDouAppModeEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setEadIndexOffset(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "setEadIndexOffset("

    .line 12
    .line 13
    .line 14
    const-string v2, ")"

    .line 15
    .line 16
    const-string v3, "EyeComfortSolutionService"

    .line 17
    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-ltz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 37
    .line 38
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    .line 39
    .line 40
    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setEyeComfortWeightingFactor(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 9
    .line 10
    :cond_0
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setGalleryModeEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setHighDynamicRangeMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "isHighDynamicRangeModeState : "

    .line 13
    .line 14
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "MdnieScenarioControlService"

    .line 27
    .line 28
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final setIRCompensationMode(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setIRCompensationMode("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setIRCompensationMode("

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "setIRCompensationMode("

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v4, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    const-string p0, "SemDisplaySolutionManagerService"

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ") IRC Mode : moderato_mode"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v4, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    const-string v0, "SemDisplaySolutionManagerService"

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ") IRC Mode : moderato_mode , vivid mode :"

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 71
    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    const-string v1, "SemDisplaySolutionManagerService"

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ") IRC Mode : flat_gamma_mode , vivid mode :"

    .line 100
    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 105
    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :goto_0
    monitor-exit v3

    .line 117
    return-void

    .line 118
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method

.method public final setMdnieScenarioControlServiceEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "Normal Mode setMultipleScreenBrightness , application, DEFAULT, "

    .line 6
    .line 7
    const-string/jumbo v4, "setMultipleScreenBrightness , application, OverHeatScaleDown, "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v5, "setMultipleScreenBrightness , application, DouScaleDown, "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v6, "setMultipleScreenBrightness , application, DouScaleDown, "

    .line 14
    .line 15
    .line 16
    const-string/jumbo v7, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    .line 17
    .line 18
    .line 19
    const-string/jumbo v8, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v9, "setMultipleScreenBrightness , application, CameraAppScaleUp, "

    .line 23
    .line 24
    .line 25
    const-string/jumbo v10, "setMultipleScreenBrightness , application, CameraAppScaleUp, "

    .line 26
    .line 27
    .line 28
    const-string/jumbo v11, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    .line 29
    .line 30
    .line 31
    const-string/jumbo v12, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    .line 32
    .line 33
    .line 34
    const-string/jumbo v13, "setMultipleScreenBrightness , application, HDREffect_2, "

    .line 35
    .line 36
    .line 37
    const-string/jumbo v14, "setMultipleScreenBrightness , application, HDREffect_2, "

    .line 38
    .line 39
    .line 40
    const-string/jumbo v15, "setMultipleScreenBrightness , application, HDREffect_2, "

    .line 41
    .line 42
    .line 43
    move-object/from16 v16, v3

    .line 44
    .line 45
    const-string/jumbo v3, "setMultipleScreenBrightness , application, HDREffect_2, "

    .line 46
    .line 47
    .line 48
    move-object/from16 v17, v4

    .line 49
    .line 50
    const-string/jumbo v4, "setMultipleScreenBrightness , application, HDREffect_2, "

    .line 51
    .line 52
    .line 53
    move-object/from16 v18, v5

    .line 54
    .line 55
    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_1, "

    .line 56
    .line 57
    .line 58
    move-object/from16 v19, v6

    .line 59
    .line 60
    const-string/jumbo v6, "setMultipleScreenBrightness , application, ExtraBrightness, "

    .line 61
    .line 62
    .line 63
    move-object/from16 v20, v7

    .line 64
    .line 65
    const-string/jumbo v7, "setMultipleScreenBrightness , application, RealHDR, "

    .line 66
    .line 67
    .line 68
    move-object/from16 v21, v8

    .line 69
    .line 70
    const-string/jumbo v8, "setMultipleScreenBrightness , application, ColorBlind, "

    .line 71
    .line 72
    .line 73
    move-object/from16 v22, v9

    .line 74
    .line 75
    const-string/jumbo v9, "uid : "

    .line 76
    .line 77
    .line 78
    move-object/from16 v23, v10

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    move-object/from16 v24, v11

    .line 85
    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    move-object/from16 v25, v12

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_auto_brightness_mode_enabled()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    move-object/from16 v26, v13

    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_platform_brightness_value()F

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    move-object/from16 v27, v14

    .line 103
    .line 104
    iget-object v14, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v14

    .line 107
    move-object/from16 v28, v15

    .line 108
    .line 109
    :try_start_0
    const-string v15, "SemDisplaySolutionManagerService"

    .line 110
    .line 111
    move-object/from16 v29, v3

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v9, " , pid : "

    .line 122
    .line 123
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v9, " , name : "

    .line 130
    .line 131
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    const/16 v3, 0x3e8

    .line 145
    .line 146
    if-ne v10, v3, :cond_2a

    .line 147
    .line 148
    iput-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v2, :cond_2a

    .line 151
    .line 152
    const-string v3, "color_blind_on"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    const/4 v3, 0x1

    .line 159
    const/4 v9, 0x0

    .line 160
    if-nez v2, :cond_f

    .line 161
    .line 162
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 163
    .line 164
    const-string v10, "color_blind_off"

    .line 165
    .line 166
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_0

    .line 171
    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 175
    .line 176
    const-string/jumbo v10, "real_hdr_on"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_d

    .line 184
    .line 185
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 186
    .line 187
    const-string/jumbo v10, "real_hdr_off"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_1

    .line 195
    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 199
    .line 200
    const-string v10, "extra_brightness_on"

    .line 201
    .line 202
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_b

    .line 207
    .line 208
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 209
    .line 210
    const-string v10, "extra_brightness_off"

    .line 211
    .line 212
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_2

    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 221
    .line 222
    const-string v10, "brightness_scale_on_1"

    .line 223
    .line 224
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_9

    .line 229
    .line 230
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 231
    .line 232
    const-string v10, "brightness_scale_on_2"

    .line 233
    .line 234
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_9

    .line 239
    .line 240
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 241
    .line 242
    const-string v10, "brightness_scale_on_3"

    .line 243
    .line 244
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_9

    .line 249
    .line 250
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 251
    .line 252
    const-string v10, "brightness_scale_on_4"

    .line 253
    .line 254
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-nez v2, :cond_9

    .line 259
    .line 260
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 261
    .line 262
    const-string v10, "brightness_scale_on_5"

    .line 263
    .line 264
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_9

    .line 269
    .line 270
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 271
    .line 272
    const-string v10, "brightness_scale_on_6"

    .line 273
    .line 274
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-nez v2, :cond_9

    .line 279
    .line 280
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 281
    .line 282
    const-string v10, "brightness_scale_on_7"

    .line 283
    .line 284
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_9

    .line 289
    .line 290
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 291
    .line 292
    const-string v10, "brightness_scale_off"

    .line 293
    .line 294
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_3

    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_3
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 303
    .line 304
    const-string v10, "browser_brightness_on"

    .line 305
    .line 306
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_7

    .line 311
    .line 312
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 313
    .line 314
    const-string v10, "browser_brightness_off"

    .line 315
    .line 316
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_4

    .line 321
    .line 322
    goto :goto_1

    .line 323
    :cond_4
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 324
    .line 325
    const-string v10, "burnin_prevention_on"

    .line 326
    .line 327
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-nez v2, :cond_5

    .line 332
    .line 333
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 334
    .line 335
    const-string v10, "burnin_prevention_off"

    .line 336
    .line 337
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_11

    .line 342
    .line 343
    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    .line 345
    move-object v1, v0

    .line 346
    goto/16 :goto_a

    .line 347
    .line 348
    :cond_5
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 349
    .line 350
    const-string v10, "burnin_prevention_on"

    .line 351
    .line 352
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_6

    .line 357
    .line 358
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 359
    .line 360
    iput-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    .line 361
    .line 362
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 363
    .line 364
    goto/16 :goto_6

    .line 365
    .line 366
    :cond_6
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 367
    .line 368
    const-string v10, "burnin_prevention_off"

    .line 369
    .line 370
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_11

    .line 375
    .line 376
    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 377
    .line 378
    goto/16 :goto_6

    .line 379
    .line 380
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 381
    .line 382
    const-string v10, "browser_brightness_on"

    .line 383
    .line 384
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_8

    .line 389
    .line 390
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 391
    .line 392
    iput-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    .line 393
    .line 394
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 395
    .line 396
    goto/16 :goto_6

    .line 397
    .line 398
    :cond_8
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 399
    .line 400
    const-string v10, "browser_brightness_off"

    .line 401
    .line 402
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_11

    .line 407
    .line 408
    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_9
    :goto_2
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 412
    .line 413
    const-string v10, "brightness_scale_off"

    .line 414
    .line 415
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_a

    .line 420
    .line 421
    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_a
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 425
    .line 426
    iput-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 427
    .line 428
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_b
    :goto_3
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 432
    .line 433
    const-string v10, "extra_brightness_on"

    .line 434
    .line 435
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_c

    .line 440
    .line 441
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_c
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 445
    .line 446
    const-string v10, "extra_brightness_off"

    .line 447
    .line 448
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_11

    .line 453
    .line 454
    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_d
    :goto_4
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 458
    .line 459
    const-string/jumbo v10, "real_hdr_on"

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-eqz v2, :cond_e

    .line 467
    .line 468
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_e
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 472
    .line 473
    const-string/jumbo v10, "real_hdr_off"

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_11

    .line 481
    .line 482
    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 483
    .line 484
    goto :goto_6

    .line 485
    :cond_f
    :goto_5
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 486
    .line 487
    const-string v10, "color_blind_on"

    .line 488
    .line 489
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_10

    .line 494
    .line 495
    iput-boolean v3, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_10
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 499
    .line 500
    const-string v10, "color_blind_off"

    .line 501
    .line 502
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-eqz v2, :cond_11

    .line 507
    .line 508
    iput-boolean v9, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 509
    .line 510
    :cond_11
    :goto_6
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 511
    .line 512
    if-eqz v2, :cond_12

    .line 513
    .line 514
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 515
    .line 516
    aget v2, v2, v9

    .line 517
    .line 518
    const-string v3, "ColorBlind"

    .line 519
    .line 520
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string v2, "SemDisplaySolutionManagerService"

    .line 524
    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 531
    .line 532
    aget v1, v1, v9

    .line 533
    .line 534
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    goto/16 :goto_9

    .line 545
    .line 546
    :cond_12
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 547
    .line 548
    if-eqz v2, :cond_13

    .line 549
    .line 550
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 551
    .line 552
    const-string v3, "RealHDR"

    .line 553
    .line 554
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 555
    .line 556
    .line 557
    const-string v2, "SemDisplaySolutionManagerService"

    .line 558
    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 565
    .line 566
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    goto/16 :goto_9

    .line 577
    .line 578
    :cond_13
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 579
    .line 580
    if-eqz v2, :cond_14

    .line 581
    .line 582
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 583
    .line 584
    aget v2, v2, v9

    .line 585
    .line 586
    const-string v3, "ExtraBrightness"

    .line 587
    .line 588
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 589
    .line 590
    .line 591
    const-string v2, "SemDisplaySolutionManagerService"

    .line 592
    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    .line 599
    .line 600
    aget v1, v1, v9

    .line 601
    .line 602
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    goto/16 :goto_9

    .line 613
    .line 614
    :cond_14
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 615
    .line 616
    const/16 v6, 0xff

    .line 617
    .line 618
    if-eqz v2, :cond_18

    .line 619
    .line 620
    :cond_15
    :goto_7
    const/16 v2, 0x14

    .line 621
    .line 622
    if-ge v9, v2, :cond_2a

    .line 623
    .line 624
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    .line 625
    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string v4, "browser_brightness_on_"

    .line 632
    .line 633
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    add-int/lit8 v9, v9, 0x1

    .line 637
    .line 638
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-eqz v2, :cond_15

    .line 650
    .line 651
    const-string v2, "SemDisplaySolutionManagerService"

    .line 652
    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    const-string/jumbo v4, "mLastScaleFactorValue : "

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    iget v4, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 665
    .line 666
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const-string v4, " , (Float)((100 - (i+1)) * 0.01f) "

    .line 670
    .line 671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    rsub-int/lit8 v4, v9, 0x64

    .line 675
    .line 676
    int-to-float v4, v4

    .line 677
    const v5, 0x3c23d70a    # 0.01f

    .line 678
    .line 679
    .line 680
    mul-float/2addr v4, v5

    .line 681
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 682
    .line 683
    .line 684
    move-result-object v7

    .line 685
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const-string v7, " , Float.compare(mLastScaleFactorValue, (Float)((100 - (i+1)) * 0.01f)) : "

    .line 689
    .line 690
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    iget v7, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 694
    .line 695
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    .line 696
    .line 697
    .line 698
    move-result v7

    .line 699
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 710
    .line 711
    if-ne v2, v6, :cond_17

    .line 712
    .line 713
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 714
    .line 715
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    if-lez v2, :cond_16

    .line 720
    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    .line 722
    .line 723
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .line 725
    .line 726
    const-string v3, "BrowserAppBrightnessControl_"

    .line 727
    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 739
    .line 740
    .line 741
    :cond_16
    const-string v2, "SemDisplaySolutionManagerService"

    .line 742
    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .line 747
    .line 748
    const-string/jumbo v5, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    .line 749
    .line 750
    .line 751
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v5, ", "

    .line 758
    .line 759
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    goto/16 :goto_7

    .line 777
    .line 778
    :cond_17
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 779
    .line 780
    int-to-float v3, v9

    .line 781
    mul-float/2addr v3, v5

    .line 782
    sub-float/2addr v2, v3

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    .line 788
    const-string v5, "BrowserAppBrightnessControl_"

    .line 789
    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 801
    .line 802
    .line 803
    const-string v2, "SemDisplaySolutionManagerService"

    .line 804
    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    const-string/jumbo v5, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    .line 811
    .line 812
    .line 813
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    iget v5, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 817
    .line 818
    sub-float/2addr v5, v3

    .line 819
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .line 828
    .line 829
    goto/16 :goto_7

    .line 830
    .line 831
    :cond_18
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 832
    .line 833
    if-eqz v2, :cond_27

    .line 834
    .line 835
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 836
    .line 837
    const-string v7, "brightness_scale_on_1"

    .line 838
    .line 839
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-eqz v2, :cond_19

    .line 844
    .line 845
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 846
    .line 847
    aget v2, v2, v9

    .line 848
    .line 849
    const-string v3, "HDREffect_1"

    .line 850
    .line 851
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 852
    .line 853
    .line 854
    const-string v2, "SemDisplaySolutionManagerService"

    .line 855
    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 862
    .line 863
    aget v1, v1, v9

    .line 864
    .line 865
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    const-string v1, " auto_brightness_enabled : "

    .line 869
    .line 870
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v1, " platform_brightness_value : "

    .line 877
    .line 878
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    goto/16 :goto_9

    .line 892
    .line 893
    :cond_19
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 894
    .line 895
    const-string v5, "brightness_scale_on_2"

    .line 896
    .line 897
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    const/high16 v5, 0x437f0000    # 255.0f

    .line 902
    .line 903
    if-eqz v2, :cond_1e

    .line 904
    .line 905
    if-eqz v12, :cond_1a

    .line 906
    .line 907
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 908
    .line 909
    aget v2, v2, v9

    .line 910
    .line 911
    const-string v3, "HDREffect_2"

    .line 912
    .line 913
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 914
    .line 915
    .line 916
    const-string v2, "SemDisplaySolutionManagerService"

    .line 917
    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 924
    .line 925
    aget v1, v1, v9

    .line 926
    .line 927
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    const-string v1, " auto_brightness_enabled : "

    .line 931
    .line 932
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    const-string v1, " platform_brightness_value : "

    .line 939
    .line 940
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .line 952
    .line 953
    goto/16 :goto_9

    .line 954
    .line 955
    :cond_1a
    if-nez v12, :cond_2a

    .line 956
    .line 957
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 958
    .line 959
    if-eq v2, v6, :cond_1c

    .line 960
    .line 961
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 962
    .line 963
    const/4 v4, 0x2

    .line 964
    if-lt v2, v4, :cond_1c

    .line 965
    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getDouAppModeEnable()Z

    .line 967
    .line 968
    .line 969
    move-result v2

    .line 970
    if-eqz v2, :cond_1c

    .line 971
    .line 972
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 973
    .line 974
    aget v3, v2, v3

    .line 975
    .line 976
    iget v4, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 977
    .line 978
    int-to-float v6, v4

    .line 979
    div-float/2addr v6, v5

    .line 980
    mul-float/2addr v6, v3

    .line 981
    cmpg-float v3, v13, v6

    .line 982
    .line 983
    if-gez v3, :cond_1b

    .line 984
    .line 985
    aget v2, v2, v9

    .line 986
    .line 987
    const-string v3, "HDREffect_2"

    .line 988
    .line 989
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 990
    .line 991
    .line 992
    const-string v2, "SemDisplaySolutionManagerService"

    .line 993
    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    .line 995
    .line 996
    move-object/from16 v4, v29

    .line 997
    .line 998
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 1002
    .line 1003
    aget v1, v1, v9

    .line 1004
    .line 1005
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    const-string v1, " auto_brightness_enabled : "

    .line 1009
    .line 1010
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    const-string v1, " platform_brightness_value : "

    .line 1017
    .line 1018
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_9

    .line 1032
    .line 1033
    :cond_1b
    int-to-float v2, v4

    .line 1034
    div-float/2addr v2, v13

    .line 1035
    const-string v3, "HDREffect_2"

    .line 1036
    .line 1037
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1041
    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    move-object/from16 v4, v28

    .line 1045
    .line 1046
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    iget v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1050
    .line 1051
    int-to-float v1, v1

    .line 1052
    div-float/2addr v1, v13

    .line 1053
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v1

    .line 1057
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    const-string v1, " auto_brightness_enabled : "

    .line 1061
    .line 1062
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    const-string v1, " platform_brightness_value : "

    .line 1069
    .line 1070
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    .line 1082
    .line 1083
    goto/16 :goto_9

    .line 1084
    .line 1085
    :cond_1c
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 1086
    .line 1087
    aget v3, v2, v3

    .line 1088
    .line 1089
    cmpg-float v3, v13, v3

    .line 1090
    .line 1091
    if-gez v3, :cond_1d

    .line 1092
    .line 1093
    aget v2, v2, v9

    .line 1094
    .line 1095
    const-string v3, "HDREffect_2"

    .line 1096
    .line 1097
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1101
    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    move-object/from16 v4, v27

    .line 1105
    .line 1106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    .line 1110
    .line 1111
    aget v1, v1, v9

    .line 1112
    .line 1113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    const-string v1, " auto_brightness_enabled : "

    .line 1117
    .line 1118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    const-string v1, " platform_brightness_value : "

    .line 1125
    .line 1126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_9

    .line 1140
    .line 1141
    :cond_1d
    div-float/2addr v5, v13

    .line 1142
    const-string v2, "HDREffect_2"

    .line 1143
    .line 1144
    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    const-string v1, "SemDisplaySolutionManagerService"

    .line 1148
    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    move-object/from16 v3, v26

    .line 1152
    .line 1153
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    const-string v3, " auto_brightness_enabled : "

    .line 1160
    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    const-string v3, " platform_brightness_value : "

    .line 1168
    .line 1169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v2

    .line 1179
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    .line 1181
    .line 1182
    goto/16 :goto_9

    .line 1183
    .line 1184
    :cond_1e
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1185
    .line 1186
    const-string v3, "brightness_scale_on_3"

    .line 1187
    .line 1188
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    if-eqz v2, :cond_20

    .line 1193
    .line 1194
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 1195
    .line 1196
    if-eqz v2, :cond_1f

    .line 1197
    .line 1198
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 1199
    .line 1200
    aget v2, v2, v9

    .line 1201
    .line 1202
    const-string v3, "GalleryAppScaleUp"

    .line 1203
    .line 1204
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1208
    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    move-object/from16 v4, v25

    .line 1212
    .line 1213
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    .line 1217
    .line 1218
    aget v1, v1, v9

    .line 1219
    .line 1220
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .line 1229
    .line 1230
    goto/16 :goto_9

    .line 1231
    .line 1232
    :cond_1f
    if-nez v2, :cond_2a

    .line 1233
    .line 1234
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1235
    .line 1236
    aget v2, v2, v9

    .line 1237
    .line 1238
    const-string v3, "GalleryAppScaleUp"

    .line 1239
    .line 1240
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1244
    .line 1245
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    move-object/from16 v4, v24

    .line 1248
    .line 1249
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1253
    .line 1254
    aget v1, v1, v9

    .line 1255
    .line 1256
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v1

    .line 1263
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .line 1265
    .line 1266
    goto/16 :goto_9

    .line 1267
    .line 1268
    :cond_20
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1269
    .line 1270
    const-string v3, "brightness_scale_on_4"

    .line 1271
    .line 1272
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v2

    .line 1276
    if-eqz v2, :cond_22

    .line 1277
    .line 1278
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 1279
    .line 1280
    if-eqz v2, :cond_21

    .line 1281
    .line 1282
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 1283
    .line 1284
    aget v2, v2, v9

    .line 1285
    .line 1286
    const-string v3, "CameraAppScaleUp"

    .line 1287
    .line 1288
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1292
    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    move-object/from16 v4, v23

    .line 1296
    .line 1297
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    .line 1301
    .line 1302
    aget v1, v1, v9

    .line 1303
    .line 1304
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v1

    .line 1311
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    .line 1313
    .line 1314
    goto/16 :goto_9

    .line 1315
    .line 1316
    :cond_21
    if-nez v2, :cond_2a

    .line 1317
    .line 1318
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1319
    .line 1320
    aget v2, v2, v9

    .line 1321
    .line 1322
    const-string v3, "CameraAppScaleUp"

    .line 1323
    .line 1324
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1328
    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    move-object/from16 v4, v22

    .line 1332
    .line 1333
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1337
    .line 1338
    aget v1, v1, v9

    .line 1339
    .line 1340
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v1

    .line 1347
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    goto/16 :goto_9

    .line 1351
    .line 1352
    :cond_22
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1353
    .line 1354
    const-string v3, "brightness_scale_on_5"

    .line 1355
    .line 1356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v2

    .line 1360
    if-eqz v2, :cond_24

    .line 1361
    .line 1362
    if-eqz v12, :cond_23

    .line 1363
    .line 1364
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 1365
    .line 1366
    aget v2, v2, v9

    .line 1367
    .line 1368
    const-string v3, "SamsungVideoAppScaleUp"

    .line 1369
    .line 1370
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1374
    .line 1375
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    move-object/from16 v4, v21

    .line 1378
    .line 1379
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    .line 1383
    .line 1384
    aget v1, v1, v9

    .line 1385
    .line 1386
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    const-string v1, " auto_brightness_enabled : "

    .line 1390
    .line 1391
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v1

    .line 1401
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .line 1403
    .line 1404
    goto/16 :goto_9

    .line 1405
    .line 1406
    :cond_23
    if-nez v12, :cond_2a

    .line 1407
    .line 1408
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1409
    .line 1410
    aget v2, v2, v9

    .line 1411
    .line 1412
    const-string v3, "SamsungVideoAppScaleUp"

    .line 1413
    .line 1414
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1418
    .line 1419
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    move-object/from16 v4, v20

    .line 1422
    .line 1423
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1427
    .line 1428
    aget v1, v1, v9

    .line 1429
    .line 1430
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    .line 1433
    const-string v1, " auto_brightness_enabled : "

    .line 1434
    .line 1435
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v1

    .line 1445
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    .line 1447
    .line 1448
    goto/16 :goto_9

    .line 1449
    .line 1450
    :cond_24
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1451
    .line 1452
    const-string v3, "brightness_scale_on_6"

    .line 1453
    .line 1454
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v2

    .line 1458
    if-eqz v2, :cond_26

    .line 1459
    .line 1460
    if-nez v12, :cond_2a

    .line 1461
    .line 1462
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 1463
    .line 1464
    int-to-float v3, v2

    .line 1465
    cmpl-float v4, v13, v3

    .line 1466
    .line 1467
    if-ltz v4, :cond_25

    .line 1468
    .line 1469
    sub-float v3, v13, v3

    .line 1470
    .line 1471
    int-to-float v2, v2

    .line 1472
    sub-float v2, v5, v2

    .line 1473
    .line 1474
    div-float/2addr v3, v2

    .line 1475
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1476
    .line 1477
    int-to-float v2, v2

    .line 1478
    div-float/2addr v2, v5

    .line 1479
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1480
    .line 1481
    sub-float v2, v4, v2

    .line 1482
    .line 1483
    mul-float/2addr v2, v3

    .line 1484
    sub-float v2, v4, v2

    .line 1485
    .line 1486
    const-string v3, "DouScaleDown"

    .line 1487
    .line 1488
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 1492
    .line 1493
    int-to-float v3, v2

    .line 1494
    sub-float v3, v13, v3

    .line 1495
    .line 1496
    int-to-float v2, v2

    .line 1497
    sub-float v2, v5, v2

    .line 1498
    .line 1499
    div-float/2addr v3, v2

    .line 1500
    iget v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1501
    .line 1502
    int-to-float v2, v2

    .line 1503
    div-float/2addr v2, v5

    .line 1504
    sub-float v2, v4, v2

    .line 1505
    .line 1506
    mul-float/2addr v2, v3

    .line 1507
    sub-float v2, v4, v2

    .line 1508
    .line 1509
    iput v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 1510
    .line 1511
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1512
    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    move-object/from16 v6, v19

    .line 1516
    .line 1517
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    iget v6, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 1521
    .line 1522
    int-to-float v7, v6

    .line 1523
    sub-float v7, v13, v7

    .line 1524
    .line 1525
    int-to-float v6, v6

    .line 1526
    sub-float v6, v5, v6

    .line 1527
    .line 1528
    div-float/2addr v7, v6

    .line 1529
    iget v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 1530
    .line 1531
    int-to-float v1, v1

    .line 1532
    div-float/2addr v1, v5

    .line 1533
    sub-float v1, v4, v1

    .line 1534
    .line 1535
    mul-float/2addr v1, v7

    .line 1536
    sub-float/2addr v4, v1

    .line 1537
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1538
    .line 1539
    .line 1540
    const-string v1, " ,platform_brightness_value : "

    .line 1541
    .line 1542
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    const-string v1, " ,auto_brightness_enabled : "

    .line 1549
    .line 1550
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v1

    .line 1560
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    .line 1562
    .line 1563
    goto/16 :goto_9

    .line 1564
    .line 1565
    :cond_25
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1566
    .line 1567
    aget v2, v2, v9

    .line 1568
    .line 1569
    const-string v3, "DouScaleDown"

    .line 1570
    .line 1571
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1575
    .line 1576
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    move-object/from16 v4, v18

    .line 1579
    .line 1580
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1581
    .line 1582
    .line 1583
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1584
    .line 1585
    aget v1, v1, v9

    .line 1586
    .line 1587
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    .line 1596
    .line 1597
    goto/16 :goto_9

    .line 1598
    .line 1599
    :cond_26
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 1600
    .line 1601
    const-string v3, "brightness_scale_on_7"

    .line 1602
    .line 1603
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v2

    .line 1607
    if-eqz v2, :cond_2a

    .line 1608
    .line 1609
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 1610
    .line 1611
    aget v2, v2, v9

    .line 1612
    .line 1613
    const-string v3, "OverHeatScaleDown"

    .line 1614
    .line 1615
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1616
    .line 1617
    .line 1618
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1619
    .line 1620
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    move-object/from16 v4, v17

    .line 1623
    .line 1624
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1625
    .line 1626
    .line 1627
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    .line 1628
    .line 1629
    aget v1, v1, v9

    .line 1630
    .line 1631
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1

    .line 1638
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    .line 1640
    .line 1641
    goto/16 :goto_9

    .line 1642
    .line 1643
    :cond_27
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 1644
    .line 1645
    if-eqz v2, :cond_29

    .line 1646
    .line 1647
    :goto_8
    const/16 v2, 0xa

    .line 1648
    .line 1649
    if-ge v9, v2, :cond_2a

    .line 1650
    .line 1651
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    .line 1652
    .line 1653
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1656
    .line 1657
    .line 1658
    const-string v4, "burnin_prevention_on_"

    .line 1659
    .line 1660
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    add-int/lit8 v4, v9, 0x1

    .line 1664
    .line 1665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v3

    .line 1672
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1673
    .line 1674
    .line 1675
    move-result v2

    .line 1676
    if-eqz v2, :cond_28

    .line 1677
    .line 1678
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 1679
    .line 1680
    aget v2, v2, v9

    .line 1681
    .line 1682
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1683
    .line 1684
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    .line 1686
    .line 1687
    const-string v5, "BurnInPrevention_"

    .line 1688
    .line 1689
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v3

    .line 1699
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 1703
    .line 1704
    aget v2, v2, v9

    .line 1705
    .line 1706
    iput v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 1707
    .line 1708
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1709
    .line 1710
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1711
    .line 1712
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1713
    .line 1714
    .line 1715
    const-string/jumbo v5, "setMultipleScreenBrightness , application, BurnInPrevention_"

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    .line 1724
    const-string v5, ", "

    .line 1725
    .line 1726
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    .line 1728
    .line 1729
    iget-object v5, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    .line 1730
    .line 1731
    aget v5, v5, v9

    .line 1732
    .line 1733
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v3

    .line 1740
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    .line 1742
    .line 1743
    :cond_28
    move v9, v4

    .line 1744
    goto :goto_8

    .line 1745
    :cond_29
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1746
    .line 1747
    aget v2, v2, v9

    .line 1748
    .line 1749
    const-string v3, "DEFAULT"

    .line 1750
    .line 1751
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    .line 1752
    .line 1753
    .line 1754
    iget-object v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1755
    .line 1756
    aget v2, v2, v9

    .line 1757
    .line 1758
    iput v2, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 1759
    .line 1760
    const-string v2, "SemDisplaySolutionManagerService"

    .line 1761
    .line 1762
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1763
    .line 1764
    move-object/from16 v4, v16

    .line 1765
    .line 1766
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    iget-object v1, v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    .line 1770
    .line 1771
    aget v1, v1, v9

    .line 1772
    .line 1773
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v1

    .line 1780
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    .line 1782
    .line 1783
    :cond_2a
    :goto_9
    monitor-exit v14

    .line 1784
    return-void

    .line 1785
    :goto_a
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1786
    throw v1
.end method

.method public final setMultipleScreenBrightnessValueForHDR(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setScreenBrightnessForPreview(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public final setSleepPatternBLF(Ljava/lang/String;JJF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    move-wide v3, p2

    .line 10
    move-wide v5, p4

    .line 11
    move v7, p6

    .line 12
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateRubinSleepPattern(Ljava/lang/String;JJF)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateVideoEnhancerSettingState(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final setVideoModeEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setmDNIeModeState(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setmDNIeModeState(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_3

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setmDNIeModeState(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_1
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    throw p0

    .line 32
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method

.method public final setting_is_changed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "high_brightness_mode_pms_enter"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v1, v4, :cond_0

    .line 17
    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 22
    .line 23
    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    .line 32
    move v1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 36
    .line 37
    const-string/jumbo v1, "screen_extra_brightness"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    move v1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 50
    .line 51
    const-string/jumbo v1, "screen_brightness_mode"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, v4, :cond_3

    .line 59
    .line 60
    move v2, v4

    .line 61
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v1, "mHighBrightnessModeEnabled : "

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " , mAdaptiveScreenModeEnabled : "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " , mExtraBrightnessModeEnabled : "

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " , mAutoBrightnessModeEnabled : "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 102
    .line 103
    const-string v1, "SemDisplaySolutionManagerService"

    .line 104
    .line 105
    invoke-static {v1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final updateAutoBrightnessLux(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVisionBoosterMode(II)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
