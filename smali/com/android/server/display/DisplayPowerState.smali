.class public final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

.field public static final COUNTER_COLOR_FADE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

.field public static final SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;


# instance fields
.field public final mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCleanListener:Ljava/lang/Runnable;

.field public final mColorFade:Lcom/android/server/display/ColorFade;

.field public mColorFadeDrawPending:Z

.field final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field public mColorFadeLevel:F

.field public mColorFadePrepared:Z

.field public mColorFadeReady:Z

.field public final mDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field public mScreenBrightness:F

.field public mScreenReady:Z

.field public mScreenState:I

.field public mScreenUpdatePending:Z

.field public final mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

.field public mSdrScreenBrightness:F

.field public volatile mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "DisplayPowerState"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 8
    .line 9
    const-string v0, "ColorFadeLevel"

    .line 10
    .line 11
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    .line 14
    .line 15
    const-string/jumbo v1, "electronBeamLevel"

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    .line 25
    .line 26
    const-string/jumbo v1, "screenBrightnessFloat"

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    .line 36
    .line 37
    const-string/jumbo v1, "sdrScreenBrightnessFloat"

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;IILjava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 36
    .line 37
    new-instance p1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    iput p3, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 48
    .line 49
    iput-object p5, p0, Lcom/android/server/display/DisplayPowerState;->mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    iput p4, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 52
    .line 53
    const/high16 p1, 0x3f800000    # 1.0f

    .line 54
    .line 55
    if-eq p4, v1, :cond_0

    .line 56
    .line 57
    move p2, p1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 60
    .line 61
    :goto_0
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 62
    .line 63
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 70
    .line 71
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final dismissColorFade()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-wide/32 v2, 0x20000

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 23
    .line 24
    return-void
.end method

