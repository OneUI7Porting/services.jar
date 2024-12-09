.class public final Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field public static isDumped:Z

.field public static mAllocatedMemory:J

.field public static mContext:Landroid/content/Context;

.field public static mCurrentBlockGcCount:J

.field public static mCurrentTimeWaitingForGc:J

.field public static mMaxHeap:J

.field public static mMinHeap:J

.field public static mPrevTotalBlockingGcCount:J

.field public static mPrevTotalTimeWaitingForGc:J

.field public static mTotalMemory:J

.field public static sWatchdog:Lcom/android/server/Watchdog;

.field public static syncCount:J


# instance fields
.field public final fdWatcher:Lcom/android/server/FileDescriptorWatcher;

.field public final hdWatcher:Lcom/android/server/HeapdumpWatcher;

.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllowRestart:Z

.field public mController:Landroid/app/IActivityController;

.field public final mHandlerCheckers:Ljava/util/ArrayList;

.field public final mInterestingJavaPids:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public final mThread:Ljava/lang/Thread;

.field public final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field public volatile mWatchdogTimeoutMillis:J

.field public final softdog:Lcom/android/server/WatchdogSoftdog;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const-class v0, Lcom/android/server/Watchdog;

    .line 2
    .line 3
    const-string/jumbo v0, "ro.product.cpu.abilist64"

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo v0, "dalvik.vm.dex2oat64.enabled"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v2, "true"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "/apex/com.android.art/bin/dex2oat64"

    .line 36
    .line 37
    :goto_1
    move-object/from16 v25, v0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string v0, "/apex/com.android.art/bin/dex2oat32"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_2
    const-string/jumbo v28, "webview_zygote"

    .line 44
    .line 45
    .line 46
    const-string v29, "/vendor/bin/hw/vendor.samsung.hardware.camera.provider-service_64"

    .line 47
    .line 48
    const-string v2, "/system/bin/audioserver"

    .line 49
    .line 50
    const-string v3, "/system/bin/cameraserver"

    .line 51
    .line 52
    const-string v4, "/system/bin/drmserver"

    .line 53
    .line 54
    const-string v5, "/system/bin/keystore2"

    .line 55
    .line 56
    const-string v6, "/system/bin/mediadrmserver"

    .line 57
    .line 58
    const-string v7, "/system/bin/mediaserver"

    .line 59
    .line 60
    const-string v8, "/system/bin/mediaserver32"

    .line 61
    .line 62
    const-string v9, "/system/bin/mediaserver64"

    .line 63
    .line 64
    const-string v10, "/system/bin/netd"

    .line 65
    .line 66
    const-string v11, "/system/bin/sdcard"

    .line 67
    .line 68
    const-string v12, "/system/bin/servicemanager"

    .line 69
    .line 70
    const-string v13, "/system/bin/surfaceflinger"

    .line 71
    .line 72
    const-string v14, "/system/bin/vold"

    .line 73
    .line 74
    const-string v15, "/system/bin/installd"

    .line 75
    .line 76
    const-string/jumbo v16, "media.extractor"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v17, "media.metrics"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v18, "media.codec"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v19, "media.swcodec"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v20, "media.transcoding"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v21, "com.android.bluetooth"

    .line 92
    .line 93
    .line 94
    const-string v22, "/apex/com.android.art/bin/artd"

    .line 95
    .line 96
    const-string v23, "/apex/com.android.os.statsd/bin/statsd"

    .line 97
    .line 98
    const-string v24, "/apex/com.samsung.android.spqr/bin/spqr"

    .line 99
    .line 100
    const-string/jumbo v26, "zygote64"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v27, "zygote"

    .line 104
    .line 105
    .line 106
    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 111
    .line 112
    const-string v26, "android.hardware.vr@1.0::IVr"

    .line 113
    .line 114
    const-string v27, "android.system.suspend@1.0::ISystemSuspend"

    .line 115
    .line 116
    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    .line 117
    .line 118
    const-string v3, "android.hardware.audio@5.0::IDevicesFactory"

    .line 119
    .line 120
    const-string v4, "android.hardware.audio@6.0::IDevicesFactory"

    .line 121
    .line 122
    const-string v5, "android.hardware.audio@7.0::IDevicesFactory"

    .line 123
    .line 124
    const-string v6, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 125
    .line 126
    const-string v7, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 127
    .line 128
    const-string v8, "android.hardware.bluetooth@1.0::IBluetoothHci"

    .line 129
    .line 130
    const-string v9, "android.hardware.camera.provider@2.7::ICameraProvider"

    .line 131
    .line 132
    const-string v10, "android.hardware.gnss@1.0::IGnss"

    .line 133
    .line 134
    const-string v11, "android.hardware.graphics.allocator@2.0::IAllocator"

    .line 135
    .line 136
    const-string v12, "android.hardware.graphics.allocator@4.0::IAllocator"

    .line 137
    .line 138
    const-string v13, "android.hardware.graphics.composer@2.1::IComposer"

    .line 139
    .line 140
    const-string v14, "android.hardware.health@2.0::IHealth"

    .line 141
    .line 142
    const-string v15, "android.hardware.light@2.0::ILight"

    .line 143
    .line 144
    const-string v16, "android.hardware.media.c2@1.0::IComponentStore"

    .line 145
    .line 146
    const-string v17, "android.hardware.media.omx@1.0::IOmx"

    .line 147
    .line 148
    const-string v18, "android.hardware.media.omx@1.0::IOmxStore"

    .line 149
    .line 150
    const-string v19, "android.hardware.neuralnetworks@1.0::IDevice"

    .line 151
    .line 152
    const-string v20, "android.hardware.power@1.0::IPower"

    .line 153
    .line 154
    const-string v21, "android.hardware.power.stats@1.0::IPowerStats"

    .line 155
    .line 156
    const-string v22, "android.hardware.sensors@1.0::ISensors"

    .line 157
    .line 158
    const-string v23, "android.hardware.sensors@2.0::ISensors"

    .line 159
    .line 160
    const-string v24, "android.hardware.sensors@2.1::ISensors"

    .line 161
    .line 162
    const-string v25, "android.hardware.vibrator@1.0::IVibrator"

    .line 163
    .line 164
    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 173
    .line 174
    const-string v22, "android.system.suspend.ISystemSuspend/"

    .line 175
    .line 176
    const-string v23, "android.hardware.thermal.IThermal/"

    .line 177
    .line 178
    const-string v2, "android.hardware.audio.core.IModule/"

    .line 179
    .line 180
    const-string v3, "android.hardware.audio.core.IConfig/"

    .line 181
    .line 182
    const-string v4, "android.hardware.audio.effect.IFactory/"

    .line 183
    .line 184
    const-string v5, "android.hardware.biometrics.face.IFace/"

    .line 185
    .line 186
    const-string v6, "android.hardware.biometrics.fingerprint.IFingerprint/"

    .line 187
    .line 188
    const-string v7, "android.hardware.bluetooth.IBluetoothHci/"

    .line 189
    .line 190
    const-string v8, "android.hardware.camera.provider.ICameraProvider/"

    .line 191
    .line 192
    const-string v9, "android.hardware.drm.IDrmFactory/"

    .line 193
    .line 194
    const-string v10, "android.hardware.gnss.IGnss/"

    .line 195
    .line 196
    const-string v11, "android.hardware.graphics.allocator.IAllocator/"

    .line 197
    .line 198
    const-string v12, "android.hardware.graphics.composer3.IComposer/"

    .line 199
    .line 200
    const-string v13, "android.hardware.health.IHealth/"

    .line 201
    .line 202
    const-string v14, "android.hardware.input.processor.IInputProcessor/"

    .line 203
    .line 204
    const-string v15, "android.hardware.light.ILights/"

    .line 205
    .line 206
    const-string v16, "android.hardware.neuralnetworks.IDevice/"

    .line 207
    .line 208
    const-string v17, "android.hardware.power.IPower/"

    .line 209
    .line 210
    const-string v18, "android.hardware.power.stats.IPowerStats/"

    .line 211
    .line 212
    const-string v19, "android.hardware.sensors.ISensors/"

    .line 213
    .line 214
    const-string v20, "android.hardware.vibrator.IVibrator/"

    .line 215
    .line 216
    const-string v21, "android.hardware.vibrator.IVibratorManager/"

    .line 217
    .line 218
    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    .line 223
    .line 224
    const-wide/16 v2, 0x0

    .line 225
    .line 226
    sput-wide v2, Lcom/android/server/Watchdog;->syncCount:J

    .line 227
    .line 228
    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    .line 229
    .line 230
    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    .line 231
    .line 232
    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    .line 233
    .line 234
    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 235
    .line 236
    sput-wide v2, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 237
    .line 238
    sput-wide v2, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 239
    .line 240
    const-wide v2, 0x7fffffffffffffffL

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    sput-wide v2, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 246
    .line 247
    const-wide/16 v2, 0x0

    .line 248
    .line 249
    sput-wide v2, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 250
    .line 251
    sput-boolean v1, Lcom/android/server/Watchdog;->isDumped:Z

    .line 252
    .line 253
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 20
    .line 21
    const-wide/32 v3, 0xea60

    .line 22
    .line 23
    .line 24
    iput-wide v3, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    iput-object v4, p0, Lcom/android/server/Watchdog;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 35
    .line 36
    new-instance v4, Ljava/lang/Thread;

    .line 37
    .line 38
    new-instance v5, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-direct {v5, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/Watchdog;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v6, "watchdog"

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v4, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 50
    .line 51
    const-string/jumbo v4, "watchdog.monitor"

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static {v5, v4, v2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance v6, Lcom/android/server/Watchdog$HandlerChecker;

    .line 60
    .line 61
    new-instance v7, Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v7, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v4, "monitor thread"

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, v7, v4, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v6, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 77
    .line 78
    invoke-static {v6}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 86
    .line 87
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string/jumbo v7, "foreground thread"

    .line 92
    .line 93
    .line 94
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 105
    .line 106
    new-instance v6, Landroid/os/Handler;

    .line 107
    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v7, "main thread"

    .line 116
    .line 117
    .line 118
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 129
    .line 130
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const-string/jumbo v7, "ui thread"

    .line 135
    .line 136
    .line 137
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 148
    .line 149
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string/jumbo v7, "i/o thread"

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    const-string/jumbo v7, "display thread"

    .line 173
    .line 174
    .line 175
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 186
    .line 187
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    const-string v7, "animation thread"

    .line 192
    .line 193
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v4, Lcom/android/server/Watchdog$HandlerChecker;

    .line 204
    .line 205
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    const-string/jumbo v7, "surface animation thread"

    .line 210
    .line 211
    .line 212
    invoke-direct {v4, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v4}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    .line 223
    .line 224
    invoke-direct {v0, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 225
    .line 226
    .line 227
    iput-object v0, p0, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    new-instance v0, Lcom/android/server/FileDescriptorWatcher;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    iput v5, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 257
    .line 258
    iput-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 259
    .line 260
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 266
    .line 267
    new-instance v0, Lcom/android/server/HeapdumpWatcher;

    .line 268
    .line 269
    invoke-direct {v0}, Lcom/android/server/HeapdumpWatcher;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 273
    .line 274
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 275
    .line 276
    if-nez v0, :cond_0

    .line 277
    .line 278
    new-instance v0, Lcom/android/server/WatchdogSoftdog;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 281
    .line 282
    .line 283
    const/16 v1, 0x64

    .line 284
    .line 285
    iput v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 286
    .line 287
    iput-boolean v2, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 288
    .line 289
    sput-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 290
    .line 291
    :cond_0
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 292
    .line 293
    iput-object v0, p0, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 294
    .line 295
    return-void
.end method

.method public static describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    check-cast v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    const-string v3, ", "

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const-string v3, "Blocked in handler"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "Blocked in monitor "

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_1
    iget-object v4, v2, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    iget-wide v6, v2, Lcom/android/server/Watchdog$HandlerChecker;->mStartTimeMillis:J

    .line 63
    .line 64
    sub-long/2addr v4, v6

    .line 65
    const-wide/16 v6, 0x3e8

    .line 66
    .line 67
    div-long/2addr v4, v6

    .line 68
    const-string v6, " on "

    .line 69
    .line 70
    invoke-static {v3, v6}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v6, v2, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v6, " ("

    .line 80
    .line 81
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v2, v2, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, ") for "

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v2, "s"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method public static doSysRq(C)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 2
    .line 3
    const-string v1, "/proc/sysrq-trigger"

    .line 4
    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception v0

    .line 25
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :goto_1
    const-string v0, "Watchdog"

    .line 30
    .line 31
    const-string v1, "Failed to write to /proc/sysrq-trigger"

    .line 32
    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_2
    return-void
.end method

.method public static getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/Watchdog;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 13
    .line 14
    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    array-length v3, v1

    .line 15
    move v4, v2

    .line 16
    :goto_0
    if-ge v4, v3, :cond_3

    .line 17
    .line 18
    aget-object v5, v1, v4

    .line 19
    .line 20
    sget-object v6, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    .line 21
    .line 22
    array-length v7, v6

    .line 23
    move v8, v2

    .line 24
    :goto_1
    if-ge v8, v7, :cond_2

    .line 25
    .line 26
    aget-object v9, v6, v8

    .line 27
    .line 28
    iget-object v10, v5, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-eqz v9, :cond_1

    .line 35
    .line 36
    iget v9, v5, Landroid/os/ServiceDebugInfo;->debugPid:I

    .line 37
    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 74
    .line 75
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 76
    .line 77
    const/4 v5, -0x1

    .line 78
    if-ne v4, v5, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 82
    .line 83
    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    iget v3, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string v3, "Watchdog"

    .line 104
    .line 105
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :cond_6
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    array-length v3, v1

    .line 117
    :goto_4
    if-ge v2, v3, :cond_7

    .line 118
    .line 119
    aget v4, v1, v2

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    return-object v1
.end method

.method public static getPsInfo()V
    .locals 7

    .line 1
    const-string v0, "Watchdog"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "ps -A -o PID,PPID,S,NAME"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v3, 0x5

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 29
    .line 30
    new-instance v3, Ljava/io/InputStreamReader;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    .line 44
    :try_start_2
    new-instance v3, Ljava/io/FileWriter;

    .line 45
    .line 46
    const-string v4, "/data/log/watchdog_ps"

    .line 47
    .line 48
    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    :try_start_3
    new-instance v4, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 v5, 0xa

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v4

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 93
    .line 94
    .line 95
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    .line 97
    .line 98
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_6

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    goto :goto_7

    .line 104
    :catchall_2
    move-exception v3

    .line 105
    goto :goto_4

    .line 106
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_3
    move-exception v3

    .line 111
    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 115
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catchall_4
    move-exception v2

    .line 120
    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_5
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 124
    :catch_0
    :try_start_b
    const-string v2, "Failed to write watchdog_ps"

    .line 125
    .line 126
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_1
    :goto_6
    return-void

    .line 131
    :goto_7
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 132
    .line 133
    .line 134
    :catch_2
    throw v0

    .line 135
    :catch_3
    const-string v1, "Failed to get ps info"

    .line 136
    .line 137
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public static writeTimeoutHistory(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 8
    .line 9
    const-string v1, "/data/system/watchdog-timeout-history.txt"

    .line 10
    .line 11
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    const-string/jumbo v1, "ro.boottime.zygote"

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, ":"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    :goto_1
    const-string v0, "Watchdog"

    .line 51
    .line 52
    const-string v1, "Failed to write file /data/system/watchdog-timeout-history.txt"

    .line 53
    .line 54
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_2
    return-void
.end method


# virtual methods
.method public final addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final addThread(Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addThread(Landroid/os/Handler;J)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    new-instance p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "WatchdogTimeoutMillis="

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ne v3, p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public final pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget v2, v1, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    add-int/2addr v2, v3

    .line 48
    iput v2, v1, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 49
    .line 50
    iput-boolean v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "Pausing HandlerChecker: "

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, " for reason: "

    .line 62
    .line 63
    const-string v5, ". Pause count: "

    .line 64
    .line 65
    invoke-static {v2, v3, v4, p1, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v1, v1, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 69
    .line 70
    const-string v3, "Watchdog"

    .line 71
    .line 72
    invoke-static {v2, v1, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final pauseWatchingCurrentThreadFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final printLogAndCheckStatus()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0x100000

    .line 10
    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    sput-wide v0, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    div-long/2addr v4, v2

    .line 24
    sub-long/2addr v0, v4

    .line 25
    sput-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 28
    .line 29
    iput-wide v0, v2, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    const-string v2, "/proc/self/fd"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    array-length v1, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, -0x1

    .line 52
    :goto_0
    iput v1, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 53
    .line 54
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 55
    .line 56
    const-wide/16 v2, 0x1

    .line 57
    .line 58
    add-long/2addr v0, v2

    .line 59
    sput-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 60
    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 62
    .line 63
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, " ["

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/util/Date;

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "]"

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 98
    .line 99
    iget-boolean v0, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    const-string v0, " softdog disabled"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const-string v0, ""

    .line 107
    .line 108
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget-wide v1, Lcom/android/server/Watchdog;->syncCount:J

    .line 116
    .line 117
    const-wide/16 v3, 0x14

    .line 118
    .line 119
    rem-long/2addr v1, v3

    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .line 122
    cmp-long v1, v1, v3

    .line 123
    .line 124
    const-string v2, "Watchdog"

    .line 125
    .line 126
    if-lez v1, :cond_2

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v5, "!@Sync: "

    .line 131
    .line 132
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-wide v5, Lcom/android/server/Watchdog;->syncCount:J

    .line 136
    .line 137
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v5, " heap(MB): "

    .line 141
    .line 142
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 146
    .line 147
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v5, " / "

    .line 151
    .line 152
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    sget-wide v5, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 156
    .line 157
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, " FD: "

    .line 161
    .line 162
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v5, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 166
    .line 167
    iget v5, v5, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 168
    .line 169
    invoke-static {v1, v5, v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_2
    const-string/jumbo v1, "art.gc.total-time-waiting-for-gc"

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    const-string/jumbo v1, "art.gc.blocking-gc-count"

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 197
    .line 198
    sget-wide v9, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    .line 199
    .line 200
    sub-long v9, v5, v9

    .line 201
    .line 202
    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v9

    .line 206
    sput-wide v9, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    .line 207
    .line 208
    sget-wide v9, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    .line 209
    .line 210
    sub-long v9, v7, v9

    .line 211
    .line 212
    sput-wide v9, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 213
    .line 214
    sput-wide v5, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    .line 215
    .line 216
    sput-wide v7, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v5, "Sync:\t"

    .line 221
    .line 222
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-wide v5, Lcom/android/server/Watchdog;->syncCount:J

    .line 226
    .line 227
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v5, "\theap(MB):\t"

    .line 231
    .line 232
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 236
    .line 237
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v5, "\t/\t"

    .line 241
    .line 242
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    sget-wide v5, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 246
    .line 247
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v5, "\tnative(MB):\t"

    .line 251
    .line 252
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    new-instance v5, Landroid/os/Debug$MemoryInfo;

    .line 256
    .line 257
    invoke-direct {v5}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-static {v5}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 261
    .line 262
    .line 263
    iget v6, v5, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 264
    .line 265
    iget v5, v5, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 266
    .line 267
    add-int/2addr v6, v5

    .line 268
    div-int/lit16 v6, v6, 0x400

    .line 269
    .line 270
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v5, "\tFD:\t"

    .line 274
    .line 275
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v5, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 279
    .line 280
    iget v5, v5, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 281
    .line 282
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v5, "\tWaitTime:\t"

    .line 286
    .line 287
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    sget-wide v5, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    .line 291
    .line 292
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v5, " ms\tGCcnt:\t"

    .line 296
    .line 297
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    sget-wide v5, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 301
    .line 302
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v5, "\tFullGC:\t"

    .line 306
    .line 307
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string/jumbo v5, "art.gc.pre-oome-gc-count"

    .line 311
    .line 312
    .line 313
    invoke-static {v5}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v6, "!@"

    .line 327
    .line 328
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string v6, "\t"

    .line 332
    .line 333
    const-string v7, " "

    .line 334
    .line 335
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    sget-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 353
    .line 354
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 355
    .line 356
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 357
    .line 358
    .line 359
    move-result-wide v0

    .line 360
    sput-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 361
    .line 362
    sget-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 363
    .line 364
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 365
    .line 366
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 367
    .line 368
    .line 369
    move-result-wide v0

    .line 370
    sput-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 371
    .line 372
    :goto_2
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 373
    .line 374
    const-wide/16 v5, 0x2d0

    .line 375
    .line 376
    rem-long/2addr v0, v5

    .line 377
    cmp-long v0, v0, v3

    .line 378
    .line 379
    if-lez v0, :cond_3

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_3
    new-instance v0, Lcom/android/server/Watchdog$1;

    .line 383
    .line 384
    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 388
    .line 389
    .line 390
    :goto_3
    iget-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 391
    .line 392
    iget v0, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 393
    .line 394
    int-to-long v0, v0

    .line 395
    const-wide/16 v2, 0x1388

    .line 396
    .line 397
    cmp-long v0, v0, v2

    .line 398
    .line 399
    const/4 v1, 0x1

    .line 400
    const-string v2, "Watchdog:HeapdumpWatcher"

    .line 401
    .line 402
    if-ltz v0, :cond_5

    .line 403
    .line 404
    sget-boolean v0, Lcom/android/server/Watchdog;->isDumped:Z

    .line 405
    .line 406
    if-eqz v0, :cond_4

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    .line 410
    .line 411
    new-instance v3, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher;

    .line 412
    .line 413
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    const-string v3, "FDs are overused. Creating heapdump."

    .line 428
    .line 429
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/android/server/HeapdumpWatcher;->makeHeapDump()V

    .line 433
    .line 434
    .line 435
    sput-boolean v1, Lcom/android/server/Watchdog;->isDumped:Z

    .line 436
    .line 437
    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 438
    .line 439
    iget-wide v3, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 440
    .line 441
    long-to-double v3, v3

    .line 442
    sget-wide v5, Lcom/android/server/HeapdumpWatcher;->THRESHOLD_OF_HEAPSIZE:D

    .line 443
    .line 444
    cmpg-double v0, v3, v5

    .line 445
    .line 446
    if-gez v0, :cond_6

    .line 447
    .line 448
    const/4 v0, 0x0

    .line 449
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 450
    .line 451
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 452
    .line 453
    goto :goto_5

    .line 454
    :cond_6
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 455
    .line 456
    add-int/2addr v0, v1

    .line 457
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 458
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v1, "!@ The heap has been allocated excessively. OverThresholdCnt : "

    .line 462
    .line 463
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget v1, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 467
    .line 468
    invoke-static {v0, v1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 472
    .line 473
    const/16 v1, 0x14

    .line 474
    .line 475
    if-ge v0, v1, :cond_7

    .line 476
    .line 477
    const/4 v1, 0x2

    .line 478
    if-ne v0, v1, :cond_9

    .line 479
    .line 480
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->makeHeapDump()V

    .line 481
    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkScreenOff()Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_9

    .line 489
    .line 490
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkBackgroundAudio()Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_9

    .line 495
    .line 496
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkCall()Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-nez v0, :cond_8

    .line 501
    .line 502
    goto :goto_5

    .line 503
    :cond_8
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 504
    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string v2, "HeapFull, "

    .line 508
    .line 509
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-wide v2, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 513
    .line 514
    const-string p0, "MB was used"

    .line 515
    .line 516
    invoke-static {v1, v2, v3, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p0

    .line 520
    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v0

    .line 524
    :cond_9
    :goto_5
    return-void
.end method

.method public final processStarted(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "com.android.phone"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string v0, "Watchdog"

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Interesting Java process "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " started. Pid "

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter p2

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    monitor-exit p2

    .line 60
    :cond_1
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

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
