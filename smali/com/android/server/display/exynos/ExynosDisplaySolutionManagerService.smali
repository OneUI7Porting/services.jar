.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;
.super Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final DEBUG:Z

.field public mAtcAlreadyEnable:Z

.field public mAtcEnableSetting:Z

.field public mBootCompleted:Z

.field public mColorModeName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

.field public final mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

.field public final mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

.field public final mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public final mLock:Ljava/lang/Object;

.field public mTuneEnableSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v1, "eng"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    .line 14
    .line 15
    new-instance v2, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-string v1, "/sys/class/dqe/dqe/gamma_ext"

    .line 51
    .line 52
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "/sys/class/dqe/dqe/gamma"

    .line 55
    .line 56
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "/sys/class/dqe/dqe/degamma_ext"

    .line 59
    .line 60
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 61
    .line 62
    const-string v1, "/sys/class/dqe/dqe/degamma"

    .line 63
    .line 64
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 65
    .line 66
    const-string v1, "/sys/class/dqe/dqe/hsc"

    .line 67
    .line 68
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "/sys/class/dqe/dqe/cgc17_idx"

    .line 71
    .line 72
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "/sys/class/dqe/dqe/cgc17_enc"

    .line 75
    .line 76
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 77
    .line 78
    const-string v1, "/sys/class/dqe/dqe/cgc17_dec"

    .line 79
    .line 80
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 81
    .line 82
    const-string v1, "/sys/class/dqe/dqe/cgc17_con"

    .line 83
    .line 84
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 85
    .line 86
    const-string v1, "/sys/class/dqe/dqe/gamma_matrix"

    .line 87
    .line 88
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "/sys/class/dqe/dqe/cgc_dither"

    .line 91
    .line 92
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 93
    .line 94
    const-string v1, "/sys/class/dqe/dqe/hsc48_idx"

    .line 95
    .line 96
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 97
    .line 98
    const-string v1, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 99
    .line 100
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "/sys/class/dqe/dqe/scl"

    .line 103
    .line 104
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, "/sys/class/dqe/dqe/de"

    .line 107
    .line 108
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 109
    .line 110
    const-string v1, "0"

    .line 111
    .line 112
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    .line 113
    .line 114
    const-string v1, "1"

    .line 115
    .line 116
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    .line 117
    .line 118
    const-wide/16 v4, 0x3e8

    .line 119
    .line 120
    iput-wide v4, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    .line 121
    .line 122
    iput-wide v4, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    .line 123
    .line 124
    const-string v1, "/data/dqe/calib_data.xml"

    .line 125
    .line 126
    iput-object v1, v3, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 129
    .line 130
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 131
    .line 132
    invoke-direct {v1}, Lcom/android/server/display/exynos/ExynosDisplayColor;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 136
    .line 137
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 138
    .line 139
    invoke-direct {v4, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 143
    .line 144
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 145
    .line 146
    invoke-direct {v4, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 150
    .line 151
    iput-object v3, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const v3, 0x10e006b

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v3, 0x2

    .line 165
    if-eq v1, v3, :cond_1

    .line 166
    .line 167
    const/4 v3, 0x3

    .line 168
    if-ne v1, v3, :cond_0

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_0
    move v1, v2

    .line 172
    goto :goto_1

    .line 173
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 174
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 175
    .line 176
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-direct {v1, p0, v3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Landroid/os/Handler;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string/jumbo v4, "dqe_tune_enabled"

    .line 190
    .line 191
    .line 192
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const/4 v5, -0x1

    .line 197
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v4, "atc_mode_enabled"

    .line 201
    .line 202
    .line 203
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    .line 209
    .line 210
    const-string/jumbo v4, "display_color_mode"

    .line 211
    .line 212
    .line 213
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 218
    .line 219
    .line 220
    new-instance v1, Landroid/content/IntentFilter;

    .line 221
    .line 222
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;

    .line 246
    .line 247
    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->settingChanged()V

    .line 254
    .line 255
    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string p1, "ExynosDisplaySolutionManagerService created "

    .line 259
    .line 260
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    const-string p1, "ExynosDisplaySolutionManagerService"

    .line 271
    .line 272
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    return-void
.end method


# virtual methods
.method public final getColorEnhancementMode()Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "getColorEnhancementMode(): mColorModeName = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "Off,NATIVE,DISPLAY_P3,SRGB"

    .line 13
    .line 14
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mColorModeName:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mColorModeName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mColorModeName:Ljava/lang/String;

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final setColorEnhancementSettingValue(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setColorEnhancementSettingValue(): value = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    if-eq p1, v0, :cond_0

    .line 37
    .line 38
    :try_start_1
    const-string/jumbo p1, "bypass"

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string p1, "SRGB"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string p1, "DISPLAY_P3"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string p1, "NATIVE"

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_2
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p0
.end method

.method public final setColorTempSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setColorTempSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorTempOn(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setColorTempSettingValue(II)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setColorTempSettingValue(): "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " -> "

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorTempValue(II)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Send Pattern format: "

    .line 2
    .line 3
    const-string/jumbo v1, "setDisplayColorFeature is not ready: mBootCompleted="

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "setDisplayFeature(): "

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const-string v4, "ExynosDisplaySolutionManagerService"

    .line 17
    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "  "

    .line 27
    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "  "

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "  "

    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_a

    .line 60
    .line 61
    :cond_0
    :goto_0
    const-string/jumbo v2, "setDisplayColorFeature"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 71
    .line 72
    iget p1, p1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    if-lez p1, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string/jumbo v0, "setDisplayColorFeature(): "

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, "  "

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v0, "ExynosDisplayColor"

    .line 116
    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    if-nez p2, :cond_2

    .line 121
    .line 122
    if-nez p3, :cond_2

    .line 123
    .line 124
    if-eqz p4, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0, p4}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    monitor-exit v3

    .line 130
    return-void

    .line 131
    :cond_3
    :goto_1
    const-string p2, "ExynosDisplaySolutionManagerService"

    .line 132
    .line 133
    new-instance p3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 139
    .line 140
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p0, ", timer_count="

    .line 144
    .line 145
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    monitor-exit v3

    .line 159
    return-void

    .line 160
    :cond_4
    const-string/jumbo v1, "dqe_tune"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const/4 v2, 0x0

    .line 168
    const/4 v4, 0x1

    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    if-nez p2, :cond_6

    .line 172
    .line 173
    if-nez p3, :cond_5

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    move v2, v4

    .line 177
    :goto_2
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string/jumbo p2, "enableTuneDQE: enable="

    .line 185
    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const-string p2, "ExynosDisplayTune"

    .line 198
    .line 199
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    if-eqz v2, :cond_6

    .line 203
    .line 204
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string/jumbo p2, "tune"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    monitor-exit v3

    .line 217
    return-void

    .line 218
    :cond_7
    const-string/jumbo v1, "hdr_tune"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    if-eqz p4, :cond_9

    .line 228
    .line 229
    const-string p1, "0x"

    .line 230
    .line 231
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_8

    .line 236
    .line 237
    const/16 p1, 0x10

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_8
    const/16 p1, 0xa

    .line 241
    .line 242
    :goto_3
    const-string v1, "^0x"

    .line 243
    .line 244
    const-string v2, ""

    .line 245
    .line 246
    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p4

    .line 250
    invoke-static {p4, p1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v1

    .line 254
    new-instance p1, Landroid/content/Intent;

    .line 255
    .line 256
    const-string/jumbo p4, "com.android.server.display.HDR_TUNE_PATTERN_CHANGED"

    .line 257
    .line 258
    .line 259
    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const/high16 p4, 0x40000000    # 2.0f

    .line 263
    .line 264
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    const-string/jumbo p4, "com.android.settings"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    const-string/jumbo p4, "com.android.server.display.hdr_tune_format"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    const-string/jumbo p4, "com.android.server.display.hdr_tune_type"

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    const-string/jumbo p4, "com.android.server.display.hdr_tune_color"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    new-instance v4, Landroid/os/UserHandle;

    .line 294
    .line 295
    const/4 v5, -0x2

    .line 296
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p4, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 300
    .line 301
    .line 302
    const-string/jumbo p4, "com.android.exynos.hdrdisplaytune"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    new-instance p4, Landroid/os/UserHandle;

    .line 311
    .line 312
    invoke-direct {p4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 316
    .line 317
    .line 318
    const-string p0, "ExynosDisplaySolutionManagerService"

    .line 319
    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p2, " pattern: "

    .line 329
    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p2, " RGBA: "

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    :cond_9
    monitor-exit v3

    .line 356
    return-void

    .line 357
    :cond_a
    const-string/jumbo p4, "atc_user"

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result p4

    .line 364
    if-eqz p4, :cond_11

    .line 365
    .line 366
    if-nez p2, :cond_c

    .line 367
    .line 368
    if-nez p3, :cond_b

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_b
    move v2, v4

    .line 372
    :goto_4
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 375
    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 378
    .line 379
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_c
    if-ne p2, v4, :cond_e

    .line 384
    .line 385
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    .line 386
    .line 387
    if-nez p1, :cond_d

    .line 388
    .line 389
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 390
    .line 391
    invoke-virtual {p1, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 392
    .line 393
    .line 394
    iput-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcAlreadyEnable:Z

    .line 395
    .line 396
    :cond_d
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 402
    .line 403
    .line 404
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 405
    .line 406
    invoke-virtual {p0, p3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 407
    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_e
    const/4 p1, 0x2

    .line 411
    if-ne p2, p1, :cond_10

    .line 412
    .line 413
    if-nez p3, :cond_f

    .line 414
    .line 415
    move v4, v2

    .line 416
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 417
    .line 418
    invoke-virtual {p1, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 419
    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 422
    .line 423
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 424
    .line 425
    .line 426
    :cond_10
    :goto_5
    monitor-exit v3

    .line 427
    return-void

    .line 428
    :cond_11
    const-string/jumbo p4, "atc_tune"

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result p4

    .line 435
    if-eqz p4, :cond_1a

    .line 436
    .line 437
    if-eqz p2, :cond_12

    .line 438
    .line 439
    const/4 p1, 0x7

    .line 440
    if-ne p2, p1, :cond_16

    .line 441
    .line 442
    :cond_12
    if-nez p3, :cond_13

    .line 443
    .line 444
    move p1, v2

    .line 445
    goto :goto_6

    .line 446
    :cond_13
    move p1, v4

    .line 447
    :goto_6
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 448
    .line 449
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 453
    .line 454
    .line 455
    if-eqz p2, :cond_15

    .line 456
    .line 457
    if-eqz p1, :cond_14

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_14
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 461
    .line 462
    invoke-virtual {p4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    .line 463
    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_15
    :goto_7
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 467
    .line 468
    invoke-virtual {p4, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 469
    .line 470
    .line 471
    :goto_8
    iget-object p4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 472
    .line 473
    invoke-virtual {p4, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 474
    .line 475
    .line 476
    :cond_16
    const/16 p1, 0x8

    .line 477
    .line 478
    if-ne p2, p1, :cond_18

    .line 479
    .line 480
    if-nez p3, :cond_17

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_17
    move v2, v4

    .line 484
    :goto_9
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 490
    .line 491
    .line 492
    :cond_18
    const/16 p1, 0x9

    .line 493
    .line 494
    if-ne p2, p1, :cond_19

    .line 495
    .line 496
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 502
    .line 503
    .line 504
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 505
    .line 506
    invoke-virtual {p0, p3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setLastLuminance(I)V

    .line 507
    .line 508
    .line 509
    :cond_19
    monitor-exit v3

    .line 510
    return-void

    .line 511
    :cond_1a
    const-string/jumbo p4, "atc_timer"

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result p4

    .line 518
    if-eqz p4, :cond_1b

    .line 519
    .line 520
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 521
    .line 522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATCTuneMode(Z)V

    .line 526
    .line 527
    .line 528
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 529
    .line 530
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setCountDownTimer(II)V

    .line 531
    .line 532
    .line 533
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 534
    .line 535
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 536
    .line 537
    .line 538
    monitor-exit v3

    .line 539
    return-void

    .line 540
    :cond_1b
    const-string/jumbo p2, "factory_timer"

    .line 541
    .line 542
    .line 543
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-eqz p1, :cond_1c

    .line 548
    .line 549
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 550
    .line 551
    const/4 p1, 0x0

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->startCountDownTimer(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    monitor-exit v3

    .line 556
    return-void

    .line 557
    :cond_1c
    monitor-exit v3

    .line 558
    return-void

    .line 559
    :goto_a
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    throw p0
.end method

.method public final setEdgeSharpnessSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setEdgeSharpnessSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setEdgeSharpnessOn(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setEdgeSharpnessSettingValue(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setEdgeSharpnessSettingValue(): value="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    array-length v2, v0

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    array-length v2, v0

    .line 38
    if-lt p1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    aget-object p1, v0, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_0
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-string v0, "ExynosDisplayColor"

    .line 52
    .line 53
    const-string/jumbo v2, "setEdgeSharpnessValue()"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0
.end method

.method public final setEyeTempSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setEyeTempSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_XML_FILE_PATH:Ljava/lang/String;

    .line 32
    .line 33
    const-string/jumbo v0, "eyetemp"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v2, "gamma"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaBypass()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_1
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0
.end method

.method public final setEyeTempSettingValue(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setEyeTempSettingValue(): value = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :try_start_2
    array-length v2, v0

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    array-length v2, v0

    .line 38
    if-lt p1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    aget-object p1, v0, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_0
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-string v0, "ExynosDisplayColor"

    .line 52
    .line 53
    const-string/jumbo v2, "setGammaValue()"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p0

    .line 66
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    throw p0
.end method

.method public final setHsvGainSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setHsvGainSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setHsvGainOn()V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setHsvGainSettingValue(III)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setHsvGainSettingValue(): h="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", s="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", v="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setHsvGainValue(III)V

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final setRgbGainSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setRgbGainSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbGainOn(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setRgbGainSettingValue(III)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setRgbGainSettingValue(): r="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", g="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", b="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbGainValue(III)V

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final setRgbWeightSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setRgbWeightSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbWeightOn(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setRgbWeightSettingValue(FFF)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    const-string/jumbo v4, "setRgbWeightSettingValue(): r="

    .line 6
    .line 7
    .line 8
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v5

    .line 11
    :try_start_0
    const-string v6, "ExynosDisplaySolutionManagerService"

    .line 12
    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, ", g="

    .line 22
    .line 23
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, ", b="

    .line 30
    .line 31
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsRgbWeightOn:Z

    .line 50
    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v4, 0x0

    .line 55
    new-array v6, v3, [F

    .line 56
    .line 57
    aput p1, v6, v2

    .line 58
    .line 59
    aput v4, v6, v1

    .line 60
    .line 61
    aput v4, v6, v0

    .line 62
    .line 63
    new-array p1, v3, [F

    .line 64
    .line 65
    aput v4, p1, v2

    .line 66
    .line 67
    aput p2, p1, v1

    .line 68
    .line 69
    aput v4, p1, v0

    .line 70
    .line 71
    new-array p2, v3, [F

    .line 72
    .line 73
    aput v4, p2, v2

    .line 74
    .line 75
    aput v4, p2, v1

    .line 76
    .line 77
    aput p3, p2, v0

    .line 78
    .line 79
    filled-new-array {v6, p1, p2}, [[F

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->toString([[F)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_0
    monitor-exit v5

    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p0
.end method

.method public final setSkinColorSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setSkinColorSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setSkinColorOn(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setWhitePointColorSettingOn(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setWhitePointColorSettingOn(): onoff = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOn(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final settingChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "dqe_tune_enabled"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 23
    .line 24
    const-string/jumbo v6, "atc_mode_enabled"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v2

    .line 35
    :goto_1
    const-string/jumbo v5, "display_color_mode"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    .line 42
    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 57
    .line 58
    if-eq v0, v4, :cond_3

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v1, "settingChanged: ATC "

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " -> "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "ExynosDisplaySolutionManagerService"

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 105
    .line 106
    return-void
.end method