.method public final prepareColorFade(Landroid/content/Context;I)Z
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v6, 0x2

    .line 8
    const/4 v9, 0x1

    .line 9
    sget-object v10, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 10
    .line 11
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v11

    .line 18
    iput-wide v11, v10, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 19
    .line 20
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    if-eqz v10, :cond_20

    .line 24
    .line 25
    const-string v12, "ColorFade"

    .line 26
    .line 27
    const-string v13, "ColorFade start [PREPARE]  : mode="

    .line 28
    .line 29
    invoke-static {v2, v13, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v10, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput v2, v10, Lcom/android/server/display/ColorFade;->mMode:I

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v12

    .line 40
    iget-object v14, v10, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 41
    .line 42
    iget v15, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 43
    .line 44
    invoke-virtual {v14, v15}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v14

    .line 48
    if-nez v14, :cond_0

    .line 49
    .line 50
    goto/16 :goto_d

    .line 51
    .line 52
    :cond_0
    iget-boolean v15, v10, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 53
    .line 54
    if-eqz v15, :cond_2

    .line 55
    .line 56
    iget-object v15, v10, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    .line 57
    .line 58
    monitor-enter v15

    .line 59
    :try_start_0
    iget-boolean v1, v10, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    const-string v1, "ColorFade"

    .line 70
    .line 71
    const-string v2, "Failed to handle resolution change!"

    .line 72
    .line 73
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 77
    .line 78
    .line 79
    monitor-exit v15

    .line 80
    goto/16 :goto_d

    .line 81
    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const-string v1, "ColorFade"

    .line 86
    .line 87
    const-string v2, "ColorFade is already prepared"

    .line 88
    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :goto_0
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw v0

    .line 96
    :cond_2
    const-string v15, "ColorFade"

    .line 97
    .line 98
    const-string v8, "ColorFade start display info."

    .line 99
    .line 100
    invoke-static {v15, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v18

    .line 107
    iget v8, v14, Landroid/view/DisplayInfo;->layerStack:I

    .line 108
    .line 109
    iput v8, v10, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 110
    .line 111
    invoke-virtual {v14}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    iput v8, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 116
    .line 117
    invoke-virtual {v14}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    iput v8, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 122
    .line 123
    iget v15, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 124
    .line 125
    int-to-float v15, v15

    .line 126
    float-to-double v4, v15

    .line 127
    int-to-float v8, v8

    .line 128
    float-to-double v7, v8

    .line 129
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    double-to-float v4, v4

    .line 134
    iput v4, v10, Lcom/android/server/display/ColorFade;->mMaxRadius:F

    .line 135
    .line 136
    const/high16 v5, 0x3f000000    # 0.5f

    .line 137
    .line 138
    mul-float/2addr v4, v5

    .line 139
    iput v4, v10, Lcom/android/server/display/ColorFade;->mMinRadius:F

    .line 140
    .line 141
    iget v4, v14, Landroid/view/DisplayInfo;->colorMode:I

    .line 142
    .line 143
    const/16 v5, 0x9

    .line 144
    .line 145
    if-ne v4, v5, :cond_3

    .line 146
    .line 147
    move v4, v9

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    move v4, v11

    .line 150
    :goto_1
    iput-boolean v9, v10, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 151
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v7

    .line 156
    const-string v5, "ColorFade"

    .line 157
    .line 158
    const-string v15, "ColorFade end display info."

    .line 159
    .line 160
    invoke-static {v5, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    sub-long v18, v7, v18

    .line 164
    .line 165
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const-string v15, "ColorFade"

    .line 170
    .line 171
    const-string v3, "ColorFade start setColorFadeNightDim"

    .line 172
    .line 173
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    iget-object v3, v10, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    const-string/jumbo v15, "mDNIe"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 186
    .line 187
    iput-object v3, v10, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 188
    .line 189
    invoke-virtual {v3, v9}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    .line 190
    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v20

    .line 196
    const-string v3, "ColorFade"

    .line 197
    .line 198
    const-string v15, "ColorFade end setColorFadeNightDim"

    .line 199
    .line 200
    invoke-static {v3, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    sub-long v20, v20, v7

    .line 204
    .line 205
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    iget v7, v10, Lcom/android/server/display/ColorFade;->mMode:I

    .line 210
    .line 211
    if-ne v7, v6, :cond_5

    .line 212
    .line 213
    invoke-virtual {v10, v11}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_4

    .line 218
    .line 219
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_d

    .line 223
    .line 224
    :cond_4
    const-string v1, "ColorFade"

    .line 225
    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v4, "ColorFade End [PREPARE]  : mode="

    .line 229
    .line 230
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v2, " , <Time> displayInfo: "

    .line 237
    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    goto/16 :goto_8

    .line 252
    .line 253
    :cond_5
    const-string v7, "ColorFade"

    .line 254
    .line 255
    const-string v8, "ColorFade start screenshot."

    .line 256
    .line 257
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 261
    .line 262
    .line 263
    move-result-wide v7

    .line 264
    iget-object v15, v10, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 265
    .line 266
    iget v9, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 267
    .line 268
    invoke-virtual {v15, v9}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    if-nez v9, :cond_6

    .line 273
    .line 274
    const-string v9, "ColorFade"

    .line 275
    .line 276
    const-string v15, "Failed to take screenshot. Buffer is null"

    .line 277
    .line 278
    invoke-static {v9, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    :cond_6
    if-nez v9, :cond_7

    .line 283
    .line 284
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_d

    .line 288
    .line 289
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 290
    .line 291
    .line 292
    move-result-wide v20

    .line 293
    const-string v15, "ColorFade"

    .line 294
    .line 295
    const-string v6, "ColorFade end screenshot."

    .line 296
    .line 297
    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    sub-long v20, v20, v7

    .line 301
    .line 302
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 307
    .line 308
    .line 309
    move-result-wide v7

    .line 310
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    invoke-static {v15}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    invoke-virtual {v10, v11}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-nez v11, :cond_8

    .line 327
    .line 328
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_d

    .line 332
    .line 333
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 334
    .line 335
    .line 336
    move-result-wide v22

    .line 337
    sub-long v22, v22, v7

    .line 338
    .line 339
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    const-string v8, "ColorFade"

    .line 344
    .line 345
    const-string v11, "ColorFade start egl and surface."

    .line 346
    .line 347
    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 351
    .line 352
    .line 353
    move-result-wide v22

    .line 354
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 355
    .line 356
    if-nez v8, :cond_a

    .line 357
    .line 358
    const/4 v8, 0x0

    .line 359
    invoke-static {v8}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    iput-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 364
    .line 365
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 366
    .line 367
    if-ne v11, v8, :cond_9

    .line 368
    .line 369
    const-string/jumbo v1, "eglGetDisplay"

    .line 370
    .line 371
    .line 372
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :cond_9
    const/4 v8, 0x2

    .line 378
    new-array v0, v8, [I

    .line 379
    .line 380
    move-wide/from16 v24, v12

    .line 381
    .line 382
    const/4 v8, 0x0

    .line 383
    const/4 v12, 0x1

    .line 384
    invoke-static {v11, v0, v8, v0, v12}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_b

    .line 389
    .line 390
    const/4 v0, 0x0

    .line 391
    iput-object v0, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 392
    .line 393
    const-string/jumbo v0, "eglInitialize"

    .line 394
    .line 395
    .line 396
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :cond_a
    move-wide/from16 v24, v12

    .line 402
    .line 403
    :cond_b
    iget-object v0, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 404
    .line 405
    if-nez v0, :cond_e

    .line 406
    .line 407
    const/16 v0, 0xb

    .line 408
    .line 409
    new-array v0, v0, [I

    .line 410
    .line 411
    fill-array-data v0, :array_0

    .line 412
    .line 413
    .line 414
    const/4 v8, 0x1

    .line 415
    new-array v11, v8, [I

    .line 416
    .line 417
    const/4 v8, 0x1

    .line 418
    new-array v12, v8, [Landroid/opengl/EGLConfig;

    .line 419
    .line 420
    iget-object v13, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 421
    .line 422
    const/16 v30, 0x0

    .line 423
    .line 424
    const/16 v33, 0x0

    .line 425
    .line 426
    const/16 v28, 0x0

    .line 427
    .line 428
    move-object/from16 v26, v13

    .line 429
    .line 430
    move-object/from16 v27, v0

    .line 431
    .line 432
    move-object/from16 v29, v12

    .line 433
    .line 434
    move/from16 v31, v8

    .line 435
    .line 436
    move-object/from16 v32, v11

    .line 437
    .line 438
    invoke-static/range {v26 .. v33}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-nez v0, :cond_c

    .line 443
    .line 444
    const-string/jumbo v0, "eglChooseConfig"

    .line 445
    .line 446
    .line 447
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto :goto_2

    .line 451
    :cond_c
    const/4 v0, 0x0

    .line 452
    aget v8, v11, v0

    .line 453
    .line 454
    if-gtz v8, :cond_d

    .line 455
    .line 456
    const-string v1, "ColorFade"

    .line 457
    .line 458
    const-string/jumbo v2, "no valid config found"

    .line 459
    .line 460
    .line 461
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    goto :goto_2

    .line 465
    :cond_d
    aget-object v8, v12, v0

    .line 466
    .line 467
    iput-object v8, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 468
    .line 469
    :cond_e
    iget-object v0, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 470
    .line 471
    if-eqz v0, :cond_f

    .line 472
    .line 473
    iget-boolean v8, v10, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 474
    .line 475
    if-eq v15, v8, :cond_f

    .line 476
    .line 477
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 478
    .line 479
    invoke-static {v8, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 480
    .line 481
    .line 482
    const/4 v0, 0x0

    .line 483
    iput-object v0, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 484
    .line 485
    :cond_f
    iget-object v0, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 486
    .line 487
    if-nez v0, :cond_12

    .line 488
    .line 489
    const/4 v0, 0x5

    .line 490
    new-array v8, v0, [I

    .line 491
    .line 492
    const/16 v0, 0x3098

    .line 493
    .line 494
    const/4 v11, 0x0

    .line 495
    aput v0, v8, v11

    .line 496
    .line 497
    const/4 v0, 0x1

    .line 498
    const/4 v11, 0x2

    .line 499
    aput v11, v8, v0

    .line 500
    .line 501
    const/16 v12, 0x3038

    .line 502
    .line 503
    aput v12, v8, v11

    .line 504
    .line 505
    const/4 v13, 0x3

    .line 506
    aput v12, v8, v13

    .line 507
    .line 508
    const/16 v17, 0x4

    .line 509
    .line 510
    aput v12, v8, v17

    .line 511
    .line 512
    if-eqz v15, :cond_10

    .line 513
    .line 514
    const/16 v12, 0x32c0

    .line 515
    .line 516
    aput v12, v8, v11

    .line 517
    .line 518
    aput v0, v8, v13

    .line 519
    .line 520
    :cond_10
    move v0, v15

    .line 521
    iget-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 522
    .line 523
    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 524
    .line 525
    sget-object v13, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 526
    .line 527
    const/4 v15, 0x0

    .line 528
    invoke-static {v11, v12, v13, v8, v15}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 529
    .line 530
    .line 531
    move-result-object v8

    .line 532
    iput-object v8, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 533
    .line 534
    if-nez v8, :cond_13

    .line 535
    .line 536
    const-string/jumbo v0, "eglCreateContext"

    .line 537
    .line 538
    .line 539
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    .line 543
    .line 544
    goto/16 :goto_c

    .line 545
    .line 546
    :cond_12
    move v0, v15

    .line 547
    :cond_13
    invoke-virtual {v10, v0, v4}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-eqz v8, :cond_11

    .line 552
    .line 553
    iget v8, v14, Landroid/view/DisplayInfo;->rotation:I

    .line 554
    .line 555
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 556
    .line 557
    .line 558
    move-result v11

    .line 559
    if-nez v11, :cond_14

    .line 560
    .line 561
    const/4 v13, 0x1

    .line 562
    goto :goto_2

    .line 563
    :cond_14
    :try_start_2
    iget-boolean v11, v10, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 564
    .line 565
    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 566
    .line 567
    if-nez v11, :cond_16

    .line 568
    .line 569
    const/4 v11, 0x0

    .line 570
    const/4 v13, 0x1

    .line 571
    :try_start_3
    invoke-static {v13, v12, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 572
    .line 573
    .line 574
    const-string/jumbo v11, "glGenTextures"

    .line 575
    .line 576
    .line 577
    invoke-static {v11}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 578
    .line 579
    .line 580
    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    if-eqz v11, :cond_15

    .line 582
    .line 583
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 584
    .line 585
    .line 586
    goto :goto_2

    .line 587
    :cond_15
    :try_start_4
    iput-boolean v13, v10, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 588
    .line 589
    goto :goto_3

    .line 590
    :catchall_1
    move-exception v0

    .line 591
    goto/16 :goto_b

    .line 592
    .line 593
    :cond_16
    :goto_3
    const-string v11, "ColorFade"

    .line 594
    .line 595
    const-string v13, "ColorFade setScreenshot"

    .line 596
    .line 597
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    new-instance v11, Landroid/graphics/SurfaceTexture;

    .line 601
    .line 602
    const/4 v13, 0x0

    .line 603
    aget v12, v12, v13

    .line 604
    .line 605
    invoke-direct {v11, v12}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 606
    .line 607
    .line 608
    new-instance v12, Landroid/view/Surface;

    .line 609
    .line 610
    invoke-direct {v12, v11}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 611
    .line 612
    .line 613
    :try_start_5
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 614
    .line 615
    .line 616
    move-result-object v13

    .line 617
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    invoke-virtual {v12, v13, v9}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v11}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 625
    .line 626
    .line 627
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 628
    .line 629
    invoke-virtual {v11, v9}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 630
    .line 631
    .line 632
    :try_start_6
    invoke-virtual {v12}, Landroid/view/Surface;->release()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v11}, Landroid/graphics/SurfaceTexture;->release()V

    .line 636
    .line 637
    .line 638
    const/4 v9, 0x1

    .line 639
    if-ne v8, v9, :cond_17

    .line 640
    .line 641
    const/4 v8, 0x2

    .line 642
    goto :goto_4

    .line 643
    :cond_17
    const/4 v9, 0x2

    .line 644
    if-ne v8, v9, :cond_18

    .line 645
    .line 646
    const/4 v8, 0x4

    .line 647
    goto :goto_4

    .line 648
    :cond_18
    const/4 v9, 0x3

    .line 649
    if-ne v8, v9, :cond_19

    .line 650
    .line 651
    const/4 v8, 0x6

    .line 652
    goto :goto_4

    .line 653
    :cond_19
    const/4 v8, 0x0

    .line 654
    :goto_4
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 655
    .line 656
    const/4 v11, 0x0

    .line 657
    invoke-virtual {v9, v8, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 658
    .line 659
    .line 660
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 661
    .line 662
    const/4 v12, 0x1

    .line 663
    add-int/lit8 v13, v8, 0x1

    .line 664
    .line 665
    invoke-virtual {v9, v13, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 666
    .line 667
    .line 668
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 669
    .line 670
    const/4 v12, 0x2

    .line 671
    add-int/2addr v12, v8

    .line 672
    rem-int/lit8 v12, v12, 0x8

    .line 673
    .line 674
    invoke-virtual {v9, v12, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 675
    .line 676
    .line 677
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 678
    .line 679
    const/4 v12, 0x3

    .line 680
    add-int/lit8 v13, v8, 0x3

    .line 681
    .line 682
    rem-int/lit8 v13, v13, 0x8

    .line 683
    .line 684
    const/high16 v12, 0x3f800000    # 1.0f

    .line 685
    .line 686
    invoke-virtual {v9, v13, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 687
    .line 688
    .line 689
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 690
    .line 691
    const/4 v13, 0x4

    .line 692
    add-int/2addr v13, v8

    .line 693
    rem-int/lit8 v13, v13, 0x8

    .line 694
    .line 695
    invoke-virtual {v9, v13, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 696
    .line 697
    .line 698
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 699
    .line 700
    const/4 v13, 0x5

    .line 701
    add-int/2addr v13, v8

    .line 702
    rem-int/lit8 v13, v13, 0x8

    .line 703
    .line 704
    invoke-virtual {v9, v13, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 705
    .line 706
    .line 707
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 708
    .line 709
    const/4 v13, 0x6

    .line 710
    add-int/2addr v13, v8

    .line 711
    rem-int/lit8 v13, v13, 0x8

    .line 712
    .line 713
    invoke-virtual {v9, v13, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 714
    .line 715
    .line 716
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 717
    .line 718
    add-int/lit8 v8, v8, 0x7

    .line 719
    .line 720
    rem-int/lit8 v8, v8, 0x8

    .line 721
    .line 722
    invoke-virtual {v9, v8, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 723
    .line 724
    .line 725
    iget v8, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 726
    .line 727
    iget v9, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 728
    .line 729
    const/4 v11, 0x0

    .line 730
    invoke-static {v11, v11, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 731
    .line 732
    .line 733
    iget v8, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 734
    .line 735
    int-to-float v8, v8

    .line 736
    iget v9, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 737
    .line 738
    int-to-float v9, v9

    .line 739
    invoke-virtual {v10, v8, v9}, Lcom/android/server/display/ColorFade;->ortho(FF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 740
    .line 741
    .line 742
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 743
    .line 744
    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 746
    .line 747
    .line 748
    move-result-wide v8

    .line 749
    const-string v11, "ColorFade"

    .line 750
    .line 751
    const-string v13, "ColorFade end egl and surface."

    .line 752
    .line 753
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    sub-long v8, v8, v22

    .line 757
    .line 758
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 759
    .line 760
    .line 761
    move-result-object v8

    .line 762
    const-string v9, "ColorFade"

    .line 763
    .line 764
    const-string v11, "ColorFade start init GL."

    .line 765
    .line 766
    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 770
    .line 771
    .line 772
    move-result-wide v13

    .line 773
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 774
    .line 775
    .line 776
    move-result v9

    .line 777
    if-nez v9, :cond_1a

    .line 778
    .line 779
    move-object/from16 v0, p0

    .line 780
    .line 781
    goto/16 :goto_d

    .line 782
    .line 783
    :cond_1a
    :try_start_7
    invoke-virtual {v10, v1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    if-eqz v1, :cond_1b

    .line 788
    .line 789
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->initGLBuffers()V

    .line 790
    .line 791
    .line 792
    const-string/jumbo v1, "prepare"

    .line 793
    .line 794
    .line 795
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 796
    .line 797
    .line 798
    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 799
    if-eqz v1, :cond_1c

    .line 800
    .line 801
    :cond_1b
    move-object/from16 v0, p0

    .line 802
    .line 803
    goto/16 :goto_9

    .line 804
    .line 805
    :cond_1c
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 806
    .line 807
    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 809
    .line 810
    .line 811
    move-result-wide v16

    .line 812
    const-string v1, "ColorFade"

    .line 813
    .line 814
    const-string v9, "ColorFade end init GL."

    .line 815
    .line 816
    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    sub-long v16, v16, v13

    .line 820
    .line 821
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    const/4 v9, 0x1

    .line 826
    iput-boolean v9, v10, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 827
    .line 828
    iput-boolean v0, v10, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 829
    .line 830
    iput-boolean v4, v10, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    .line 831
    .line 832
    const-string v0, "ColorFade"

    .line 833
    .line 834
    const-string v4, "ColorFade start dejank."

    .line 835
    .line 836
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .line 838
    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 840
    .line 841
    .line 842
    move-result-wide v13

    .line 843
    const/4 v0, 0x3

    .line 844
    if-eq v2, v9, :cond_1e

    .line 845
    .line 846
    if-ne v2, v0, :cond_1d

    .line 847
    .line 848
    goto :goto_5

    .line 849
    :cond_1d
    const/4 v0, 0x0

    .line 850
    goto :goto_7

    .line 851
    :cond_1e
    :goto_5
    const/4 v4, 0x0

    .line 852
    :goto_6
    if-ge v4, v0, :cond_1d

    .line 853
    .line 854
    iput-boolean v9, v10, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    .line 855
    .line 856
    invoke-virtual {v10, v12}, Lcom/android/server/display/ColorFade;->draw(F)V

    .line 857
    .line 858
    .line 859
    add-int/2addr v4, v9

    .line 860
    const/4 v0, 0x3

    .line 861
    goto :goto_6

    .line 862
    :goto_7
    iput-boolean v0, v10, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    .line 863
    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 865
    .line 866
    .line 867
    move-result-wide v9

    .line 868
    const-string v0, "ColorFade"

    .line 869
    .line 870
    const-string v4, "ColorFade end dejank."

    .line 871
    .line 872
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .line 874
    .line 875
    sub-long v11, v9, v13

    .line 876
    .line 877
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    const-string v4, "ColorFade"

    .line 882
    .line 883
    new-instance v11, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    const-string v12, "ColorFade End [PREPARE]  : mode="

    .line 886
    .line 887
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v2, ", <Time> displayInfo: "

    .line 894
    .line 895
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    const-string v2, ", screenshot: "

    .line 902
    .line 903
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    const-string v2, ", createSurface : "

    .line 910
    .line 911
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    const-string v2, ", egl : "

    .line 918
    .line 919
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    const-string v2, ", initGl : "

    .line 926
    .line 927
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    const-string v1, ", nightModeTime : "

    .line 934
    .line 935
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    const-string v1, ", dejank : "

    .line 942
    .line 943
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    const-string v0, ", totalPrepare : "

    .line 950
    .line 951
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    sub-long v9, v9, v24

    .line 955
    .line 956
    invoke-static {v11, v9, v10, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 957
    .line 958
    .line 959
    :goto_8
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 960
    .line 961
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 962
    .line 963
    .line 964
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 965
    .line 966
    .line 967
    move-result-wide v1

    .line 968
    iget-wide v3, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 969
    .line 970
    sub-long/2addr v1, v3

    .line 971
    long-to-int v1, v1

    .line 972
    iput v1, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 973
    .line 974
    move-object/from16 v0, p0

    .line 975
    .line 976
    const/4 v1, 0x1

    .line 977
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 978
    .line 979
    const/4 v2, 0x0

    .line 980
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 981
    .line 982
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 983
    .line 984
    if-nez v2, :cond_1f

    .line 985
    .line 986
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 987
    .line 988
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 989
    .line 990
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 991
    .line 992
    const/4 v3, 0x0

    .line 993
    const/4 v4, 0x3

    .line 994
    invoke-virtual {v2, v4, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 995
    .line 996
    .line 997
    :cond_1f
    return v1

    .line 998
    :catchall_2
    move-exception v0

    .line 999
    goto :goto_a

    .line 1000
    :goto_9
    :try_start_8
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_d

    .line 1010
    :goto_a
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1011
    .line 1012
    .line 1013
    throw v0

    .line 1014
    :catchall_3
    move-exception v0

    .line 1015
    :try_start_9
    invoke-virtual {v12}, Landroid/view/Surface;->release()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v11}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1019
    .line 1020
    .line 1021
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1022
    :goto_b
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1023
    .line 1024
    .line 1025
    throw v0

    .line 1026
    :goto_c
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 1027
    .line 1028
    .line 1029
    :goto_d
    const/4 v1, 0x0

    .line 1030
    goto :goto_e

    .line 1031
    :cond_20
    move v1, v11

    .line 1032
    :goto_e
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 1033
    .line 1034
    const/4 v2, 0x1

    .line 1035
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 1036
    .line 1037
    return v1

    .line 1038
    nop

    .line 1039
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method public final scheduleScreenUpdate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setColorFadeLevel(F)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 8
    .line 9
    const-string v1, "DisplayPowerState"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "setColorFadeLevel: level="

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 32
    .line 33
    float-to-double v2, v0

    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    cmpl-double v0, v2, v4

    .line 37
    .line 38
    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "ColorFade exit displayId="

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    float-to-double v6, p1

    .line 61
    cmpl-double v0, v6, v4

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "ColorFade entry displayId="

    .line 68
    .line 69
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 83
    .line 84
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    const/4 v1, 0x0

    .line 88
    if-eq p1, v0, :cond_3

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 100
    .line 101
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 102
    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    const/4 v1, 0x3

    .line 113
    invoke-virtual {p1, v1, p0, v0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method public final waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method
