.class public final Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final isDefaultDisplay:Z

.field public mAllowAllRotations:I

.field public final mAllowRotationResolver:Z

.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCameraRotationMode:I

.field public final mCarDockRotation:I

.field public final mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAppOrientation:I

.field final mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

.field public mDefaultFixedToUserRotation:Z

.field public mDeferredRotationPauseCount:I

.field public mDemoHdmiRotation:I

.field public mDemoHdmiRotationLock:Z

.field public mDemoRotation:I

.field public mDemoRotationLock:Z

.field public final mDeskDockRotation:I

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

.field public final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field public mFixedToUserRotation:I

.field public final mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

.field mLandscapeRotation:I

.field public mLastOrientation:I

.field public mLastRotationForOrientationInfo:Ljava/lang/String;

.field public mLastSensorRotation:I

.field public final mLidOpenRotation:I

.field public final mLock:Ljava/lang/Object;

.field public final mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field public mRotatingSeamlessly:Z

.field public mRotation:I

.field public mRotationChoiceShownToUserForConfirmation:I

.field public final mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public final mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public mSeamlessRotationCount:I

.field mSeascapeRotation:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field public mShowRotationSuggestions:I

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSupportAutoRotation:Z

.field public final mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

.field public final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field public mUserRotation:I

.field public mUserRotationMode:I


# direct methods
.method public static -$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v2, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo v2, "show_rotation_suggestions"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_0
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 29
    .line 30
    if-eq v6, v2, :cond_1

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 33
    .line 34
    move v2, v4

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_5

    .line 38
    :cond_1
    move v2, v5

    .line 39
    :goto_1
    const-string/jumbo v6, "user_rotation"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 47
    .line 48
    if-eq v7, v6, :cond_2

    .line 49
    .line 50
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 51
    .line 52
    move v6, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v6, v5

    .line 55
    :goto_2
    const-string v7, "accelerometer_rotation"

    .line 56
    .line 57
    invoke-static {v0, v7, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    move v7, v5

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v7, v4

    .line 66
    :goto_3
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 67
    .line 68
    if-eq v8, v7, :cond_4

    .line 69
    .line 70
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 71
    .line 72
    move v2, v4

    .line 73
    move v6, v2

    .line 74
    :cond_4
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 77
    .line 78
    .line 79
    :cond_5
    const-string v2, "camera_autorotate"

    .line 80
    .line 81
    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 86
    .line 87
    if-eq v2, v0, :cond_6

    .line 88
    .line 89
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    move v4, v6

    .line 93
    :goto_4
    monitor-exit v1

    .line 94
    return v4

    .line 95
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 35
    .line 36
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 40
    .line 41
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 42
    .line 43
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 44
    .line 45
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    .line 51
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 52
    .line 53
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 54
    .line 55
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iput-object p7, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object p8, p0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 60
    .line 61
    iget-boolean p4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 62
    .line 63
    iput-boolean p4, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 70
    .line 71
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const p5, 0x1110243

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 83
    .line 84
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    const p7, 0x1110022

    .line 89
    .line 90
    .line 91
    invoke-virtual {p5, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 92
    .line 93
    .line 94
    move-result p5

    .line 95
    iput-boolean p5, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    .line 96
    .line 97
    const p5, 0x10e00ca

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 101
    .line 102
    .line 103
    move-result p5

    .line 104
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 105
    .line 106
    const p5, 0x10e0059

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 110
    .line 111
    .line 112
    move-result p5

    .line 113
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 114
    .line 115
    const p5, 0x10e0087

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 119
    .line 120
    .line 121
    move-result p5

    .line 122
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 123
    .line 124
    const p5, 0x10e0162

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 132
    .line 133
    instance-of p5, p3, Landroid/view/DisplayAddress$Physical;

    .line 134
    .line 135
    const-string p7, ""

    .line 136
    .line 137
    if-eqz p5, :cond_0

    .line 138
    .line 139
    check-cast p3, Landroid/view/DisplayAddress$Physical;

    .line 140
    .line 141
    new-instance p5, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string/jumbo v2, "ro.bootanim.set_orientation_"

    .line 144
    .line 145
    .line 146
    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {p3, p7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    goto :goto_0

    .line 165
    :cond_0
    move-object p3, p7

    .line 166
    :goto_0
    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p5

    .line 170
    if-eqz p5, :cond_1

    .line 171
    .line 172
    iget-boolean p5, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 173
    .line 174
    if-eqz p5, :cond_1

    .line 175
    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo p5, "ro.bootanim.set_orientation_logical_"

    .line 179
    .line 180
    .line 181
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget p5, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 185
    .line 186
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-static {p3, p7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    :cond_1
    const-string p5, "ORIENTATION_90"

    .line 198
    .line 199
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p5

    .line 203
    if-eqz p5, :cond_2

    .line 204
    .line 205
    const/4 p3, 0x1

    .line 206
    goto :goto_1

    .line 207
    :cond_2
    const-string p5, "ORIENTATION_180"

    .line 208
    .line 209
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p5

    .line 213
    if-eqz p5, :cond_3

    .line 214
    .line 215
    const/4 p3, 0x2

    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const-string p5, "ORIENTATION_270"

    .line 218
    .line 219
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    if-eqz p3, :cond_4

    .line 224
    .line 225
    const/4 p3, 0x3

    .line 226
    goto :goto_1

    .line 227
    :cond_4
    move p3, v1

    .line 228
    :goto_1
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 229
    .line 230
    iput-object p9, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 231
    .line 232
    if-eqz p4, :cond_5

    .line 233
    .line 234
    iput p3, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    .line 235
    .line 236
    :cond_5
    new-instance p5, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    const/4 p7, 0x0

    .line 239
    invoke-direct {p5, p7, p0}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 243
    .line 244
    invoke-static {p2}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_7

    .line 249
    .line 250
    iget-boolean p2, p8, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    .line 251
    .line 252
    if-eqz p2, :cond_7

    .line 253
    .line 254
    iget-object p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 255
    .line 256
    if-nez p2, :cond_6

    .line 257
    .line 258
    iput-object p5, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 259
    .line 260
    iget p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 261
    .line 262
    iget p7, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    .line 263
    .line 264
    if-eq p2, p7, :cond_7

    .line 265
    .line 266
    invoke-virtual {p5}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->run()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 271
    .line 272
    const-string p1, "Multiple clients unsupported"

    .line 273
    .line 274
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :cond_7
    :goto_2
    const/4 p2, 0x0

    .line 279
    if-eqz p4, :cond_9

    .line 280
    .line 281
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 282
    .line 283
    .line 284
    move-result-object p4

    .line 285
    new-instance p5, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 286
    .line 287
    invoke-direct {p5, p0, p6, p4, p3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 288
    .line 289
    .line 290
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 291
    .line 292
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 293
    .line 294
    iget-object p7, p5, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-enter p7

    .line 297
    :try_start_0
    iput p3, p5, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 298
    .line 299
    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    new-instance p3, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 301
    .line 302
    invoke-direct {p3, p0, p4}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    .line 303
    .line 304
    .line 305
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 306
    .line 307
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 308
    .line 309
    .line 310
    move-result-object p4

    .line 311
    const-string/jumbo p5, "show_rotation_suggestions"

    .line 312
    .line 313
    .line 314
    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 315
    .line 316
    .line 317
    move-result-object p5

    .line 318
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    .line 320
    .line 321
    const-string p5, "accelerometer_rotation"

    .line 322
    .line 323
    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 324
    .line 325
    .line 326
    move-result-object p5

    .line 327
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 328
    .line 329
    .line 330
    const-string/jumbo p5, "user_rotation"

    .line 331
    .line 332
    .line 333
    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 334
    .line 335
    .line 336
    move-result-object p5

    .line 337
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 338
    .line 339
    .line 340
    const-string p5, "camera_autorotate"

    .line 341
    .line 342
    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 343
    .line 344
    .line 345
    move-result-object p5

    .line 346
    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 347
    .line 348
    .line 349
    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z

    .line 350
    .line 351
    .line 352
    if-eqz p1, :cond_8

    .line 353
    .line 354
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    const p3, 0x10700ff

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    array-length p1, p1

    .line 366
    if-lez p1, :cond_8

    .line 367
    .line 368
    new-instance p1, Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 369
    .line 370
    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    .line 371
    .line 372
    .line 373
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_8
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :catchall_0
    move-exception p0

    .line 380
    :try_start_1
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    throw p0

    .line 382
    :cond_9
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 383
    .line 384
    :goto_3
    return-void
.end method


# virtual methods
.method public final cancelSeamlessRotation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "DisplayRotation"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "  mCurrentAppOrientation="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 35
    .line 36
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "  mLastOrientation="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 64
    .line 65
    const-string v2, "  mRotation="

    .line 66
    .line 67
    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, " mDeferredRotationPauseCount="

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 91
    .line 92
    const-string v2, "  mLandscapeRotation="

    .line 93
    .line 94
    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 99
    .line 100
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, " mSeascapeRotation="

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 122
    .line 123
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "  mPortraitRotation="

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 151
    .line 152
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v1, " mUpsideDownRotation="

    .line 169
    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 174
    .line 175
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, "  mSupportAutoRotation="

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 203
    .line 204
    invoke-static {v0, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 208
    .line 209
    if-eqz v0, :cond_1

    .line 210
    .line 211
    const-string v1, "  "

    .line 212
    .line 213
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string/jumbo v2, "mSensorType=null"

    .line 218
    .line 219
    .line 220
    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter v3

    .line 223
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v5, "WindowOrientationListener"

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v1, "  "

    .line 252
    .line 253
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string/jumbo v5, "mEnabled="

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-boolean v5, v0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v5, "mCurrentRotation="

    .line 295
    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 300
    .line 301
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string/jumbo v4, "mSensor="

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v4, v0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 348
    .line 349
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string/jumbo v4, "mRate="

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    iget v4, v0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    .line 374
    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 386
    .line 387
    if-eqz v0, :cond_0

    .line 388
    .line 389
    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_0

    .line 393
    :catchall_0
    move-exception p0

    .line 394
    goto :goto_1

    .line 395
    :cond_0
    :goto_0
    monitor-exit v3

    .line 396
    goto :goto_2

    .line 397
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    throw p0

    .line 399
    :cond_1
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 400
    .line 401
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v1, "  mCarDockRotation="

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 416
    .line 417
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v1, " mDeskDockRotation="

    .line 434
    .line 435
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 439
    .line 440
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v1, "  mUserRotationMode="

    .line 463
    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 468
    .line 469
    const/4 v2, 0x1

    .line 470
    if-eqz v1, :cond_3

    .line 471
    .line 472
    if-eq v1, v2, :cond_2

    .line 473
    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    goto :goto_3

    .line 479
    :cond_2
    const-string v1, "USER_ROTATION_LOCKED"

    .line 480
    .line 481
    goto :goto_3

    .line 482
    :cond_3
    const-string v1, "USER_ROTATION_FREE"

    .line 483
    .line 484
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string v1, " mUserRotation="

    .line 497
    .line 498
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 502
    .line 503
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v1, " mCameraRotationMode="

    .line 520
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v1, " mAllowAllRotations="

    .line 539
    .line 540
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 544
    .line 545
    const/4 v3, -0x1

    .line 546
    if-eq v1, v3, :cond_6

    .line 547
    .line 548
    if-eqz v1, :cond_5

    .line 549
    .line 550
    if-eq v1, v2, :cond_4

    .line 551
    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    goto :goto_4

    .line 557
    :cond_4
    const-string/jumbo v1, "true"

    .line 558
    .line 559
    .line 560
    goto :goto_4

    .line 561
    :cond_5
    const-string v1, "false"

    .line 562
    .line 563
    goto :goto_4

    .line 564
    :cond_6
    const-string/jumbo v1, "unknown"

    .line 565
    .line 566
    .line 567
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v1, "  mDemoHdmiRotation="

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 591
    .line 592
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    const-string v1, " mDemoHdmiRotationLock="

    .line 609
    .line 610
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    const-string v1, " mUndockedHdmiRotation="

    .line 628
    .line 629
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 633
    .line 634
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v1, "  mLidOpenRotation="

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 662
    .line 663
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v1, "  mFixedToUserRotation="

    .line 686
    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 705
    .line 706
    if-eqz v0, :cond_7

    .line 707
    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    const-string v1, "FoldController"

    .line 717
    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    const-string v1, "  mPauseAutorotationDuringUnfolding="

    .line 737
    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 742
    .line 743
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    .line 744
    .line 745
    const-string v3, "  mShouldDisableRotationSensor="

    .line 746
    .line 747
    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 752
    .line 753
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 754
    .line 755
    const-string v3, "  mShouldIgnoreSensorRotation="

    .line 756
    .line 757
    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 762
    .line 763
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    .line 764
    .line 765
    const-string v3, "  mLastDisplaySwitchTime="

    .line 766
    .line 767
    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 772
    .line 773
    iget-wide v3, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    .line 774
    .line 775
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    .line 786
    .line 787
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v1, "  mLastHingeAngleEventTime="

    .line 794
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 799
    .line 800
    iget-wide v3, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 801
    .line 802
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string v1, "  mDeviceState="

    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 826
    .line 827
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 828
    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 840
    .line 841
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 842
    .line 843
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_f

    .line 848
    .line 849
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 850
    .line 851
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v1, "  RotationHistory"

    .line 861
    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    const-string v1, "    "

    .line 875
    .line 876
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 887
    .line 888
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    if-eqz v1, :cond_f

    .line 899
    .line 900
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    check-cast v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    .line 905
    .line 906
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    iget-wide v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    .line 918
    .line 919
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const-string v4, " "

    .line 927
    .line 928
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    iget v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    .line 932
    .line 933
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    const-string v5, " to "

    .line 941
    .line 942
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    iget v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    .line 946
    .line 947
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    const-string v5, "  source="

    .line 970
    .line 971
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    iget-object v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    .line 975
    .line 976
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    .line 983
    .line 984
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    const-string v4, "  mode="

    .line 1007
    .line 1008
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    .line 1012
    .line 1013
    if-eqz v4, :cond_a

    .line 1014
    .line 1015
    if-eq v4, v2, :cond_9

    .line 1016
    .line 1017
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    goto :goto_6

    .line 1022
    :cond_9
    const-string v4, "USER_ROTATION_LOCKED"

    .line 1023
    .line 1024
    goto :goto_6

    .line 1025
    :cond_a
    const-string v4, "USER_ROTATION_FREE"

    .line 1026
    .line 1027
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    const-string v4, " user="

    .line 1031
    .line 1032
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    .line 1036
    .line 1037
    invoke-static {v4}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v4

    .line 1041
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    const-string v4, " sensor="

    .line 1045
    .line 1046
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    .line 1050
    .line 1051
    invoke-static {v4}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v4

    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    .line 1066
    .line 1067
    if-eqz v3, :cond_b

    .line 1068
    .line 1069
    const-string v3, "  ignoreRequest=true"

    .line 1070
    .line 1071
    invoke-static {p2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    :cond_b
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    .line 1075
    .line 1076
    if-eqz v3, :cond_c

    .line 1077
    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    const-string v5, "  requestingTda="

    .line 1087
    .line 1088
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    :cond_c
    iget v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    .line 1102
    .line 1103
    const/4 v4, -0x2

    .line 1104
    if-eq v3, v4, :cond_d

    .line 1105
    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    const-string v5, " halfFoldSavedRotation="

    .line 1115
    .line 1116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    const-string v3, " mInHalfFoldTransition="

    .line 1123
    .line 1124
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    .line 1128
    .line 1129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    const-string v3, " mFoldState="

    .line 1133
    .line 1134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 1138
    .line 1139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    :cond_d
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDisplayRotationCompatPolicySummary:Ljava/lang/String;

    .line 1150
    .line 1151
    if-eqz v3, :cond_e

    .line 1152
    .line 1153
    invoke-static {p2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    :cond_e
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mRotationReversionSlots:[Z

    .line 1157
    .line 1158
    if-eqz v1, :cond_8

    .line 1159
    .line 1160
    const-string v3, " reversionSlots= NOSENSOR "

    .line 1161
    .line 1162
    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    const/4 v4, 0x0

    .line 1167
    aget-boolean v4, v1, v4

    .line 1168
    .line 1169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    const-string v4, ", CAMERA "

    .line 1173
    .line 1174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    aget-boolean v4, v1, v2

    .line 1178
    .line 1179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    const-string v4, " HALF_FOLD "

    .line 1183
    .line 1184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    const/4 v4, 0x2

    .line 1188
    aget-boolean v1, v1, v4

    .line 1189
    .line 1190
    invoke-static {v3, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_5

    .line 1194
    .line 1195
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 1196
    .line 1197
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 1198
    .line 1199
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    if-nez v0, :cond_12

    .line 1204
    .line 1205
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1206
    .line 1207
    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    const-string v1, "  RotationLockHistory"

    .line 1217
    .line 1218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    const-string v1, "    "

    .line 1231
    .line 1232
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object p1

    .line 1242
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 1243
    .line 1244
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 1245
    .line 1246
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 1247
    .line 1248
    .line 1249
    move-result-object p0

    .line 1250
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-eqz v0, :cond_12

    .line 1255
    .line 1256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v0

    .line 1260
    check-cast v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    .line 1261
    .line 1262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    .line 1264
    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    iget-wide v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mTimestamp:J

    .line 1274
    .line 1275
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v3

    .line 1279
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    const-string v3, ": mode="

    .line 1283
    .line 1284
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotationMode:I

    .line 1288
    .line 1289
    if-eqz v3, :cond_11

    .line 1290
    .line 1291
    if-eq v3, v2, :cond_10

    .line 1292
    .line 1293
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    goto :goto_8

    .line 1298
    :cond_10
    const-string v3, "USER_ROTATION_LOCKED"

    .line 1299
    .line 1300
    goto :goto_8

    .line 1301
    :cond_11
    const-string v3, "USER_ROTATION_FREE"

    .line 1302
    .line 1303
    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    const-string v3, ", rotation="

    .line 1307
    .line 1308
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotation:I

    .line 1312
    .line 1313
    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v3

    .line 1317
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    const-string v3, ", caller="

    .line 1321
    .line 1322
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mCaller:Ljava/lang/String;

    .line 1326
    .line 1327
    invoke-static {v1, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_7

    .line 1331
    :cond_12
    return-void
.end method

.method public getDemoUserRotationOverride()I
    .locals 1

    .line 1
    const-string/jumbo p0, "persist.demo.userrotation"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getDemoUserRotationPackage()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "persist.demo.userrotation.package_name"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 4
    .line 5
    return-object p0
.end method

.method public initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 4
    .line 5
    const-string v1, "enable_display_rotation_immersive_app_compat_policy"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 16
    .line 17
    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;-><init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V

    .line 18
    .line 19
    .line 20
    move-object p0, v0

    .line 21
    :goto_0
    return-object p0
.end method

.method public final isAnyPortrait(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isFixedToUserRotation()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    return v2

    .line 18
    :cond_2
    return v1
.end method

.method public final isLandscapeOrSeascape(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isRotationFrozen()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 8
    .line 9
    if-ne p0, v2, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "accelerometer_rotation"

    .line 20
    .line 21
    const/4 v3, -0x2

    .line 22
    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    return v1
.end method

.method public final markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 2
    .line 3
    if-eq p2, v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 26
    .line 27
    :goto_0
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    aget-boolean p1, p1, p2

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    .line 40
    const-wide v1, -0x10e0e626467ec440L    # -1.8419201566271566E227

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public final readRotation(I)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    const/16 p1, 0x5a

    .line 14
    .line 15
    if-eq p0, p1, :cond_2

    .line 16
    .line 17
    const/16 p1, 0xb4

    .line 18
    .line 19
    if-eq p0, p1, :cond_1

    .line 20
    .line 21
    const/16 p1, 0x10e

    .line 22
    .line 23
    if-eq p0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x3

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_3
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :catch_0
    :goto_0
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public rotationForOrientation(II)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(IIZ)I

    move-result p0

    return p0
.end method

.method public final rotationForOrientation(IIZ)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 14
    :cond_1
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    int-to-long v9, v1

    invoke-static/range {p2 .. p2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    int-to-long v11, v2

    iget v13, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v13}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v14, v14

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v4, :cond_2

    const-string v2, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v10, v7

    move-object v12, v13

    move-object v13, v14

    move-object v14, v2

    filled-new-array/range {v8 .. v14}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v19, 0x444

    const-string/jumbo v20, "rotationForOrientation(orient=%s (%d), last=%s (%d)); user=%s (%d) %s"

    const-wide v17, 0x168a6669b4823025L

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rotationForOrientation, orientationSource="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WindowManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    .line 17
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0

    .line 19
    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    .line 20
    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v5

    .line 21
    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v6, :cond_7

    .line 22
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-eqz v6, :cond_7

    move v2, v5

    .line 23
    :cond_7
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v7, :cond_8

    const/4 v6, 0x0

    goto :goto_3

    .line 25
    :cond_8
    iget-object v7, v6, Lcom/android/server/wm/DeviceStateController;->mReverseRotationAroundZAxisStates:[I

    iget v6, v6, Lcom/android/server/wm/DeviceStateController;->mCurrentState:I

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_9

    .line 26
    invoke-static {v2}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result v2

    .line 27
    :cond_9
    iput v2, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    if-gez v2, :cond_a

    move/from16 v2, p2

    .line 28
    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    iget v6, v6, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 30
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 31
    iget v7, v7, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 32
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    iget-boolean v9, v9, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 34
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 35
    iget-boolean v11, v10, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 36
    iget-boolean v12, v10, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 37
    iget-boolean v13, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v15, 0xb

    if-nez v13, :cond_b

    .line 38
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_8

    :cond_b
    if-ne v6, v4, :cond_c

    .line 39
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v6, :cond_c

    move v5, v6

    goto/16 :goto_8

    :cond_c
    const/4 v6, 0x2

    if-ne v7, v6, :cond_f

    if-nez v11, :cond_d

    .line 40
    iget v13, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v13, :cond_f

    :cond_d
    if-eqz v11, :cond_e

    goto/16 :goto_7

    .line 41
    :cond_e
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    goto/16 :goto_7

    :cond_f
    const/4 v11, 0x5

    const/16 v13, 0xe

    const/4 v8, 0x4

    const/4 v14, 0x3

    if-eq v7, v4, :cond_10

    if-eq v7, v14, :cond_10

    if-ne v7, v8, :cond_13

    :cond_10
    if-nez v12, :cond_11

    .line 42
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v4, :cond_13

    :cond_11
    if-eq v1, v13, :cond_13

    if-eq v1, v11, :cond_13

    if-eqz v12, :cond_12

    goto/16 :goto_7

    .line 43
    :cond_12
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    goto/16 :goto_7

    :cond_13
    if-eqz v9, :cond_14

    .line 44
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_14

    .line 45
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto/16 :goto_8

    :cond_14
    if-eqz v9, :cond_15

    if-nez v7, :cond_15

    .line 46
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v4, :cond_15

    move v5, v4

    goto/16 :goto_8

    .line 47
    :cond_15
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v4, :cond_16

    .line 48
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto/16 :goto_8

    .line 49
    :cond_16
    iget-boolean v4, v10, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_17

    .line 50
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto/16 :goto_8

    :cond_17
    if-ne v1, v13, :cond_18

    goto/16 :goto_6

    .line 51
    :cond_18
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v4, :cond_19

    .line 52
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v2, v14, :cond_23

    .line 53
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_8

    .line 54
    :cond_19
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v7, 0xa

    const/16 v9, 0xd

    if-eqz v4, :cond_1b

    .line 55
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v10, :cond_1a

    .line 56
    iget-boolean v12, v10, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v12, :cond_1a

    .line 57
    iget-object v10, v10, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v12, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v10, v12, :cond_1a

    const/4 v10, 0x1

    goto :goto_4

    :cond_1a
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_1c

    :cond_1b
    if-eq v1, v6, :cond_1e

    if-eq v1, v5, :cond_1e

    if-eq v1, v15, :cond_1e

    const/16 v10, 0xc

    if-eq v1, v10, :cond_1e

    if-eq v1, v9, :cond_1e

    :cond_1c
    if-eq v1, v8, :cond_1e

    if-eq v1, v7, :cond_1e

    const/4 v8, 0x6

    if-eq v1, v8, :cond_1e

    const/4 v8, 0x7

    if-ne v1, v8, :cond_1d

    goto :goto_5

    :cond_1d
    const/4 v8, 0x1

    if-ne v4, v8, :cond_23

    if-eq v1, v11, :cond_23

    if-eqz v1, :cond_23

    if-eq v1, v8, :cond_23

    const/16 v2, 0x8

    if-eq v1, v2, :cond_23

    const/16 v2, 0x9

    if-eq v1, v2, :cond_23

    .line 58
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_8

    :cond_1e
    :goto_5
    if-ne v2, v6, :cond_22

    .line 59
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v4, v5, :cond_1f

    .line 60
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    .line 61
    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 62
    :cond_1f
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_22

    if-eqz v3, :cond_20

    .line 63
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v3, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    if-eqz v4, :cond_20

    if-ne v1, v5, :cond_20

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 64
    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 65
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 66
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    if-eq v1, v7, :cond_22

    if-ne v1, v9, :cond_21

    goto :goto_7

    :cond_21
    :goto_6
    move/from16 v5, p2

    goto :goto_8

    :cond_22
    :goto_7
    move v5, v2

    :cond_23
    :goto_8
    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    if-eq v1, v15, :cond_27

    const/16 v2, 0xc

    if-eq v1, v2, :cond_28

    packed-switch v1, :pswitch_data_0

    if-ltz v5, :cond_24

    return v5

    :cond_24
    const/4 v0, 0x0

    return v0

    .line 67
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_25

    return v5

    .line 68
    :cond_25
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0

    .line 69
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_26

    return v5

    .line 70
    :cond_26
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0

    :cond_27
    :pswitch_2
    move/from16 v1, p2

    goto :goto_9

    .line 71
    :cond_28
    :pswitch_3
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_29

    return v5

    :cond_29
    move/from16 v1, p2

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v1

    .line 73
    :cond_2a
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 74
    :goto_9
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v5

    .line 75
    :cond_2b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    return v1

    .line 76
    :cond_2c
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    .line 77
    :cond_2d
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    return v5

    .line 78
    :cond_2e
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 79
    :cond_2f
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_30

    return v5

    .line 80
    :cond_30
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    aget-boolean v4, v4, v5

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 48
    .line 49
    int-to-long v6, v6

    .line 50
    :goto_2
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 51
    .line 52
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const/16 v11, 0x34

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    const-wide v9, -0x6a7a396b3868ccd0L    # -5.426068095430003E-205

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    const v4, 0x10a00a2

    .line 76
    .line 77
    .line 78
    const v6, 0x10a00a1

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 84
    .line 85
    iput v4, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 86
    .line 87
    iput v6, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_4
    if-eqz v3, :cond_9

    .line 91
    .line 92
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const/4 v0, -0x1

    .line 100
    :goto_3
    if-gez v0, :cond_6

    .line 101
    .line 102
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 103
    .line 104
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 105
    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 111
    .line 112
    :cond_6
    if-eq v0, v1, :cond_8

    .line 113
    .line 114
    if-eq v0, v5, :cond_7

    .line 115
    .line 116
    const/4 v1, 0x3

    .line 117
    if-eq v0, v1, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 120
    .line 121
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 122
    .line 123
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 127
    .line 128
    iput v4, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 129
    .line 130
    iput v6, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 134
    .line 135
    const v1, 0x10a00a3

    .line 136
    .line 137
    .line 138
    iput v1, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 139
    .line 140
    iput v6, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 144
    .line 145
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 146
    .line 147
    iput v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 148
    .line 149
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 150
    .line 151
    return-object p0
.end method

.method public final setFixedToUserRotation(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserRotation(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    .line 21
    .line 22
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->useDefaultSettingsProvider()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-ne p1, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v1

    .line 49
    :goto_0
    const-string p1, "accelerometer_rotation"

    .line 50
    .line 51
    const/4 p3, -0x2

    .line 52
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 53
    .line 54
    .line 55
    const-string/jumbo p1, "user_rotation"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 63
    .line 64
    if-eq p3, p1, :cond_3

    .line 65
    .line 66
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 67
    .line 68
    move p3, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move p3, v0

    .line 71
    :goto_1
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 72
    .line 73
    if-eq v2, p2, :cond_4

    .line 74
    .line 75
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move v1, p3

    .line 79
    :goto_2
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 87
    .line 88
    iget-object p3, p3, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 89
    .line 90
    invoke-virtual {p3, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p3, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 112
    .line 113
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 114
    .line 115
    .line 116
    iget-object p0, v2, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    .line 117
    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    iget p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    .line 121
    .line 122
    iget p2, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public shouldRotateSeamlessly(IIZ)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    invoke-direct {v4, v5}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    :cond_2
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const-string/jumbo v0, "reject_seamless_rot(starting)"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    move v0, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move v0, v3

    .line 66
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_6

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    const-string/jumbo p0, "reject_seamless_rot"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    return v2

    .line 82
    :cond_6
    if-eqz v0, :cond_7

    .line 83
    .line 84
    return v3

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    if-eqz v0, :cond_12

    .line 90
    .line 91
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    if-eq v0, v4, :cond_8

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 98
    .line 99
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    if-eq v4, v5, :cond_9

    .line 103
    .line 104
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 105
    .line 106
    if-eqz v4, :cond_12

    .line 107
    .line 108
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    .line 109
    .line 110
    if-eqz v4, :cond_12

    .line 111
    .line 112
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_12

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_a

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 126
    .line 127
    if-nez v4, :cond_e

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 130
    .line 131
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 132
    .line 133
    if-eqz p0, :cond_b

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_b
    const/4 p0, 0x2

    .line 137
    if-eq p1, p0, :cond_c

    .line 138
    .line 139
    if-eq p2, p0, :cond_c

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_c
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 143
    .line 144
    if-eqz p0, :cond_d

    .line 145
    .line 146
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    .line 147
    .line 148
    if-eqz p0, :cond_d

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_d
    return v3

    .line 152
    :cond_e
    :goto_2
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 153
    .line 154
    if-eqz p0, :cond_f

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_f

    .line 161
    .line 162
    return v3

    .line 163
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-nez p0, :cond_12

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_10

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_10
    if-nez p3, :cond_11

    .line 181
    .line 182
    new-instance p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda3;

    .line 183
    .line 184
    const/4 p1, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda3;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_11

    .line 193
    .line 194
    return v3

    .line 195
    :cond_11
    return v2

    .line 196
    :cond_12
    :goto_3
    return v3
.end method

.method public final updateOrientation(IZ)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final updateOrientationListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final updateOrientationListenerLw()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v4

    .line 19
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 25
    .line 26
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 27
    .line 28
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    .line 30
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 31
    .line 32
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 35
    .line 36
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 37
    .line 38
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 39
    .line 40
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 41
    .line 42
    aget-boolean v8, v7, v3

    .line 43
    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 47
    .line 48
    int-to-long v8, v8

    .line 49
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 50
    .line 51
    iget-boolean v10, v10, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 52
    .line 53
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v17

    .line 79
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v16

    .line 83
    const/16 v14, 0xfdf

    .line 84
    .line 85
    const/4 v15, 0x0

    .line 86
    const-wide v12, -0x21ac519cf589c1c6L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-eqz v1, :cond_11

    .line 95
    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v8, 0x11101a4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/16 v8, 0x1b

    .line 123
    .line 124
    if-ne v2, v8, :cond_11

    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_11

    .line 133
    .line 134
    :cond_4
    :goto_1
    if-eqz v5, :cond_11

    .line 135
    .line 136
    if-nez v6, :cond_5

    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    :cond_6
    :goto_2
    move v1, v4

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_7
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 150
    .line 151
    const-string v2, "WindowManager"

    .line 152
    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 160
    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    iget-boolean v1, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 164
    .line 165
    xor-int/2addr v1, v3

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    const-string/jumbo v1, "shouldDisableRotationSensor, rotation sensor is disabled due to cover policy"

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    const-string/jumbo v1, "shouldDisableRotationSensor, rotation sensor is disabled due to proximity sensor"

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 203
    .line 204
    if-eqz v1, :cond_a

    .line 205
    .line 206
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 207
    .line 208
    if-eqz v1, :cond_a

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_a
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 212
    .line 213
    const/4 v2, 0x4

    .line 214
    if-eqz v1, :cond_c

    .line 215
    .line 216
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 217
    .line 218
    if-eq v1, v2, :cond_b

    .line 219
    .line 220
    const/16 v5, 0xa

    .line 221
    .line 222
    if-eq v1, v5, :cond_b

    .line 223
    .line 224
    const/4 v5, 0x7

    .line 225
    if-eq v1, v5, :cond_b

    .line 226
    .line 227
    const/4 v5, 0x6

    .line 228
    if-ne v1, v5, :cond_c

    .line 229
    .line 230
    :cond_b
    :goto_3
    move v1, v3

    .line 231
    goto :goto_4

    .line 232
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 233
    .line 234
    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 235
    .line 236
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 237
    .line 238
    iget-boolean v6, v5, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 239
    .line 240
    if-eqz v6, :cond_d

    .line 241
    .line 242
    const/4 v6, 0x2

    .line 243
    if-eq v1, v6, :cond_b

    .line 244
    .line 245
    :cond_d
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 246
    .line 247
    if-eqz v5, :cond_e

    .line 248
    .line 249
    if-eq v1, v3, :cond_b

    .line 250
    .line 251
    const/4 v5, 0x3

    .line 252
    if-eq v1, v5, :cond_b

    .line 253
    .line 254
    if-ne v1, v2, :cond_e

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_e
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 258
    .line 259
    if-ne v1, v3, :cond_f

    .line 260
    .line 261
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 262
    .line 263
    if-eqz v1, :cond_6

    .line 264
    .line 265
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 266
    .line 267
    if-ne v1, v3, :cond_6

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_f
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 271
    .line 272
    :goto_4
    if-eqz v1, :cond_11

    .line 273
    .line 274
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 275
    .line 276
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 277
    .line 278
    if-nez v2, :cond_10

    .line 279
    .line 280
    iput-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 281
    .line 282
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    .line 286
    .line 287
    aget-boolean v1, v7, v3

    .line 288
    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 292
    .line 293
    const/4 v9, 0x0

    .line 294
    const/4 v10, 0x0

    .line 295
    const-wide v6, 0x5ce254014b33080L

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    const/4 v8, 0x0

    .line 301
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_10
    move v1, v4

    .line 305
    goto :goto_6

    .line 306
    :cond_11
    :goto_5
    move v1, v3

    .line 307
    :goto_6
    if-eqz v1, :cond_12

    .line 308
    .line 309
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 310
    .line 311
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    .line 317
    .line 318
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 319
    .line 320
    aget-boolean v0, v0, v3

    .line 321
    .line 322
    if-eqz v0, :cond_12

    .line 323
    .line 324
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 325
    .line 326
    const-wide v2, 0x406b09bf53253cd8L    # 216.3046050765322

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    const/4 v4, 0x0

    .line 332
    const/4 v5, 0x0

    .line 333
    const/4 v6, 0x0

    .line 334
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_12
    return-void

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    throw v0

    .line 341
    :cond_13
    :goto_7
    return-void
.end method

.method public final updateRotationAndSendNewConfigIfChanged()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return v0
.end method

.method public final updateRotationUnchecked(Z)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    if-nez v1, :cond_a

    .line 12
    .line 13
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 14
    .line 15
    if-lez v7, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 18
    .line 19
    aget-boolean v0, v0, v4

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 24
    .line 25
    const-wide v8, -0x5e0b2e75d386c675L    # -4.168039617495083E-145

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return v6

    .line 37
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 46
    .line 47
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 62
    .line 63
    aget-boolean v0, v0, v4

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    .line 69
    const-wide v8, 0x673f09e71a893134L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return v6

    .line 81
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 88
    .line 89
    aget-boolean v0, v0, v4

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 94
    .line 95
    const-wide v8, 0xf52d6f9b0473370L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v12, 0x0

    .line 103
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    return v6

    .line 107
    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 110
    .line 111
    iget-object v7, v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 112
    .line 113
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 114
    .line 115
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    iget-object v2, v7, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 122
    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    iget-object v8, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 126
    .line 127
    invoke-virtual {v8, v2}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_7

    .line 132
    .line 133
    iget-object v2, v7, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    if-eqz v8, :cond_7

    .line 139
    .line 140
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_7

    .line 145
    .line 146
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_7
    const/4 v2, 0x0

    .line 150
    :goto_0
    if-eqz v2, :cond_9

    .line 151
    .line 152
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_8

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 162
    .line 163
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    :goto_1
    move v2, v6

    .line 171
    :goto_2
    if-eqz v2, :cond_a

    .line 172
    .line 173
    const/4 v1, -0x2

    .line 174
    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 175
    .line 176
    return v6

    .line 177
    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 178
    .line 179
    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 180
    .line 181
    if-nez v2, :cond_c

    .line 182
    .line 183
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 184
    .line 185
    aget-boolean v0, v0, v4

    .line 186
    .line 187
    if-eqz v0, :cond_b

    .line 188
    .line 189
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 190
    .line 191
    const-wide v8, -0x1ed6693e8b42c2fcL    # -1.1242403078993441E160

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x0

    .line 199
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_b
    return v6

    .line 203
    :cond_c
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 204
    .line 205
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 206
    .line 207
    invoke-virtual {v0, v7, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 212
    .line 213
    const/4 v10, 0x2

    .line 214
    const/4 v11, -0x1

    .line 215
    if-eqz v9, :cond_f

    .line 216
    .line 217
    iget-boolean v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    .line 218
    .line 219
    if-eqz v12, :cond_d

    .line 220
    .line 221
    iget-object v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 222
    .line 223
    sget-object v13, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 224
    .line 225
    if-ne v12, v13, :cond_d

    .line 226
    .line 227
    iget-boolean v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    .line 228
    .line 229
    if-nez v12, :cond_d

    .line 230
    .line 231
    iget-boolean v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 232
    .line 233
    if-eqz v12, :cond_d

    .line 234
    .line 235
    iget-object v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 236
    .line 237
    iget-object v13, v12, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 238
    .line 239
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 240
    .line 241
    iget-object v13, v13, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 242
    .line 243
    aget-boolean v13, v13, v10

    .line 244
    .line 245
    if-eqz v13, :cond_d

    .line 246
    .line 247
    iget v12, v12, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 248
    .line 249
    if-ne v12, v4, :cond_d

    .line 250
    .line 251
    move v12, v4

    .line 252
    goto :goto_3

    .line 253
    :cond_d
    move v12, v6

    .line 254
    :goto_3
    if-eqz v12, :cond_f

    .line 255
    .line 256
    iget v12, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 257
    .line 258
    iput v11, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 259
    .line 260
    iget-object v13, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 261
    .line 262
    iget-object v13, v13, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 263
    .line 264
    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 265
    .line 266
    invoke-virtual {v13, v10}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    .line 267
    .line 268
    .line 269
    iput-boolean v6, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 270
    .line 271
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 272
    .line 273
    aget-boolean v9, v9, v4

    .line 274
    .line 275
    if-eqz v9, :cond_e

    .line 276
    .line 277
    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 302
    .line 303
    filled-new-array {v9, v13, v8}, [Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v19

    .line 307
    const-wide v15, 0x9336858471d306cL

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    const/16 v17, 0x0

    .line 313
    .line 314
    const/16 v18, 0x0

    .line 315
    .line 316
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_e
    move v8, v12

    .line 320
    :cond_f
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 321
    .line 322
    invoke-static {v9}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_10

    .line 327
    .line 328
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 329
    .line 330
    iget-boolean v9, v9, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    .line 331
    .line 332
    if-eqz v9, :cond_10

    .line 333
    .line 334
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 335
    .line 336
    iget v8, v8, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 337
    .line 338
    invoke-static {v8}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    :cond_10
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 343
    .line 344
    if-eqz v9, :cond_13

    .line 345
    .line 346
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 347
    .line 348
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 349
    .line 350
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 351
    .line 352
    iget-object v12, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 353
    .line 354
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    iget-boolean v9, v12, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 358
    .line 359
    if-nez v9, :cond_12

    .line 360
    .line 361
    :cond_11
    move v9, v6

    .line 362
    goto :goto_4

    .line 363
    :cond_12
    iget-object v9, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 364
    .line 365
    if-eqz v9, :cond_11

    .line 366
    .line 367
    iget-object v9, v9, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 368
    .line 369
    if-eqz v9, :cond_11

    .line 370
    .line 371
    iget v9, v9, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    .line 372
    .line 373
    and-int/2addr v9, v4

    .line 374
    if-eqz v9, :cond_11

    .line 375
    .line 376
    const-string v9, "ChangeTransitionController"

    .line 377
    .line 378
    const-string v12, "keepRotation: launch remoteTransition on consistent rotation."

    .line 379
    .line 380
    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move v9, v4

    .line 384
    :goto_4
    if-eqz v9, :cond_13

    .line 385
    .line 386
    move v8, v2

    .line 387
    :cond_13
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    .line 388
    .line 389
    aget-boolean v9, v9, v4

    .line 390
    .line 391
    if-eqz v9, :cond_14

    .line 392
    .line 393
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    int-to-long v13, v8

    .line 402
    int-to-long v10, v3

    .line 403
    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v15

    .line 407
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v15

    .line 411
    int-to-long v5, v7

    .line 412
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v16

    .line 416
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v17

    .line 420
    move-wide/from16 v18, v5

    .line 421
    .line 422
    int-to-long v4, v2

    .line 423
    const/4 v6, 0x6

    .line 424
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 433
    .line 434
    const-string v24, "Computed rotation=%s (%d) for display id=%d based on lastOrientation=%s (%d) and oldRotation=%s (%d), caller=%s"

    .line 435
    .line 436
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 437
    .line 438
    .line 439
    move-result-object v13

    .line 440
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 441
    .line 442
    .line 443
    move-result-object v14

    .line 444
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 445
    .line 446
    .line 447
    move-result-object v16

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 449
    .line 450
    .line 451
    move-result-object v18

    .line 452
    move-object/from16 v19, v6

    .line 453
    .line 454
    filled-new-array/range {v12 .. v19}, [Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v25

    .line 458
    const-wide v21, 0x4f5456d82a363693L    # 1.4374527710116015E74

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    const/16 v23, 0x1114

    .line 464
    .line 465
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_14
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 469
    .line 470
    const/4 v5, 0x1

    .line 471
    aget-boolean v6, v4, v5

    .line 472
    .line 473
    if-eqz v6, :cond_15

    .line 474
    .line 475
    int-to-long v5, v3

    .line 476
    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    int-to-long v11, v7

    .line 485
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v13

    .line 489
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v13

    .line 493
    int-to-long v14, v8

    .line 494
    sget-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 495
    .line 496
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 505
    .line 506
    .line 507
    move-result-object v11

    .line 508
    filled-new-array {v5, v10, v6, v13, v11}, [Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v25

    .line 512
    const/16 v23, 0x111

    .line 513
    .line 514
    const/16 v24, 0x0

    .line 515
    .line 516
    const-wide v21, -0x7a40502e1025c131L    # -5.455096051606341E-281

    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    :cond_15
    if-ne v2, v8, :cond_16

    .line 525
    .line 526
    const/4 v5, 0x0

    .line 527
    return v5

    .line 528
    :cond_16
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 529
    .line 530
    if-eqz v5, :cond_17

    .line 531
    .line 532
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 533
    .line 534
    iput v8, v5, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 535
    .line 536
    iget-object v5, v5, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 537
    .line 538
    if-eqz v5, :cond_17

    .line 539
    .line 540
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 541
    .line 542
    .line 543
    :cond_17
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 544
    .line 545
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 546
    .line 547
    if-eqz v5, :cond_19

    .line 548
    .line 549
    iget-boolean v6, v5, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 550
    .line 551
    if-eqz v6, :cond_18

    .line 552
    .line 553
    const/4 v10, 0x1

    .line 554
    goto :goto_5

    .line 555
    :cond_18
    const/4 v10, 0x2

    .line 556
    :goto_5
    const-string v6, "cancelAnimationForDisplayChange"

    .line 557
    .line 558
    const/4 v9, 0x1

    .line 559
    invoke-virtual {v5, v10, v6, v9}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 560
    .line 561
    .line 562
    goto :goto_6

    .line 563
    :cond_19
    const/4 v9, 0x1

    .line 564
    :goto_6
    aget-boolean v4, v4, v9

    .line 565
    .line 566
    if-eqz v4, :cond_1a

    .line 567
    .line 568
    int-to-long v3, v3

    .line 569
    int-to-long v5, v8

    .line 570
    int-to-long v9, v2

    .line 571
    int-to-long v11, v7

    .line 572
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 573
    .line 574
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 587
    .line 588
    .line 589
    move-result-object v6

    .line 590
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v18

    .line 594
    const/16 v16, 0x55

    .line 595
    .line 596
    const/16 v17, 0x0

    .line 597
    .line 598
    const-wide v14, 0x5db8437ddc0733fbL    # 2.9587883023284634E143

    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    :cond_1a
    iput v8, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 607
    .line 608
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 609
    .line 610
    if-eqz v3, :cond_1c

    .line 611
    .line 612
    const-string v3, "WindowManager"

    .line 613
    .line 614
    const-string/jumbo v4, "setRotation: rotation="

    .line 615
    .line 616
    .line 617
    invoke-static {v8, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 621
    .line 622
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 623
    .line 624
    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    .line 625
    .line 626
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 627
    .line 628
    iget-object v4, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    .line 629
    .line 630
    monitor-enter v4

    .line 631
    :try_start_0
    iget-object v5, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 632
    .line 633
    if-nez v5, :cond_1b

    .line 634
    .line 635
    iget-object v5, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 636
    .line 637
    const-string v6, "PWM_ROTATION"

    .line 638
    .line 639
    invoke-static {v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    iput-object v5, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 644
    .line 645
    if-eqz v5, :cond_1b

    .line 646
    .line 647
    const/16 v6, 0xf

    .line 648
    .line 649
    invoke-virtual {v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 650
    .line 651
    .line 652
    goto :goto_7

    .line 653
    :catchall_0
    move-exception v0

    .line 654
    goto :goto_8

    .line 655
    :cond_1b
    :goto_7
    iget-object v3, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 656
    .line 657
    const-string v5, "HINT_PWM_ROTATION"

    .line 658
    .line 659
    invoke-static {v3, v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    monitor-exit v4

    .line 663
    goto :goto_9

    .line 664
    :goto_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    throw v0

    .line 666
    :cond_1c
    :goto_9
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 667
    .line 668
    if-eqz v3, :cond_1e

    .line 669
    .line 670
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 671
    .line 672
    if-eqz v3, :cond_1e

    .line 673
    .line 674
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 675
    .line 676
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 677
    .line 678
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 679
    .line 680
    invoke-virtual {v0, v8}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 688
    .line 689
    if-nez v5, :cond_1d

    .line 690
    .line 691
    goto :goto_a

    .line 692
    :cond_1d
    const/4 v5, 0x0

    .line 693
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TspStateController;->setOrientation(ZZ)V

    .line 694
    .line 695
    .line 696
    goto :goto_b

    .line 697
    :cond_1e
    :goto_a
    const/4 v5, 0x0

    .line 698
    :goto_b
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    .line 699
    .line 700
    if-eqz v3, :cond_1f

    .line 701
    .line 702
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 703
    .line 704
    if-eqz v3, :cond_1f

    .line 705
    .line 706
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 707
    .line 708
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 709
    .line 710
    invoke-virtual {v3, v5, v5}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 711
    .line 712
    .line 713
    :cond_1f
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 714
    .line 715
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 716
    .line 717
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 718
    .line 719
    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 720
    .line 721
    if-nez v4, :cond_21

    .line 722
    .line 723
    :cond_20
    const/4 v5, 0x1

    .line 724
    goto :goto_d

    .line 725
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    if-eqz v4, :cond_22

    .line 730
    .line 731
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 732
    .line 733
    .line 734
    move-result-object v4

    .line 735
    goto :goto_c

    .line 736
    :cond_22
    const/4 v4, 0x0

    .line 737
    :goto_c
    if-eqz v4, :cond_20

    .line 738
    .line 739
    const/4 v5, 0x1

    .line 740
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    if-eqz v6, :cond_23

    .line 745
    .line 746
    goto :goto_d

    .line 747
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    .line 748
    .line 749
    .line 750
    move-result v4

    .line 751
    const/4 v6, -0x1

    .line 752
    if-ne v4, v6, :cond_24

    .line 753
    .line 754
    goto :goto_d

    .line 755
    :cond_24
    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;

    .line 756
    .line 757
    invoke-direct {v6, v4, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3, v6, v5}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    .line 761
    .line 762
    .line 763
    :goto_d
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 764
    .line 765
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 766
    .line 767
    .line 768
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 769
    .line 770
    iput-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 771
    .line 772
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 773
    .line 774
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 775
    .line 776
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 777
    .line 778
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 779
    .line 780
    new-instance v6, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    .line 781
    .line 782
    const/4 v7, 0x0

    .line 783
    invoke-direct {v6, v3, v7}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 787
    .line 788
    .line 789
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 790
    .line 791
    new-instance v5, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    .line 792
    .line 793
    const/4 v6, 0x0

    .line 794
    invoke-direct {v5, v3, v6}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    .line 799
    .line 800
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 801
    .line 802
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 803
    .line 804
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    if-eqz v3, :cond_29

    .line 809
    .line 810
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 811
    .line 812
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 813
    .line 814
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    if-nez v1, :cond_25

    .line 819
    .line 820
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 821
    .line 822
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 823
    .line 824
    if-eqz v1, :cond_26

    .line 825
    .line 826
    new-instance v1, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 827
    .line 828
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 829
    .line 830
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 831
    .line 832
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 833
    .line 834
    invoke-direct {v1, v3, v2, v4}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    .line 835
    .line 836
    .line 837
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 838
    .line 839
    const/high16 v3, 0x20000000

    .line 840
    .line 841
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 842
    .line 843
    .line 844
    goto :goto_e

    .line 845
    :cond_25
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 846
    .line 847
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 848
    .line 849
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 850
    .line 851
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    .line 852
    .line 853
    .line 854
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 855
    .line 856
    if-nez v1, :cond_28

    .line 857
    .line 858
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 859
    .line 860
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 861
    .line 862
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 863
    .line 864
    new-instance v4, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    .line 865
    .line 866
    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    .line 867
    .line 868
    .line 869
    const/4 v5, 0x0

    .line 870
    invoke-virtual {v3, v2, v1, v5, v4}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 871
    .line 872
    .line 873
    :cond_26
    :goto_e
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 874
    .line 875
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 876
    .line 877
    if-eqz v2, :cond_27

    .line 878
    .line 879
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    .line 884
    .line 885
    .line 886
    move-result v1

    .line 887
    if-eqz v1, :cond_27

    .line 888
    .line 889
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 890
    .line 891
    const-string/jumbo v1, "split_screen_starting"

    .line 892
    .line 893
    .line 894
    const/4 v3, 0x1

    .line 895
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 896
    .line 897
    .line 898
    goto :goto_f

    .line 899
    :cond_27
    const/4 v3, 0x1

    .line 900
    :goto_f
    return v3

    .line 901
    :cond_28
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 902
    .line 903
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 904
    .line 905
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    .line 907
    .line 908
    const/4 v0, 0x0

    .line 909
    throw v0

    .line 910
    :cond_29
    const/4 v3, 0x1

    .line 911
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 912
    .line 913
    iput v3, v4, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 914
    .line 915
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 916
    .line 917
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 918
    .line 919
    const/16 v5, 0xb

    .line 920
    .line 921
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    const-wide/16 v5, 0x7d0

    .line 929
    .line 930
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 931
    .line 932
    .line 933
    invoke-virtual {v0, v2, v8, v1}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    if-eqz v1, :cond_2a

    .line 938
    .line 939
    const/4 v1, 0x0

    .line 940
    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 941
    .line 942
    const/4 v1, 0x1

    .line 943
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 944
    .line 945
    goto :goto_10

    .line 946
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    .line 947
    .line 948
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    iget v3, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 954
    .line 955
    iget v1, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 956
    .line 957
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 958
    .line 959
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 960
    .line 961
    const/4 v6, -0x1

    .line 962
    invoke-virtual {v4, v3, v1, v6, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IIILcom/android/server/wm/DisplayContent;)V

    .line 963
    .line 964
    .line 965
    :goto_10
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 966
    .line 967
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 968
    .line 969
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 970
    .line 971
    new-instance v4, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    .line 972
    .line 973
    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    .line 974
    .line 975
    .line 976
    const/4 v0, 0x0

    .line 977
    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 978
    .line 979
    .line 980
    const/4 v0, 0x1

    .line 981
    return v0
.end method

.method public uptimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public useDefaultSettingsProvider()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 2
    .line 3
    return p0
.end method
