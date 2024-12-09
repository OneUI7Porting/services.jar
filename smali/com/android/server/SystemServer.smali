.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static sPendingWtfs:Ljava/util/LinkedList;


# instance fields
.field public enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public mDualAppService:Lcom/android/server/DualAppManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mZygotePreload:Ljava/util/concurrent/Future;

.field public sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public static synthetic $r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StartHidlServices"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static $r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    move v3, v0

    .line 5
    :catch_0
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-le v4, p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    :cond_0
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x2

    .line 23
    const/16 v7, 0x16c

    .line 24
    .line 25
    const-string v8, "System"

    .line 26
    .line 27
    if-le v4, p0, :cond_1

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const-string/jumbo v3, "fdtrack enable threshold reached, enabling"

    .line 32
    .line 33
    .line 34
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-static {v7, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v3, "fdtrack"

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move v3, v5

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    if-le v4, p1, :cond_7

    .line 50
    .line 51
    const-string/jumbo v5, "fdtrack abort threshold reached, dumping and aborting"

    .line 52
    .line 53
    .line 54
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/util/TreeSet;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v5, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    array-length v7, v5

    .line 73
    move v9, v0

    .line 74
    :goto_1
    if-ge v9, v7, :cond_4

    .line 75
    .line 76
    aget-object v10, v5, v9

    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-nez v11, :cond_2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    const-string/jumbo v12, "fdtrack-"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-nez v11, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v4, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-lt v5, v6, :cond_6

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_6

    .line 123
    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Ljava/io/File;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_5

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v7, "Failed to clean up hprof "

    .line 139
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 155
    .line 156
    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    .line 157
    .line 158
    .line 159
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v5, Ljava/util/Date;

    .line 163
    .line 164
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v6, "/data/system/heapdump/fdtrack-"

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v4, ".hprof"

    .line 185
    .line 186
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :catch_1
    move-exception v4

    .line 198
    const-string v5, "Failed to dump fdtrack hprof"

    .line 199
    .line 200
    invoke-static {v8, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    :goto_4
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v8

    .line 211
    cmp-long v10, v8, v1

    .line 212
    .line 213
    if-lez v10, :cond_9

    .line 214
    .line 215
    const-wide/32 v1, 0x36ee80

    .line 216
    .line 217
    .line 218
    add-long/2addr v8, v1

    .line 219
    if-eqz v3, :cond_8

    .line 220
    .line 221
    move v5, v6

    .line 222
    :cond_8
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 223
    .line 224
    .line 225
    move-wide v1, v8

    .line 226
    :cond_9
    :goto_5
    mul-int/lit16 v4, p2, 0x3e8

    .line 227
    .line 228
    int-to-long v4, v4

    .line 229
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0
.end method

.method public static synthetic $r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StartISensorManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static $r8$lambda$Djmghhk0H4gEPRWdl1V39kc2N1M(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    move-object/from16 v12, p20

    const-string v13, "HsumBootUserInitializer"

    const-string/jumbo v14, "device_provisioned"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v0, "Making services ready"

    const-string v15, "SystemServer"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3
    const-string v0, "!@Boot_EBS_D: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x226

    invoke-virtual {v0, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v12, Lcom/android/server/am/NativeCrashListener;

    invoke-direct {v12, v0}, Lcom/android/server/am/NativeCrashListener;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 9
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    const-string/jumbo v12, "observing native crashes"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 12
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 13
    :try_start_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v11}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 15
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v11, :cond_0

    .line 16
    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 17
    :goto_1
    new-instance v10, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v10, v0, v12, v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v10, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 18
    const-string/jumbo v10, "registering app ops policy"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 20
    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v10, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    .line 22
    :goto_3
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 23
    const-string v12, "android.hardware.type.automotive"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 25
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v9, "com.android.internal.car.CarServiceHelperService"

    .line 26
    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 27
    instance-of v9, v0, Landroid/util/Dumpable;

    if-eqz v9, :cond_2

    .line 28
    iget-object v9, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v8, v0

    check-cast v8, Landroid/util/Dumpable;

    invoke-static {v9, v8}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 29
    :cond_2
    instance-of v8, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v8, :cond_5

    .line 30
    check-cast v0, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v8, p2

    .line 31
    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v9, 0x0

    .line 32
    invoke-virtual {v8, v9, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCallerIdentity(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    move-result-object v16

    .line 33
    iget-boolean v9, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsAutomotive:Z

    if-nez v9, :cond_4

    invoke-static/range {v16 .. v16}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdb(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v17, v12

    const/4 v9, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move-object/from16 v17, v12

    const/4 v9, 0x1

    :goto_5
    const-string/jumbo v12, "can only set DevicePolicySafetyChecker on automotive builds or from ADB (but caller is %s)"

    move-object/from16 v18, v13

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v8, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDevicePolicySafetyCheckerUnchecked(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_6

    :cond_5
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .line 35
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_7

    :cond_6
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    :goto_7
    if-eqz p3, :cond_9

    .line 36
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const v0, 0x10403d5

    .line 37
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 39
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 40
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 41
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 42
    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_8

    .line 44
    :cond_7
    const-string v0, "Null wear service component name."

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 46
    :cond_9
    const-string/jumbo v0, "startResourceOverlayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 47
    :try_start_2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    :try_start_3
    iget-object v8, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_a

    .line 50
    invoke-static {v8}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 51
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "safeMode"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v8, 0x0

    .line 52
    invoke-virtual {v0, v8, v8}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catch_0
    move-exception v0

    .line 53
    :try_start_4
    const-string v8, "Error while starting LOM: "

    const-string v9, "SystemServer"

    .line 54
    invoke-static {v0, v8, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 55
    const-string/jumbo v8, "starting Resource Overlay Service"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_a
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 57
    const-string/jumbo v0, "startThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 58
    :try_start_5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 59
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 60
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.android.themecenter"

    const-string/jumbo v13, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v9, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v9, "safeMode"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string/jumbo v9, "isStartedBySystemServer"

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 64
    const-string/jumbo v8, "starting Theme Service"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v4, :cond_b

    .line 66
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 67
    :try_start_6
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 68
    const-string/jumbo v0, "enabling Airplane Mode during Safe Mode bootup"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 70
    :cond_b
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p7, :cond_d

    .line 71
    :try_start_7
    const-string v0, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "!@Boot_EBS_D: start networkManagement"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_c

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 75
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Prepared in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NetworkManagement"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 78
    :cond_c
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    .line 79
    :goto_c
    const-string v0, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "!@Boot_EBS_D: end networkManagement"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    .line 81
    const-string/jumbo v4, "making Network Managment Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_d
    if-eqz v6, :cond_e

    const/4 v4, 0x1

    .line 82
    iput-boolean v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 83
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 84
    iget-object v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v4, v0

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    .line 85
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 86
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    .line 87
    :try_start_8
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v5, v0

    .line 88
    const-string/jumbo v0, "making Connectivity Service ready"

    invoke-static {v0, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_f
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 90
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p9, :cond_10

    .line 91
    :try_start_9
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object v5, v0

    .line 92
    const-string/jumbo v0, "making VpnManagerService ready"

    invoke-static {v0, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_10
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 94
    const-string v0, "MakeVcnManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_11

    .line 95
    :try_start_a
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v5, v0

    .line 96
    const-string/jumbo v0, "making VcnManagementService ready"

    invoke-static {v0, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_11
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 98
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v6, :cond_12

    .line 99
    :try_start_b
    invoke-virtual {v6, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v4, v0

    .line 100
    const-string/jumbo v0, "making Network Policy Service ready"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_12
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 102
    const-string v0, "MakeUrspServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p11, :cond_13

    .line 103
    :try_start_c
    const-string v0, "UrspService"

    const-string/jumbo v4, "systemReady()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_13

    :catchall_a
    move-exception v0

    .line 104
    const-string/jumbo v4, "making ursp Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_13
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 106
    const-string v0, "WaitForAppDataPrepared"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 107
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 109
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_14

    .line 110
    invoke-static {v11, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    :cond_14
    const-string v0, "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x258

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v7, :cond_18

    .line 114
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 115
    iget-object v4, v7, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "switchToBootUser-"

    .line 116
    :try_start_d
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const/4 v6, 0x1

    move-object/from16 v8, v18

    if-ne v0, v6, :cond_15

    const/4 v10, 0x0

    goto :goto_14

    :catch_1
    move-exception v0

    .line 117
    const-string v6, "DEVICE_PROVISIONED setting not found."

    move-object/from16 v8, v18

    invoke-static {v8, v6, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_15
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    invoke-static {v14}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    const/4 v10, 0x0

    .line 120
    invoke-virtual {v0, v6, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    :goto_14
    const-string v0, "Unlocking system user"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v0, "unlock-system-user"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 123
    :try_start_e
    const-string v0, "am.startUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 124
    invoke-virtual {v4, v10, v6}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_16

    .line 126
    const-string/jumbo v0, "could not restart system user in background; trying unlock instead"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "am.unlockUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 128
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 129
    invoke-virtual {v0, v9, v6}, Lcom/android/server/am/UserController;->unlockUser(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_16

    .line 131
    const-string/jumbo v0, "could not unlock system user either"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception v0

    goto :goto_17

    .line 132
    :cond_16
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 133
    :try_start_f
    const-string/jumbo v0, "getBootUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 134
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget-object v6, v7, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v7, v17

    const/4 v9, 0x0

    .line 135
    invoke-virtual {v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 136
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerInternal;->getBootUser(Z)I

    move-result v0

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Switching to boot user %d"

    invoke-static {v8, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Failed to start user %d in foreground"

    invoke-static {v8, v4, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_16

    .line 143
    :catch_2
    const-string v0, "Failed to switch to boot user since there isn\'t one."

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_18

    .line 145
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 146
    throw v0

    .line 147
    :cond_18
    :goto_18
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 148
    :try_start_10
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception v0

    .line 149
    const-string/jumbo v4, "starting Network Stack"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 151
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 152
    :try_start_11
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v4, "android.net.ITetheringConnector"

    const-string v5, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    goto :goto_1a

    :catchall_d
    move-exception v0

    .line 153
    const-string/jumbo v4, "starting Tethering"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 155
    const-string v0, "SLocationServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p13

    if-eqz v4, :cond_19

    .line 156
    :try_start_12
    const-string/jumbo v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 157
    const-string/jumbo v5, "systemReady"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    const/4 v8, 0x1

    :try_start_13
    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    goto :goto_1c

    :catchall_e
    move-exception v0

    goto :goto_1b

    :catchall_f
    move-exception v0

    const/4 v8, 0x1

    .line 159
    :goto_1b
    const-string/jumbo v4, "making SLocation Service ready : "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_19
    const/4 v8, 0x1

    .line 160
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 161
    const-string v0, "SAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p14

    move v5, v8

    if-eqz v4, :cond_1b

    .line 162
    :try_start_14
    iget-object v0, v4, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    goto :goto_1e

    .line 163
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 164
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_1d

    :catch_3
    move-exception v0

    .line 165
    const-string v4, "Notifying SAccessoryManager running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :cond_1b
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 167
    const-string v0, "MoccaReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p15

    if-eqz v4, :cond_1c

    .line 168
    :try_start_15
    invoke-static {v3, v4}, Lcom/android/server/sensors/mocca/MoccaLoader;->systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    goto :goto_1f

    :catchall_10
    move-exception v0

    move-object v4, v0

    .line 169
    const-string/jumbo v0, "making Mocca Service ready : "

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :cond_1c
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 171
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p16

    if-eqz v4, :cond_1d

    .line 172
    :try_start_16
    iget-object v0, v4, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    goto :goto_20

    :catchall_11
    move-exception v0

    .line 173
    const-string v4, "Notifying CountryDetectorService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_1d
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 175
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p17, :cond_1e

    .line 176
    :try_start_17
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    goto :goto_21

    :catchall_12
    move-exception v0

    move-object v4, v0

    .line 177
    const-string v0, "Notifying NetworkTimeService running"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    :cond_1e
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 179
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 180
    :try_start_18
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    goto :goto_22

    :catchall_13
    move-exception v0

    move-object v4, v0

    .line 181
    const-string v0, "Notifying InputManagerService running"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 183
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 184
    :try_start_19
    invoke-virtual/range {p19 .. p19}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    goto :goto_23

    :catchall_14
    move-exception v0

    move-object v4, v0

    .line 185
    const-string v0, "Notifying TelephonyRegistry running"

    invoke-static {v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 187
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v4, p20

    if-eqz v4, :cond_1f

    .line 188
    :try_start_1a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v6, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v6, v4}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    const-string v7, "MediaRouterService"

    .line 189
    invoke-interface {v0, v6, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/server/media/MediaRouterService;->updateRunningUserAndProfiles(I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    goto :goto_24

    :catchall_15
    move-exception v0

    .line 191
    const-string v4, "Notifying MediaRouterService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    :cond_1f
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 193
    :try_start_1b
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 194
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V

    goto :goto_26

    :catch_4
    move-exception v0

    goto :goto_25

    .line 195
    :cond_20
    const-string v0, "Starting emergency service failed: emMgr is null"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    goto :goto_26

    .line 196
    :goto_25
    :try_start_1c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Starting emergency service failed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5

    goto :goto_26

    :catch_5
    move-exception v0

    .line 197
    const-string v4, "Notifying EmergencyModeService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :goto_26
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 199
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p21, :cond_21

    .line 200
    :try_start_1d
    const-string v0, "MmsServiceBroker"

    const-string v4, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    goto :goto_27

    :catchall_16
    move-exception v0

    .line 201
    const-string v4, "Notifying MmsService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_21
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 203
    :cond_22
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 204
    :try_start_1e
    const-string/jumbo v0, "incident"

    .line 205
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 207
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_17

    goto :goto_28

    :catchall_17
    move-exception v0

    .line 208
    const-string v4, "Notifying incident daemon running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    :cond_23
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 210
    iget-wide v6, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_24

    .line 211
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 212
    iget-wide v6, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v6, v7}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 214
    :cond_24
    :try_start_1f
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111016e

    .line 215
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    goto :goto_29

    :catch_6
    move-exception v0

    .line 216
    const-string v4, "Not starting ExynosDisplaySolutionService"

    invoke-static {v15, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_25

    .line 217
    const-string v0, "ExynosDisplaySolution"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 218
    :try_start_20
    const-string v0, "ExynosDisplaySolution Service"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string/jumbo v0, "exynos_display"

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    goto :goto_2a

    :catchall_18
    move-exception v0

    .line 220
    const-string v4, "Failed To Start ExynosDisplaySolution Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 222
    :cond_25
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 223
    :try_start_21
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v4, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_19

    goto :goto_2b

    :catchall_19
    move-exception v0

    .line 224
    const-string v4, "Triggering OdsignStatsLogger"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SemDisplayQualityFeature.ENABLED:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",PLATFORM:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    .line 227
    invoke-static {v0, v6, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_26

    .line 228
    const-string v0, "SemDisplayQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 229
    :try_start_22
    const-string v0, "SemDisplayQuality Service"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string/jumbo v0, "com.samsung.android.displayquality.SemDisplayQualityManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 231
    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 232
    filled-new-array/range {p4 .. p4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 233
    const-string v4, "DisplayQuality"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    goto :goto_2c

    :catchall_1a
    move-exception v0

    .line 234
    const-string v4, "Failed To Start SemDisplayQuality Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 236
    :cond_26
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;

    move/from16 v4, p22

    invoke-direct {v0, v1, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/SystemServer;Z)V

    const-string v1, "Load of Classes of Lazy Services"

    invoke-static {v1, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 237
    const-string v0, "Mobile Payment Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 238
    :try_start_23
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v4, v3, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 240
    const-string/jumbo v0, "mobile_payment"

    new-instance v4, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1b

    goto :goto_2d

    :catchall_1b
    move-exception v0

    .line 241
    const-string v4, "Failure starting Payment Manager Service"

    invoke-static {v15, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 243
    const-string v0, "StartVoiceNoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    .line 245
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v5, "com.sec.android.app.voicenote"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 249
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e8

    .line 251
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 252
    new-instance v8, Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;

    .line 253
    invoke-direct {v8}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 254
    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    invoke-static/range {p4 .. p4}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 257
    const-string v0, "StartSamsungHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    .line 259
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v4, "com.sec.android.app.shealth"

    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 263
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 266
    new-instance v4, Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;

    .line 267
    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 268
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    invoke-static/range {p4 .. p4}, Lcom/android/server/shealth/SamsungHealthService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 271
    const-string v0, "LazyService Wait Here"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 272
    const-string v0, "Lazy Service"

    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/system/heapdump/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 29
    .line 30
    const-string/jumbo v0, "sys.system_server.start_count"

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x1

    .line 39
    add-int/2addr v0, v2

    .line 40
    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    iput-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    iput-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 53
    .line 54
    move-wide v3, v7

    .line 55
    move-wide v5, v9

    .line 56
    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 57
    .line 58
    .line 59
    if-le v0, v2, :cond_0

    .line 60
    .line 61
    move v1, v2

    .line 62
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 63
    .line 64
    return-void
.end method

.method public static deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .locals 5

    .line 1
    const-string v0, "Failed to get maximum fd: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "/dev/null"

    .line 5
    .line 6
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 7
    .line 8
    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    .line 9
    .line 10
    or-int/2addr v3, v4

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v2

    .line 34
    :try_start_2
    const-string v3, "System"

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    :try_start_3
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_0
    :goto_0
    const v0, 0x7fffffff

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :goto_1
    if-eqz v1, :cond_1

    .line 69
    .line 70
    :try_start_4
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_3
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_1
    :goto_2
    throw v0
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    .line 1
    new-instance p0, Lcom/android/server/SystemServer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "********** Failed to load jvmti plugin: "

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v2, "InitBeforeStartServices"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "sys.system_server.start_count"

    .line 19
    .line 20
    .line 21
    iget v3, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "sys.system_server.start_elapsed"

    .line 31
    .line 32
    .line 33
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 34
    .line 35
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "sys.system_server.start_uptime"

    .line 43
    .line 44
    .line 45
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "sys.system_server.pid"

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "SystemServer"

    .line 69
    .line 70
    const-string v3, "!@Boot_EBS_F: SYSTEM_SERVER_START"

    .line 71
    .line 72
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget v2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 82
    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 88
    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/16 v3, 0xbc3

    .line 98
    .line 99
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v2, "persist.sys.language"

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_0

    .line 117
    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string/jumbo v3, "persist.sys.locale"

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v2, "persist.sys.language"

    .line 133
    .line 134
    .line 135
    const-string v3, ""

    .line 136
    .line 137
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo v2, "persist.sys.country"

    .line 141
    .line 142
    .line 143
    const-string v3, ""

    .line 144
    .line 145
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v2, "persist.sys.localevar"

    .line 149
    .line 150
    .line 151
    const-string v3, ""

    .line 152
    .line 153
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->setSystemServerProcess()V

    .line 161
    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    invoke-static {v2}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 168
    .line 169
    .line 170
    const-string v3, "FULL"

    .line 171
    .line 172
    sput-object v3, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-static {v3}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v4, "SystemServer"

    .line 179
    .line 180
    const-string v5, "Entered the Android system server!"

    .line 181
    .line 182
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    const-string v4, "SystemServer"

    .line 186
    .line 187
    const-string v5, "!@Boot: Entered the Android system server!"

    .line 188
    .line 189
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    const-string v4, "SystemServer"

    .line 193
    .line 194
    const-string v5, "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN"

    .line 195
    .line 196
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 200
    .line 201
    .line 202
    move-result-wide v4

    .line 203
    const/16 v6, 0xbc2

    .line 204
    .line 205
    invoke-static {v6, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 206
    .line 207
    .line 208
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 209
    .line 210
    const/16 v7, 0xf0

    .line 211
    .line 212
    if-nez v6, :cond_1

    .line 213
    .line 214
    const/16 v6, 0x13

    .line 215
    .line 216
    invoke-static {v7, v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 217
    .line 218
    .line 219
    :cond_1
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    .line 220
    .line 221
    .line 222
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 241
    .line 242
    .line 243
    invoke-static {v2}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 244
    .line 245
    .line 246
    invoke-static {v2}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 247
    .line 248
    .line 249
    invoke-static {v2}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 250
    .line 251
    .line 252
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 253
    .line 254
    .line 255
    const/16 v4, 0x1f

    .line 256
    .line 257
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 258
    .line 259
    .line 260
    const/4 v4, -0x2

    .line 261
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 262
    .line 263
    .line 264
    const/4 v4, 0x0

    .line 265
    invoke-static {v4}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 266
    .line 267
    .line 268
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    const-wide/16 v8, 0x64

    .line 276
    .line 277
    const-wide/16 v10, 0xc8

    .line 278
    .line 279
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 280
    .line 281
    .line 282
    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 283
    .line 284
    const-string v5, "android_servers"

    .line 285
    .line 286
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 290
    .line 291
    .line 292
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 293
    .line 294
    if-eqz v5, :cond_2

    .line 295
    .line 296
    const-string/jumbo v6, "persist.sys.debug.fdtrack_enable_threshold"

    .line 297
    .line 298
    .line 299
    const/16 v8, 0x640

    .line 300
    .line 301
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    const-string/jumbo v8, "persist.sys.debug.fdtrack_abort_threshold"

    .line 306
    .line 307
    .line 308
    const/16 v9, 0xbb8

    .line 309
    .line 310
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    const-string/jumbo v9, "persist.sys.debug.fdtrack_interval"

    .line 315
    .line 316
    .line 317
    const/16 v10, 0x78

    .line 318
    .line 319
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 320
    .line 321
    .line 322
    move-result v9

    .line 323
    new-instance v10, Ljava/lang/Thread;

    .line 324
    .line 325
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    .line 326
    .line 327
    invoke-direct {v11, v6, v8, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>(III)V

    .line 328
    .line 329
    .line 330
    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 334
    .line 335
    .line 336
    :cond_2
    invoke-static {}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 337
    .line 338
    .line 339
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    iput-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 348
    .line 349
    const v9, 0x1030453

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8, v9}, Landroid/content/Context;->setTheme(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v6, v9}, Landroid/content/Context;->setTheme(I)V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 363
    .line 364
    .line 365
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 366
    .line 367
    .line 368
    const-string/jumbo v6, "system_server_dumper"

    .line 369
    .line 370
    .line 371
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 372
    .line 373
    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 374
    .line 375
    .line 376
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 377
    .line 378
    invoke-static {v6, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 379
    .line 380
    .line 381
    new-instance v6, Lcom/android/server/SystemServiceManager;

    .line 382
    .line 383
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 384
    .line 385
    invoke-direct {v6, v8}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    .line 386
    .line 387
    .line 388
    iput-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 389
    .line 390
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 391
    .line 392
    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 393
    .line 394
    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 395
    .line 396
    iput-boolean v8, v6, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 397
    .line 398
    iput-wide v9, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 399
    .line 400
    iput-wide v11, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 401
    .line 402
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 403
    .line 404
    invoke-static {v8, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 405
    .line 406
    .line 407
    const-class v6, Lcom/android/server/SystemServiceManager;

    .line 408
    .line 409
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 410
    .line 411
    invoke-static {v6, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    sget-object v6, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 415
    .line 416
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :try_start_1
    sget-object v8, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 418
    .line 419
    if-nez v8, :cond_3

    .line 420
    .line 421
    move v8, v2

    .line 422
    goto :goto_1

    .line 423
    :cond_3
    move v8, v4

    .line 424
    :goto_1
    const-string v9, "SystemServerInitThreadPool already started"

    .line 425
    .line 426
    invoke-static {v8, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v8, Lcom/android/server/SystemServerInitThreadPool;

    .line 430
    .line 431
    invoke-direct {v8}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    .line 432
    .line 433
    .line 434
    sput-object v8, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 435
    .line 436
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 437
    :try_start_2
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 438
    .line 439
    invoke-static {v6, v8}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 440
    .line 441
    .line 442
    const-string v6, "SystemServer"

    .line 443
    .line 444
    const-string v8, "Loading pre-installed system font map."

    .line 445
    .line 446
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 450
    .line 451
    .line 452
    if-eqz v5, :cond_4

    .line 453
    .line 454
    const-string/jumbo v5, "persist.sys.dalvik.jvmtiagent"

    .line 455
    .line 456
    .line 457
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    if-nez v6, :cond_4

    .line 466
    .line 467
    const/16 v6, 0x3d

    .line 468
    .line 469
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    add-int/2addr v6, v2

    .line 478
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :try_start_3
    invoke-static {v8, v2, v3}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    .line 488
    .line 489
    goto :goto_2

    .line 490
    :catch_0
    :try_start_4
    const-string v2, "System"

    .line 491
    .line 492
    const-string v6, "*************************************************"

    .line 493
    .line 494
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    const-string v2, "System"

    .line 498
    .line 499
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    .line 505
    .line 506
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 507
    .line 508
    .line 509
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    .line 510
    .line 511
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 512
    .line 513
    .line 514
    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 515
    .line 516
    .line 517
    :try_start_5
    const-string v0, "StartServices"

    .line 518
    .line 519
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const-string v0, "SystemServer"

    .line 523
    .line 524
    const-string v2, "!@Boot_EBS_F: startBootstrapServices"

    .line 525
    .line 526
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 530
    .line 531
    .line 532
    const-string v0, "SystemServer"

    .line 533
    .line 534
    const-string v2, "!@Boot_EBS_F: startCoreServices"

    .line 535
    .line 536
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 540
    .line 541
    .line 542
    const-string v0, "SystemServer"

    .line 543
    .line 544
    const-string v2, "!@Boot_EBS_F: startOtherServices"

    .line 545
    .line 546
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 553
    .line 554
    .line 555
    const-string v0, "UpdateWatchdogTimeout"

    .line 556
    .line 557
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    const-string/jumbo v6, "system_server_watchdog_timeout_ms"

    .line 574
    .line 575
    .line 576
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    new-instance v8, Lcom/android/server/Watchdog$SettingsObserver;

    .line 581
    .line 582
    invoke-direct {v8, v2, v0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v6, v4, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 589
    .line 590
    .line 591
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 599
    .line 600
    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 601
    .line 602
    .line 603
    new-instance v5, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    .line 604
    .line 605
    invoke-direct {v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setSystemServerStarted(Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 615
    .line 616
    .line 617
    invoke-static {v3}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 618
    .line 619
    .line 620
    const-wide/16 v0, 0x80

    .line 621
    .line 622
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    const-string/jumbo v3, "com.samsung.android.voc"

    .line 627
    .line 628
    .line 629
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    invoke-interface {v2, v3, v0, v1, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    if-eqz v2, :cond_5

    .line 638
    .line 639
    const-string/jumbo v2, "sys.members.installed"

    .line 640
    .line 641
    .line 642
    const-string/jumbo v3, "true"

    .line 643
    .line 644
    .line 645
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 646
    .line 647
    .line 648
    :catch_1
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 649
    .line 650
    if-nez v2, :cond_7

    .line 651
    .line 652
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 653
    .line 654
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 655
    .line 656
    if-nez v3, :cond_7

    .line 657
    .line 658
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_6

    .line 663
    .line 664
    goto :goto_3

    .line 665
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 666
    .line 667
    .line 668
    move-result-wide v2

    .line 669
    const/16 v5, 0x14

    .line 670
    .line 671
    invoke-static {v7, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 672
    .line 673
    .line 674
    const-wide/32 v5, 0xea60

    .line 675
    .line 676
    .line 677
    cmp-long v5, v2, v5

    .line 678
    .line 679
    if-lez v5, :cond_7

    .line 680
    .line 681
    const-string v5, "SystemServerTiming"

    .line 682
    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    const-string v7, "SystemServer init took too long. uptimeMillis="

    .line 686
    .line 687
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    :cond_7
    :goto_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 701
    .line 702
    if-eqz v2, :cond_8

    .line 703
    .line 704
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    new-instance v3, Lcom/android/server/SystemServer$1;

    .line 709
    .line 710
    invoke-direct {v3, v2}, Lcom/android/server/SystemServer$1;-><init>(I)V

    .line 711
    .line 712
    .line 713
    new-instance v2, Ljava/util/Timer;

    .line 714
    .line 715
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 716
    .line 717
    .line 718
    const-wide/16 v5, 0x7530

    .line 719
    .line 720
    invoke-virtual {v2, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 721
    .line 722
    .line 723
    :cond_8
    new-instance v2, Lcom/android/server/SystemServer$2;

    .line 724
    .line 725
    invoke-direct {v2, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    .line 726
    .line 727
    .line 728
    invoke-static {v2}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 729
    .line 730
    .line 731
    :try_start_7
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 732
    .line 733
    .line 734
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 735
    .line 736
    .line 737
    move-result p0

    .line 738
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    const-string/jumbo v3, "com.salab.issuetracker"

    .line 743
    .line 744
    .line 745
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    if-nez p0, :cond_a

    .line 754
    .line 755
    if-nez v0, :cond_9

    .line 756
    .line 757
    goto :goto_4

    .line 758
    :cond_9
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 759
    .line 760
    .line 761
    const-string/jumbo v0, "true"

    .line 762
    .line 763
    .line 764
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto :goto_5

    .line 768
    :cond_a
    :goto_4
    if-eqz p0, :cond_b

    .line 769
    .line 770
    if-nez v0, :cond_b

    .line 771
    .line 772
    const-string/jumbo p0, "persist.sys.is_usertrial"

    .line 773
    .line 774
    .line 775
    const-string/jumbo v0, "false"

    .line 776
    .line 777
    .line 778
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 779
    .line 780
    .line 781
    :catch_2
    :cond_b
    :goto_5
    const-string p0, "SystemServer"

    .line 782
    .line 783
    const-string v0, "!@Boot: Loop forever"

    .line 784
    .line 785
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    const-string p0, "SystemServer"

    .line 789
    .line 790
    const-string v0, "!@Boot_EBS_D: Loop forever"

    .line 791
    .line 792
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 796
    .line 797
    .line 798
    new-instance p0, Ljava/lang/RuntimeException;

    .line 799
    .line 800
    const-string v0, "Main thread loop unexpectedly exited"

    .line 801
    .line 802
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    throw p0

    .line 806
    :catchall_1
    move-exception p0

    .line 807
    :try_start_8
    const-string v0, "System"

    .line 808
    .line 809
    const-string v2, "******************************************"

    .line 810
    .line 811
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .line 813
    .line 814
    const-string v0, "System"

    .line 815
    .line 816
    const-string v2, "************ Failure starting system services"

    .line 817
    .line 818
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .line 820
    .line 821
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 822
    :catchall_2
    move-exception p0

    .line 823
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 824
    .line 825
    .line 826
    throw p0

    .line 827
    :catchall_3
    move-exception p0

    .line 828
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 829
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 830
    :goto_6
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 831
    .line 832
    .line 833
    throw p0
.end method

.method public static performPendingShutdown()V
    .locals 8

    .line 1
    const-string v0, "SystemServer"

    .line 2
    .line 3
    const-string/jumbo v1, "sys.shutdown.requested"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_3

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v4, 0x31

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    move v3, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v2

    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x0

    .line 38
    if-le v4, v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v1, v6

    .line 50
    :goto_1
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const-string/jumbo v4, "recovery-update"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    new-instance v4, Ljava/io/File;

    .line 62
    .line 63
    const-string v7, "/cache/recovery/uncrypt_file"

    .line 64
    .line 65
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    :try_start_0
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v2

    .line 80
    const-string v4, "Error reading uncrypt package file"

    .line 81
    .line 82
    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :goto_2
    if-eqz v6, :cond_2

    .line 86
    .line 87
    const-string v2, "/data"

    .line 88
    .line 89
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    const-string v2, "/cache/recovery/block.map"

    .line 96
    .line 97
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    const-string v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    .line 104
    .line 105
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$3;

    .line 110
    .line 111
    invoke-direct {v0, v1, v3}, Lcom/android/server/SystemServer$3;-><init>(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void
.end method

.method public static reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string v0, "SystemServer"

    .line 2
    .line 3
    const-string v1, "***********************************************"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "BOOT FAILURE "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V
    .locals 7

    .line 1
    const-string/jumbo v0, "startRCPService | Fail to start service"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "startRCPService | context is null"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    const-string/jumbo v5, "persist.sys.knox.device_owner"

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    const-string/jumbo v6, "true"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    move v3, v4

    .line 46
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v5, "startRCPService | KnoxPresentInDevice : "

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, ", DoEnabled : "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "SystemServer"

    .line 70
    .line 71
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :try_start_0
    const-string v4, "RCPManagerService"

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    const-string/jumbo v4, "rcp"

    .line 80
    .line 81
    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    :cond_2
    :try_start_1
    const-string/jumbo p2, "startRCPService | add Service : RCPManagerService , rcp"

    .line 89
    .line 90
    .line 91
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p2

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :try_start_2
    new-instance p2, Lcom/android/server/RCPManagerService;

    .line 106
    .line 107
    invoke-direct {p2, p0}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    if-eqz p2, :cond_5

    .line 115
    .line 116
    if-nez v2, :cond_5

    .line 117
    .line 118
    if-nez v3, :cond_5

    .line 119
    .line 120
    const-string/jumbo p2, "startRCPService | add Lazy Service : RCPManagerService , rcp"

    .line 121
    .line 122
    .line 123
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const-class p2, Lcom/android/server/RCPManagerService;

    .line 127
    .line 128
    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :goto_2
    :try_start_3
    invoke-static {v5, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :goto_3
    :try_start_4
    const-string p2, "KnoxMUMRCPPolicyService"

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    .line 143
    .line 144
    const-string/jumbo p2, "mum_container_rcp_policy"

    .line 145
    .line 146
    .line 147
    if-nez v2, :cond_7

    .line 148
    .line 149
    if-eqz v3, :cond_6

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    :try_start_5
    const-string/jumbo p0, "startRCPService | add Lazy Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    .line 153
    .line 154
    .line 155
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    new-instance p0, Lcom/android/server/SystemServer$4;

    .line 159
    .line 160
    const/4 v1, 0x2

    .line 161
    invoke-direct {p0, v1}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_6

    .line 170
    :cond_7
    :goto_4
    const-string/jumbo v2, "startRCPService | add Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    if-nez p0, :cond_8

    .line 177
    .line 178
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 186
    .line 187
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 191
    .line 192
    .line 193
    :goto_5
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :goto_6
    :try_start_7
    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :goto_7
    return-void

    .line 202
    :catchall_2
    move-exception p0

    .line 203
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :catchall_3
    move-exception p0

    .line 208
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 209
    .line 210
    .line 211
    throw p0
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x100

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "Runtime restart: %b\n"

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "Start count: %d\n"

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 29
    .line 30
    .line 31
    const-string p2, "Runtime start-up time: "

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 37
    .line 38
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 42
    .line 43
    .line 44
    const-string p2, "Runtime start-elapsed time: "

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final getDumpableName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/SystemServer;

    .line 2
    .line 3
    const-string p0, "SystemServer"

    .line 4
    .line 5
    return-object p0
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string/jumbo v0, "debug.crash_system"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

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
    new-instance p0, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    const-string/jumbo v0, "startApexServices"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_2
    const-string v3, "APEX packages have not been scanned"

    .line 49
    .line 50
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 54
    .line 55
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v4, "starting "

    .line 81
    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 109
    .line 110
    invoke-virtual {v3, v2, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 129
    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p0
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p0, "SystemServer"

    .line 18
    .line 19
    const-string p1, "AttentionService is not configured on this device"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "StartAttentionManagerService"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 31
    .line 32
    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string/jumbo v0, "startBootstrapServices"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "ArtModuleServiceInitializer"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/os/ArtModuleServiceManager;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/ArtModuleServiceManager;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 27
    .line 28
    .line 29
    const-string v0, "StartWatchdog"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v0, v6, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 44
    .line 45
    invoke-static {v0, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 49
    .line 50
    .line 51
    const-string v0, "SystemServer"

    .line 52
    .line 53
    const-string v7, "Reading configuration..."

    .line 54
    .line 55
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-string v0, "ReadingSystemConfig"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 64
    .line 65
    invoke-direct {v0, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 66
    .line 67
    .line 68
    const-string v7, "ReadingSystemConfig"

    .line 69
    .line 70
    invoke-static {v7, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 74
    .line 75
    .line 76
    const-string v0, "PlatformCompat"

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v7, Lcom/android/server/compat/PlatformCompat;

    .line 82
    .line 83
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-direct {v7, v0}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v0, "platform_compat"

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v0, "platform_compat_native"

    .line 95
    .line 96
    .line 97
    new-instance v8, Lcom/android/server/compat/PlatformCompatNative;

    .line 98
    .line 99
    invoke-direct {v8, v7}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 103
    .line 104
    .line 105
    new-array v0, v5, [J

    .line 106
    .line 107
    new-array v8, v5, [J

    .line 108
    .line 109
    invoke-static {v0, v8}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 113
    .line 114
    .line 115
    const-string v0, "StartFileIntegrityService"

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 121
    .line 122
    const-class v8, Lcom/android/server/security/FileIntegrityService;

    .line 123
    .line 124
    const-string v9, "StartInstaller"

    .line 125
    .line 126
    invoke-static {v0, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 130
    .line 131
    const-class v8, Lcom/android/server/pm/Installer;

    .line 132
    .line 133
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/server/pm/Installer;

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 140
    .line 141
    .line 142
    const-string v8, "DeviceIdentifiersPolicyService"

    .line 143
    .line 144
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 148
    .line 149
    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    .line 150
    .line 151
    const-string v10, "StartFeatureFlagsService"

    .line 152
    .line 153
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 157
    .line 158
    const-class v9, Lcom/android/server/flags/FeatureFlagsService;

    .line 159
    .line 160
    const-string v10, "UriGrantsManagerService"

    .line 161
    .line 162
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 166
    .line 167
    const-class v9, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    .line 168
    .line 169
    const-string v10, "StartPowerStatsService"

    .line 170
    .line 171
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 175
    .line 176
    const-class v9, Lcom/android/server/powerstats/PowerStatsService;

    .line 177
    .line 178
    const-string v10, "StartIStatsService"

    .line 179
    .line 180
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 187
    .line 188
    .line 189
    const-string v8, "MemtrackProxyService"

    .line 190
    .line 191
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 198
    .line 199
    .line 200
    const-string v8, "StartAccessCheckingService"

    .line 201
    .line 202
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-class v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 206
    .line 207
    new-instance v9, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 208
    .line 209
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    const-class v8, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 216
    .line 217
    new-instance v9, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 218
    .line 219
    invoke-direct {v9}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 226
    .line 227
    const-class v9, Lcom/android/server/permission/access/AccessCheckingService;

    .line 228
    .line 229
    const-string v10, "StartActivityManager"

    .line 230
    .line 231
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 235
    .line 236
    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 237
    .line 238
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    check-cast v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 243
    .line 244
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 245
    .line 246
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 247
    .line 248
    sput-object v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 249
    .line 250
    const-class v10, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 251
    .line 252
    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    check-cast v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 257
    .line 258
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 259
    .line 260
    iput-object v9, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 261
    .line 262
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 263
    .line 264
    iput-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 265
    .line 266
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 270
    .line 271
    .line 272
    const-string v8, "StartDataLoaderManagerService"

    .line 273
    .line 274
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 278
    .line 279
    const-class v9, Lcom/android/server/pm/DataLoaderManagerService;

    .line 280
    .line 281
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    check-cast v8, Lcom/android/server/pm/DataLoaderManagerService;

    .line 286
    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 288
    .line 289
    .line 290
    const-string v8, "StartIncrementalService"

    .line 291
    .line 292
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    .line 296
    .line 297
    .line 298
    move-result-wide v8

    .line 299
    iput-wide v8, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 302
    .line 303
    .line 304
    const-string v8, "StartPowerManager"

    .line 305
    .line 306
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 310
    .line 311
    const-class v9, Lcom/android/server/power/PowerManagerService;

    .line 312
    .line 313
    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    check-cast v8, Lcom/android/server/power/PowerManagerService;

    .line 318
    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 320
    .line 321
    .line 322
    const-string v8, "StartThermalManager"

    .line 323
    .line 324
    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 328
    .line 329
    const-class v9, Lcom/android/server/power/ThermalManagerService;

    .line 330
    .line 331
    const-string v10, "InitPowerManagement"

    .line 332
    .line 333
    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 337
    .line 338
    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 339
    .line 340
    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 341
    .line 342
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 343
    .line 344
    .line 345
    monitor-enter v10

    .line 346
    :try_start_0
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 347
    .line 348
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 349
    .line 350
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    const-class v13, Landroid/os/PowerManager;

    .line 353
    .line 354
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    check-cast v12, Landroid/os/PowerManager;

    .line 359
    .line 360
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 361
    .line 362
    const-string v13, "ActivityManager-Sleep"

    .line 363
    .line 364
    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 365
    .line 366
    .line 367
    move-result-object v12

    .line 368
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 369
    .line 370
    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 371
    .line 372
    const-string v13, "*launch*"

    .line 373
    .line 374
    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    .line 380
    invoke-virtual {v12, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 381
    .line 382
    .line 383
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    const-string/jumbo v12, "power"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    check-cast v11, Landroid/os/PowerManager;

    .line 393
    .line 394
    const-class v12, Landroid/os/PowerManagerInternal;

    .line 395
    .line 396
    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    check-cast v12, Landroid/os/PowerManagerInternal;

    .line 401
    .line 402
    iput-object v12, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 403
    .line 404
    const-string v12, "*voice*"

    .line 405
    .line 406
    invoke-virtual {v11, v4, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 407
    .line 408
    .line 409
    move-result-object v11

    .line 410
    iput-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 411
    .line 412
    invoke-virtual {v11, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 413
    .line 414
    .line 415
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 416
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 417
    .line 418
    .line 419
    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 420
    .line 421
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    const-class v10, Landroid/os/PowerManagerInternal;

    .line 425
    .line 426
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    check-cast v10, Landroid/os/PowerManagerInternal;

    .line 431
    .line 432
    invoke-virtual {v10, v9}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 433
    .line 434
    .line 435
    iget-object v11, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 436
    .line 437
    monitor-enter v11

    .line 438
    :try_start_1
    iget-object v12, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 439
    .line 440
    const/16 v13, 0x9

    .line 441
    .line 442
    invoke-virtual {v10, v13}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    iget-boolean v10, v10, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 447
    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 449
    .line 450
    .line 451
    move-result-wide v13

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 453
    .line 454
    .line 455
    move-result-wide v15

    .line 456
    iget-boolean v3, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    .line 457
    .line 458
    if-eq v3, v10, :cond_0

    .line 459
    .line 460
    move/from16 v17, v10

    .line 461
    .line 462
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(JJZ)V

    .line 463
    .line 464
    .line 465
    goto :goto_0

    .line 466
    :cond_0
    iget-object v3, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    .line 467
    .line 468
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    const/16 v3, 0x14

    .line 472
    .line 473
    invoke-static {v3, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 474
    .line 475
    .line 476
    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 477
    new-instance v3, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    .line 478
    .line 479
    invoke-direct {v3, v9}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 483
    .line 484
    .line 485
    const-class v3, Landroid/os/PowerManagerInternal;

    .line 486
    .line 487
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 492
    .line 493
    iput-object v3, v8, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 494
    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 496
    .line 497
    .line 498
    const-string v3, "VaultKeeperService"

    .line 499
    .line 500
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 504
    .line 505
    const-class v8, Lcom/android/server/VaultKeeperService$LifeCycle;

    .line 506
    .line 507
    const-string v9, "StartRecoverySystemService"

    .line 508
    .line 509
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 513
    .line 514
    const-class v8, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    .line 515
    .line 516
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 520
    .line 521
    .line 522
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 523
    .line 524
    sget v8, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    .line 525
    .line 526
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 527
    .line 528
    .line 529
    move-result-object v8

    .line 530
    invoke-static {v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v8, v3}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 535
    .line 536
    .line 537
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    if-nez v3, :cond_1

    .line 542
    .line 543
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 544
    .line 545
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v3}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 550
    .line 551
    .line 552
    :cond_1
    const-string v3, "StartLightsService"

    .line 553
    .line 554
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 558
    .line 559
    const-class v8, Lcom/android/server/lights/LightsService;

    .line 560
    .line 561
    const-string v9, "StartPdpService"

    .line 562
    .line 563
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 567
    .line 568
    const-class v8, Lcom/android/server/pdp/PdpService;

    .line 569
    .line 570
    const-string v9, "StartDisplayOffloadService"

    .line 571
    .line 572
    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    const-string/jumbo v3, "config.enable_display_offload"

    .line 576
    .line 577
    .line 578
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_2

    .line 583
    .line 584
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 585
    .line 586
    const-string/jumbo v8, "com.android.clockwork.displayoffload.DisplayOffloadService"

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 590
    .line 591
    .line 592
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 593
    .line 594
    .line 595
    const-string v3, "StartDisplayManager"

    .line 596
    .line 597
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 601
    .line 602
    const-class v8, Lcom/android/server/display/DisplayManagerService;

    .line 603
    .line 604
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    .line 609
    .line 610
    iput-object v3, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 611
    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 613
    .line 614
    .line 615
    const-string v3, "WaitForDisplay"

    .line 616
    .line 617
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    const-string v3, "SystemServer"

    .line 621
    .line 622
    const-string v8, "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 623
    .line 624
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 628
    .line 629
    const/16 v8, 0x64

    .line 630
    .line 631
    invoke-virtual {v3, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 635
    .line 636
    .line 637
    iget-boolean v3, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 638
    .line 639
    const/16 v8, 0xe

    .line 640
    .line 641
    const/16 v9, 0xf0

    .line 642
    .line 643
    if-nez v3, :cond_3

    .line 644
    .line 645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 646
    .line 647
    .line 648
    move-result-wide v10

    .line 649
    invoke-static {v9, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 650
    .line 651
    .line 652
    :cond_3
    const-string v3, "StartDomainVerificationService"

    .line 653
    .line 654
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 658
    .line 659
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 660
    .line 661
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 662
    .line 663
    .line 664
    move-result-object v11

    .line 665
    invoke-direct {v3, v10, v11, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 666
    .line 667
    .line 668
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 669
    .line 670
    invoke-virtual {v10, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 674
    .line 675
    .line 676
    const-string v10, "StartPackageManagerService"

    .line 677
    .line 678
    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    const-string v10, "SystemServer"

    .line 682
    .line 683
    const-string v11, "!@Boot: Start PackageManagerService"

    .line 684
    .line 685
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    :try_start_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 689
    .line 690
    .line 691
    move-result-object v10

    .line 692
    const-string/jumbo v11, "packagemanagermain"

    .line 693
    .line 694
    .line 695
    invoke-virtual {v10, v11}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 699
    .line 700
    iget v11, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 701
    .line 702
    if-eqz v11, :cond_4

    .line 703
    .line 704
    move v11, v4

    .line 705
    goto :goto_1

    .line 706
    :cond_4
    move v11, v5

    .line 707
    :goto_1
    invoke-static {v10, v0, v3, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 712
    .line 713
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    const-string/jumbo v3, "packagemanagermain"

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    const-string v0, "SystemServer"

    .line 724
    .line 725
    const-string v3, "!@Boot: End PackageManagerService"

    .line 726
    .line 727
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 731
    .line 732
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 733
    .line 734
    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 735
    .line 736
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 737
    .line 738
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 743
    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 745
    .line 746
    .line 747
    const-string v0, "DexUseManagerLocal"

    .line 748
    .line 749
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    .line 753
    .line 754
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 755
    .line 756
    invoke-static {v3}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 764
    .line 765
    .line 766
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 767
    .line 768
    if-nez v0, :cond_6

    .line 769
    .line 770
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 771
    .line 772
    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 773
    .line 774
    if-nez v3, :cond_6

    .line 775
    .line 776
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    if-eqz v0, :cond_5

    .line 781
    .line 782
    goto :goto_2

    .line 783
    :cond_5
    const/16 v0, 0xf

    .line 784
    .line 785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 786
    .line 787
    .line 788
    move-result-wide v10

    .line 789
    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 790
    .line 791
    .line 792
    :cond_6
    :goto_2
    const-string v0, "StartASKSManagerService"

    .line 793
    .line 794
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 798
    .line 799
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 800
    .line 801
    const-string/jumbo v3, "main starts"

    .line 802
    .line 803
    .line 804
    const-string v9, "ASKSManager"

    .line 805
    .line 806
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    new-instance v3, Lcom/android/server/asks/ASKSManagerService;

    .line 810
    .line 811
    invoke-direct {v3, v0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    .line 812
    .line 813
    .line 814
    const-string/jumbo v0, "asks"

    .line 815
    .line 816
    .line 817
    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 818
    .line 819
    .line 820
    const-string/jumbo v0, "main ends"

    .line 821
    .line 822
    .line 823
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    iput-object v3, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 827
    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 829
    .line 830
    .line 831
    const-string/jumbo v0, "config.disable_otadexopt"

    .line 832
    .line 833
    .line 834
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-nez v0, :cond_7

    .line 839
    .line 840
    const-string v0, "StartOtaDexOptService"

    .line 841
    .line 842
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    :try_start_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    const-string/jumbo v3, "moveab"

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 856
    .line 857
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 858
    .line 859
    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 860
    .line 861
    .line 862
    :goto_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    const-string/jumbo v3, "moveab"

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 873
    .line 874
    .line 875
    goto :goto_4

    .line 876
    :catchall_0
    move-exception v0

    .line 877
    :try_start_4
    const-string/jumbo v3, "starting OtaDexOptService"

    .line 878
    .line 879
    .line 880
    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 881
    .line 882
    .line 883
    goto :goto_3

    .line 884
    :catchall_1
    move-exception v0

    .line 885
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    const-string/jumbo v3, "moveab"

    .line 890
    .line 891
    .line 892
    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 896
    .line 897
    .line 898
    throw v0

    .line 899
    :cond_7
    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    .line 900
    .line 901
    if-eqz v0, :cond_8

    .line 902
    .line 903
    const-string v0, "StartArcSystemHealthService"

    .line 904
    .line 905
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 909
    .line 910
    const-string/jumbo v3, "com.android.server.arc.health.ArcSystemHealthService"

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 914
    .line 915
    .line 916
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 917
    .line 918
    .line 919
    :cond_8
    const-string v0, "StartUserManagerService"

    .line 920
    .line 921
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 925
    .line 926
    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    .line 927
    .line 928
    const-string v9, "InitAttributerCache"

    .line 929
    .line 930
    invoke-static {v0, v3, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 934
    .line 935
    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 936
    .line 937
    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 939
    .line 940
    .line 941
    const-string v0, "SetSystemProcess"

    .line 942
    .line 943
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 947
    .line 948
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    .line 950
    .line 951
    :try_start_5
    const-string v0, "activity"

    .line 952
    .line 953
    const/16 v9, 0x15

    .line 954
    .line 955
    invoke-static {v0, v3, v4, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 956
    .line 957
    .line 958
    const-string/jumbo v0, "procstats"

    .line 959
    .line 960
    .line 961
    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 962
    .line 963
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 964
    .line 965
    .line 966
    const-string/jumbo v0, "meminfo"

    .line 967
    .line 968
    .line 969
    new-instance v9, Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 970
    .line 971
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$MemBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 972
    .line 973
    .line 974
    const/4 v10, 0x2

    .line 975
    invoke-static {v0, v9, v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 976
    .line 977
    .line 978
    const-string/jumbo v0, "gfxinfo"

    .line 979
    .line 980
    .line 981
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 982
    .line 983
    invoke-direct {v9, v10}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 984
    .line 985
    .line 986
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 987
    .line 988
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 989
    .line 990
    .line 991
    const-string/jumbo v0, "dbinfo"

    .line 992
    .line 993
    .line 994
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 995
    .line 996
    invoke-direct {v9, v5}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 997
    .line 998
    .line 999
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1000
    .line 1001
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1005
    .line 1006
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    new-instance v9, Lcom/android/server/am/AppProfiler$CpuBinder;

    .line 1010
    .line 1011
    invoke-direct {v9, v0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    .line 1012
    .line 1013
    .line 1014
    const-string/jumbo v0, "cpuinfo"

    .line 1015
    .line 1016
    .line 1017
    invoke-static {v0, v9, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1018
    .line 1019
    .line 1020
    const-string/jumbo v0, "permission"

    .line 1021
    .line 1022
    .line 1023
    new-instance v9, Lcom/android/server/am/ActivityManagerService$PermissionController;

    .line 1024
    .line 1025
    invoke-direct {v9}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 1026
    .line 1027
    .line 1028
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1029
    .line 1030
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1031
    .line 1032
    .line 1033
    const-string/jumbo v0, "processinfo"

    .line 1034
    .line 1035
    .line 1036
    new-instance v9, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;

    .line 1037
    .line 1038
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1042
    .line 1043
    .line 1044
    const-string/jumbo v0, "cacheinfo"

    .line 1045
    .line 1046
    .line 1047
    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    .line 1048
    .line 1049
    invoke-direct {v9, v4}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    .line 1050
    .line 1051
    .line 1052
    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1053
    .line 1054
    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1058
    .line 1059
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    const-string v9, "android"

    .line 1064
    .line 1065
    const v10, 0x100400

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v12

    .line 1072
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 1073
    .line 1074
    const-class v9, Lcom/android/server/am/ActivityManagerService;

    .line 1075
    .line 1076
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v9

    .line 1080
    invoke-virtual {v0, v12, v9}, Landroid/app/ActivityThread;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1084
    .line 1085
    .line 1086
    monitor-enter v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1087
    :try_start_6
    iget-object v11, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1088
    .line 1089
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1090
    .line 1091
    new-instance v0, Lcom/android/server/am/HostingRecord;

    .line 1092
    .line 1093
    const-string/jumbo v9, "system"

    .line 1094
    .line 1095
    .line 1096
    invoke-direct {v0, v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    const/4 v15, 0x0

    .line 1100
    const/16 v16, 0x0

    .line 1101
    .line 1102
    const/16 v17, 0x0

    .line 1103
    .line 1104
    const/16 v18, 0x0

    .line 1105
    .line 1106
    const/4 v14, 0x0

    .line 1107
    move-object/from16 v19, v0

    .line 1108
    .line 1109
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1114
    .line 1115
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1116
    .line 1117
    iput-boolean v4, v9, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 1118
    .line 1119
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1120
    .line 1121
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1122
    .line 1123
    .line 1124
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1125
    .line 1126
    const/16 v10, -0x384

    .line 1127
    .line 1128
    iput v10, v9, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 1129
    .line 1130
    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 1131
    .line 1132
    invoke-virtual {v9}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v9

    .line 1136
    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1137
    .line 1138
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ProcessRecord;->makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V

    .line 1139
    .line 1140
    .line 1141
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1142
    .line 1143
    invoke-virtual {v9, v4}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1150
    .line 1151
    const/4 v9, 0x0

    .line 1152
    invoke-virtual {v4, v0, v9, v5}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 1156
    .line 1157
    .line 1158
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1159
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1160
    .line 1161
    .line 1162
    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1163
    .line 1164
    new-instance v4, Lcom/android/server/am/ActivityManagerService$4;

    .line 1165
    .line 1166
    invoke-direct {v4, v3}, Lcom/android/server/am/ActivityManagerService$4;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1167
    .line 1168
    .line 1169
    const/16 v8, 0x3f

    .line 1170
    .line 1171
    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1172
    .line 1173
    .line 1174
    const/16 v0, 0x1a

    .line 1175
    .line 1176
    filled-new-array {v0}, [I

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1181
    .line 1182
    new-instance v8, Lcom/android/server/am/ActivityManagerService$5;

    .line 1183
    .line 1184
    invoke-direct {v8, v3}, Lcom/android/server/am/ActivityManagerService$5;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v4, v0, v8}, Lcom/android/server/appop/AppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1191
    .line 1192
    .line 1193
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1194
    .line 1195
    invoke-virtual {v7, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1196
    .line 1197
    .line 1198
    const-string v0, "InitWatchdog"

    .line 1199
    .line 1200
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    const-string v0, "SystemServer"

    .line 1204
    .line 1205
    const-string v3, "!@Boot_EBS_D: InitWatchdog"

    .line 1206
    .line 1207
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    .line 1209
    .line 1210
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1211
    .line 1212
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1213
    .line 1214
    iput-object v3, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1215
    .line 1216
    sput-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1217
    .line 1218
    new-instance v3, Lcom/android/server/Watchdog$RebootRequestReceiver;

    .line 1219
    .line 1220
    invoke-direct {v3, v6}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 1221
    .line 1222
    .line 1223
    new-instance v4, Landroid/content/IntentFilter;

    .line 1224
    .line 1225
    const-string v7, "android.intent.action.REBOOT"

    .line 1226
    .line 1227
    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    const-string v7, "android.permission.REBOOT"

    .line 1231
    .line 1232
    invoke-virtual {v0, v3, v4, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1233
    .line 1234
    .line 1235
    iget-object v0, v6, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 1236
    .line 1237
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1238
    .line 1239
    iget-object v4, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1240
    .line 1241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1242
    .line 1243
    .line 1244
    sput-object v3, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    .line 1245
    .line 1246
    iput-object v4, v0, Lcom/android/server/HeapdumpWatcher;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 1247
    .line 1248
    iget-object v0, v6, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 1249
    .line 1250
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 1251
    .line 1252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1253
    .line 1254
    .line 1255
    sput-object v3, Lcom/android/server/FileDescriptorWatcher;->mContext:Landroid/content/Context;

    .line 1256
    .line 1257
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1258
    .line 1259
    .line 1260
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1261
    .line 1262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    .line 1264
    .line 1265
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 1270
    .line 1271
    .line 1272
    move-result v0

    .line 1273
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 1274
    .line 1275
    const/4 v4, 0x5

    .line 1276
    const/16 v6, 0xa

    .line 1277
    .line 1278
    if-eqz v3, :cond_9

    .line 1279
    .line 1280
    move v7, v6

    .line 1281
    goto :goto_5

    .line 1282
    :cond_9
    move v7, v4

    .line 1283
    :goto_5
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1284
    .line 1285
    .line 1286
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 1291
    .line 1292
    .line 1293
    move-result v0

    .line 1294
    if-eqz v3, :cond_a

    .line 1295
    .line 1296
    move v7, v6

    .line 1297
    goto :goto_6

    .line 1298
    :cond_a
    move v7, v4

    .line 1299
    :goto_6
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1300
    .line 1301
    .line 1302
    const-class v7, Lcom/android/server/wm/SurfaceAnimationThread;

    .line 1303
    .line 1304
    monitor-enter v7

    .line 1305
    :try_start_8
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    .line 1306
    .line 1307
    .line 1308
    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    .line 1309
    .line 1310
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1311
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 1312
    .line 1313
    .line 1314
    move-result v0

    .line 1315
    if-eqz v3, :cond_b

    .line 1316
    .line 1317
    move v4, v6

    .line 1318
    :cond_b
    invoke-static {v0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 1319
    .line 1320
    .line 1321
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    .line 1322
    .line 1323
    if-eqz v0, :cond_c

    .line 1324
    .line 1325
    new-instance v0, Landroid/os/Handler;

    .line 1326
    .line 1327
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1328
    .line 1329
    .line 1330
    new-instance v3, Lcom/android/server/display/DisplayManagerService$5;

    .line 1331
    .line 1332
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1333
    .line 1334
    .line 1335
    const-wide/16 v6, 0x2710

    .line 1336
    .line 1337
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1338
    .line 1339
    .line 1340
    :cond_c
    const-string v0, "StartOverlayManagerService"

    .line 1341
    .line 1342
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1346
    .line 1347
    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    .line 1348
    .line 1349
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1350
    .line 1351
    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1358
    .line 1359
    .line 1360
    const-string v0, "StartResourcesManagerService"

    .line 1361
    .line 1362
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    .line 1366
    .line 1367
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1368
    .line 1369
    invoke-direct {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1370
    .line 1371
    .line 1372
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1373
    .line 1374
    iput-object v3, v0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1375
    .line 1376
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1377
    .line 1378
    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1382
    .line 1383
    .line 1384
    const-string v0, "StartSensorPrivacyService"

    .line 1385
    .line 1386
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1390
    .line 1391
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 1392
    .line 1393
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1394
    .line 1395
    invoke-direct {v3, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1402
    .line 1403
    .line 1404
    const-string v0, "PACMService"

    .line 1405
    .line 1406
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1410
    .line 1411
    const-class v3, Lcom/android/server/PACMService;

    .line 1412
    .line 1413
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1417
    .line 1418
    .line 1419
    const-string/jumbo v0, "persist.sys.displayinset.top"

    .line 1420
    .line 1421
    .line 1422
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1423
    .line 1424
    .line 1425
    move-result v0

    .line 1426
    if-lez v0, :cond_d

    .line 1427
    .line 1428
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1429
    .line 1430
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v3

    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1435
    .line 1436
    .line 1437
    move-result v4

    .line 1438
    const-string v8, "android"

    .line 1439
    .line 1440
    const-wide/16 v6, 0x400

    .line 1441
    .line 1442
    const/4 v5, 0x0

    .line 1443
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v3

    .line 1451
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1452
    .line 1453
    .line 1454
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1455
    .line 1456
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1461
    .line 1462
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1463
    .line 1464
    .line 1465
    :cond_d
    const-string v0, "StartSensorService"

    .line 1466
    .line 1467
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1471
    .line 1472
    const-class v1, Lcom/android/server/sensors/SensorService;

    .line 1473
    .line 1474
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1481
    .line 1482
    .line 1483
    return-void

    .line 1484
    :catchall_2
    move-exception v0

    .line 1485
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1486
    throw v0

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    goto :goto_7

    .line 1489
    :catchall_3
    move-exception v0

    .line 1490
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1491
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1492
    .line 1493
    .line 1494
    throw v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0

    .line 1495
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1496
    .line 1497
    const-string v2, "Unable to find android system package"

    .line 1498
    .line 1499
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1500
    .line 1501
    .line 1502
    throw v1

    .line 1503
    :catchall_4
    move-exception v0

    .line 1504
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v1

    .line 1508
    const-string/jumbo v2, "packagemanagermain"

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    throw v0

    .line 1515
    :catchall_5
    move-exception v0

    .line 1516
    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1517
    throw v0

    .line 1518
    :catchall_6
    move-exception v0

    .line 1519
    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1520
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1521
    .line 1522
    .line 1523
    throw v0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "content_capture"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "service_explicitly_enabled"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SystemServer"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string/jumbo v2, "default"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-nez v0, :cond_3

    .line 44
    .line 45
    const v0, 0x104030f

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    const v0, 0x1040310

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    xor-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    const-string p1, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    .line 76
    .line 77
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_3
    const-string p1, "StartContentCaptureService"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 86
    .line 87
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 90
    .line 91
    .line 92
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 103
    .line 104
    if-eqz p0, :cond_4

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mContentCaptureService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 107
    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "startCoreServices"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "persist.sys.enable_isrb"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "StartISRBService"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 23
    .line 24
    const-class v1, Lcom/android/server/isrb/IsrbManagerService;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v0, "StartSystemConfigService"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 38
    .line 39
    const-class v1, Lcom/android/server/SystemConfigService;

    .line 40
    .line 41
    const-string v2, "StartBatteryService"

    .line 42
    .line 43
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 47
    .line 48
    const-class v1, Lcom/android/server/BatteryService;

    .line 49
    .line 50
    const-string v2, "StartUsageService"

    .line 51
    .line 52
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 56
    .line 57
    const-class v1, Lcom/android/server/usage/UsageStatsService;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 63
    .line 64
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 71
    .line 72
    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 79
    .line 80
    .line 81
    monitor-enter v2

    .line 82
    :try_start_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 83
    .line 84
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    .line 93
    const-string v1, "android.software.webview"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    const-string v0, "StartWebViewUpdateService"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 107
    .line 108
    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 119
    .line 120
    .line 121
    :cond_1
    const-string v0, "StartCachedDeviceStateService"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 127
    .line 128
    const-class v1, Lcom/android/server/CachedDeviceStateService;

    .line 129
    .line 130
    const-string v2, "StartBinderCallsStatsService"

    .line 131
    .line 132
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 136
    .line 137
    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    .line 138
    .line 139
    const-string v2, "StartLooperStatsService"

    .line 140
    .line 141
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 145
    .line 146
    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    .line 147
    .line 148
    const-string v2, "StartRollbackManagerService"

    .line 149
    .line 150
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 154
    .line 155
    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    .line 156
    .line 157
    const-string v2, "StartNativeTombstoneManagerService"

    .line 158
    .line 159
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 163
    .line 164
    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    .line 165
    .line 166
    const-string v2, "StartBugreportManagerService"

    .line 167
    .line 168
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 172
    .line 173
    const-class v1, Lcom/android/server/os/BugreportManagerService;

    .line 174
    .line 175
    const-string v2, "GpuService"

    .line 176
    .line 177
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 181
    .line 182
    const-class v1, Lcom/android/server/gpu/GpuService;

    .line 183
    .line 184
    const-string v2, "StartRemoteProvisioningService"

    .line 185
    .line 186
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 190
    .line 191
    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 197
    .line 198
    .line 199
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 200
    .line 201
    if-nez v0, :cond_2

    .line 202
    .line 203
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 204
    .line 205
    if-eqz v0, :cond_3

    .line 206
    .line 207
    :cond_2
    const-string v0, "CpuMonitorService"

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 213
    .line 214
    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 220
    .line 221
    .line 222
    :cond_3
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :catchall_0
    move-exception p0

    .line 227
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 229
    .line 230
    .line 231
    throw p0
.end method

.method public final startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    .line 1
    const-string v0, "SystemServer"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "DualAppManagerService"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "startDualAppManagerService | add Service : startDualAppManagerService"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "startDualAppManagerService | context is null"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 37
    .line 38
    const-string/jumbo p0, "dual_app"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    :try_start_2
    const-string/jumbo p1, "startDualAppManagerService | Fail to start service"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_2
    return-void

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8
    .line 9
    const-class v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 40

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    const-string v5, "Starting custom IMMS: "

    .line 6
    .line 7
    const-string v6, "HcmManagerService ApmSwitch = "

    .line 8
    .line 9
    const-string/jumbo v7, "startOtherServices"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v15, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v7, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 16
    .line 17
    invoke-virtual {v7}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 18
    .line 19
    .line 20
    iget-object v14, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string/jumbo v7, "config.disable_systemtextclassifier"

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const-string/jumbo v9, "config.disable_networktime"

    .line 31
    .line 32
    .line 33
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const-string/jumbo v10, "config.disable_cameraservice"

    .line 38
    .line 39
    .line 40
    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const-string v12, "android.hardware.type.watch"

    .line 49
    .line 50
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    const-string/jumbo v13, "org.chromium.arc"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    const-string v1, "android.software.leanback"

    .line 70
    .line 71
    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    const-string v3, "android.hardware.vr.high_performance"

    .line 80
    .line 81
    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const-string/jumbo v13, "factory"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v18, "ro.factory.factory_binary"

    .line 89
    .line 90
    .line 91
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v24

    .line 99
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_1

    .line 104
    .line 105
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 106
    .line 107
    if-eqz v4, :cond_1

    .line 108
    .line 109
    const-string/jumbo v4, "debug.crash_system"

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_0

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :cond_1
    :goto_0
    const-string/jumbo v4, "lazy_service"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v4, Landroid/os/ServiceManager;

    .line 132
    .line 133
    invoke-direct {v4}, Landroid/os/ServiceManager;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v13, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v4, v13}, Landroid/os/ServiceManager;->initLazyServiceManager(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 142
    .line 143
    .line 144
    :try_start_0
    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 145
    .line 146
    const/4 v13, 0x1

    .line 147
    invoke-direct {v4, v13}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 148
    .line 149
    .line 150
    const-string v13, "SecondaryZygotePreload"

    .line 151
    .line 152
    invoke-static {v13, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iput-object v4, v2, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 157
    .line 158
    const-string v4, "Secure AT Service"

    .line 159
    .line 160
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 161
    .line 162
    .line 163
    :try_start_1
    const-string v4, "SatsService"

    .line 164
    .line 165
    new-instance v13, Lcom/android/server/SatsService;

    .line 166
    .line 167
    invoke-direct {v13, v14}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v4, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catchall_0
    :try_start_2
    const-string v4, "SystemServer"

    .line 175
    .line 176
    const-string v13, "Failed to add SATService."

    .line 177
    .line 178
    invoke-static {v4, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isSuitable()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_2

    .line 189
    .line 190
    const-string v4, "DeploySemDynamicFeatureSystem"

    .line 191
    .line 192
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 193
    .line 194
    .line 195
    :try_start_3
    new-instance v4, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 196
    .line 197
    invoke-direct {v4, v14}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v13, "dynamic_feature"

    .line 201
    .line 202
    .line 203
    const/4 v8, 0x1

    .line 204
    invoke-static {v13, v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 205
    .line 206
    .line 207
    const-class v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 208
    .line 209
    invoke-static {v8, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catchall_1
    :try_start_4
    const-string v4, "SystemServer"

    .line 214
    .line 215
    const-string v8, "Failed to add DynamicFeatureService."

    .line 216
    .line 217
    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :catchall_2
    move-exception v0

    .line 225
    move-object v1, v0

    .line 226
    goto/16 :goto_a8

    .line 227
    .line 228
    :cond_2
    :goto_3
    const-string v4, "SystemServer"

    .line 229
    .line 230
    const-string v8, "MAINLINE_API_LEVEL: 34"

    .line 231
    .line 232
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    const-string v4, "34"

    .line 236
    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const/16 v8, 0x22

    .line 242
    .line 243
    if-lt v4, v8, :cond_3

    .line 244
    .line 245
    const-string v4, "RealTimeTokenService: Real Time Token Service"

    .line 246
    .line 247
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 248
    .line 249
    .line 250
    :try_start_5
    const-string v4, "RealTimeTokenService"

    .line 251
    .line 252
    new-instance v8, Lcom/android/server/RealTimeTokenService;

    .line 253
    .line 254
    invoke-direct {v8, v14}, Lcom/android/server/RealTimeTokenService;-><init>(Landroid/content/Context;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :catchall_3
    :try_start_6
    const-string v4, "SystemServer"

    .line 262
    .line 263
    const-string v8, "Failed to add RealTimeTokenService"

    .line 264
    .line 265
    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_3
    const-string v4, "SystemServer"

    .line 273
    .line 274
    const-string v8, "RealTimeTokenService not supported MAINLINE_API_LEVEL < 34"

    .line 275
    .line 276
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :goto_5
    const-string v4, "StartKeyAttestationApplicationIdProviderService"

    .line 280
    .line 281
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string/jumbo v4, "sec_key_att_app_id_provider"

    .line 285
    .line 286
    .line 287
    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    .line 288
    .line 289
    invoke-direct {v8, v14}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 296
    .line 297
    .line 298
    const-string v4, "StartSpqrService"

    .line 299
    .line 300
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 301
    .line 302
    .line 303
    :try_start_7
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 304
    .line 305
    const-class v8, Lcom/android/server/SpqrService;

    .line 306
    .line 307
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    check-cast v4, Lcom/android/server/SpqrService;

    .line 312
    .line 313
    const-class v8, Lcom/android/server/SpqrService;

    .line 314
    .line 315
    invoke-static {v8, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :catch_0
    move-exception v0

    .line 320
    move-object v4, v0

    .line 321
    :try_start_8
    const-string v8, "SystemServer"

    .line 322
    .line 323
    const-string v13, "Failure starting Spqr Service"

    .line 324
    .line 325
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .line 327
    .line 328
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 329
    .line 330
    .line 331
    const-string v4, "StartKeyChainSystemService"

    .line 332
    .line 333
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 337
    .line 338
    const-class v8, Lcom/android/server/security/KeyChainSystemService;

    .line 339
    .line 340
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 341
    .line 342
    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 344
    .line 345
    .line 346
    const-string v4, "StartBinaryTransparencyService"

    .line 347
    .line 348
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 352
    .line 353
    const-class v8, Lcom/android/server/BinaryTransparencyService;

    .line 354
    .line 355
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 359
    .line 360
    .line 361
    const-string v4, "StartSchedulingPolicyService"

    .line 362
    .line 363
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string/jumbo v4, "scheduling_policy"

    .line 367
    .line 368
    .line 369
    new-instance v8, Lcom/android/server/os/SchedulingPolicyService;

    .line 370
    .line 371
    invoke-direct {v8}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 378
    .line 379
    .line 380
    :try_start_9
    const-string v4, "SEAMS"

    .line 381
    .line 382
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    const-string v4, "SEAMService"

    .line 386
    .line 387
    new-instance v8, Lcom/android/server/SEAMService;

    .line 388
    .line 389
    invoke-direct {v8, v14}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 393
    .line 394
    .line 395
    :goto_7
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :catchall_4
    move-exception v0

    .line 400
    move-object v4, v0

    .line 401
    :try_start_b
    const-string v8, "SystemServer"

    .line 402
    .line 403
    const-string v13, "Failure starting SE Android Manager Service"

    .line 404
    .line 405
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_72

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :goto_8
    :try_start_c
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 410
    .line 411
    const-string v8, "android.hardware.microphone"

    .line 412
    .line 413
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-nez v4, :cond_4

    .line 418
    .line 419
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 420
    .line 421
    const-string v8, "android.software.telecom"

    .line 422
    .line 423
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-nez v4, :cond_4

    .line 428
    .line 429
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 430
    .line 431
    const-string v8, "android.hardware.telephony"

    .line 432
    .line 433
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-eqz v4, :cond_5

    .line 438
    .line 439
    :cond_4
    const-string v4, "StartTelecomLoaderService"

    .line 440
    .line 441
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 445
    .line 446
    const-class v8, Lcom/android/server/telecom/TelecomLoaderService;

    .line 447
    .line 448
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 452
    .line 453
    .line 454
    :cond_5
    const-string v4, "StartTelephonyRegistry"

    .line 455
    .line 456
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    new-instance v13, Lcom/android/server/TelephonyRegistry;

    .line 460
    .line 461
    new-instance v4, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 462
    .line 463
    invoke-direct {v4}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-direct {v13, v14, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    .line 467
    .line 468
    .line 469
    const-string/jumbo v4, "telephony.registry"

    .line 470
    .line 471
    .line 472
    invoke-static {v4, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 476
    .line 477
    .line 478
    const-string v4, "StartEntropyMixer"

    .line 479
    .line 480
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    new-instance v4, Lcom/android/server/EntropyMixer;

    .line 484
    .line 485
    invoke-direct {v4, v14}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 489
    .line 490
    .line 491
    const-string/jumbo v4, "factory"

    .line 492
    .line 493
    .line 494
    const-string/jumbo v8, "ro.factory.factory_binary"

    .line 495
    .line 496
    .line 497
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v8

    .line 501
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 505
    const/4 v8, 0x1

    .line 506
    xor-int/2addr v4, v8

    .line 507
    if-eqz v4, :cond_6

    .line 508
    .line 509
    :try_start_d
    const-string v4, "UCM Policy Service"

    .line 510
    .line 511
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    new-instance v4, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 515
    .line 516
    invoke-direct {v4, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 517
    .line 518
    .line 519
    const-string/jumbo v8, "knox_ucsm_policy"

    .line 520
    .line 521
    .line 522
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 523
    .line 524
    .line 525
    const-string/jumbo v8, "knox_ucsm_policy"

    .line 526
    .line 527
    .line 528
    invoke-static {v8, v4}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 529
    .line 530
    .line 531
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 532
    .line 533
    .line 534
    move-object/from16 v20, v13

    .line 535
    .line 536
    goto :goto_9

    .line 537
    :catchall_5
    move-exception v0

    .line 538
    move-object v1, v0

    .line 539
    goto :goto_d

    .line 540
    :catch_1
    move-exception v0

    .line 541
    move-object v4, v0

    .line 542
    :try_start_f
    const-string v8, "SystemServer"

    .line 543
    .line 544
    move-object/from16 v20, v13

    .line 545
    .line 546
    const-string v13, "Failure adding UniversalCredentialManagerService"

    .line 547
    .line 548
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 549
    .line 550
    .line 551
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 552
    .line 553
    .line 554
    :goto_9
    :try_start_11
    const-string v4, "CredentialManagerService Service"

    .line 555
    .line 556
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 560
    .line 561
    invoke-direct {v4, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 562
    .line 563
    .line 564
    const-string/jumbo v8, "com.samsung.ucs.ucsservice"

    .line 565
    .line 566
    .line 567
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 568
    .line 569
    .line 570
    const-string/jumbo v8, "credentialManagerServiceReady"

    .line 571
    .line 572
    .line 573
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 574
    .line 575
    .line 576
    :try_start_12
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 577
    .line 578
    .line 579
    goto :goto_a

    .line 580
    :catchall_6
    move-exception v0

    .line 581
    move-object v1, v0

    .line 582
    goto :goto_c

    .line 583
    :catch_2
    move-exception v0

    .line 584
    move-object v4, v0

    .line 585
    :try_start_13
    const-string v8, "SystemServer"

    .line 586
    .line 587
    const-string v13, "Failed to call UCMService systemReady"

    .line 588
    .line 589
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .line 591
    .line 592
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 593
    .line 594
    .line 595
    :goto_b
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 596
    .line 597
    .line 598
    goto :goto_e

    .line 599
    :catch_3
    move-exception v0

    .line 600
    move-object v4, v0

    .line 601
    :try_start_15
    const-string v8, "SystemServer"

    .line 602
    .line 603
    const-string v13, "Failure adding CredentialManagerService"

    .line 604
    .line 605
    invoke-static {v8, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 606
    .line 607
    .line 608
    goto :goto_b

    .line 609
    :goto_c
    :try_start_16
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 610
    .line 611
    .line 612
    throw v1

    .line 613
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 614
    .line 615
    .line 616
    throw v1

    .line 617
    :cond_6
    move-object/from16 v20, v13

    .line 618
    .line 619
    :goto_e
    const-string v4, "StartPersonaManager"

    .line 620
    .line 621
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 622
    .line 623
    .line 624
    :try_start_17
    const-string v8, "SystemServer"

    .line 625
    .line 626
    const-string v13, "Persona Service"

    .line 627
    .line 628
    invoke-static {v8, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 629
    .line 630
    .line 631
    :try_start_18
    sget-boolean v8, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 632
    .line 633
    const-class v8, Lcom/android/server/pm/PersonaManagerService;

    .line 634
    .line 635
    monitor-enter v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 636
    :try_start_19
    sget-object v13, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    .line 637
    .line 638
    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 639
    :try_start_1a
    const-string/jumbo v8, "persona"

    .line 640
    .line 641
    .line 642
    invoke-static {v8, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 643
    .line 644
    .line 645
    goto :goto_12

    .line 646
    :catchall_7
    move-exception v0

    .line 647
    move-object v8, v0

    .line 648
    goto :goto_11

    .line 649
    :catchall_8
    move-exception v0

    .line 650
    move-object v13, v0

    .line 651
    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 652
    :try_start_1c
    throw v13
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 653
    :catchall_9
    move-exception v0

    .line 654
    goto :goto_10

    .line 655
    :goto_f
    const/4 v13, 0x0

    .line 656
    goto :goto_11

    .line 657
    :catchall_a
    move-exception v0

    .line 658
    :goto_10
    move-object v8, v0

    .line 659
    goto :goto_f

    .line 660
    :goto_11
    :try_start_1d
    const-string v4, "SystemServer"

    .line 661
    .line 662
    move-object/from16 v22, v13

    .line 663
    .line 664
    const-string v13, "Failure starting Persona Manager Service"

    .line 665
    .line 666
    invoke-static {v4, v13, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 667
    .line 668
    .line 669
    move-object/from16 v13, v22

    .line 670
    .line 671
    :goto_12
    :try_start_1e
    const-string v4, "SystemServer"

    .line 672
    .line 673
    const-string v8, "KnoxMUMContainerPolicy Service"

    .line 674
    .line 675
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 679
    .line 680
    invoke-direct {v4, v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 681
    .line 682
    .line 683
    :try_start_1f
    const-string/jumbo v8, "mum_container_policy"

    .line 684
    .line 685
    .line 686
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 687
    .line 688
    .line 689
    const-string/jumbo v8, "mum_container_policy"

    .line 690
    .line 691
    .line 692
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 693
    .line 694
    .line 695
    move-object/from16 v23, v13

    .line 696
    .line 697
    goto :goto_14

    .line 698
    :catchall_b
    move-exception v0

    .line 699
    move-object v8, v0

    .line 700
    move-object/from16 v22, v4

    .line 701
    .line 702
    goto :goto_13

    .line 703
    :catchall_c
    move-exception v0

    .line 704
    move-object v8, v0

    .line 705
    const/16 v22, 0x0

    .line 706
    .line 707
    :goto_13
    :try_start_20
    const-string v4, "SystemServer"

    .line 708
    .line 709
    move-object/from16 v23, v13

    .line 710
    .line 711
    const-string v13, "Failure starting KnoxMUMContainerPolicy Service"

    .line 712
    .line 713
    invoke-static {v4, v13, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .line 715
    .line 716
    move-object/from16 v4, v22

    .line 717
    .line 718
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 719
    .line 720
    .line 721
    const-string v8, "SystemServer"

    .line 722
    .line 723
    const-string/jumbo v13, "calling startRCPService - 1"

    .line 724
    .line 725
    .line 726
    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .line 728
    .line 729
    const/4 v8, 0x0

    .line 730
    invoke-static {v14, v15, v8}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    iput-object v8, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 741
    .line 742
    const-string v8, "StartAccountManagerService"

    .line 743
    .line 744
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 748
    .line 749
    const-class v13, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    .line 750
    .line 751
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 752
    .line 753
    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 755
    .line 756
    .line 757
    const-string v8, "StartContentService"

    .line 758
    .line 759
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 763
    .line 764
    const-class v13, Lcom/android/server/content/ContentService$Lifecycle;

    .line 765
    .line 766
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 767
    .line 768
    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 770
    .line 771
    .line 772
    const-string v8, "InstallSystemProviders"

    .line 773
    .line 774
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    iget-object v8, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 778
    .line 779
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    .line 780
    .line 781
    .line 782
    move-result-object v8

    .line 783
    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 784
    .line 785
    .line 786
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 787
    .line 788
    const-string/jumbo v13, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    .line 789
    .line 790
    .line 791
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 792
    .line 793
    .line 794
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 795
    .line 796
    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 798
    .line 799
    .line 800
    const-string v8, "StartDropBoxManager"

    .line 801
    .line 802
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 806
    .line 807
    const-class v13, Lcom/android/server/DropBoxManagerService;

    .line 808
    .line 809
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 810
    .line 811
    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 813
    .line 814
    .line 815
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    if-eqz v8, :cond_7

    .line 820
    .line 821
    const-string v8, "StartEnhancedConfirmationService"

    .line 822
    .line 823
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 827
    .line 828
    const-string/jumbo v13, "com.android.ecm.EnhancedConfirmationService"

    .line 829
    .line 830
    .line 831
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 832
    .line 833
    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 835
    .line 836
    .line 837
    :cond_7
    const-string v8, "StartHintManager"

    .line 838
    .line 839
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    iget-object v8, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 843
    .line 844
    const-class v13, Lcom/android/server/power/hint/HintManagerService;

    .line 845
    .line 846
    invoke-virtual {v8, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 847
    .line 848
    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 850
    .line 851
    .line 852
    const-string v8, "StartRoleManagerService"

    .line 853
    .line 854
    invoke-virtual {v15, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    const-class v8, Lcom/android/server/role/RoleServicePlatformHelper;

    .line 858
    .line 859
    new-instance v13, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    .line 860
    .line 861
    move-object/from16 v22, v4

    .line 862
    .line 863
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 864
    .line 865
    invoke-direct {v13, v4}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    .line 866
    .line 867
    .line 868
    invoke-static {v8, v13}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 872
    .line 873
    const-string/jumbo v8, "com.android.role.RoleService"

    .line 874
    .line 875
    .line 876
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 877
    .line 878
    .line 879
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 880
    .line 881
    .line 882
    sget-boolean v4, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    .line 883
    .line 884
    if-eqz v4, :cond_8

    .line 885
    .line 886
    const-string v4, "SemUnionMainService"

    .line 887
    .line 888
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 892
    .line 893
    const-class v8, Lcom/android/server/sepunion/SemUnionMainService;

    .line 894
    .line 895
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 896
    .line 897
    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 899
    .line 900
    .line 901
    :cond_8
    if-nez v1, :cond_9

    .line 902
    .line 903
    const-string v4, "StartVibratorManagerService"

    .line 904
    .line 905
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 909
    .line 910
    const-class v8, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    .line 911
    .line 912
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 913
    .line 914
    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 916
    .line 917
    .line 918
    :cond_9
    const-string v4, "StartDynamicSystemService"

    .line 919
    .line 920
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    new-instance v4, Lcom/android/server/DynamicSystemService;

    .line 924
    .line 925
    invoke-direct {v4, v14}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    .line 926
    .line 927
    .line 928
    const-string/jumbo v8, "dynamic_system"

    .line 929
    .line 930
    .line 931
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    const-string v8, "android.hardware.consumerir"

    .line 942
    .line 943
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 944
    .line 945
    .line 946
    move-result v4

    .line 947
    if-eqz v4, :cond_a

    .line 948
    .line 949
    const-string v4, "StartConsumerIrService"

    .line 950
    .line 951
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    new-instance v4, Lcom/android/server/ConsumerIrService;

    .line 955
    .line 956
    invoke-direct {v4, v14}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 957
    .line 958
    .line 959
    const-string/jumbo v8, "consumer_ir"

    .line 960
    .line 961
    .line 962
    invoke-static {v8, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 966
    .line 967
    .line 968
    :cond_a
    :try_start_21
    const-string v4, "SSRM Service"

    .line 969
    .line 970
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 974
    .line 975
    const-string/jumbo v8, "com.android.server.ssrm.CustomFrequencyManagerService$Lifecycle"

    .line 976
    .line 977
    .line 978
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_4
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 979
    .line 980
    .line 981
    :goto_15
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 982
    .line 983
    .line 984
    goto :goto_16

    .line 985
    :catchall_d
    move-exception v0

    .line 986
    move-object v1, v0

    .line 987
    move-object v2, v15

    .line 988
    goto/16 :goto_a7

    .line 989
    .line 990
    :catch_4
    move-exception v0

    .line 991
    move-object v4, v0

    .line 992
    :try_start_23
    const-string v8, "SystemServer"

    .line 993
    .line 994
    const-string/jumbo v13, "ssrm.jar not found"

    .line 995
    .line 996
    .line 997
    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_71

    .line 1001
    .line 1002
    .line 1003
    goto :goto_15

    .line 1004
    :goto_16
    :try_start_24
    const-string v4, "StartAlarmManagerService"

    .line 1005
    .line 1006
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1010
    .line 1011
    const-class v8, Lcom/android/server/alarm/AlarmManagerService;

    .line 1012
    .line 1013
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1017
    .line 1018
    .line 1019
    const-string v4, "StartInputManagerService"

    .line 1020
    .line 1021
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v13, Lcom/android/server/input/InputManagerService;

    .line 1025
    .line 1026
    invoke-direct {v13, v14}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1030
    .line 1031
    .line 1032
    const-string v4, "DeviceStateManagerService"

    .line 1033
    .line 1034
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1038
    .line 1039
    const-class v8, Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 1040
    .line 1041
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1045
    .line 1046
    .line 1047
    if-nez v10, :cond_b

    .line 1048
    .line 1049
    const-string v4, "StartCameraServiceProxy"

    .line 1050
    .line 1051
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1055
    .line 1056
    const-class v8, Lcom/android/server/camera/CameraServiceProxy;

    .line 1057
    .line 1058
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1062
    .line 1063
    .line 1064
    const-string v4, "StartCameraServiceWorker"

    .line 1065
    .line 1066
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1070
    .line 1071
    const-class v8, Lcom/samsung/android/camera/CameraServiceWorker;

    .line 1072
    .line 1073
    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1077
    .line 1078
    .line 1079
    :cond_b
    const-string v4, "StartWindowManagerService"

    .line 1080
    .line 1081
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    const-string v4, "SystemServer"

    .line 1085
    .line 1086
    const-string v8, "!@Boot_EBS_F: Start WindowManagerService"

    .line 1087
    .line 1088
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .line 1090
    .line 1091
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1092
    .line 1093
    const/16 v8, 0xc8

    .line 1094
    .line 1095
    invoke-virtual {v4, v15, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1096
    .line 1097
    .line 1098
    iget-boolean v4, v2, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1099
    .line 1100
    const/4 v8, 0x1

    .line 1101
    xor-int/2addr v4, v8

    .line 1102
    new-instance v8, Lcom/android/server/policy/PhoneWindowManager;

    .line 1103
    .line 1104
    invoke-direct {v8}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    iget-object v10, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1108
    .line 1109
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1110
    .line 1111
    invoke-static {v14, v13, v4, v8, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v10

    .line 1115
    const-string/jumbo v4, "window"

    .line 1116
    .line 1117
    .line 1118
    const/16 v8, 0x13

    .line 1119
    .line 1120
    move/from16 v25, v9

    .line 1121
    .line 1122
    const/4 v9, 0x0

    .line 1123
    invoke-static {v4, v10, v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1124
    .line 1125
    .line 1126
    const-string/jumbo v4, "input"

    .line 1127
    .line 1128
    .line 1129
    const/4 v8, 0x1

    .line 1130
    invoke-static {v4, v13, v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1134
    .line 1135
    .line 1136
    const-string v4, "SetWindowManagerService"

    .line 1137
    .line 1138
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1142
    .line 1143
    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1147
    .line 1148
    .line 1149
    const-string v4, "WindowManagerServiceOnInitReady"

    .line 1150
    .line 1151
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1158
    .line 1159
    .line 1160
    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 1161
    .line 1162
    const/4 v8, 0x2

    .line 1163
    invoke-direct {v4, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1164
    .line 1165
    .line 1166
    const-string v8, "StartISensorManagerService"

    .line 1167
    .line 1168
    invoke-static {v8, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1169
    .line 1170
    .line 1171
    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    .line 1172
    .line 1173
    const/4 v8, 0x3

    .line 1174
    invoke-direct {v4, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1175
    .line 1176
    .line 1177
    const-string v8, "StartHidlServices"

    .line 1178
    .line 1179
    invoke-static {v8, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1180
    .line 1181
    .line 1182
    if-nez v11, :cond_c

    .line 1183
    .line 1184
    if-eqz v3, :cond_c

    .line 1185
    .line 1186
    const-string v3, "StartVrManagerService"

    .line 1187
    .line 1188
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1192
    .line 1193
    const-class v4, Lcom/android/server/vr/VrManagerService;

    .line 1194
    .line 1195
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1199
    .line 1200
    .line 1201
    :cond_c
    const-string/jumbo v3, "startDesktopModeService"

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1208
    .line 1209
    const-class v4, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;

    .line 1210
    .line 1211
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1215
    .line 1216
    .line 1217
    const-string v3, "StartInputManager"

    .line 1218
    .line 1219
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    invoke-virtual {v13, v3}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v13}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1233
    .line 1234
    .line 1235
    const-string v3, "DisplayManagerWindowManagerAndInputReady"

    .line 1236
    .line 1237
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    iget-object v3, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1241
    .line 1242
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1246
    .line 1247
    .line 1248
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1249
    .line 1250
    const/4 v4, 0x1

    .line 1251
    if-ne v3, v4, :cond_d

    .line 1252
    .line 1253
    const-string v3, "SystemServer"

    .line 1254
    .line 1255
    const-string v4, "No Bluetooth Service (factory test)"

    .line 1256
    .line 1257
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    .line 1259
    .line 1260
    goto :goto_17

    .line 1261
    :cond_d
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v3

    .line 1265
    const-string v4, "android.hardware.bluetooth"

    .line 1266
    .line 1267
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v3

    .line 1271
    if-nez v3, :cond_e

    .line 1272
    .line 1273
    const-string v3, "SystemServer"

    .line 1274
    .line 1275
    const-string v4, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    .line 1276
    .line 1277
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .line 1279
    .line 1280
    goto :goto_17

    .line 1281
    :cond_e
    const-string v3, "StartBluetoothService"

    .line 1282
    .line 1283
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1287
    .line 1288
    const-string/jumbo v4, "com.android.server.bluetooth.BluetoothService"

    .line 1289
    .line 1290
    .line 1291
    const-string v8, "/apex/com.android.btservices/javalib/service-bluetooth.jar"

    .line 1292
    .line 1293
    invoke-virtual {v3, v4, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1297
    .line 1298
    .line 1299
    :goto_17
    const-string v3, "StartMultiControlManagerService"

    .line 1300
    .line 1301
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1305
    .line 1306
    const-class v4, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;

    .line 1307
    .line 1308
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1312
    .line 1313
    .line 1314
    const-string v3, "SystemServer"

    .line 1315
    .line 1316
    const-string v4, "Hqm Service"

    .line 1317
    .line 1318
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 1319
    .line 1320
    .line 1321
    :try_start_25
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 1322
    .line 1323
    const-string v4, "/system/framework/hqm.jar"

    .line 1324
    .line 1325
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v8

    .line 1329
    invoke-direct {v3, v4, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1330
    .line 1331
    .line 1332
    const-string/jumbo v4, "com.samsung.android.hqm.HqmManagerService"

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    const/4 v4, 0x1

    .line 1340
    new-array v8, v4, [Ljava/lang/Class;

    .line 1341
    .line 1342
    const-class v4, Landroid/content/Context;

    .line 1343
    .line 1344
    const/4 v9, 0x0

    .line 1345
    aput-object v4, v8, v9

    .line 1346
    .line 1347
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v3

    .line 1351
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v4

    .line 1355
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v3

    .line 1359
    check-cast v3, Landroid/os/IBinder;

    .line 1360
    .line 1361
    const-string v4, "HqmManagerService"

    .line 1362
    .line 1363
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_5
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 1364
    .line 1365
    .line 1366
    goto :goto_18

    .line 1367
    :catch_5
    move-exception v0

    .line 1368
    move-object v3, v0

    .line 1369
    :try_start_26
    const-string v4, "SystemServer"

    .line 1370
    .line 1371
    const-string/jumbo v8, "hqm.jar not found"

    .line 1372
    .line 1373
    .line 1374
    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1378
    .line 1379
    .line 1380
    :goto_18
    const-string v3, "0"

    .line 1381
    .line 1382
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v4

    .line 1386
    const-string v8, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    .line 1387
    .line 1388
    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v4

    .line 1392
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v3

    .line 1396
    if-nez v3, :cond_10

    .line 1397
    .line 1398
    const-string v3, "HcmManagerService"

    .line 1399
    .line 1400
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 1401
    .line 1402
    .line 1403
    :try_start_27
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v3

    .line 1407
    const-string v4, "adaptive_power_saving_setting"

    .line 1408
    .line 1409
    const/4 v8, 0x0

    .line 1410
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    const-string v4, "SystemServer"

    .line 1415
    .line 1416
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v6

    .line 1428
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    .line 1430
    .line 1431
    new-instance v4, Ldalvik/system/PathClassLoader;

    .line 1432
    .line 1433
    const-string v6, "/system/framework/hcm.jar"

    .line 1434
    .line 1435
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v8

    .line 1439
    invoke-direct {v4, v6, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1440
    .line 1441
    .line 1442
    const-string/jumbo v6, "com.samsung.android.hcm.HcmManagerService"

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v4, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v4

    .line 1449
    if-lez v3, :cond_f

    .line 1450
    .line 1451
    const/4 v3, 0x1

    .line 1452
    new-array v6, v3, [Ljava/lang/Class;

    .line 1453
    .line 1454
    const-class v3, Landroid/content/Context;

    .line 1455
    .line 1456
    const/4 v8, 0x0

    .line 1457
    aput-object v3, v6, v8

    .line 1458
    .line 1459
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v3

    .line 1463
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v4

    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    check-cast v3, Landroid/os/IBinder;

    .line 1472
    .line 1473
    const-string v4, "HcmManagerService"

    .line 1474
    .line 1475
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1476
    .line 1477
    .line 1478
    goto :goto_1a

    .line 1479
    :catch_6
    move-exception v0

    .line 1480
    move-object v3, v0

    .line 1481
    goto :goto_19

    .line 1482
    :cond_f
    const-string v3, "HcmManagerService"

    .line 1483
    .line 1484
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    .line 1485
    .line 1486
    .line 1487
    goto :goto_1a

    .line 1488
    :goto_19
    :try_start_28
    const-string v4, "SystemServer"

    .line 1489
    .line 1490
    const-string v6, "Failed to add HcmManagerService."

    .line 1491
    .line 1492
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1496
    .line 1497
    .line 1498
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1499
    .line 1500
    .line 1501
    :cond_10
    const-string v3, "IpConnectivityMetrics"

    .line 1502
    .line 1503
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1504
    .line 1505
    .line 1506
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1507
    .line 1508
    const-class v4, Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 1509
    .line 1510
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1514
    .line 1515
    .line 1516
    const-string v3, "NetworkWatchlistService"

    .line 1517
    .line 1518
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1522
    .line 1523
    const-class v4, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    .line 1524
    .line 1525
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1529
    .line 1530
    .line 1531
    const-string v3, "PinnerService"

    .line 1532
    .line 1533
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1537
    .line 1538
    const-class v4, Lcom/android/server/PinnerService;

    .line 1539
    .line 1540
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1544
    .line 1545
    .line 1546
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1547
    .line 1548
    if-eqz v3, :cond_11

    .line 1549
    .line 1550
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    .line 1551
    .line 1552
    .line 1553
    move-result v3

    .line 1554
    if-eqz v3, :cond_11

    .line 1555
    .line 1556
    const-string v3, "ProfcollectForwardingService"

    .line 1557
    .line 1558
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1562
    .line 1563
    const-class v4, Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 1564
    .line 1565
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1569
    .line 1570
    .line 1571
    :cond_11
    const-string v3, "SignedConfigService"

    .line 1572
    .line 1573
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1574
    .line 1575
    .line 1576
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1577
    .line 1578
    invoke-static {v3}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1582
    .line 1583
    .line 1584
    const-string v3, "AppIntegrityService"

    .line 1585
    .line 1586
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1590
    .line 1591
    const-class v4, Lcom/android/server/integrity/AppIntegrityManagerService;

    .line 1592
    .line 1593
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1597
    .line 1598
    .line 1599
    const-string v3, "StartLogcatManager"

    .line 1600
    .line 1601
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1602
    .line 1603
    .line 1604
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1605
    .line 1606
    const-class v4, Lcom/android/server/logcat/LogcatManagerService;

    .line 1607
    .line 1608
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1612
    .line 1613
    .line 1614
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v3

    .line 1618
    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION"

    .line 1619
    .line 1620
    const/4 v6, -0x1

    .line 1621
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 1622
    .line 1623
    .line 1624
    move-result v3

    .line 1625
    const/16 v4, 0x4f1b

    .line 1626
    .line 1627
    if-lt v3, v4, :cond_12

    .line 1628
    .line 1629
    invoke-static {v14}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v3

    .line 1633
    if-eqz v3, :cond_12

    .line 1634
    .line 1635
    const-string v3, "StartAppFunctionManager"

    .line 1636
    .line 1637
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1638
    .line 1639
    .line 1640
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1641
    .line 1642
    const-class v8, Lcom/android/server/appfunctions/AppFunctionManagerService;

    .line 1643
    .line 1644
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1648
    .line 1649
    .line 1650
    :cond_12
    const-string v3, "SemInputDeviceManagerService"

    .line 1651
    .line 1652
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 1653
    .line 1654
    .line 1655
    :try_start_29
    const-string v3, "SystemServer"

    .line 1656
    .line 1657
    const-string v8, "SemInputDeviceManagerService loader"

    .line 1658
    .line 1659
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .line 1661
    .line 1662
    const-string/jumbo v3, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 1663
    .line 1664
    .line 1665
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v3

    .line 1669
    const-string/jumbo v8, "getService"

    .line 1670
    .line 1671
    .line 1672
    const/4 v9, 0x1

    .line 1673
    new-array v4, v9, [Ljava/lang/Class;

    .line 1674
    .line 1675
    const-class v9, Landroid/content/Context;

    .line 1676
    .line 1677
    const/16 v18, 0x0

    .line 1678
    .line 1679
    aput-object v9, v4, v18

    .line 1680
    .line 1681
    invoke-virtual {v3, v8, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v4

    .line 1685
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v8

    .line 1689
    invoke-virtual {v4, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v3

    .line 1693
    check-cast v3, Landroid/os/IBinder;

    .line 1694
    .line 1695
    const-string v4, "SemInputDeviceManagerService"

    .line 1696
    .line 1697
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 1698
    .line 1699
    .line 1700
    goto :goto_1b

    .line 1701
    :catchall_e
    move-exception v0

    .line 1702
    move-object v3, v0

    .line 1703
    :try_start_2a
    const-string v4, "Failed To Start SemInputDeviceManagerService loader"

    .line 1704
    .line 1705
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1706
    .line 1707
    .line 1708
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1709
    .line 1710
    .line 1711
    const-string v3, "SecIpmManagerService"

    .line 1712
    .line 1713
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1714
    .line 1715
    .line 1716
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1717
    .line 1718
    const-string/jumbo v4, "com.android.server.ipm.SecIpmManagerService"

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1725
    .line 1726
    .line 1727
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1728
    .line 1729
    const/4 v4, 0x1

    .line 1730
    if-eq v3, v4, :cond_13

    .line 1731
    .line 1732
    const-string/jumbo v3, "vold.decrypt"

    .line 1733
    .line 1734
    .line 1735
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1736
    .line 1737
    .line 1738
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1739
    .line 1740
    const-string/jumbo v4, "com.sec.feature.cover"

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v3

    .line 1747
    if-eqz v3, :cond_13

    .line 1748
    .line 1749
    const-string v3, "StartCoverService"

    .line 1750
    .line 1751
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1752
    .line 1753
    .line 1754
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1755
    .line 1756
    const-class v4, Lcom/android/server/cover/CoverManagerService;

    .line 1757
    .line 1758
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1759
    .line 1760
    .line 1761
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1762
    .line 1763
    .line 1764
    :cond_13
    const-string v3, "Samsung Accessory Manager"

    .line 1765
    .line 1766
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    .line 1767
    .line 1768
    .line 1769
    :try_start_2b
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v3

    .line 1773
    if-eqz v3, :cond_15

    .line 1774
    .line 1775
    const-string/jumbo v4, "com.sec.feature.nfc_authentication"

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1779
    .line 1780
    .line 1781
    move-result v4

    .line 1782
    if-nez v4, :cond_14

    .line 1783
    .line 1784
    const-string/jumbo v4, "com.sec.feature.nfc_authentication_cover"

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1788
    .line 1789
    .line 1790
    move-result v4

    .line 1791
    if-nez v4, :cond_14

    .line 1792
    .line 1793
    const-string/jumbo v4, "com.sec.feature.usb_authentication"

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1797
    .line 1798
    .line 1799
    move-result v4

    .line 1800
    if-nez v4, :cond_14

    .line 1801
    .line 1802
    const-string/jumbo v4, "com.sec.feature.wirelesscharger_authentication"

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1806
    .line 1807
    .line 1808
    move-result v3

    .line 1809
    if-eqz v3, :cond_15

    .line 1810
    .line 1811
    goto :goto_1c

    .line 1812
    :catchall_f
    move-exception v0

    .line 1813
    move-object v3, v0

    .line 1814
    goto :goto_1d

    .line 1815
    :cond_14
    :goto_1c
    const-string v3, "SystemServer"

    .line 1816
    .line 1817
    const-string v4, "Samsung Accessory Manager"

    .line 1818
    .line 1819
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    .line 1821
    .line 1822
    new-instance v3, Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1823
    .line 1824
    invoke-direct {v3, v14, v13}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1825
    .line 1826
    .line 1827
    iput-object v3, v2, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1828
    .line 1829
    const-class v4, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    .line 1830
    .line 1831
    invoke-static {v4, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1832
    .line 1833
    .line 1834
    iget-object v3, v2, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 1835
    .line 1836
    invoke-virtual {v13, v3}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    .line 1837
    .line 1838
    .line 1839
    goto :goto_1e

    .line 1840
    :goto_1d
    :try_start_2c
    const-string/jumbo v4, "starting SAccessoryManager"

    .line 1841
    .line 1842
    .line 1843
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1844
    .line 1845
    .line 1846
    :cond_15
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    .line 1847
    .line 1848
    .line 1849
    const-string/jumbo v3, "detectSafeMode"

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1853
    .line 1854
    .line 1855
    const-string v3, "SystemServer"

    .line 1856
    .line 1857
    const-string v4, "!@Boot_EBS_D: detectSafeMode"

    .line 1858
    .line 1859
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    .line 1863
    .line 1864
    .line 1865
    move-result v9

    .line 1866
    if-eqz v9, :cond_16

    .line 1867
    .line 1868
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v3

    .line 1872
    const-string v4, "airplane_mode_on"

    .line 1873
    .line 1874
    const/4 v8, 0x1

    .line 1875
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1876
    .line 1877
    .line 1878
    goto :goto_1f

    .line 1879
    :cond_16
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v3

    .line 1883
    const v4, 0x1110040

    .line 1884
    .line 1885
    .line 1886
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1887
    .line 1888
    .line 1889
    move-result v3

    .line 1890
    if-eqz v3, :cond_17

    .line 1891
    .line 1892
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v3

    .line 1896
    const-string v4, "airplane_mode_on"

    .line 1897
    .line 1898
    const/4 v8, 0x0

    .line 1899
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1900
    .line 1901
    .line 1902
    :cond_17
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1903
    .line 1904
    .line 1905
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 1906
    .line 1907
    const/4 v4, 0x1

    .line 1908
    if-eq v3, v4, :cond_19

    .line 1909
    .line 1910
    const-string v3, "StartInputMethodManagerLifecycle"

    .line 1911
    .line 1912
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v3

    .line 1919
    const v4, 0x1040344

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v3

    .line 1926
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v4

    .line 1930
    if-eqz v4, :cond_18

    .line 1931
    .line 1932
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1933
    .line 1934
    const-class v4, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    .line 1935
    .line 1936
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1937
    .line 1938
    .line 1939
    goto :goto_20

    .line 1940
    :cond_18
    :try_start_2d
    const-string v4, "SystemServer"

    .line 1941
    .line 1942
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v5

    .line 1946
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    .line 1948
    .line 1949
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1950
    .line 1951
    invoke-virtual {v4, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 1952
    .line 1953
    .line 1954
    goto :goto_20

    .line 1955
    :catchall_10
    move-exception v0

    .line 1956
    move-object v4, v0

    .line 1957
    const-string/jumbo v5, "starting "

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v3

    .line 1964
    invoke-static {v3, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1965
    .line 1966
    .line 1967
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1968
    .line 1969
    .line 1970
    const-string v3, "StartAccessibilityManagerService"

    .line 1971
    .line 1972
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1973
    .line 1974
    .line 1975
    :try_start_2e
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1976
    .line 1977
    const-class v4, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    .line 1978
    .line 1979
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    .line 1980
    .line 1981
    .line 1982
    goto :goto_21

    .line 1983
    :catchall_11
    move-exception v0

    .line 1984
    move-object v3, v0

    .line 1985
    const-string/jumbo v4, "starting Accessibility Manager"

    .line 1986
    .line 1987
    .line 1988
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1989
    .line 1990
    .line 1991
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1992
    .line 1993
    .line 1994
    :cond_19
    const-string v3, "MakeDisplayReady"

    .line 1995
    .line 1996
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1997
    .line 1998
    .line 1999
    :try_start_2f
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    .line 2000
    .line 2001
    .line 2002
    goto :goto_22

    .line 2003
    :catchall_12
    move-exception v0

    .line 2004
    move-object v3, v0

    .line 2005
    const-string/jumbo v4, "making display ready"

    .line 2006
    .line 2007
    .line 2008
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2009
    .line 2010
    .line 2011
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2012
    .line 2013
    .line 2014
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v3

    .line 2018
    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    .line 2019
    .line 2020
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v3

    .line 2024
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2025
    .line 2026
    .line 2027
    move-result v4

    .line 2028
    if-lez v4, :cond_1a

    .line 2029
    .line 2030
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2031
    .line 2032
    .line 2033
    move-result v3

    .line 2034
    if-lez v3, :cond_1a

    .line 2035
    .line 2036
    const-string v3, "Add SEM_FM_RADIO_SERVICE"

    .line 2037
    .line 2038
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2039
    .line 2040
    .line 2041
    :try_start_30
    const-string v3, "FMPlayer"

    .line 2042
    .line 2043
    const-class v4, Lcom/android/server/FMRadioService;

    .line 2044
    .line 2045
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2046
    .line 2047
    .line 2048
    const-string v3, "SystemServer"

    .line 2049
    .line 2050
    const-string v4, "FMRadio service added.."

    .line 2051
    .line 2052
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_13

    .line 2053
    .line 2054
    .line 2055
    goto :goto_23

    .line 2056
    :catchall_13
    move-exception v0

    .line 2057
    move-object v3, v0

    .line 2058
    const-string v4, "Failure starting FM Radio Service"

    .line 2059
    .line 2060
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2061
    .line 2062
    .line 2063
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2064
    .line 2065
    .line 2066
    :cond_1a
    const-string v3, "StartRemoteAppModeService"

    .line 2067
    .line 2068
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2069
    .line 2070
    .line 2071
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2072
    .line 2073
    const-class v4, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;

    .line 2074
    .line 2075
    const-string v5, "IcccManagerService"

    .line 2076
    .line 2077
    invoke-static {v3, v4, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2078
    .line 2079
    .line 2080
    :try_start_31
    const-string/jumbo v3, "iccc"

    .line 2081
    .line 2082
    .line 2083
    new-instance v4, Lcom/android/server/SystemServer$4;

    .line 2084
    .line 2085
    const/4 v5, 0x0

    .line 2086
    invoke-direct {v4, v5}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 2087
    .line 2088
    .line 2089
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_14

    .line 2090
    .line 2091
    .line 2092
    goto :goto_24

    .line 2093
    :catchall_14
    move-exception v0

    .line 2094
    move-object v3, v0

    .line 2095
    const-string v4, "Failure starting IcccManagerService "

    .line 2096
    .line 2097
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2098
    .line 2099
    .line 2100
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2101
    .line 2102
    .line 2103
    const-string v3, "SamsungGameManager"

    .line 2104
    .line 2105
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2106
    .line 2107
    .line 2108
    :try_start_32
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2109
    .line 2110
    const-string v4, "/system/framework/gamemanager.jar"

    .line 2111
    .line 2112
    const-class v5, Lcom/android/server/SystemServer;

    .line 2113
    .line 2114
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2115
    .line 2116
    .line 2117
    move-result-object v5

    .line 2118
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2119
    .line 2120
    .line 2121
    const-string/jumbo v4, "com.samsung.android.game.GameManagerService$Lifecycle"

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v3

    .line 2128
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2129
    .line 2130
    invoke-virtual {v4, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2131
    .line 2132
    .line 2133
    const-string v3, "SystemServer"

    .line 2134
    .line 2135
    const-string v4, "SamsungGameManager Started"

    .line 2136
    .line 2137
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_15

    .line 2138
    .line 2139
    .line 2140
    goto :goto_25

    .line 2141
    :catchall_15
    move-exception v0

    .line 2142
    move-object v3, v0

    .line 2143
    const-string v4, "SystemServer"

    .line 2144
    .line 2145
    const-string v5, "Failed to start SamsungGameManager."

    .line 2146
    .line 2147
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2148
    .line 2149
    .line 2150
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2151
    .line 2152
    .line 2153
    const-string v3, "DisplayAiqeManagerService"

    .line 2154
    .line 2155
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2156
    .line 2157
    .line 2158
    :try_start_33
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2159
    .line 2160
    const-string v4, "/system/framework/displayaiqe_svc.jar"

    .line 2161
    .line 2162
    const-class v5, Lcom/android/server/SystemServer;

    .line 2163
    .line 2164
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v5

    .line 2168
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2169
    .line 2170
    .line 2171
    const-string/jumbo v4, "com.samsung.android.displayaiqe.DisplayAiqeManagerService$Lifecycle"

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v3

    .line 2178
    if-nez v3, :cond_1b

    .line 2179
    .line 2180
    const-string v3, "SystemServer"

    .line 2181
    .line 2182
    const-string v4, "Can\'t load DisplayAiqeManagerService class"

    .line 2183
    .line 2184
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    .line 2186
    .line 2187
    goto :goto_27

    .line 2188
    :catchall_16
    move-exception v0

    .line 2189
    move-object v3, v0

    .line 2190
    goto :goto_26

    .line 2191
    :cond_1b
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2192
    .line 2193
    invoke-virtual {v4, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2194
    .line 2195
    .line 2196
    const-string v3, "SystemServer"

    .line 2197
    .line 2198
    const-string v4, "DisplayAiqeManagerService Started"

    .line 2199
    .line 2200
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    .line 2201
    .line 2202
    .line 2203
    goto :goto_27

    .line 2204
    :goto_26
    const-string v4, "SystemServer"

    .line 2205
    .line 2206
    const-string v5, "Failed to start DisplayAiqeManagerService."

    .line 2207
    .line 2208
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    .line 2210
    .line 2211
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2212
    .line 2213
    .line 2214
    const-string v3, "SehHdrSolutionService"

    .line 2215
    .line 2216
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2217
    .line 2218
    .line 2219
    :try_start_34
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2220
    .line 2221
    const-string v4, "/system/framework/vendor.samsung.frameworks.hdrsolution-service.jar"

    .line 2222
    .line 2223
    const-class v5, Lcom/android/server/SystemServer;

    .line 2224
    .line 2225
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v5

    .line 2229
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2230
    .line 2231
    .line 2232
    const-string/jumbo v4, "vendor.samsung.frameworks.hdrsolution.SehHdrSolutionService"

    .line 2233
    .line 2234
    .line 2235
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v3

    .line 2239
    if-nez v3, :cond_1c

    .line 2240
    .line 2241
    const-string v3, "SystemServer"

    .line 2242
    .line 2243
    const-string v4, "Can\'t load SehHdrSolutionService class"

    .line 2244
    .line 2245
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    .line 2247
    .line 2248
    goto :goto_29

    .line 2249
    :catchall_17
    move-exception v0

    .line 2250
    move-object v3, v0

    .line 2251
    goto :goto_28

    .line 2252
    :cond_1c
    const/4 v4, 0x2

    .line 2253
    new-array v5, v4, [Ljava/lang/Class;

    .line 2254
    .line 2255
    const-class v4, Landroid/content/Context;

    .line 2256
    .line 2257
    const/4 v8, 0x0

    .line 2258
    aput-object v4, v5, v8

    .line 2259
    .line 2260
    const-class v4, Landroid/app/IActivityManager;

    .line 2261
    .line 2262
    const/4 v8, 0x1

    .line 2263
    aput-object v4, v5, v8

    .line 2264
    .line 2265
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v3

    .line 2269
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2270
    .line 2271
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v4

    .line 2275
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v3

    .line 2279
    check-cast v3, Landroid/os/IBinder;

    .line 2280
    .line 2281
    const-string/jumbo v4, "vendor.samsung.frameworks.hdrsolution.ISehHdrSolution/default"

    .line 2282
    .line 2283
    .line 2284
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2285
    .line 2286
    .line 2287
    const-string v3, "SystemServer"

    .line 2288
    .line 2289
    const-string v4, "SehHdrSolutionService loaded"

    .line 2290
    .line 2291
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    .line 2293
    .line 2294
    const-string/jumbo v3, "secmm.hdrsolution.ready"

    .line 2295
    .line 2296
    .line 2297
    const-string v4, "1"

    .line 2298
    .line 2299
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_17

    .line 2300
    .line 2301
    .line 2302
    goto :goto_29

    .line 2303
    :goto_28
    const-string v4, "SystemServer"

    .line 2304
    .line 2305
    const-string v5, "Failed to start SehHdrSolutionService "

    .line 2306
    .line 2307
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2308
    .line 2309
    .line 2310
    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2311
    .line 2312
    .line 2313
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_JDM_MODEL:Z

    .line 2314
    .line 2315
    if-nez v3, :cond_1e

    .line 2316
    .line 2317
    const-string v3, "SystemServer"

    .line 2318
    .line 2319
    const-string v4, "PerfSDKService"

    .line 2320
    .line 2321
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    .line 2323
    .line 2324
    const-string v3, "PerfSDKService"

    .line 2325
    .line 2326
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2327
    .line 2328
    .line 2329
    :try_start_35
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2330
    .line 2331
    const-string v4, "/system/framework/perfsdkservice.jar"

    .line 2332
    .line 2333
    const-class v5, Lcom/android/server/SystemServer;

    .line 2334
    .line 2335
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v5

    .line 2339
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2340
    .line 2341
    .line 2342
    const-string/jumbo v4, "com.samsung.android.perfsdkservice.PerfSDKService"

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v3

    .line 2349
    if-nez v3, :cond_1d

    .line 2350
    .line 2351
    const-string v3, "SystemServer"

    .line 2352
    .line 2353
    const-string v4, "Can\'t load PerfSdkService class"

    .line 2354
    .line 2355
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    .line 2357
    .line 2358
    goto :goto_2b

    .line 2359
    :catchall_18
    move-exception v0

    .line 2360
    move-object v3, v0

    .line 2361
    goto :goto_2a

    .line 2362
    :cond_1d
    const/4 v4, 0x2

    .line 2363
    new-array v5, v4, [Ljava/lang/Class;

    .line 2364
    .line 2365
    const-class v4, Landroid/content/Context;

    .line 2366
    .line 2367
    const/4 v8, 0x0

    .line 2368
    aput-object v4, v5, v8

    .line 2369
    .line 2370
    const-class v4, Landroid/app/IActivityManager;

    .line 2371
    .line 2372
    const/4 v8, 0x1

    .line 2373
    aput-object v4, v5, v8

    .line 2374
    .line 2375
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v3

    .line 2379
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2380
    .line 2381
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v4

    .line 2385
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    .line 2387
    .line 2388
    move-result-object v3

    .line 2389
    check-cast v3, Landroid/os/IBinder;

    .line 2390
    .line 2391
    const-string/jumbo v4, "perfsdkservice"

    .line 2392
    .line 2393
    .line 2394
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2395
    .line 2396
    .line 2397
    const-string v3, "SystemServer"

    .line 2398
    .line 2399
    const-string v4, "PerfSDKService loaded"

    .line 2400
    .line 2401
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_18

    .line 2402
    .line 2403
    .line 2404
    goto :goto_2b

    .line 2405
    :goto_2a
    const-string v4, "SystemServer"

    .line 2406
    .line 2407
    const-string v5, "Failed to add PerfSDKService."

    .line 2408
    .line 2409
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2410
    .line 2411
    .line 2412
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2413
    .line 2414
    .line 2415
    :cond_1e
    const-string v3, "SehCodecSolutionService"

    .line 2416
    .line 2417
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2418
    .line 2419
    .line 2420
    :try_start_36
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2421
    .line 2422
    const-string v4, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    .line 2423
    .line 2424
    const-class v5, Lcom/android/server/SystemServer;

    .line 2425
    .line 2426
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v5

    .line 2430
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2431
    .line 2432
    .line 2433
    const-string/jumbo v4, "vendor.samsung.frameworks.codecsolution.SehCodecSolutionService"

    .line 2434
    .line 2435
    .line 2436
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v3

    .line 2440
    if-nez v3, :cond_1f

    .line 2441
    .line 2442
    const-string v3, "SystemServer"

    .line 2443
    .line 2444
    const-string v4, "Can\'t load SehCodecSolutionService class"

    .line 2445
    .line 2446
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    .line 2448
    .line 2449
    goto :goto_2d

    .line 2450
    :catchall_19
    move-exception v0

    .line 2451
    move-object v3, v0

    .line 2452
    goto :goto_2c

    .line 2453
    :cond_1f
    const/4 v4, 0x2

    .line 2454
    new-array v5, v4, [Ljava/lang/Class;

    .line 2455
    .line 2456
    const-class v4, Landroid/content/Context;

    .line 2457
    .line 2458
    const/4 v8, 0x0

    .line 2459
    aput-object v4, v5, v8

    .line 2460
    .line 2461
    const-class v4, Landroid/app/IActivityManager;

    .line 2462
    .line 2463
    const/4 v8, 0x1

    .line 2464
    aput-object v4, v5, v8

    .line 2465
    .line 2466
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2467
    .line 2468
    .line 2469
    move-result-object v3

    .line 2470
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2471
    .line 2472
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    .line 2473
    .line 2474
    .line 2475
    move-result-object v4

    .line 2476
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v3

    .line 2480
    check-cast v3, Landroid/os/IBinder;

    .line 2481
    .line 2482
    const-string/jumbo v4, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    .line 2483
    .line 2484
    .line 2485
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2486
    .line 2487
    .line 2488
    const-string v3, "SystemServer"

    .line 2489
    .line 2490
    const-string v4, "SehCodecSolutionService loaded"

    .line 2491
    .line 2492
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    .line 2494
    .line 2495
    const-string/jumbo v3, "secmm.codecsolution.ready"

    .line 2496
    .line 2497
    .line 2498
    const-string v4, "1"

    .line 2499
    .line 2500
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    .line 2501
    .line 2502
    .line 2503
    goto :goto_2d

    .line 2504
    :goto_2c
    const-string v4, "SystemServer"

    .line 2505
    .line 2506
    const-string v5, "Failed to start SehCodecSolutionService "

    .line 2507
    .line 2508
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2509
    .line 2510
    .line 2511
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2512
    .line 2513
    .line 2514
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 2515
    .line 2516
    const/4 v4, 0x1

    .line 2517
    if-eq v3, v4, :cond_21

    .line 2518
    .line 2519
    const-string v3, "0"

    .line 2520
    .line 2521
    const-string/jumbo v4, "system_init.startmountservice"

    .line 2522
    .line 2523
    .line 2524
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2525
    .line 2526
    .line 2527
    move-result-object v4

    .line 2528
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2529
    .line 2530
    .line 2531
    move-result v3

    .line 2532
    if-nez v3, :cond_21

    .line 2533
    .line 2534
    const-string v3, "StartStorageManagerService"

    .line 2535
    .line 2536
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2537
    .line 2538
    .line 2539
    :try_start_37
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2540
    .line 2541
    const-class v4, Lcom/android/server/StorageManagerService$Lifecycle;

    .line 2542
    .line 2543
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2544
    .line 2545
    .line 2546
    const-string/jumbo v3, "mount"

    .line 2547
    .line 2548
    .line 2549
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v3

    .line 2553
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1a

    .line 2554
    .line 2555
    .line 2556
    goto :goto_2e

    .line 2557
    :catchall_1a
    move-exception v0

    .line 2558
    move-object v3, v0

    .line 2559
    const-string/jumbo v4, "starting StorageManagerService"

    .line 2560
    .line 2561
    .line 2562
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2563
    .line 2564
    .line 2565
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2566
    .line 2567
    .line 2568
    const-string v3, "StartStorageStatsService"

    .line 2569
    .line 2570
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2571
    .line 2572
    .line 2573
    :try_start_38
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2574
    .line 2575
    const-class v4, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    .line 2576
    .line 2577
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1b

    .line 2578
    .line 2579
    .line 2580
    goto :goto_2f

    .line 2581
    :catchall_1b
    move-exception v0

    .line 2582
    move-object v3, v0

    .line 2583
    const-string/jumbo v4, "starting StorageStatsService"

    .line 2584
    .line 2585
    .line 2586
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2587
    .line 2588
    .line 2589
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2590
    .line 2591
    .line 2592
    const-string v3, "DirEncryptSerrvice"

    .line 2593
    .line 2594
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2595
    .line 2596
    .line 2597
    :try_start_39
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 2598
    .line 2599
    .line 2600
    move-result v3

    .line 2601
    if-eqz v3, :cond_20

    .line 2602
    .line 2603
    new-instance v3, Lcom/android/server/DirEncryptService;

    .line 2604
    .line 2605
    invoke-direct {v3, v14}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    .line 2606
    .line 2607
    .line 2608
    const-string v4, "SystemServer"

    .line 2609
    .line 2610
    const-string v5, "DirEncryptService.SystemReady"

    .line 2611
    .line 2612
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    .line 2614
    .line 2615
    invoke-virtual {v3}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 2616
    .line 2617
    .line 2618
    const-string v4, "DirEncryptService"

    .line 2619
    .line 2620
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    .line 2621
    .line 2622
    .line 2623
    goto :goto_30

    .line 2624
    :catchall_1c
    move-exception v0

    .line 2625
    move-object v3, v0

    .line 2626
    const-string/jumbo v4, "starting DirEncryption service"

    .line 2627
    .line 2628
    .line 2629
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2630
    .line 2631
    .line 2632
    :cond_20
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2633
    .line 2634
    .line 2635
    :cond_21
    const-string v3, "StartUiModeManager"

    .line 2636
    .line 2637
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2638
    .line 2639
    .line 2640
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2641
    .line 2642
    const-class v4, Lcom/android/server/UiModeManagerService;

    .line 2643
    .line 2644
    const-string v5, "StartLocaleManagerService"

    .line 2645
    .line 2646
    invoke-static {v3, v4, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2647
    .line 2648
    .line 2649
    :try_start_3a
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2650
    .line 2651
    const-class v4, Lcom/android/server/locales/LocaleManagerService;

    .line 2652
    .line 2653
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1d

    .line 2654
    .line 2655
    .line 2656
    goto :goto_31

    .line 2657
    :catchall_1d
    move-exception v0

    .line 2658
    move-object v3, v0

    .line 2659
    const-string/jumbo v4, "starting LocaleManagerService service"

    .line 2660
    .line 2661
    .line 2662
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2663
    .line 2664
    .line 2665
    :goto_31
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2666
    .line 2667
    .line 2668
    const-string v3, "StartGrammarInflectionService"

    .line 2669
    .line 2670
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2671
    .line 2672
    .line 2673
    :try_start_3b
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2674
    .line 2675
    const-class v4, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2676
    .line 2677
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    .line 2678
    .line 2679
    .line 2680
    goto :goto_32

    .line 2681
    :catchall_1e
    move-exception v0

    .line 2682
    move-object v3, v0

    .line 2683
    const-string/jumbo v4, "starting GrammarInflectionService service"

    .line 2684
    .line 2685
    .line 2686
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2687
    .line 2688
    .line 2689
    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2690
    .line 2691
    .line 2692
    const-string v3, "StartAppHibernationService"

    .line 2693
    .line 2694
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2695
    .line 2696
    .line 2697
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2698
    .line 2699
    const-class v4, Lcom/android/server/apphibernation/AppHibernationService;

    .line 2700
    .line 2701
    const-string v5, "ArtManagerLocal"

    .line 2702
    .line 2703
    invoke-static {v3, v4, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 2704
    .line 2705
    .line 2706
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2707
    .line 2708
    invoke-static {v14, v3}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2709
    .line 2710
    .line 2711
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2712
    .line 2713
    .line 2714
    const-string v3, "UpdatePackagesIfNeeded"

    .line 2715
    .line 2716
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2717
    .line 2718
    .line 2719
    const-string v3, "SystemServer"

    .line 2720
    .line 2721
    const-string v4, "!@Boot_EBS_D: UpdatePackagesIfNeeded"

    .line 2722
    .line 2723
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    .line 2725
    .line 2726
    :try_start_3c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v3

    .line 2730
    const-string/jumbo v4, "dexopt"

    .line 2731
    .line 2732
    .line 2733
    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2734
    .line 2735
    .line 2736
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2737
    .line 2738
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1f

    .line 2739
    .line 2740
    .line 2741
    :goto_33
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2742
    .line 2743
    .line 2744
    move-result-object v3

    .line 2745
    const-string/jumbo v4, "dexopt"

    .line 2746
    .line 2747
    .line 2748
    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2749
    .line 2750
    .line 2751
    goto :goto_34

    .line 2752
    :catchall_1f
    move-exception v0

    .line 2753
    move-object v3, v0

    .line 2754
    :try_start_3d
    const-string/jumbo v4, "update packages"

    .line 2755
    .line 2756
    .line 2757
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_70

    .line 2758
    .line 2759
    .line 2760
    goto :goto_33

    .line 2761
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2762
    .line 2763
    .line 2764
    const-string v3, "StartProfileUtilizationService"

    .line 2765
    .line 2766
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2767
    .line 2768
    .line 2769
    :try_start_3e
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2770
    .line 2771
    const-class v4, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2772
    .line 2773
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2774
    .line 2775
    .line 2776
    move-result-object v3

    .line 2777
    check-cast v3, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2778
    .line 2779
    const-class v4, Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2780
    .line 2781
    invoke-static {v4, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2782
    .line 2783
    .line 2784
    iget-object v4, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2785
    .line 2786
    invoke-virtual {v3, v4}, Lcom/android/server/pm/pu/ProfileUtilizationService;->onBootAfterUpdateIfNeeded(Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3e} :catch_7

    .line 2787
    .line 2788
    .line 2789
    goto :goto_35

    .line 2790
    :catch_7
    move-exception v0

    .line 2791
    move-object v3, v0

    .line 2792
    const-string v4, "SystemServer"

    .line 2793
    .line 2794
    const-string v5, "Failure starting PU Service"

    .line 2795
    .line 2796
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2797
    .line 2798
    .line 2799
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2800
    .line 2801
    .line 2802
    const-string v3, "PerformFstrimIfNeeded"

    .line 2803
    .line 2804
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2805
    .line 2806
    .line 2807
    :try_start_3f
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 2808
    .line 2809
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_20

    .line 2810
    .line 2811
    .line 2812
    goto :goto_36

    .line 2813
    :catchall_20
    move-exception v0

    .line 2814
    move-object v3, v0

    .line 2815
    const-string/jumbo v4, "performing fstrim"

    .line 2816
    .line 2817
    .line 2818
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2819
    .line 2820
    .line 2821
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2822
    .line 2823
    .line 2824
    iget v3, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 2825
    .line 2826
    const/4 v4, 0x1

    .line 2827
    if-ne v3, v4, :cond_22

    .line 2828
    .line 2829
    const/4 v3, 0x0

    .line 2830
    const/4 v4, 0x0

    .line 2831
    const/4 v12, 0x0

    .line 2832
    const/16 v25, 0x0

    .line 2833
    .line 2834
    const/16 v26, 0x0

    .line 2835
    .line 2836
    const/16 v27, 0x0

    .line 2837
    .line 2838
    const/16 v28, 0x0

    .line 2839
    .line 2840
    const/16 v29, 0x0

    .line 2841
    .line 2842
    const/16 v30, 0x0

    .line 2843
    .line 2844
    const/16 v31, 0x0

    .line 2845
    .line 2846
    const/16 v32, 0x0

    .line 2847
    .line 2848
    const/16 v33, 0x0

    .line 2849
    .line 2850
    goto/16 :goto_89

    .line 2851
    .line 2852
    :cond_22
    const-string v3, "StartLockSettingsService"

    .line 2853
    .line 2854
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2855
    .line 2856
    .line 2857
    :try_start_40
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2858
    .line 2859
    const-class v4, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    .line 2860
    .line 2861
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2862
    .line 2863
    .line 2864
    const-string/jumbo v3, "lock_settings"

    .line 2865
    .line 2866
    .line 2867
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2868
    .line 2869
    .line 2870
    move-result-object v3

    .line 2871
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 2872
    .line 2873
    .line 2874
    move-result-object v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_21

    .line 2875
    goto :goto_37

    .line 2876
    :catchall_21
    move-exception v0

    .line 2877
    move-object v3, v0

    .line 2878
    const-string/jumbo v4, "starting LockSettingsService service"

    .line 2879
    .line 2880
    .line 2881
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2882
    .line 2883
    .line 2884
    const/4 v3, 0x0

    .line 2885
    :goto_37
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2886
    .line 2887
    .line 2888
    const-string/jumbo v4, "ro.frp.pst"

    .line 2889
    .line 2890
    .line 2891
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2892
    .line 2893
    .line 2894
    move-result-object v4

    .line 2895
    const-string v5, ""

    .line 2896
    .line 2897
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2898
    .line 2899
    .line 2900
    move-result v4

    .line 2901
    const/4 v5, 0x1

    .line 2902
    xor-int/2addr v4, v5

    .line 2903
    if-eqz v4, :cond_23

    .line 2904
    .line 2905
    const-string v5, "StartPersistentDataBlock"

    .line 2906
    .line 2907
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2908
    .line 2909
    .line 2910
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2911
    .line 2912
    const-class v8, Lcom/android/server/pdb/PersistentDataBlockService;

    .line 2913
    .line 2914
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2915
    .line 2916
    .line 2917
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2918
    .line 2919
    .line 2920
    :cond_23
    sget-boolean v5, Landroid/os/Build;->IS_ARC:Z

    .line 2921
    .line 2922
    if-eqz v5, :cond_24

    .line 2923
    .line 2924
    const-string/jumbo v5, "ro.boot.dev_mode"

    .line 2925
    .line 2926
    .line 2927
    const/4 v8, 0x0

    .line 2928
    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 2929
    .line 2930
    .line 2931
    move-result v5

    .line 2932
    const/4 v8, 0x1

    .line 2933
    if-ne v5, v8, :cond_24

    .line 2934
    .line 2935
    const-string v5, "StartArcPersistentDataBlock"

    .line 2936
    .line 2937
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2938
    .line 2939
    .line 2940
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2941
    .line 2942
    const-string/jumbo v8, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    .line 2943
    .line 2944
    .line 2945
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2946
    .line 2947
    .line 2948
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2949
    .line 2950
    .line 2951
    :cond_24
    const-string v5, "StartTestHarnessMode"

    .line 2952
    .line 2953
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2954
    .line 2955
    .line 2956
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2957
    .line 2958
    const-class v8, Lcom/android/server/testharness/TestHarnessModeService;

    .line 2959
    .line 2960
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2961
    .line 2962
    .line 2963
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2964
    .line 2965
    .line 2966
    if-nez v4, :cond_25

    .line 2967
    .line 2968
    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    .line 2969
    .line 2970
    .line 2971
    move-result v4

    .line 2972
    if-eqz v4, :cond_26

    .line 2973
    .line 2974
    :cond_25
    const-string v4, "StartOemLockService"

    .line 2975
    .line 2976
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2977
    .line 2978
    .line 2979
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2980
    .line 2981
    const-class v5, Lcom/android/server/oemlock/OemLockService;

    .line 2982
    .line 2983
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2984
    .line 2985
    .line 2986
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2987
    .line 2988
    .line 2989
    :cond_26
    const-string v4, "StartDeviceIdleController"

    .line 2990
    .line 2991
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2992
    .line 2993
    .line 2994
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2995
    .line 2996
    const-class v5, Lcom/android/server/DeviceIdleController;

    .line 2997
    .line 2998
    const-string v8, "StartDevicePolicyManager"

    .line 2999
    .line 3000
    invoke-static {v4, v5, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 3001
    .line 3002
    .line 3003
    iget-object v4, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3004
    .line 3005
    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 3006
    .line 3007
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3008
    .line 3009
    .line 3010
    move-result-object v4

    .line 3011
    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 3012
    .line 3013
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3014
    .line 3015
    .line 3016
    const-string v5, "StartStatusBarManagerService"

    .line 3017
    .line 3018
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3019
    .line 3020
    .line 3021
    :try_start_41
    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 3022
    .line 3023
    invoke-direct {v5, v14}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    .line 3024
    .line 3025
    .line 3026
    invoke-virtual {v5}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 3027
    .line 3028
    .line 3029
    const-string/jumbo v8, "statusbar"
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_23

    .line 3030
    .line 3031
    .line 3032
    const/16 v6, 0x14

    .line 3033
    .line 3034
    move-object/from16 v26, v3

    .line 3035
    .line 3036
    const/4 v3, 0x0

    .line 3037
    :try_start_42
    invoke-static {v8, v5, v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    .line 3038
    .line 3039
    .line 3040
    goto :goto_3a

    .line 3041
    :catchall_22
    move-exception v0

    .line 3042
    :goto_38
    move-object v3, v0

    .line 3043
    goto :goto_39

    .line 3044
    :catchall_23
    move-exception v0

    .line 3045
    move-object/from16 v26, v3

    .line 3046
    .line 3047
    goto :goto_38

    .line 3048
    :goto_39
    const-string/jumbo v5, "starting StatusBarManagerService"

    .line 3049
    .line 3050
    .line 3051
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3052
    .line 3053
    .line 3054
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3055
    .line 3056
    .line 3057
    const v3, 0x1040321

    .line 3058
    .line 3059
    .line 3060
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3061
    .line 3062
    .line 3063
    move-result v3

    .line 3064
    if-eqz v3, :cond_27

    .line 3065
    .line 3066
    const-string v3, "StartMusicRecognitionManagerService"

    .line 3067
    .line 3068
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3069
    .line 3070
    .line 3071
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3072
    .line 3073
    const-class v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 3074
    .line 3075
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3076
    .line 3077
    .line 3078
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3079
    .line 3080
    .line 3081
    goto :goto_3b

    .line 3082
    :cond_27
    const-string v3, "SystemServer"

    .line 3083
    .line 3084
    const-string v5, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    .line 3085
    .line 3086
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    .line 3088
    .line 3089
    :goto_3b
    const-string v3, "StartEnterpriseDeviceManagerService"

    .line 3090
    .line 3091
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3092
    .line 3093
    .line 3094
    :try_start_43
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3095
    .line 3096
    const-class v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;

    .line 3097
    .line 3098
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3099
    .line 3100
    .line 3101
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3102
    .line 3103
    .line 3104
    move-result-object v3

    .line 3105
    iput-object v3, v2, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3106
    .line 3107
    const-string v3, "SystemServer"

    .line 3108
    .line 3109
    const-string v5, "Enterprise Policy manager service created..."

    .line 3110
    .line 3111
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_24

    .line 3112
    .line 3113
    .line 3114
    goto :goto_3c

    .line 3115
    :catchall_24
    move-exception v0

    .line 3116
    move-object v3, v0

    .line 3117
    const-string/jumbo v5, "starting EnterpriseDeviceManagerService"

    .line 3118
    .line 3119
    .line 3120
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3121
    .line 3122
    .line 3123
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3124
    .line 3125
    .line 3126
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    .line 3127
    .line 3128
    .line 3129
    move-result v3

    .line 3130
    if-lez v3, :cond_28

    .line 3131
    .line 3132
    :try_start_44
    const-string v3, "[KnoxAnalytics] System Service"

    .line 3133
    .line 3134
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3135
    .line 3136
    .line 3137
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3138
    .line 3139
    const-class v5, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 3140
    .line 3141
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3142
    .line 3143
    .line 3144
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_25

    .line 3145
    .line 3146
    .line 3147
    goto :goto_3d

    .line 3148
    :catchall_25
    move-exception v0

    .line 3149
    move-object v3, v0

    .line 3150
    const-string v5, "SystemServer"

    .line 3151
    .line 3152
    const-string v6, "[KnoxAnalytics] Failure starting System Service"

    .line 3153
    .line 3154
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3155
    .line 3156
    .line 3157
    goto :goto_3d

    .line 3158
    :cond_28
    const-string v3, "SystemServer"

    .line 3159
    .line 3160
    const-string v5, "KnoxAnalyticsSystemService not defined by OEM"

    .line 3161
    .line 3162
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    .line 3164
    .line 3165
    :goto_3d
    const-string v3, "KnoxCustom Policy"

    .line 3166
    .line 3167
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3168
    .line 3169
    .line 3170
    :try_start_45
    new-instance v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3171
    .line 3172
    invoke-direct {v3, v14}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V

    .line 3173
    .line 3174
    .line 3175
    iput-object v3, v2, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3176
    .line 3177
    const-string/jumbo v5, "knoxcustom"

    .line 3178
    .line 3179
    .line 3180
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3181
    .line 3182
    .line 3183
    const-string/jumbo v3, "knoxcustom"

    .line 3184
    .line 3185
    .line 3186
    iget-object v5, v2, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 3187
    .line 3188
    invoke-static {v3, v5}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3189
    .line 3190
    .line 3191
    const-string v3, "SystemServer"

    .line 3192
    .line 3193
    const-string v5, "KnoxCustom Policy added."

    .line 3194
    .line 3195
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_26

    .line 3196
    .line 3197
    .line 3198
    goto :goto_3e

    .line 3199
    :catchall_26
    move-exception v0

    .line 3200
    move-object v3, v0

    .line 3201
    const-string v5, "SystemServer"

    .line 3202
    .line 3203
    const-string v6, "Fail KnoxCustom Policy."

    .line 3204
    .line 3205
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3206
    .line 3207
    .line 3208
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3209
    .line 3210
    .line 3211
    const-string v3, "SystemServer"

    .line 3212
    .line 3213
    const-string v5, "DarManagerService"

    .line 3214
    .line 3215
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    .line 3217
    .line 3218
    const-string v3, "DarManagerService"

    .line 3219
    .line 3220
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3221
    .line 3222
    .line 3223
    :try_start_46
    const-string/jumbo v3, "dar"

    .line 3224
    .line 3225
    .line 3226
    new-instance v5, Lcom/android/server/SystemServer$4;

    .line 3227
    .line 3228
    const/4 v6, 0x3

    .line 3229
    invoke-direct {v5, v6}, Lcom/android/server/SystemServer$4;-><init>(I)V

    .line 3230
    .line 3231
    .line 3232
    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_27

    .line 3233
    .line 3234
    .line 3235
    goto :goto_3f

    .line 3236
    :catchall_27
    move-exception v0

    .line 3237
    move-object v3, v0

    .line 3238
    const-string v5, "Failure starting DarManagerService"

    .line 3239
    .line 3240
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3241
    .line 3242
    .line 3243
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3244
    .line 3245
    .line 3246
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3247
    .line 3248
    .line 3249
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3250
    .line 3251
    .line 3252
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3253
    .line 3254
    .line 3255
    invoke-virtual {v2, v14, v15}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3256
    .line 3257
    .line 3258
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3259
    .line 3260
    .line 3261
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3262
    .line 3263
    .line 3264
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3265
    .line 3266
    .line 3267
    const v3, 0x1040307

    .line 3268
    .line 3269
    .line 3270
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3271
    .line 3272
    .line 3273
    move-result v3

    .line 3274
    if-eqz v3, :cond_29

    .line 3275
    .line 3276
    const-string v3, "StartAmbientContextService"

    .line 3277
    .line 3278
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3279
    .line 3280
    .line 3281
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3282
    .line 3283
    const-class v5, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 3284
    .line 3285
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3286
    .line 3287
    .line 3288
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3289
    .line 3290
    .line 3291
    goto :goto_40

    .line 3292
    :cond_29
    const-string v3, "SystemServer"

    .line 3293
    .line 3294
    const-string v5, "AmbientContextManagerService not defined by OEM or disabled by flag"

    .line 3295
    .line 3296
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    .line 3298
    .line 3299
    :goto_40
    const-string v3, "StartSpeechRecognitionManagerService"

    .line 3300
    .line 3301
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3302
    .line 3303
    .line 3304
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3305
    .line 3306
    const-class v5, Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 3307
    .line 3308
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3309
    .line 3310
    .line 3311
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3312
    .line 3313
    .line 3314
    const v3, 0x1040308

    .line 3315
    .line 3316
    .line 3317
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3318
    .line 3319
    .line 3320
    move-result v3

    .line 3321
    if-eqz v3, :cond_2a

    .line 3322
    .line 3323
    const-string v3, "StartAppPredictionService"

    .line 3324
    .line 3325
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3326
    .line 3327
    .line 3328
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3329
    .line 3330
    const-class v5, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 3331
    .line 3332
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3333
    .line 3334
    .line 3335
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3336
    .line 3337
    .line 3338
    goto :goto_41

    .line 3339
    :cond_2a
    const-string v3, "SystemServer"

    .line 3340
    .line 3341
    const-string v5, "AppPredictionService not defined by OEM"

    .line 3342
    .line 3343
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    .line 3345
    .line 3346
    :goto_41
    const v3, 0x1040311

    .line 3347
    .line 3348
    .line 3349
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3350
    .line 3351
    .line 3352
    move-result v3

    .line 3353
    if-eqz v3, :cond_2b

    .line 3354
    .line 3355
    const-string v3, "StartContentSuggestionsService"

    .line 3356
    .line 3357
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3358
    .line 3359
    .line 3360
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3361
    .line 3362
    const-class v5, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 3363
    .line 3364
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3365
    .line 3366
    .line 3367
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3368
    .line 3369
    .line 3370
    goto :goto_42

    .line 3371
    :cond_2b
    const-string v3, "SystemServer"

    .line 3372
    .line 3373
    const-string v5, "ContentSuggestionsService not defined by OEM"

    .line 3374
    .line 3375
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    .line 3377
    .line 3378
    :goto_42
    :try_start_47
    const-string v3, "SemClipboardService"

    .line 3379
    .line 3380
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3381
    .line 3382
    .line 3383
    const-string v3, "SystemServer"

    .line 3384
    .line 3385
    const-string v5, "SemClipboardService"

    .line 3386
    .line 3387
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    .line 3389
    .line 3390
    const-string/jumbo v3, "semclipboard"

    .line 3391
    .line 3392
    .line 3393
    new-instance v5, Lcom/android/server/semclipboard/SemClipboardService;

    .line 3394
    .line 3395
    invoke-direct {v5, v14}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    .line 3396
    .line 3397
    .line 3398
    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_28

    .line 3399
    .line 3400
    .line 3401
    :goto_43
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3402
    .line 3403
    .line 3404
    goto :goto_44

    .line 3405
    :catchall_28
    move-exception v0

    .line 3406
    move-object v3, v0

    .line 3407
    :try_start_48
    const-string/jumbo v5, "starting SemClipboardService"

    .line 3408
    .line 3409
    .line 3410
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_6f

    .line 3411
    .line 3412
    .line 3413
    goto :goto_43

    .line 3414
    :goto_44
    const v3, 0x1040330

    .line 3415
    .line 3416
    .line 3417
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3418
    .line 3419
    .line 3420
    move-result v3

    .line 3421
    if-eqz v3, :cond_2c

    .line 3422
    .line 3423
    const-string v3, "StartSearchUiService"

    .line 3424
    .line 3425
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3426
    .line 3427
    .line 3428
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3429
    .line 3430
    const-class v5, Lcom/android/server/searchui/SearchUiManagerService;

    .line 3431
    .line 3432
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3433
    .line 3434
    .line 3435
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3436
    .line 3437
    .line 3438
    :cond_2c
    const v3, 0x1040332

    .line 3439
    .line 3440
    .line 3441
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3442
    .line 3443
    .line 3444
    move-result v3

    .line 3445
    if-eqz v3, :cond_2d

    .line 3446
    .line 3447
    const-string v3, "StartSmartspaceService"

    .line 3448
    .line 3449
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3450
    .line 3451
    .line 3452
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3453
    .line 3454
    const-class v5, Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 3455
    .line 3456
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3457
    .line 3458
    .line 3459
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3460
    .line 3461
    .line 3462
    goto :goto_45

    .line 3463
    :cond_2d
    const-string v3, "SystemServer"

    .line 3464
    .line 3465
    const-string v5, "SmartspaceManagerService not defined by OEM or disabled by flag"

    .line 3466
    .line 3467
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    .line 3469
    .line 3470
    :goto_45
    const v3, 0x1040315

    .line 3471
    .line 3472
    .line 3473
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 3474
    .line 3475
    .line 3476
    move-result v3

    .line 3477
    if-eqz v3, :cond_2e

    .line 3478
    .line 3479
    const-string v3, "StartContextualSearchService"

    .line 3480
    .line 3481
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3482
    .line 3483
    .line 3484
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3485
    .line 3486
    const-class v5, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3487
    .line 3488
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3489
    .line 3490
    .line 3491
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3492
    .line 3493
    .line 3494
    goto :goto_46

    .line 3495
    :cond_2e
    const-string v3, "SystemServer"

    .line 3496
    .line 3497
    const-string v5, "ContextualSearchManagerService not defined or disabled by flag"

    .line 3498
    .line 3499
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    .line 3501
    .line 3502
    :goto_46
    :try_start_49
    const-string v3, "StartSemContextService"

    .line 3503
    .line 3504
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3505
    .line 3506
    .line 3507
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3508
    .line 3509
    .line 3510
    move-result-object v3

    .line 3511
    const-string/jumbo v5, "com.sec.feature.sensorhub"

    .line 3512
    .line 3513
    .line 3514
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3515
    .line 3516
    .line 3517
    move-result v3

    .line 3518
    if-nez v3, :cond_2f

    .line 3519
    .line 3520
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3521
    .line 3522
    .line 3523
    move-result-object v3

    .line 3524
    const-string/jumbo v5, "com.sec.feature.scontext_lite"

    .line 3525
    .line 3526
    .line 3527
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3528
    .line 3529
    .line 3530
    move-result v3

    .line 3531
    if-eqz v3, :cond_30

    .line 3532
    .line 3533
    goto :goto_47

    .line 3534
    :catchall_29
    move-exception v0

    .line 3535
    move-object v1, v0

    .line 3536
    move-object v2, v15

    .line 3537
    goto/16 :goto_a6

    .line 3538
    .line 3539
    :catch_8
    move-exception v0

    .line 3540
    move-object v3, v0

    .line 3541
    goto :goto_49

    .line 3542
    :cond_2f
    :goto_47
    const-string v3, "SystemServer"

    .line 3543
    .line 3544
    const-string v5, "SemContextService Service"

    .line 3545
    .line 3546
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    .line 3548
    .line 3549
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 3550
    .line 3551
    const-string v5, "/system/framework/semcontextservice.jar"

    .line 3552
    .line 3553
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 3554
    .line 3555
    .line 3556
    move-result-object v6

    .line 3557
    invoke-direct {v3, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3558
    .line 3559
    .line 3560
    const-string/jumbo v5, "com.samsung.android.hardware.context.SemContextService"

    .line 3561
    .line 3562
    .line 3563
    invoke-virtual {v3, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3564
    .line 3565
    .line 3566
    move-result-object v3

    .line 3567
    const/4 v5, 0x1

    .line 3568
    new-array v6, v5, [Ljava/lang/Class;

    .line 3569
    .line 3570
    const-class v5, Landroid/content/Context;

    .line 3571
    .line 3572
    const/4 v8, 0x0

    .line 3573
    aput-object v5, v6, v8

    .line 3574
    .line 3575
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3576
    .line 3577
    .line 3578
    move-result-object v3

    .line 3579
    const-string/jumbo v5, "scontext"

    .line 3580
    .line 3581
    .line 3582
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 3583
    .line 3584
    .line 3585
    move-result-object v6

    .line 3586
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    .line 3588
    .line 3589
    move-result-object v3

    .line 3590
    check-cast v3, Landroid/os/IBinder;

    .line 3591
    .line 3592
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_8
    .catchall {:try_start_49 .. :try_end_49} :catchall_29

    .line 3593
    .line 3594
    .line 3595
    :cond_30
    :goto_48
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3596
    .line 3597
    .line 3598
    goto :goto_4a

    .line 3599
    :goto_49
    :try_start_4a
    const-string v5, "SystemServer"

    .line 3600
    .line 3601
    const-string v6, "Failure starting SemContextService"

    .line 3602
    .line 3603
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_6e

    .line 3604
    .line 3605
    .line 3606
    goto :goto_48

    .line 3607
    :goto_4a
    const-string v3, "StartMotionRecognitionService"

    .line 3608
    .line 3609
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3610
    .line 3611
    .line 3612
    :try_start_4b
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3613
    .line 3614
    .line 3615
    move-result-object v3

    .line 3616
    if-eqz v3, :cond_31

    .line 3617
    .line 3618
    const-string/jumbo v5, "com.sec.feature.motionrecognition_service"

    .line 3619
    .line 3620
    .line 3621
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3622
    .line 3623
    .line 3624
    move-result v3

    .line 3625
    if-eqz v3, :cond_31

    .line 3626
    .line 3627
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 3628
    .line 3629
    const-string v5, "/system/framework/motionrecognitionservice.jar"

    .line 3630
    .line 3631
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 3632
    .line 3633
    .line 3634
    move-result-object v6

    .line 3635
    invoke-direct {v3, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3636
    .line 3637
    .line 3638
    const-string/jumbo v5, "com.samsung.android.gesture.MotionRecognitionService"

    .line 3639
    .line 3640
    .line 3641
    invoke-virtual {v3, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3642
    .line 3643
    .line 3644
    move-result-object v3

    .line 3645
    const/4 v5, 0x1

    .line 3646
    new-array v6, v5, [Ljava/lang/Class;

    .line 3647
    .line 3648
    const-class v5, Landroid/content/Context;

    .line 3649
    .line 3650
    const/4 v8, 0x0

    .line 3651
    aput-object v5, v6, v8

    .line 3652
    .line 3653
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3654
    .line 3655
    .line 3656
    move-result-object v3

    .line 3657
    const-string/jumbo v5, "motion_recognition"

    .line 3658
    .line 3659
    .line 3660
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 3661
    .line 3662
    .line 3663
    move-result-object v6

    .line 3664
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    .line 3666
    .line 3667
    move-result-object v3

    .line 3668
    check-cast v3, Landroid/os/IBinder;

    .line 3669
    .line 3670
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3671
    .line 3672
    .line 3673
    const-string v3, "SystemServer"

    .line 3674
    .line 3675
    const-string v5, "MotionRecognitionService Service!"

    .line 3676
    .line 3677
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_9

    .line 3678
    .line 3679
    .line 3680
    goto :goto_4b

    .line 3681
    :catch_9
    move-exception v0

    .line 3682
    move-object v3, v0

    .line 3683
    const-string v5, "SystemServer"

    .line 3684
    .line 3685
    const-string v6, "Failure starting MotionRecognitionService"

    .line 3686
    .line 3687
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3688
    .line 3689
    .line 3690
    :cond_31
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3691
    .line 3692
    .line 3693
    const-string v3, "InitConnectivityModuleConnector"

    .line 3694
    .line 3695
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3696
    .line 3697
    .line 3698
    :try_start_4c
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    .line 3699
    .line 3700
    .line 3701
    move-result-object v3

    .line 3702
    invoke-virtual {v3, v14}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2a

    .line 3703
    .line 3704
    .line 3705
    goto :goto_4c

    .line 3706
    :catchall_2a
    move-exception v0

    .line 3707
    move-object v3, v0

    .line 3708
    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    .line 3709
    .line 3710
    .line 3711
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3712
    .line 3713
    .line 3714
    :goto_4c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3715
    .line 3716
    .line 3717
    const-string v3, "InitNetworkStackClient"

    .line 3718
    .line 3719
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3720
    .line 3721
    .line 3722
    :try_start_4d
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    .line 3723
    .line 3724
    .line 3725
    move-result-object v3

    .line 3726
    invoke-virtual {v3}, Landroid/net/NetworkStackClient;->init()V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2b

    .line 3727
    .line 3728
    .line 3729
    goto :goto_4d

    .line 3730
    :catchall_2b
    move-exception v0

    .line 3731
    move-object v3, v0

    .line 3732
    const-string/jumbo v5, "initializing NetworkStackClient"

    .line 3733
    .line 3734
    .line 3735
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3736
    .line 3737
    .line 3738
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3739
    .line 3740
    .line 3741
    const-string v3, "StartNetworkManagementService"

    .line 3742
    .line 3743
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3744
    .line 3745
    .line 3746
    :try_start_4e
    invoke-static {v14}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    .line 3747
    .line 3748
    .line 3749
    move-result-object v3
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2d

    .line 3750
    :try_start_4f
    const-string/jumbo v5, "network_management"

    .line 3751
    .line 3752
    .line 3753
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2c

    .line 3754
    .line 3755
    .line 3756
    goto :goto_4f

    .line 3757
    :catchall_2c
    move-exception v0

    .line 3758
    move-object v5, v0

    .line 3759
    goto :goto_4e

    .line 3760
    :catchall_2d
    move-exception v0

    .line 3761
    move-object v5, v0

    .line 3762
    const/4 v3, 0x0

    .line 3763
    :goto_4e
    const-string/jumbo v6, "starting NetworkManagement Service"

    .line 3764
    .line 3765
    .line 3766
    invoke-static {v6, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3767
    .line 3768
    .line 3769
    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3770
    .line 3771
    .line 3772
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 3773
    .line 3774
    if-eqz v5, :cond_32

    .line 3775
    .line 3776
    const-string v5, "StartSpegService"

    .line 3777
    .line 3778
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3779
    .line 3780
    .line 3781
    :try_start_50
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3782
    .line 3783
    const-class v6, Lcom/android/server/pm/SpegService;

    .line 3784
    .line 3785
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3786
    .line 3787
    .line 3788
    move-result-object v5

    .line 3789
    check-cast v5, Lcom/android/server/pm/SpegService;

    .line 3790
    .line 3791
    iget-object v6, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 3792
    .line 3793
    invoke-virtual {v5, v6}, Lcom/android/server/pm/SpegService;->init(Lcom/android/server/pm/PackageManagerService;)V

    .line 3794
    .line 3795
    .line 3796
    const-class v6, Lcom/android/server/pm/SpegService;

    .line 3797
    .line 3798
    invoke-static {v6, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_a

    .line 3799
    .line 3800
    .line 3801
    goto :goto_50

    .line 3802
    :catch_a
    move-exception v0

    .line 3803
    move-object v5, v0

    .line 3804
    const-string v6, "SystemServer"

    .line 3805
    .line 3806
    const-string v8, "Failure starting SpegService helper"

    .line 3807
    .line 3808
    invoke-static {v6, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3809
    .line 3810
    .line 3811
    :goto_50
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3812
    .line 3813
    .line 3814
    :cond_32
    const-string v5, "StartFontManagerService"

    .line 3815
    .line 3816
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3817
    .line 3818
    .line 3819
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3820
    .line 3821
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    .line 3822
    .line 3823
    invoke-direct {v6, v14, v9}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    .line 3824
    .line 3825
    .line 3826
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 3827
    .line 3828
    .line 3829
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3830
    .line 3831
    .line 3832
    if-eqz v11, :cond_33

    .line 3833
    .line 3834
    invoke-static {}, Landroid/server/Flags;->removeTextService()Z

    .line 3835
    .line 3836
    .line 3837
    move-result v5

    .line 3838
    if-nez v5, :cond_34

    .line 3839
    .line 3840
    :cond_33
    const-string v5, "StartTextServicesManager"

    .line 3841
    .line 3842
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3843
    .line 3844
    .line 3845
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3846
    .line 3847
    const-class v6, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 3848
    .line 3849
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3850
    .line 3851
    .line 3852
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3853
    .line 3854
    .line 3855
    :cond_34
    if-nez v7, :cond_35

    .line 3856
    .line 3857
    const-string v5, "StartTextClassificationManagerService"

    .line 3858
    .line 3859
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3860
    .line 3861
    .line 3862
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3863
    .line 3864
    const-class v6, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 3865
    .line 3866
    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3867
    .line 3868
    .line 3869
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3870
    .line 3871
    .line 3872
    :cond_35
    const-string v5, "StartNetworkScoreService"

    .line 3873
    .line 3874
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3875
    .line 3876
    .line 3877
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3878
    .line 3879
    const-class v6, Lcom/android/server/NetworkScoreService$Lifecycle;

    .line 3880
    .line 3881
    const-string v7, "StartNetworkStatsService"

    .line 3882
    .line 3883
    invoke-static {v5, v6, v15, v7}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 3884
    .line 3885
    .line 3886
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3887
    .line 3888
    const-string/jumbo v6, "com.android.server.NetworkStatsServiceInitializer"

    .line 3889
    .line 3890
    .line 3891
    const-string v7, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 3892
    .line 3893
    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    .line 3895
    .line 3896
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3897
    .line 3898
    .line 3899
    const-string v5, "StartNetworkPolicyManagerService"

    .line 3900
    .line 3901
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3902
    .line 3903
    .line 3904
    :try_start_51
    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3905
    .line 3906
    iget-object v6, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3907
    .line 3908
    invoke-direct {v5, v14, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/server/net/NetworkManagementService;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_2f

    .line 3909
    .line 3910
    .line 3911
    :try_start_52
    const-string/jumbo v6, "netpolicy"

    .line 3912
    .line 3913
    .line 3914
    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_2e

    .line 3915
    .line 3916
    .line 3917
    goto :goto_53

    .line 3918
    :catchall_2e
    move-exception v0

    .line 3919
    move-object v6, v0

    .line 3920
    goto :goto_52

    .line 3921
    :goto_51
    move-object v6, v0

    .line 3922
    const/4 v5, 0x0

    .line 3923
    goto :goto_52

    .line 3924
    :catchall_2f
    move-exception v0

    .line 3925
    goto :goto_51

    .line 3926
    :goto_52
    const-string/jumbo v7, "starting NetworkPolicy Service"

    .line 3927
    .line 3928
    .line 3929
    invoke-static {v7, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3930
    .line 3931
    .line 3932
    :goto_53
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3933
    .line 3934
    .line 3935
    const-string v6, "StartUrspService"

    .line 3936
    .line 3937
    invoke-virtual {v15, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3938
    .line 3939
    .line 3940
    :try_start_53
    new-instance v6, Lcom/android/server/net/UrspService;

    .line 3941
    .line 3942
    invoke-direct {v6, v14}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_31

    .line 3943
    .line 3944
    .line 3945
    :try_start_54
    const-string/jumbo v7, "urspservice"

    .line 3946
    .line 3947
    .line 3948
    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_30

    .line 3949
    .line 3950
    .line 3951
    goto :goto_55

    .line 3952
    :catchall_30
    move-exception v0

    .line 3953
    move-object v7, v0

    .line 3954
    goto :goto_54

    .line 3955
    :catchall_31
    move-exception v0

    .line 3956
    move-object v7, v0

    .line 3957
    const/4 v6, 0x0

    .line 3958
    :goto_54
    const-string/jumbo v8, "starting URSP Service"

    .line 3959
    .line 3960
    .line 3961
    invoke-static {v8, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3962
    .line 3963
    .line 3964
    :goto_55
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3965
    .line 3966
    .line 3967
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3968
    .line 3969
    .line 3970
    move-result-object v7

    .line 3971
    const-string v8, "android.hardware.wifi"

    .line 3972
    .line 3973
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 3974
    .line 3975
    .line 3976
    move-result v7

    .line 3977
    if-eqz v7, :cond_36

    .line 3978
    .line 3979
    if-nez v12, :cond_36

    .line 3980
    .line 3981
    const-string v7, "StartWifi"

    .line 3982
    .line 3983
    invoke-virtual {v15, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3984
    .line 3985
    .line 3986
    iget-object v7, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3987
    .line 3988
    const-string/jumbo v8, "com.android.server.wifi.WifiService"

    .line 3989
    .line 3990
    .line 3991
    move-object/from16 v16, v3

    .line 3992
    .line 3993
    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 3994
    .line 3995
    invoke-virtual {v7, v8, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 3996
    .line 3997
    .line 3998
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3999
    .line 4000
    .line 4001
    const-string v3, "StartWifiScanning"

    .line 4002
    .line 4003
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4004
    .line 4005
    .line 4006
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4007
    .line 4008
    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    .line 4009
    .line 4010
    .line 4011
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4012
    .line 4013
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4014
    .line 4015
    .line 4016
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4017
    .line 4018
    .line 4019
    goto :goto_56

    .line 4020
    :cond_36
    move-object/from16 v16, v3

    .line 4021
    .line 4022
    :goto_56
    if-eqz v12, :cond_37

    .line 4023
    .line 4024
    const-string v3, "StartArcNetworking"

    .line 4025
    .line 4026
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4027
    .line 4028
    .line 4029
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4030
    .line 4031
    const-string/jumbo v7, "com.android.server.arc.net.ArcNetworkService"

    .line 4032
    .line 4033
    .line 4034
    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4035
    .line 4036
    .line 4037
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4038
    .line 4039
    .line 4040
    :cond_37
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4041
    .line 4042
    .line 4043
    move-result-object v3

    .line 4044
    const-string v7, "android.hardware.wifi.rtt"

    .line 4045
    .line 4046
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4047
    .line 4048
    .line 4049
    move-result v3

    .line 4050
    if-eqz v3, :cond_38

    .line 4051
    .line 4052
    const-string v3, "StartRttService"

    .line 4053
    .line 4054
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4055
    .line 4056
    .line 4057
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4058
    .line 4059
    const-string/jumbo v7, "com.android.server.wifi.rtt.RttService"

    .line 4060
    .line 4061
    .line 4062
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4063
    .line 4064
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4065
    .line 4066
    .line 4067
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4068
    .line 4069
    .line 4070
    :cond_38
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4071
    .line 4072
    .line 4073
    move-result-object v3

    .line 4074
    const-string v7, "android.hardware.wifi.aware"

    .line 4075
    .line 4076
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4077
    .line 4078
    .line 4079
    move-result v3

    .line 4080
    if-eqz v3, :cond_39

    .line 4081
    .line 4082
    const-string v3, "StartWifiAware"

    .line 4083
    .line 4084
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4085
    .line 4086
    .line 4087
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4088
    .line 4089
    const-string/jumbo v7, "com.android.server.wifi.aware.WifiAwareService"

    .line 4090
    .line 4091
    .line 4092
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4093
    .line 4094
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4095
    .line 4096
    .line 4097
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4098
    .line 4099
    .line 4100
    :cond_39
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4101
    .line 4102
    .line 4103
    move-result-object v3

    .line 4104
    const-string v7, "android.hardware.wifi.direct"

    .line 4105
    .line 4106
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4107
    .line 4108
    .line 4109
    move-result v3

    .line 4110
    if-eqz v3, :cond_3a

    .line 4111
    .line 4112
    const-string v3, "StartWifiP2P"

    .line 4113
    .line 4114
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4115
    .line 4116
    .line 4117
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4118
    .line 4119
    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    .line 4120
    .line 4121
    .line 4122
    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 4123
    .line 4124
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    .line 4126
    .line 4127
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4128
    .line 4129
    .line 4130
    :cond_3a
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4131
    .line 4132
    .line 4133
    move-result-object v3

    .line 4134
    const-string v7, "android.hardware.lowpan"

    .line 4135
    .line 4136
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4137
    .line 4138
    .line 4139
    move-result v3

    .line 4140
    if-eqz v3, :cond_3b

    .line 4141
    .line 4142
    const-string v3, "StartLowpan"

    .line 4143
    .line 4144
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4145
    .line 4146
    .line 4147
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4148
    .line 4149
    const-string/jumbo v7, "com.android.server.lowpan.LowpanService"

    .line 4150
    .line 4151
    .line 4152
    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4153
    .line 4154
    .line 4155
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4156
    .line 4157
    .line 4158
    :cond_3b
    const-string v3, "StartPacProxyService"

    .line 4159
    .line 4160
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4161
    .line 4162
    .line 4163
    :try_start_55
    new-instance v3, Lcom/android/server/connectivity/PacProxyService;

    .line 4164
    .line 4165
    invoke-direct {v3, v14}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    .line 4166
    .line 4167
    .line 4168
    const-string/jumbo v7, "pac_proxy"

    .line 4169
    .line 4170
    .line 4171
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_32

    .line 4172
    .line 4173
    .line 4174
    goto :goto_57

    .line 4175
    :catchall_32
    move-exception v0

    .line 4176
    move-object v3, v0

    .line 4177
    const-string/jumbo v7, "starting PacProxyService"

    .line 4178
    .line 4179
    .line 4180
    invoke-static {v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4181
    .line 4182
    .line 4183
    :goto_57
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4184
    .line 4185
    .line 4186
    const-string v3, "StartIntelligentBatterySaverService"

    .line 4187
    .line 4188
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4189
    .line 4190
    .line 4191
    new-instance v3, Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 4192
    .line 4193
    invoke-direct {v3, v14}, Lcom/android/server/ibs/IntelligentBatterySaverService;-><init>(Landroid/content/Context;)V

    .line 4194
    .line 4195
    .line 4196
    const-string v7, "IntelligentBatterySaverService"

    .line 4197
    .line 4198
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4199
    .line 4200
    .line 4201
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4202
    .line 4203
    .line 4204
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 4205
    .line 4206
    .line 4207
    move-result v3

    .line 4208
    if-nez v3, :cond_3c

    .line 4209
    .line 4210
    const-string v3, "StartKnoxGuard"

    .line 4211
    .line 4212
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4213
    .line 4214
    .line 4215
    :try_start_56
    const-string/jumbo v3, "knoxguard_service"

    .line 4216
    .line 4217
    .line 4218
    new-instance v7, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    .line 4219
    .line 4220
    invoke-direct {v7, v14}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;-><init>(Landroid/content/Context;)V

    .line 4221
    .line 4222
    .line 4223
    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_33

    .line 4224
    .line 4225
    .line 4226
    goto :goto_58

    .line 4227
    :catchall_33
    move-exception v0

    .line 4228
    move-object v3, v0

    .line 4229
    const-string v7, "SystemServer"

    .line 4230
    .line 4231
    const-string v8, "Failed to add KnoxGuardService."

    .line 4232
    .line 4233
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    .line 4235
    .line 4236
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4237
    .line 4238
    .line 4239
    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4240
    .line 4241
    .line 4242
    :cond_3c
    const-string v3, "StartConnectivityService"

    .line 4243
    .line 4244
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4245
    .line 4246
    .line 4247
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4248
    .line 4249
    const-string/jumbo v7, "com.android.server.ConnectivityServiceInitializer"

    .line 4250
    .line 4251
    .line 4252
    const-string v8, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 4253
    .line 4254
    invoke-virtual {v3, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    .line 4256
    .line 4257
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 4258
    .line 4259
    .line 4260
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4261
    .line 4262
    .line 4263
    const-string v3, "StartExtendedEthernetService"

    .line 4264
    .line 4265
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4266
    .line 4267
    .line 4268
    :try_start_57
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4269
    .line 4270
    const-class v7, Lcom/android/server/ExtendedEthernetService;

    .line 4271
    .line 4272
    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_34

    .line 4273
    .line 4274
    .line 4275
    goto :goto_59

    .line 4276
    :catchall_34
    move-exception v0

    .line 4277
    move-object v3, v0

    .line 4278
    const-string v7, "SystemServer"

    .line 4279
    .line 4280
    const-string v8, "Failed to start ExtendedEthernetService."

    .line 4281
    .line 4282
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4283
    .line 4284
    .line 4285
    :goto_59
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4286
    .line 4287
    .line 4288
    const-string v3, "StartSecurityStateManagerService"

    .line 4289
    .line 4290
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4291
    .line 4292
    .line 4293
    :try_start_58
    const-string/jumbo v3, "security_state"

    .line 4294
    .line 4295
    .line 4296
    new-instance v7, Lcom/android/server/SecurityStateManagerService;

    .line 4297
    .line 4298
    invoke-direct {v7, v14}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    .line 4299
    .line 4300
    .line 4301
    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_35

    .line 4302
    .line 4303
    .line 4304
    goto :goto_5a

    .line 4305
    :catchall_35
    move-exception v0

    .line 4306
    move-object v3, v0

    .line 4307
    const-string/jumbo v7, "starting SecurityStateManagerService"

    .line 4308
    .line 4309
    .line 4310
    invoke-static {v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4311
    .line 4312
    .line 4313
    :goto_5a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4314
    .line 4315
    .line 4316
    const-string v3, "StartVpnManagerService"

    .line 4317
    .line 4318
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4319
    .line 4320
    .line 4321
    :try_start_59
    invoke-static {v14}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    .line 4322
    .line 4323
    .line 4324
    move-result-object v3
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_37

    .line 4325
    :try_start_5a
    const-string/jumbo v7, "vpn_management"

    .line 4326
    .line 4327
    .line 4328
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_36

    .line 4329
    .line 4330
    .line 4331
    goto :goto_5c

    .line 4332
    :catchall_36
    move-exception v0

    .line 4333
    move-object v7, v0

    .line 4334
    goto :goto_5b

    .line 4335
    :catchall_37
    move-exception v0

    .line 4336
    move-object v7, v0

    .line 4337
    const/4 v3, 0x0

    .line 4338
    :goto_5b
    const-string/jumbo v8, "starting VPN Manager Service"

    .line 4339
    .line 4340
    .line 4341
    invoke-static {v8, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4342
    .line 4343
    .line 4344
    :goto_5c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4345
    .line 4346
    .line 4347
    const-string v7, "StartVcnManagementService"

    .line 4348
    .line 4349
    invoke-virtual {v15, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4350
    .line 4351
    .line 4352
    :try_start_5b
    invoke-static {v14}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    .line 4353
    .line 4354
    .line 4355
    move-result-object v7
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_39

    .line 4356
    :try_start_5c
    const-string/jumbo v8, "vcn_management"

    .line 4357
    .line 4358
    .line 4359
    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_38

    .line 4360
    .line 4361
    .line 4362
    move-object/from16 v27, v3

    .line 4363
    .line 4364
    goto :goto_5e

    .line 4365
    :catchall_38
    move-exception v0

    .line 4366
    move-object v8, v0

    .line 4367
    move-object/from16 v27, v3

    .line 4368
    .line 4369
    goto :goto_5d

    .line 4370
    :catchall_39
    move-exception v0

    .line 4371
    move-object v8, v0

    .line 4372
    move-object/from16 v27, v3

    .line 4373
    .line 4374
    const/4 v7, 0x0

    .line 4375
    :goto_5d
    const-string/jumbo v3, "starting VCN Management Service"

    .line 4376
    .line 4377
    .line 4378
    invoke-static {v3, v8}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4379
    .line 4380
    .line 4381
    :goto_5e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4382
    .line 4383
    .line 4384
    const-string v3, "StartSystemUpdateManagerService"

    .line 4385
    .line 4386
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4387
    .line 4388
    .line 4389
    :try_start_5d
    const-string/jumbo v3, "system_update"

    .line 4390
    .line 4391
    .line 4392
    new-instance v8, Lcom/android/server/SystemUpdateManagerService;

    .line 4393
    .line 4394
    invoke-direct {v8, v14}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    .line 4395
    .line 4396
    .line 4397
    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_3a

    .line 4398
    .line 4399
    .line 4400
    goto :goto_5f

    .line 4401
    :catchall_3a
    move-exception v0

    .line 4402
    move-object v3, v0

    .line 4403
    const-string/jumbo v8, "starting SystemUpdateManagerService"

    .line 4404
    .line 4405
    .line 4406
    invoke-static {v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4407
    .line 4408
    .line 4409
    :goto_5f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4410
    .line 4411
    .line 4412
    const-string v3, "StartUpdateLockService"

    .line 4413
    .line 4414
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4415
    .line 4416
    .line 4417
    :try_start_5e
    const-string/jumbo v3, "updatelock"

    .line 4418
    .line 4419
    .line 4420
    new-instance v8, Lcom/android/server/UpdateLockService;

    .line 4421
    .line 4422
    invoke-direct {v8, v14}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 4423
    .line 4424
    .line 4425
    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_3b

    .line 4426
    .line 4427
    .line 4428
    goto :goto_60

    .line 4429
    :catchall_3b
    move-exception v0

    .line 4430
    move-object v3, v0

    .line 4431
    const-string/jumbo v8, "starting UpdateLockService"

    .line 4432
    .line 4433
    .line 4434
    invoke-static {v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4435
    .line 4436
    .line 4437
    :goto_60
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4438
    .line 4439
    .line 4440
    const-string v3, "StartNotificationManager"

    .line 4441
    .line 4442
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4443
    .line 4444
    .line 4445
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4446
    .line 4447
    const-class v8, Lcom/android/server/notification/NotificationManagerService;

    .line 4448
    .line 4449
    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4450
    .line 4451
    .line 4452
    invoke-static {v14}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 4453
    .line 4454
    .line 4455
    invoke-static {v14}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 4456
    .line 4457
    .line 4458
    const-string/jumbo v3, "notification"

    .line 4459
    .line 4460
    .line 4461
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4462
    .line 4463
    .line 4464
    move-result-object v3

    .line 4465
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 4466
    .line 4467
    .line 4468
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4469
    .line 4470
    .line 4471
    const-string v3, "StartDeviceMonitor"

    .line 4472
    .line 4473
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4474
    .line 4475
    .line 4476
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4477
    .line 4478
    const-class v8, Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 4479
    .line 4480
    move-object/from16 v28, v4

    .line 4481
    .line 4482
    const-string v4, "StartTimeDetectorService"

    .line 4483
    .line 4484
    invoke-static {v3, v8, v15, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4485
    .line 4486
    .line 4487
    :try_start_5f
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4488
    .line 4489
    const-class v4, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    .line 4490
    .line 4491
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3c

    .line 4492
    .line 4493
    .line 4494
    goto :goto_61

    .line 4495
    :catchall_3c
    move-exception v0

    .line 4496
    move-object v3, v0

    .line 4497
    const-string/jumbo v4, "starting TimeDetectorService service"

    .line 4498
    .line 4499
    .line 4500
    invoke-static {v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4501
    .line 4502
    .line 4503
    :goto_61
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4504
    .line 4505
    .line 4506
    const-string v3, "StartLocationManagerService"

    .line 4507
    .line 4508
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4509
    .line 4510
    .line 4511
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4512
    .line 4513
    const-class v4, Lcom/android/server/location/LocationManagerService$Lifecycle;

    .line 4514
    .line 4515
    const-string v8, "StartSLocationService"

    .line 4516
    .line 4517
    invoke-static {v3, v4, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 4518
    .line 4519
    .line 4520
    :try_start_60
    const-string v3, "SystemServer"

    .line 4521
    .line 4522
    const-string v4, "SLocation Manager"

    .line 4523
    .line 4524
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    .line 4526
    .line 4527
    const-string/jumbo v3, "com.samsung.android.location.SLocationLoader"

    .line 4528
    .line 4529
    .line 4530
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4531
    .line 4532
    .line 4533
    move-result-object v3

    .line 4534
    const-string/jumbo v4, "getSLocationService"
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_3f

    .line 4535
    .line 4536
    .line 4537
    move-object/from16 v29, v5

    .line 4538
    .line 4539
    const/4 v8, 0x1

    .line 4540
    :try_start_61
    new-array v5, v8, [Ljava/lang/Class;

    .line 4541
    .line 4542
    const-class v8, Landroid/content/Context;

    .line 4543
    .line 4544
    const/16 v18, 0x0

    .line 4545
    .line 4546
    aput-object v8, v5, v18

    .line 4547
    .line 4548
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 4549
    .line 4550
    .line 4551
    move-result-object v3

    .line 4552
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 4553
    .line 4554
    .line 4555
    move-result-object v4

    .line 4556
    const/4 v5, 0x0

    .line 4557
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4558
    .line 4559
    .line 4560
    move-result-object v3

    .line 4561
    check-cast v3, Landroid/os/IBinder;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_3e

    .line 4562
    .line 4563
    :try_start_62
    const-string/jumbo v4, "sec_location"

    .line 4564
    .line 4565
    .line 4566
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_3d

    .line 4567
    .line 4568
    .line 4569
    goto :goto_64

    .line 4570
    :catchall_3d
    move-exception v0

    .line 4571
    move-object v4, v0

    .line 4572
    goto :goto_63

    .line 4573
    :catchall_3e
    move-exception v0

    .line 4574
    :goto_62
    move-object v4, v0

    .line 4575
    const/4 v3, 0x0

    .line 4576
    goto :goto_63

    .line 4577
    :catchall_3f
    move-exception v0

    .line 4578
    move-object/from16 v29, v5

    .line 4579
    .line 4580
    goto :goto_62

    .line 4581
    :goto_63
    const-string v5, "Starting SLocationService"

    .line 4582
    .line 4583
    invoke-static {v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4584
    .line 4585
    .line 4586
    :goto_64
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4587
    .line 4588
    .line 4589
    const-string v4, "SemMdnieManagerService"

    .line 4590
    .line 4591
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4592
    .line 4593
    .line 4594
    :try_start_63
    const-string v4, "SystemServer"

    .line 4595
    .line 4596
    const-string/jumbo v5, "mDNIe Service"

    .line 4597
    .line 4598
    .line 4599
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    .line 4601
    .line 4602
    const-string/jumbo v4, "com.samsung.android.hardware.display.SemMdnieManagerService"

    .line 4603
    .line 4604
    .line 4605
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4606
    .line 4607
    .line 4608
    const-string/jumbo v4, "mDNIe"

    .line 4609
    .line 4610
    .line 4611
    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 4612
    .line 4613
    invoke-direct {v5, v14}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;-><init>(Landroid/content/Context;)V

    .line 4614
    .line 4615
    .line 4616
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_40

    .line 4617
    .line 4618
    .line 4619
    goto :goto_65

    .line 4620
    :catchall_40
    move-exception v0

    .line 4621
    move-object v4, v0

    .line 4622
    const-string v5, "Failed To Start Mdnie Service "

    .line 4623
    .line 4624
    invoke-static {v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4625
    .line 4626
    .line 4627
    :goto_65
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4628
    .line 4629
    .line 4630
    const-string v4, "SemDisplaySolution"

    .line 4631
    .line 4632
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4633
    .line 4634
    .line 4635
    :try_start_64
    const-string v4, "SystemServer"

    .line 4636
    .line 4637
    const-string v5, "SemDisplaySolution Service"

    .line 4638
    .line 4639
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    .line 4641
    .line 4642
    const-string/jumbo v4, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    .line 4643
    .line 4644
    .line 4645
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4646
    .line 4647
    .line 4648
    const-string v4, "DisplaySolution"

    .line 4649
    .line 4650
    new-instance v5, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 4651
    .line 4652
    invoke-direct {v5, v14}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    .line 4653
    .line 4654
    .line 4655
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_41

    .line 4656
    .line 4657
    .line 4658
    goto :goto_66

    .line 4659
    :catchall_41
    move-exception v0

    .line 4660
    move-object v4, v0

    .line 4661
    const-string v5, "Failed To Start SemDisplaySolution Service "

    .line 4662
    .line 4663
    invoke-static {v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4664
    .line 4665
    .line 4666
    :goto_66
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4667
    .line 4668
    .line 4669
    const-string v4, "StartMoccaService"

    .line 4670
    .line 4671
    invoke-virtual {v15, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4672
    .line 4673
    .line 4674
    :try_start_65
    invoke-static {v14}, Lcom/android/server/sensors/mocca/MoccaLoader;->getMoccaService(Landroid/content/Context;)Landroid/os/IBinder;

    .line 4675
    .line 4676
    .line 4677
    move-result-object v4
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_43

    .line 4678
    :try_start_66
    const-string/jumbo v5, "mocca"

    .line 4679
    .line 4680
    .line 4681
    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_42

    .line 4682
    .line 4683
    .line 4684
    move-object/from16 v30, v3

    .line 4685
    .line 4686
    goto :goto_68

    .line 4687
    :catchall_42
    move-exception v0

    .line 4688
    move-object v5, v0

    .line 4689
    goto/16 :goto_67

    .line 4690
    .line 4691
    :catchall_43
    move-exception v0

    .line 4692
    move-object v5, v0

    .line 4693
    const/4 v4, 0x0

    .line 4694
    :goto_67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 4695
    .line 4696
    move-object/from16 v30, v3

    .line 4697
    .line 4698
    const-string v3, "Starting MoccaService:"

    .line 4699
    .line 4700
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4701
    .line 4702
    .line 4703
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4704
    .line 4705
    .line 4706
    move-result-object v3

    .line 4707
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    .line 4709
    .line 4710
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4711
    .line 4712
    .line 4713
    move-result-object v3

    .line 4714
    invoke-static {v3, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4715
    .line 4716
    .line 4717
    :goto_68
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4718
    .line 4719
    .line 4720
    const-string v3, "StartCountryDetectorService"

    .line 4721
    .line 4722
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4723
    .line 4724
    .line 4725
    :try_start_67
    new-instance v3, Lcom/android/server/CountryDetectorService;

    .line 4726
    .line 4727
    invoke-direct {v3, v14}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_45

    .line 4728
    .line 4729
    .line 4730
    :try_start_68
    const-string/jumbo v5, "country_detector"

    .line 4731
    .line 4732
    .line 4733
    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_44

    .line 4734
    .line 4735
    .line 4736
    goto :goto_6a

    .line 4737
    :catchall_44
    move-exception v0

    .line 4738
    move-object v5, v0

    .line 4739
    goto/16 :goto_69

    .line 4740
    .line 4741
    :catchall_45
    move-exception v0

    .line 4742
    move-object v5, v0

    .line 4743
    const/4 v3, 0x0

    .line 4744
    :goto_69
    const-string/jumbo v8, "starting Country Detector"

    .line 4745
    .line 4746
    .line 4747
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4748
    .line 4749
    .line 4750
    :goto_6a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4751
    .line 4752
    .line 4753
    const-string v5, "StartTimeZoneDetectorService"

    .line 4754
    .line 4755
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4756
    .line 4757
    .line 4758
    :try_start_69
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4759
    .line 4760
    const-class v8, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    .line 4761
    .line 4762
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_46

    .line 4763
    .line 4764
    .line 4765
    goto/16 :goto_6b

    .line 4766
    .line 4767
    :catchall_46
    move-exception v0

    .line 4768
    move-object v5, v0

    .line 4769
    const-string/jumbo v8, "starting TimeZoneDetectorService service"

    .line 4770
    .line 4771
    .line 4772
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4773
    .line 4774
    .line 4775
    :goto_6b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4776
    .line 4777
    .line 4778
    const-string v5, "StartAltitudeService"

    .line 4779
    .line 4780
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4781
    .line 4782
    .line 4783
    :try_start_6a
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4784
    .line 4785
    const-class v8, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    .line 4786
    .line 4787
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_47

    .line 4788
    .line 4789
    .line 4790
    goto/16 :goto_6c

    .line 4791
    .line 4792
    :catchall_47
    move-exception v0

    .line 4793
    move-object v5, v0

    .line 4794
    const-string/jumbo v8, "starting AltitudeService service"

    .line 4795
    .line 4796
    .line 4797
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4798
    .line 4799
    .line 4800
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4801
    .line 4802
    .line 4803
    const-string v5, "StartLocationTimeZoneManagerService"

    .line 4804
    .line 4805
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4806
    .line 4807
    .line 4808
    :try_start_6b
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4809
    .line 4810
    const-class v8, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    .line 4811
    .line 4812
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_48

    .line 4813
    .line 4814
    .line 4815
    goto/16 :goto_6d

    .line 4816
    .line 4817
    :catchall_48
    move-exception v0

    .line 4818
    move-object v5, v0

    .line 4819
    const-string/jumbo v8, "starting LocationTimeZoneManagerService service"

    .line 4820
    .line 4821
    .line 4822
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4823
    .line 4824
    .line 4825
    :goto_6d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4826
    .line 4827
    .line 4828
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4829
    .line 4830
    .line 4831
    move-result-object v5

    .line 4832
    const v8, 0x1110174

    .line 4833
    .line 4834
    .line 4835
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 4836
    .line 4837
    .line 4838
    move-result v5

    .line 4839
    if-eqz v5, :cond_3d

    .line 4840
    .line 4841
    const-string v5, "StartGnssTimeUpdateService"

    .line 4842
    .line 4843
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4844
    .line 4845
    .line 4846
    :try_start_6c
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4847
    .line 4848
    const-class v8, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    .line 4849
    .line 4850
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_49

    .line 4851
    .line 4852
    .line 4853
    goto/16 :goto_6e

    .line 4854
    .line 4855
    :catchall_49
    move-exception v0

    .line 4856
    move-object v5, v0

    .line 4857
    const-string/jumbo v8, "starting GnssTimeUpdateService service"

    .line 4858
    .line 4859
    .line 4860
    invoke-static {v8, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4861
    .line 4862
    .line 4863
    :goto_6e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4864
    .line 4865
    .line 4866
    :cond_3d
    const-string v5, "KnoxVpnService"

    .line 4867
    .line 4868
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4869
    .line 4870
    .line 4871
    :try_start_6d
    iget-object v5, v2, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 4872
    .line 4873
    if-eqz v5, :cond_3e

    .line 4874
    .line 4875
    const-string v5, "Adding KnoxVpnEngineService"

    .line 4876
    .line 4877
    invoke-virtual {v15, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4878
    .line 4879
    .line 4880
    const-string v5, "SystemServer"

    .line 4881
    .line 4882
    const-string v8, "Adding KnoxVpnEngineService"

    .line 4883
    .line 4884
    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    .line 4886
    .line 4887
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 4888
    .line 4889
    invoke-direct {v5, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    .line 4890
    .line 4891
    .line 4892
    const-string/jumbo v8, "knox_vpn_policy"

    .line 4893
    .line 4894
    .line 4895
    invoke-static {v8, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4896
    .line 4897
    .line 4898
    const-string/jumbo v8, "knox_vpn_policy"

    .line 4899
    .line 4900
    .line 4901
    invoke-static {v8, v5}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4902
    .line 4903
    .line 4904
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_4a

    .line 4905
    .line 4906
    .line 4907
    goto/16 :goto_6f

    .line 4908
    .line 4909
    :catchall_4a
    move-exception v0

    .line 4910
    move-object v5, v0

    .line 4911
    goto/16 :goto_70

    .line 4912
    .line 4913
    :cond_3e
    :goto_6f
    move-object/from16 v31, v3

    .line 4914
    .line 4915
    goto/16 :goto_71

    .line 4916
    .line 4917
    :goto_70
    const-string v8, "SystemServer"

    .line 4918
    .line 4919
    move-object/from16 v31, v3

    .line 4920
    .line 4921
    const-string v3, "Failure starting KnoxVpnEngineService"

    .line 4922
    .line 4923
    invoke-static {v8, v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4924
    .line 4925
    .line 4926
    :goto_71
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4927
    .line 4928
    .line 4929
    if-nez v11, :cond_3f

    .line 4930
    .line 4931
    const-string v3, "StartSearchManagerService"

    .line 4932
    .line 4933
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4934
    .line 4935
    .line 4936
    :try_start_6e
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4937
    .line 4938
    const-class v5, Lcom/android/server/search/SearchManagerService$Lifecycle;

    .line 4939
    .line 4940
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_4b

    .line 4941
    .line 4942
    .line 4943
    goto/16 :goto_72

    .line 4944
    .line 4945
    :catchall_4b
    move-exception v0

    .line 4946
    move-object v3, v0

    .line 4947
    const-string/jumbo v5, "starting Search Service"

    .line 4948
    .line 4949
    .line 4950
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4951
    .line 4952
    .line 4953
    :goto_72
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4954
    .line 4955
    .line 4956
    :cond_3f
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4957
    .line 4958
    .line 4959
    move-result-object v3

    .line 4960
    const v5, 0x111018a

    .line 4961
    .line 4962
    .line 4963
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 4964
    .line 4965
    .line 4966
    move-result v3

    .line 4967
    if-eqz v3, :cond_40

    .line 4968
    .line 4969
    const-string v3, "StartWallpaperManagerService"

    .line 4970
    .line 4971
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4972
    .line 4973
    .line 4974
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4975
    .line 4976
    const-class v5, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    .line 4977
    .line 4978
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4979
    .line 4980
    .line 4981
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4982
    .line 4983
    .line 4984
    goto/16 :goto_73

    .line 4985
    .line 4986
    :cond_40
    const-string v3, "SystemServer"

    .line 4987
    .line 4988
    const-string v5, "Wallpaper service disabled by config"

    .line 4989
    .line 4990
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    .line 4992
    .line 4993
    :goto_73
    const v3, 0x1040338

    .line 4994
    .line 4995
    .line 4996
    invoke-static {v14, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 4997
    .line 4998
    .line 4999
    move-result v3

    .line 5000
    if-eqz v3, :cond_41

    .line 5001
    .line 5002
    const-string v3, "StartWallpaperEffectsGenerationService"

    .line 5003
    .line 5004
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5005
    .line 5006
    .line 5007
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5008
    .line 5009
    const-class v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 5010
    .line 5011
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5012
    .line 5013
    .line 5014
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5015
    .line 5016
    .line 5017
    :cond_41
    const-string v3, "StartAudioService"

    .line 5018
    .line 5019
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5020
    .line 5021
    .line 5022
    if-nez v12, :cond_42

    .line 5023
    .line 5024
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5025
    .line 5026
    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    .line 5027
    .line 5028
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5029
    .line 5030
    .line 5031
    goto :goto_74

    .line 5032
    :cond_42
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5033
    .line 5034
    .line 5035
    move-result-object v3

    .line 5036
    const v5, 0x1040340

    .line 5037
    .line 5038
    .line 5039
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 5040
    .line 5041
    .line 5042
    move-result-object v3

    .line 5043
    :try_start_6f
    iget-object v5, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5044
    .line 5045
    new-instance v8, Ljava/lang/StringBuilder;

    .line 5046
    .line 5047
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 5048
    .line 5049
    .line 5050
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5051
    .line 5052
    .line 5053
    const-string v12, "$Lifecycle"

    .line 5054
    .line 5055
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5056
    .line 5057
    .line 5058
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5059
    .line 5060
    .line 5061
    move-result-object v8

    .line 5062
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_4c

    .line 5063
    .line 5064
    .line 5065
    goto/16 :goto_74

    .line 5066
    .line 5067
    :catchall_4c
    move-exception v0

    .line 5068
    move-object v5, v0

    .line 5069
    new-instance v8, Ljava/lang/StringBuilder;

    .line 5070
    .line 5071
    const-string/jumbo v12, "starting "

    .line 5072
    .line 5073
    .line 5074
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5075
    .line 5076
    .line 5077
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5078
    .line 5079
    .line 5080
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5081
    .line 5082
    .line 5083
    move-result-object v3

    .line 5084
    invoke-static {v3, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5085
    .line 5086
    .line 5087
    :goto_74
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5088
    .line 5089
    .line 5090
    const-string v3, "StartSoundTriggerMiddlewareService"

    .line 5091
    .line 5092
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5093
    .line 5094
    .line 5095
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5096
    .line 5097
    const-class v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    .line 5098
    .line 5099
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5100
    .line 5101
    .line 5102
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5103
    .line 5104
    .line 5105
    const-string v3, "LedCoverAppService"

    .line 5106
    .line 5107
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5108
    .line 5109
    .line 5110
    new-instance v3, Lcom/android/server/ledcoverapp/LedCoverAppService;

    .line 5111
    .line 5112
    invoke-direct {v3, v14}, Lcom/android/server/ledcoverapp/LedCoverAppService;-><init>(Landroid/content/Context;)V

    .line 5113
    .line 5114
    .line 5115
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5116
    .line 5117
    .line 5118
    const-string v3, "StartLedBackCoverService"

    .line 5119
    .line 5120
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5121
    .line 5122
    .line 5123
    new-instance v3, Lcom/android/server/ledcover/LedBackCoverService;

    .line 5124
    .line 5125
    invoke-direct {v3, v14}, Lcom/android/server/ledcover/LedBackCoverService;-><init>(Landroid/content/Context;)V

    .line 5126
    .line 5127
    .line 5128
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5129
    .line 5130
    .line 5131
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5132
    .line 5133
    const-string v5, "android.hardware.broadcastradio"

    .line 5134
    .line 5135
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5136
    .line 5137
    .line 5138
    move-result v3

    .line 5139
    if-eqz v3, :cond_43

    .line 5140
    .line 5141
    const-string v3, "StartBroadcastRadioService"

    .line 5142
    .line 5143
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5144
    .line 5145
    .line 5146
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5147
    .line 5148
    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 5149
    .line 5150
    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5151
    .line 5152
    .line 5153
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5154
    .line 5155
    .line 5156
    :cond_43
    if-nez v1, :cond_44

    .line 5157
    .line 5158
    const-string v1, "StartDockObserver"

    .line 5159
    .line 5160
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5161
    .line 5162
    .line 5163
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5164
    .line 5165
    const-class v3, Lcom/android/server/DockObserver;

    .line 5166
    .line 5167
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5168
    .line 5169
    .line 5170
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5171
    .line 5172
    .line 5173
    :cond_44
    if-eqz v11, :cond_45

    .line 5174
    .line 5175
    const-string v1, "StartThermalObserver"

    .line 5176
    .line 5177
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5178
    .line 5179
    .line 5180
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5181
    .line 5182
    const-string/jumbo v3, "com.android.clockwork.ThermalObserver"

    .line 5183
    .line 5184
    .line 5185
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 5186
    .line 5187
    .line 5188
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5189
    .line 5190
    .line 5191
    :cond_45
    if-nez v11, :cond_46

    .line 5192
    .line 5193
    const-string v1, "StartWiredAccessoryManager"

    .line 5194
    .line 5195
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5196
    .line 5197
    .line 5198
    :try_start_70
    new-instance v1, Lcom/android/server/WiredAccessoryManager;

    .line 5199
    .line 5200
    invoke-direct {v1, v14, v13}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 5201
    .line 5202
    .line 5203
    invoke-virtual {v13, v1}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_4d

    .line 5204
    .line 5205
    .line 5206
    goto/16 :goto_75

    .line 5207
    .line 5208
    :catchall_4d
    move-exception v0

    .line 5209
    move-object v1, v0

    .line 5210
    const-string/jumbo v3, "starting WiredAccessoryManager"

    .line 5211
    .line 5212
    .line 5213
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5214
    .line 5215
    .line 5216
    :goto_75
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5217
    .line 5218
    .line 5219
    :cond_46
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5220
    .line 5221
    const-string v3, "android.software.midi"

    .line 5222
    .line 5223
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5224
    .line 5225
    .line 5226
    move-result v1

    .line 5227
    if-eqz v1, :cond_47

    .line 5228
    .line 5229
    const-string v1, "StartMidiManager"

    .line 5230
    .line 5231
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5232
    .line 5233
    .line 5234
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5235
    .line 5236
    const-class v3, Lcom/android/server/midi/MidiService$Lifecycle;

    .line 5237
    .line 5238
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5239
    .line 5240
    .line 5241
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5242
    .line 5243
    .line 5244
    :cond_47
    const-string v1, "StartAdbService"

    .line 5245
    .line 5246
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5247
    .line 5248
    .line 5249
    :try_start_71
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5250
    .line 5251
    const-class v3, Lcom/android/server/adb/AdbService$Lifecycle;

    .line 5252
    .line 5253
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_4e

    .line 5254
    .line 5255
    .line 5256
    goto/16 :goto_76

    .line 5257
    .line 5258
    :catchall_4e
    const-string v1, "SystemServer"

    .line 5259
    .line 5260
    const-string v3, "Failure starting AdbService"

    .line 5261
    .line 5262
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5263
    .line 5264
    .line 5265
    :goto_76
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5266
    .line 5267
    .line 5268
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5269
    .line 5270
    const-string v3, "android.hardware.usb.host"

    .line 5271
    .line 5272
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5273
    .line 5274
    .line 5275
    move-result v1

    .line 5276
    if-nez v1, :cond_48

    .line 5277
    .line 5278
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5279
    .line 5280
    const-string v3, "android.hardware.usb.accessory"

    .line 5281
    .line 5282
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5283
    .line 5284
    .line 5285
    move-result v1

    .line 5286
    if-nez v1, :cond_48

    .line 5287
    .line 5288
    sget-boolean v1, Landroid/os/Build;->IS_EMULATOR:Z

    .line 5289
    .line 5290
    if-eqz v1, :cond_49

    .line 5291
    .line 5292
    :cond_48
    const-string v1, "StartUsbService"

    .line 5293
    .line 5294
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5295
    .line 5296
    .line 5297
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5298
    .line 5299
    const-class v3, Lcom/android/server/usb/UsbService$Lifecycle;

    .line 5300
    .line 5301
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5302
    .line 5303
    .line 5304
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5305
    .line 5306
    .line 5307
    :cond_49
    if-nez v11, :cond_4a

    .line 5308
    .line 5309
    const-string v1, "StartSerialService"

    .line 5310
    .line 5311
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5312
    .line 5313
    .line 5314
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5315
    .line 5316
    const-class v3, Lcom/android/server/SerialService$Lifecycle;

    .line 5317
    .line 5318
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5319
    .line 5320
    .line 5321
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5322
    .line 5323
    .line 5324
    :cond_4a
    const-string v1, "StartHardwarePropertiesManagerService"

    .line 5325
    .line 5326
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5327
    .line 5328
    .line 5329
    :try_start_72
    new-instance v1, Lcom/android/server/HardwarePropertiesManagerService;

    .line 5330
    .line 5331
    invoke-direct {v1, v14}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 5332
    .line 5333
    .line 5334
    const-string/jumbo v3, "hardware_properties"

    .line 5335
    .line 5336
    .line 5337
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_4f

    .line 5338
    .line 5339
    .line 5340
    goto/16 :goto_77

    .line 5341
    .line 5342
    :catchall_4f
    move-exception v0

    .line 5343
    move-object v1, v0

    .line 5344
    const-string v3, "SystemServer"

    .line 5345
    .line 5346
    const-string v5, "Failure starting HardwarePropertiesManagerService"

    .line 5347
    .line 5348
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5349
    .line 5350
    .line 5351
    :goto_77
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5352
    .line 5353
    .line 5354
    if-nez v11, :cond_4b

    .line 5355
    .line 5356
    const-string v1, "StartTwilightService"

    .line 5357
    .line 5358
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5359
    .line 5360
    .line 5361
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5362
    .line 5363
    const-class v3, Lcom/android/server/twilight/TwilightService;

    .line 5364
    .line 5365
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5366
    .line 5367
    .line 5368
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5369
    .line 5370
    .line 5371
    :cond_4b
    const-string v1, "StartColorDisplay"

    .line 5372
    .line 5373
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5374
    .line 5375
    .line 5376
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5377
    .line 5378
    const-class v3, Lcom/android/server/display/color/ColorDisplayService;

    .line 5379
    .line 5380
    const-string v5, "StartJobScheduler"

    .line 5381
    .line 5382
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5383
    .line 5384
    .line 5385
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5386
    .line 5387
    const-class v3, Lcom/android/server/job/JobSchedulerService;

    .line 5388
    .line 5389
    const-string v5, "StartSoundTrigger"

    .line 5390
    .line 5391
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5392
    .line 5393
    .line 5394
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5395
    .line 5396
    const-class v3, Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 5397
    .line 5398
    const-string v5, "StartTrustManager"

    .line 5399
    .line 5400
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5401
    .line 5402
    .line 5403
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5404
    .line 5405
    const-class v3, Lcom/android/server/trust/TrustManagerService;

    .line 5406
    .line 5407
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5408
    .line 5409
    .line 5410
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5411
    .line 5412
    .line 5413
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5414
    .line 5415
    const-string v3, "android.software.backup"

    .line 5416
    .line 5417
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5418
    .line 5419
    .line 5420
    move-result v1

    .line 5421
    if-eqz v1, :cond_4c

    .line 5422
    .line 5423
    const-string v1, "StartBackupManager"

    .line 5424
    .line 5425
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5426
    .line 5427
    .line 5428
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5429
    .line 5430
    const-class v3, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    .line 5431
    .line 5432
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5433
    .line 5434
    .line 5435
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5436
    .line 5437
    .line 5438
    :cond_4c
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5439
    .line 5440
    const-string v3, "android.software.app_widgets"

    .line 5441
    .line 5442
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5443
    .line 5444
    .line 5445
    move-result v1

    .line 5446
    if-nez v1, :cond_4d

    .line 5447
    .line 5448
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5449
    .line 5450
    .line 5451
    move-result-object v1

    .line 5452
    const v3, 0x1110166

    .line 5453
    .line 5454
    .line 5455
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5456
    .line 5457
    .line 5458
    move-result v1

    .line 5459
    if-eqz v1, :cond_4e

    .line 5460
    .line 5461
    :cond_4d
    const-string v1, "StartAppWidgetService"

    .line 5462
    .line 5463
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5464
    .line 5465
    .line 5466
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5467
    .line 5468
    const-class v3, Lcom/android/server/appwidget/AppWidgetService;

    .line 5469
    .line 5470
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5471
    .line 5472
    .line 5473
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5474
    .line 5475
    .line 5476
    :cond_4e
    const-string v1, "StartVoiceRecognitionManager"

    .line 5477
    .line 5478
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5479
    .line 5480
    .line 5481
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5482
    .line 5483
    const-class v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 5484
    .line 5485
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5486
    .line 5487
    .line 5488
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5489
    .line 5490
    .line 5491
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5492
    .line 5493
    .line 5494
    move-result-object v1

    .line 5495
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    .line 5496
    .line 5497
    .line 5498
    move-result v1

    .line 5499
    if-eqz v1, :cond_4f

    .line 5500
    .line 5501
    const-string v1, "StartGestureLauncher"

    .line 5502
    .line 5503
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5504
    .line 5505
    .line 5506
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5507
    .line 5508
    const-class v3, Lcom/android/server/GestureLauncherService;

    .line 5509
    .line 5510
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5511
    .line 5512
    .line 5513
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5514
    .line 5515
    .line 5516
    :cond_4f
    const-string v1, "StartSensorNotification"

    .line 5517
    .line 5518
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5519
    .line 5520
    .line 5521
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5522
    .line 5523
    const-class v3, Lcom/android/server/SensorNotificationService;

    .line 5524
    .line 5525
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5526
    .line 5527
    .line 5528
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5529
    .line 5530
    .line 5531
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5532
    .line 5533
    const-string v3, "android.hardware.context_hub"

    .line 5534
    .line 5535
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5536
    .line 5537
    .line 5538
    move-result v1

    .line 5539
    if-eqz v1, :cond_50

    .line 5540
    .line 5541
    const-string v1, "StartContextHubSystemService"

    .line 5542
    .line 5543
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5544
    .line 5545
    .line 5546
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5547
    .line 5548
    const-class v3, Lcom/android/server/ContextHubSystemService;

    .line 5549
    .line 5550
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5551
    .line 5552
    .line 5553
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5554
    .line 5555
    .line 5556
    :cond_50
    const-string v1, "StartDiskStatsService"

    .line 5557
    .line 5558
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5559
    .line 5560
    .line 5561
    :try_start_73
    const-string/jumbo v1, "diskstats"

    .line 5562
    .line 5563
    .line 5564
    new-instance v3, Lcom/android/server/DiskStatsService;

    .line 5565
    .line 5566
    invoke-direct {v3, v14}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    .line 5567
    .line 5568
    .line 5569
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_50

    .line 5570
    .line 5571
    .line 5572
    goto/16 :goto_78

    .line 5573
    .line 5574
    :catchall_50
    move-exception v0

    .line 5575
    move-object v1, v0

    .line 5576
    const-string/jumbo v3, "starting DiskStats Service"

    .line 5577
    .line 5578
    .line 5579
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5580
    .line 5581
    .line 5582
    :goto_78
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5583
    .line 5584
    .line 5585
    const-string v1, "RuntimeService"

    .line 5586
    .line 5587
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5588
    .line 5589
    .line 5590
    :try_start_74
    const-string/jumbo v1, "runtime"

    .line 5591
    .line 5592
    .line 5593
    new-instance v3, Lcom/android/server/RuntimeService;

    .line 5594
    .line 5595
    invoke-direct {v3, v14}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    .line 5596
    .line 5597
    .line 5598
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_51

    .line 5599
    .line 5600
    .line 5601
    goto/16 :goto_79

    .line 5602
    .line 5603
    :catchall_51
    move-exception v0

    .line 5604
    move-object v1, v0

    .line 5605
    const-string/jumbo v3, "starting RuntimeService"

    .line 5606
    .line 5607
    .line 5608
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5609
    .line 5610
    .line 5611
    :goto_79
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5612
    .line 5613
    .line 5614
    if-nez v11, :cond_51

    .line 5615
    .line 5616
    if-nez v25, :cond_51

    .line 5617
    .line 5618
    const-string v1, "StartNetworkTimeUpdateService"

    .line 5619
    .line 5620
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5621
    .line 5622
    .line 5623
    :try_start_75
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 5624
    .line 5625
    invoke-direct {v1, v14}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_53

    .line 5626
    .line 5627
    .line 5628
    :try_start_76
    const-string/jumbo v3, "network_time_update_service"

    .line 5629
    .line 5630
    .line 5631
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_52

    .line 5632
    .line 5633
    .line 5634
    goto/16 :goto_7b

    .line 5635
    .line 5636
    :catchall_52
    move-exception v0

    .line 5637
    move-object v3, v0

    .line 5638
    goto/16 :goto_7a

    .line 5639
    .line 5640
    :catchall_53
    move-exception v0

    .line 5641
    move-object v3, v0

    .line 5642
    const/4 v1, 0x0

    .line 5643
    :goto_7a
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    .line 5644
    .line 5645
    .line 5646
    invoke-static {v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5647
    .line 5648
    .line 5649
    :goto_7b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5650
    .line 5651
    .line 5652
    move-object v5, v1

    .line 5653
    goto/16 :goto_7c

    .line 5654
    .line 5655
    :cond_51
    const/4 v5, 0x0

    .line 5656
    :goto_7c
    const-string v1, "CertBlacklister"

    .line 5657
    .line 5658
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5659
    .line 5660
    .line 5661
    :try_start_77
    new-instance v1, Lcom/android/server/CertBlacklister;

    .line 5662
    .line 5663
    invoke-direct {v1, v14}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_54

    .line 5664
    .line 5665
    .line 5666
    goto/16 :goto_7d

    .line 5667
    .line 5668
    :catchall_54
    move-exception v0

    .line 5669
    move-object v1, v0

    .line 5670
    const-string/jumbo v3, "starting CertBlacklister"

    .line 5671
    .line 5672
    .line 5673
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5674
    .line 5675
    .line 5676
    :goto_7d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5677
    .line 5678
    .line 5679
    const-string v1, "StartEmergencyAffordanceService"

    .line 5680
    .line 5681
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5682
    .line 5683
    .line 5684
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5685
    .line 5686
    const-class v3, Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 5687
    .line 5688
    const-string/jumbo v8, "startBlobStoreManagerService"

    .line 5689
    .line 5690
    .line 5691
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5692
    .line 5693
    .line 5694
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5695
    .line 5696
    const-class v3, Lcom/android/server/blob/BlobStoreManagerService;

    .line 5697
    .line 5698
    const-string v8, "StartDreamManager"

    .line 5699
    .line 5700
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5701
    .line 5702
    .line 5703
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5704
    .line 5705
    const-class v3, Lcom/android/server/dreams/DreamManagerService;

    .line 5706
    .line 5707
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5708
    .line 5709
    .line 5710
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5711
    .line 5712
    .line 5713
    const-string v1, "AddGraphicsStatsService"

    .line 5714
    .line 5715
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5716
    .line 5717
    .line 5718
    const-string/jumbo v1, "graphicsstats"

    .line 5719
    .line 5720
    .line 5721
    new-instance v3, Landroid/graphics/GraphicsStatsService;

    .line 5722
    .line 5723
    invoke-direct {v3, v14}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 5724
    .line 5725
    .line 5726
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5727
    .line 5728
    .line 5729
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5730
    .line 5731
    .line 5732
    sget-boolean v1, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    .line 5733
    .line 5734
    if-eqz v1, :cond_52

    .line 5735
    .line 5736
    const-string v1, "AddCoverageService"

    .line 5737
    .line 5738
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5739
    .line 5740
    .line 5741
    const-string/jumbo v1, "coverage"

    .line 5742
    .line 5743
    .line 5744
    new-instance v3, Lcom/android/server/coverage/CoverageService;

    .line 5745
    .line 5746
    invoke-direct {v3}, Lcom/android/server/coverage/CoverageService;-><init>()V

    .line 5747
    .line 5748
    .line 5749
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5750
    .line 5751
    .line 5752
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5753
    .line 5754
    .line 5755
    :cond_52
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5756
    .line 5757
    const-string v3, "android.software.print"

    .line 5758
    .line 5759
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5760
    .line 5761
    .line 5762
    move-result v1

    .line 5763
    if-eqz v1, :cond_53

    .line 5764
    .line 5765
    const-string v1, "StartPrintManager"

    .line 5766
    .line 5767
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5768
    .line 5769
    .line 5770
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5771
    .line 5772
    const-class v3, Lcom/android/server/print/PrintManagerService;

    .line 5773
    .line 5774
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5775
    .line 5776
    .line 5777
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5778
    .line 5779
    .line 5780
    :cond_53
    const-string v1, "StartAttestationVerificationService"

    .line 5781
    .line 5782
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5783
    .line 5784
    .line 5785
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5786
    .line 5787
    const-class v3, Lcom/android/server/security/AttestationVerificationManagerService;

    .line 5788
    .line 5789
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5790
    .line 5791
    .line 5792
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5793
    .line 5794
    .line 5795
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5796
    .line 5797
    const-string v3, "android.software.companion_device_setup"

    .line 5798
    .line 5799
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5800
    .line 5801
    .line 5802
    move-result v1

    .line 5803
    if-eqz v1, :cond_54

    .line 5804
    .line 5805
    const-string v1, "StartCompanionDeviceManager"

    .line 5806
    .line 5807
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5808
    .line 5809
    .line 5810
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5811
    .line 5812
    const-class v3, Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5813
    .line 5814
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5815
    .line 5816
    .line 5817
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5818
    .line 5819
    .line 5820
    :cond_54
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5821
    .line 5822
    .line 5823
    move-result-object v1

    .line 5824
    const v3, 0x1110189

    .line 5825
    .line 5826
    .line 5827
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 5828
    .line 5829
    .line 5830
    move-result v1

    .line 5831
    if-eqz v1, :cond_55

    .line 5832
    .line 5833
    const-string v1, "StartVirtualDeviceManager"

    .line 5834
    .line 5835
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5836
    .line 5837
    .line 5838
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5839
    .line 5840
    const-class v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 5841
    .line 5842
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5843
    .line 5844
    .line 5845
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5846
    .line 5847
    .line 5848
    :cond_55
    const-string v1, "StartRestrictionManager"

    .line 5849
    .line 5850
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5851
    .line 5852
    .line 5853
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5854
    .line 5855
    const-class v3, Lcom/android/server/restrictions/RestrictionsManagerService;

    .line 5856
    .line 5857
    const-string v8, "CocktailBarService"

    .line 5858
    .line 5859
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5860
    .line 5861
    .line 5862
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5863
    .line 5864
    const-class v3, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .line 5865
    .line 5866
    const-string v8, "StartAODManagerService"

    .line 5867
    .line 5868
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5869
    .line 5870
    .line 5871
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5872
    .line 5873
    const-class v3, Lcom/android/server/aod/AODManagerService;

    .line 5874
    .line 5875
    const-string v8, "KMTDService"

    .line 5876
    .line 5877
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 5878
    .line 5879
    .line 5880
    :try_start_78
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 5881
    .line 5882
    const-string v3, "/system/framework/knox_mtd.jar"

    .line 5883
    .line 5884
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 5885
    .line 5886
    .line 5887
    move-result-object v8

    .line 5888
    invoke-direct {v1, v3, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 5889
    .line 5890
    .line 5891
    const-string/jumbo v3, "com.samsung.android.knox.mtd.KMTDService"

    .line 5892
    .line 5893
    .line 5894
    invoke-virtual {v1, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 5895
    .line 5896
    .line 5897
    move-result-object v1

    .line 5898
    const/4 v3, 0x1

    .line 5899
    new-array v8, v3, [Ljava/lang/Class;

    .line 5900
    .line 5901
    const-class v3, Landroid/content/Context;

    .line 5902
    .line 5903
    const/4 v12, 0x0

    .line 5904
    aput-object v3, v8, v12

    .line 5905
    .line 5906
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5907
    .line 5908
    .line 5909
    move-result-object v1

    .line 5910
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 5911
    .line 5912
    .line 5913
    move-result-object v3

    .line 5914
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5915
    .line 5916
    .line 5917
    move-result-object v1

    .line 5918
    check-cast v1, Landroid/os/IBinder;

    .line 5919
    .line 5920
    const-string/jumbo v3, "knox.mtd"

    .line 5921
    .line 5922
    .line 5923
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_b

    .line 5924
    .line 5925
    .line 5926
    goto/16 :goto_7e

    .line 5927
    .line 5928
    :catch_b
    const-string v1, "SystemServer"

    .line 5929
    .line 5930
    const-string/jumbo v3, "knox_mtd.jar not found"

    .line 5931
    .line 5932
    .line 5933
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    .line 5935
    .line 5936
    :goto_7e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5937
    .line 5938
    .line 5939
    const-string v1, "BattAuthManager"

    .line 5940
    .line 5941
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5942
    .line 5943
    .line 5944
    :try_start_79
    const-string v1, "SystemServer"

    .line 5945
    .line 5946
    const-string v3, "BattAuthManager"

    .line 5947
    .line 5948
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    .line 5950
    .line 5951
    new-instance v1, Lcom/samsung/android/battauthmanager/BattAuthManager;

    .line 5952
    .line 5953
    invoke-direct {v1, v14}, Lcom/samsung/android/battauthmanager/BattAuthManager;-><init>(Landroid/content/Context;)V

    .line 5954
    .line 5955
    .line 5956
    const-class v3, Lcom/samsung/android/battauthmanager/BattAuthManager;

    .line 5957
    .line 5958
    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_55

    .line 5959
    .line 5960
    .line 5961
    goto/16 :goto_7f

    .line 5962
    .line 5963
    :catchall_55
    move-exception v0

    .line 5964
    move-object v1, v0

    .line 5965
    const-string/jumbo v3, "starting BattAuthManager"

    .line 5966
    .line 5967
    .line 5968
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5969
    .line 5970
    .line 5971
    :goto_7f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5972
    .line 5973
    .line 5974
    const-string v1, "StartMediaSessionService"

    .line 5975
    .line 5976
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5977
    .line 5978
    .line 5979
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5980
    .line 5981
    const-class v3, Lcom/android/server/media/MediaSessionService;

    .line 5982
    .line 5983
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 5984
    .line 5985
    .line 5986
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5987
    .line 5988
    .line 5989
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5990
    .line 5991
    const-string v3, "android.hardware.hdmi.cec"

    .line 5992
    .line 5993
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 5994
    .line 5995
    .line 5996
    move-result v1

    .line 5997
    if-eqz v1, :cond_56

    .line 5998
    .line 5999
    const-string v1, "StartHdmiControlService"

    .line 6000
    .line 6001
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6002
    .line 6003
    .line 6004
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6005
    .line 6006
    const-class v3, Lcom/android/server/hdmi/HdmiControlService;

    .line 6007
    .line 6008
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6009
    .line 6010
    .line 6011
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6012
    .line 6013
    .line 6014
    :cond_56
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6015
    .line 6016
    const-string v3, "android.software.live_tv"

    .line 6017
    .line 6018
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6019
    .line 6020
    .line 6021
    move-result v1

    .line 6022
    if-nez v1, :cond_57

    .line 6023
    .line 6024
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6025
    .line 6026
    const-string v3, "android.software.leanback"

    .line 6027
    .line 6028
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6029
    .line 6030
    .line 6031
    move-result v1

    .line 6032
    if-eqz v1, :cond_58

    .line 6033
    .line 6034
    :cond_57
    const-string v1, "StartTvInteractiveAppManager"

    .line 6035
    .line 6036
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6037
    .line 6038
    .line 6039
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6040
    .line 6041
    const-class v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6042
    .line 6043
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6044
    .line 6045
    .line 6046
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6047
    .line 6048
    .line 6049
    :cond_58
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6050
    .line 6051
    const-string v3, "android.software.live_tv"

    .line 6052
    .line 6053
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6054
    .line 6055
    .line 6056
    move-result v1

    .line 6057
    if-nez v1, :cond_59

    .line 6058
    .line 6059
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6060
    .line 6061
    const-string v3, "android.software.leanback"

    .line 6062
    .line 6063
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6064
    .line 6065
    .line 6066
    move-result v1

    .line 6067
    if-eqz v1, :cond_5a

    .line 6068
    .line 6069
    :cond_59
    const-string v1, "StartTvInputManager"

    .line 6070
    .line 6071
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6072
    .line 6073
    .line 6074
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6075
    .line 6076
    const-class v3, Lcom/android/server/tv/TvInputManagerService;

    .line 6077
    .line 6078
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6079
    .line 6080
    .line 6081
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6082
    .line 6083
    .line 6084
    :cond_5a
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6085
    .line 6086
    const-string v3, "android.hardware.tv.tuner"

    .line 6087
    .line 6088
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6089
    .line 6090
    .line 6091
    move-result v1

    .line 6092
    if-eqz v1, :cond_5b

    .line 6093
    .line 6094
    const-string v1, "StartTunerResourceManager"

    .line 6095
    .line 6096
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6097
    .line 6098
    .line 6099
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6100
    .line 6101
    const-class v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 6102
    .line 6103
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6104
    .line 6105
    .line 6106
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6107
    .line 6108
    .line 6109
    :cond_5b
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6110
    .line 6111
    const-string v3, "android.software.picture_in_picture"

    .line 6112
    .line 6113
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6114
    .line 6115
    .line 6116
    move-result v1

    .line 6117
    if-eqz v1, :cond_5c

    .line 6118
    .line 6119
    const-string v1, "StartMediaResourceMonitor"

    .line 6120
    .line 6121
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6122
    .line 6123
    .line 6124
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6125
    .line 6126
    const-class v3, Lcom/android/server/media/MediaResourceMonitorService;

    .line 6127
    .line 6128
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6129
    .line 6130
    .line 6131
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6132
    .line 6133
    .line 6134
    :cond_5c
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6135
    .line 6136
    const-string v3, "android.software.leanback"

    .line 6137
    .line 6138
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6139
    .line 6140
    .line 6141
    move-result v1

    .line 6142
    if-eqz v1, :cond_5d

    .line 6143
    .line 6144
    const-string v1, "StartTvRemoteService"

    .line 6145
    .line 6146
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6147
    .line 6148
    .line 6149
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6150
    .line 6151
    const-class v3, Lcom/android/server/tv/TvRemoteService;

    .line 6152
    .line 6153
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6154
    .line 6155
    .line 6156
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6157
    .line 6158
    .line 6159
    :cond_5d
    const-string v1, "StartMediaRouterService"

    .line 6160
    .line 6161
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6162
    .line 6163
    .line 6164
    :try_start_7a
    new-instance v1, Lcom/android/server/media/MediaRouterService;

    .line 6165
    .line 6166
    invoke-direct {v1, v14}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_57

    .line 6167
    .line 6168
    .line 6169
    :try_start_7b
    const-string/jumbo v3, "media_router"

    .line 6170
    .line 6171
    .line 6172
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_56

    .line 6173
    .line 6174
    .line 6175
    goto/16 :goto_81

    .line 6176
    .line 6177
    :catchall_56
    move-exception v0

    .line 6178
    move-object v3, v0

    .line 6179
    goto/16 :goto_80

    .line 6180
    .line 6181
    :catchall_57
    move-exception v0

    .line 6182
    move-object v3, v0

    .line 6183
    const/4 v1, 0x0

    .line 6184
    :goto_80
    const-string/jumbo v8, "starting MediaRouterService"

    .line 6185
    .line 6186
    .line 6187
    invoke-static {v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6188
    .line 6189
    .line 6190
    :goto_81
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6191
    .line 6192
    .line 6193
    const-string v3, "SemInputDeviceManagerService SystemReady"

    .line 6194
    .line 6195
    invoke-virtual {v15, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6196
    .line 6197
    .line 6198
    :try_start_7c
    const-string v3, "SystemServer"

    .line 6199
    .line 6200
    const-string v8, "SemInputDeviceManagerService SystemReady loader"

    .line 6201
    .line 6202
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6203
    .line 6204
    .line 6205
    const-string/jumbo v3, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 6206
    .line 6207
    .line 6208
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6209
    .line 6210
    .line 6211
    move-result-object v3

    .line 6212
    const-string/jumbo v8, "systemReady"
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_59

    .line 6213
    .line 6214
    .line 6215
    move-object/from16 v25, v1

    .line 6216
    .line 6217
    const/4 v12, 0x0

    .line 6218
    :try_start_7d
    new-array v1, v12, [Ljava/lang/Class;

    .line 6219
    .line 6220
    const/4 v1, 0x0

    .line 6221
    invoke-virtual {v3, v8, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6222
    .line 6223
    .line 6224
    move-result-object v8

    .line 6225
    invoke-virtual {v8, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_58

    .line 6226
    .line 6227
    .line 6228
    goto/16 :goto_84

    .line 6229
    .line 6230
    :catchall_58
    move-exception v0

    .line 6231
    :goto_82
    move-object v1, v0

    .line 6232
    goto/16 :goto_83

    .line 6233
    .line 6234
    :catchall_59
    move-exception v0

    .line 6235
    move-object/from16 v25, v1

    .line 6236
    .line 6237
    goto :goto_82

    .line 6238
    :goto_83
    const-string v3, "Failed To Call SemInputDeviceManagerService SystemReady loader "

    .line 6239
    .line 6240
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6241
    .line 6242
    .line 6243
    :goto_84
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6244
    .line 6245
    .line 6246
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6247
    .line 6248
    const-string v3, "android.hardware.biometrics.face"

    .line 6249
    .line 6250
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6251
    .line 6252
    .line 6253
    move-result v1

    .line 6254
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6255
    .line 6256
    const-string v8, "android.hardware.biometrics.iris"

    .line 6257
    .line 6258
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6259
    .line 6260
    .line 6261
    move-result v3

    .line 6262
    iget-object v8, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6263
    .line 6264
    const-string v12, "android.hardware.fingerprint"

    .line 6265
    .line 6266
    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6267
    .line 6268
    .line 6269
    move-result v8

    .line 6270
    if-eqz v1, :cond_5e

    .line 6271
    .line 6272
    const-string v1, "StartFaceSensor"

    .line 6273
    .line 6274
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6275
    .line 6276
    .line 6277
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6278
    .line 6279
    const-class v12, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6280
    .line 6281
    invoke-virtual {v1, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6282
    .line 6283
    .line 6284
    move-result-object v1

    .line 6285
    check-cast v1, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6286
    .line 6287
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6288
    .line 6289
    .line 6290
    :cond_5e
    if-eqz v3, :cond_5f

    .line 6291
    .line 6292
    const-string v1, "StartIrisSensor"

    .line 6293
    .line 6294
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6295
    .line 6296
    .line 6297
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6298
    .line 6299
    const-class v3, Lcom/android/server/biometrics/sensors/iris/IrisService;

    .line 6300
    .line 6301
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6302
    .line 6303
    .line 6304
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6305
    .line 6306
    .line 6307
    :cond_5f
    if-eqz v8, :cond_60

    .line 6308
    .line 6309
    const-string v1, "StartFingerprintSensor"

    .line 6310
    .line 6311
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6312
    .line 6313
    .line 6314
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6315
    .line 6316
    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6317
    .line 6318
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6319
    .line 6320
    .line 6321
    move-result-object v1

    .line 6322
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 6323
    .line 6324
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6325
    .line 6326
    .line 6327
    :cond_60
    const-string v1, "StartBiometricService"

    .line 6328
    .line 6329
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6330
    .line 6331
    .line 6332
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6333
    .line 6334
    const-class v3, Lcom/android/server/biometrics/BiometricService;

    .line 6335
    .line 6336
    const-string v8, "StartAuthService"

    .line 6337
    .line 6338
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6339
    .line 6340
    .line 6341
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6342
    .line 6343
    const-class v3, Lcom/android/server/biometrics/AuthService;

    .line 6344
    .line 6345
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6346
    .line 6347
    .line 6348
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6349
    .line 6350
    .line 6351
    invoke-static {}, Landroid/adaptiveauth/Flags;->enableAdaptiveAuth()Z

    .line 6352
    .line 6353
    .line 6354
    move-result v1

    .line 6355
    if-eqz v1, :cond_61

    .line 6356
    .line 6357
    const-string v1, "StartAdaptiveAuthService"

    .line 6358
    .line 6359
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6360
    .line 6361
    .line 6362
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6363
    .line 6364
    const-class v3, Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    .line 6365
    .line 6366
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6367
    .line 6368
    .line 6369
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6370
    .line 6371
    .line 6372
    :cond_61
    if-nez v11, :cond_62

    .line 6373
    .line 6374
    const-string v1, "StartDynamicCodeLoggingService"

    .line 6375
    .line 6376
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6377
    .line 6378
    .line 6379
    :try_start_7e
    invoke-static {v14}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_5a

    .line 6380
    .line 6381
    .line 6382
    goto/16 :goto_85

    .line 6383
    .line 6384
    :catchall_5a
    move-exception v0

    .line 6385
    move-object v1, v0

    .line 6386
    const-string/jumbo v3, "starting DynamicCodeLoggingService"

    .line 6387
    .line 6388
    .line 6389
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6390
    .line 6391
    .line 6392
    :goto_85
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6393
    .line 6394
    .line 6395
    :cond_62
    if-nez v11, :cond_63

    .line 6396
    .line 6397
    const-string v1, "StartPruneInstantAppsJobService"

    .line 6398
    .line 6399
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6400
    .line 6401
    .line 6402
    :try_start_7f
    invoke-static {v14}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_5b

    .line 6403
    .line 6404
    .line 6405
    goto/16 :goto_86

    .line 6406
    .line 6407
    :catchall_5b
    move-exception v0

    .line 6408
    move-object v1, v0

    .line 6409
    const-string v3, "StartPruneInstantAppsJobService"

    .line 6410
    .line 6411
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6412
    .line 6413
    .line 6414
    :goto_86
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6415
    .line 6416
    .line 6417
    :cond_63
    const-string v1, "StartSmartThingsService"

    .line 6418
    .line 6419
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6420
    .line 6421
    .line 6422
    new-instance v1, Lcom/android/server/smartthings/SmartThingsService;

    .line 6423
    .line 6424
    invoke-direct {v1, v14}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    .line 6425
    .line 6426
    .line 6427
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6428
    .line 6429
    .line 6430
    const-string v1, "StartSelinuxAuditLogsService"

    .line 6431
    .line 6432
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6433
    .line 6434
    .line 6435
    :try_start_80
    invoke-static {v14}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_5c

    .line 6436
    .line 6437
    .line 6438
    goto/16 :goto_87

    .line 6439
    .line 6440
    :catchall_5c
    move-exception v0

    .line 6441
    move-object v1, v0

    .line 6442
    const-string/jumbo v3, "starting SelinuxAuditLogsService"

    .line 6443
    .line 6444
    .line 6445
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6446
    .line 6447
    .line 6448
    :goto_87
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6449
    .line 6450
    .line 6451
    const-string v1, "StartShortcutServiceLifecycle"

    .line 6452
    .line 6453
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6454
    .line 6455
    .line 6456
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6457
    .line 6458
    const-class v3, Lcom/android/server/pm/ShortcutService$Lifecycle;

    .line 6459
    .line 6460
    const-string v8, "StartLauncherAppsService"

    .line 6461
    .line 6462
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6463
    .line 6464
    .line 6465
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6466
    .line 6467
    const-class v3, Lcom/android/server/pm/LauncherAppsService;

    .line 6468
    .line 6469
    const-string v8, "StartCrossProfileAppsService"

    .line 6470
    .line 6471
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6472
    .line 6473
    .line 6474
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6475
    .line 6476
    const-class v3, Lcom/android/server/pm/CrossProfileAppsService;

    .line 6477
    .line 6478
    const-string v8, "StartPeopleService"

    .line 6479
    .line 6480
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6481
    .line 6482
    .line 6483
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6484
    .line 6485
    const-class v3, Lcom/android/server/people/PeopleService;

    .line 6486
    .line 6487
    const-string v8, "StartMediaMetricsManager"

    .line 6488
    .line 6489
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6490
    .line 6491
    .line 6492
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6493
    .line 6494
    const-class v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 6495
    .line 6496
    const-string v8, "StartBackgroundInstallControlService"

    .line 6497
    .line 6498
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6499
    .line 6500
    .line 6501
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6502
    .line 6503
    const-class v3, Lcom/android/server/pm/BackgroundInstallControlService;

    .line 6504
    .line 6505
    const-string v8, "StartChimeraService"

    .line 6506
    .line 6507
    invoke-static {v1, v3, v15, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 6508
    .line 6509
    .line 6510
    :try_start_81
    new-instance v1, Lcom/android/server/chimera/ChimeraManagerService;

    .line 6511
    .line 6512
    iget-object v3, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 6513
    .line 6514
    invoke-direct {v1, v14, v3}, Lcom/android/server/chimera/ChimeraManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 6515
    .line 6516
    .line 6517
    const-string v3, "ChimeraManagerService"

    .line 6518
    .line 6519
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6520
    .line 6521
    .line 6522
    const-string v1, "SystemServer"

    .line 6523
    .line 6524
    const-string v3, "ChimeraManagerService loaded"

    .line 6525
    .line 6526
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_c

    .line 6527
    .line 6528
    .line 6529
    goto/16 :goto_88

    .line 6530
    .line 6531
    :catch_c
    move-exception v0

    .line 6532
    move-object v1, v0

    .line 6533
    const-string v3, "SystemServer"

    .line 6534
    .line 6535
    const-string v8, "Failure adding ChimeraManagerService"

    .line 6536
    .line 6537
    invoke-static {v3, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6538
    .line 6539
    .line 6540
    :goto_88
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6541
    .line 6542
    .line 6543
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6544
    .line 6545
    .line 6546
    move-result-object v1

    .line 6547
    const-string v3, "android.hardware.wifi"

    .line 6548
    .line 6549
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6550
    .line 6551
    .line 6552
    move-result v1

    .line 6553
    if-eqz v1, :cond_64

    .line 6554
    .line 6555
    const-string v1, "StartOemWifi"

    .line 6556
    .line 6557
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6558
    .line 6559
    .line 6560
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6561
    .line 6562
    const-string/jumbo v3, "com.samsung.android.server.wifi.SemWifiService"

    .line 6563
    .line 6564
    .line 6565
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6566
    .line 6567
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6568
    .line 6569
    .line 6570
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6571
    .line 6572
    .line 6573
    :cond_64
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6574
    .line 6575
    .line 6576
    move-result-object v1

    .line 6577
    const-string v3, "android.hardware.wifi.direct"

    .line 6578
    .line 6579
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6580
    .line 6581
    .line 6582
    move-result v1

    .line 6583
    if-eqz v1, :cond_65

    .line 6584
    .line 6585
    const-string v1, "StartOemWifiP2p"

    .line 6586
    .line 6587
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6588
    .line 6589
    .line 6590
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6591
    .line 6592
    const-string/jumbo v3, "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

    .line 6593
    .line 6594
    .line 6595
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6596
    .line 6597
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6598
    .line 6599
    .line 6600
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6601
    .line 6602
    .line 6603
    :cond_65
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6604
    .line 6605
    .line 6606
    move-result-object v1

    .line 6607
    const-string v3, "android.hardware.wifi.aware"

    .line 6608
    .line 6609
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6610
    .line 6611
    .line 6612
    move-result v1

    .line 6613
    if-eqz v1, :cond_66

    .line 6614
    .line 6615
    const-string v1, "StartOemWifiAware"

    .line 6616
    .line 6617
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6618
    .line 6619
    .line 6620
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6621
    .line 6622
    const-string/jumbo v3, "com.samsung.android.server.wifi.aware.SemWifiAwareService"

    .line 6623
    .line 6624
    .line 6625
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6626
    .line 6627
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6628
    .line 6629
    .line 6630
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6631
    .line 6632
    .line 6633
    :cond_66
    const-string v1, "StartStdpService"

    .line 6634
    .line 6635
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6636
    .line 6637
    .line 6638
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6639
    .line 6640
    const-string/jumbo v3, "com.samsung.android.server.wifi.stdp.StandardPlusService"

    .line 6641
    .line 6642
    .line 6643
    const-string v8, "/system/framework/semwifi-service.jar"

    .line 6644
    .line 6645
    invoke-virtual {v1, v3, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 6646
    .line 6647
    .line 6648
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6649
    .line 6650
    .line 6651
    move-object/from16 v32, v5

    .line 6652
    .line 6653
    move-object/from16 v12, v16

    .line 6654
    .line 6655
    move-object/from16 v33, v25

    .line 6656
    .line 6657
    move-object/from16 v3, v26

    .line 6658
    .line 6659
    move-object/from16 v26, v6

    .line 6660
    .line 6661
    move-object/from16 v25, v7

    .line 6662
    .line 6663
    move-object/from16 v39, v28

    .line 6664
    .line 6665
    move-object/from16 v28, v4

    .line 6666
    .line 6667
    move-object/from16 v4, v39

    .line 6668
    .line 6669
    :goto_89
    const-string v1, "StartMediaProjectionManager"

    .line 6670
    .line 6671
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6672
    .line 6673
    .line 6674
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6675
    .line 6676
    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 6677
    .line 6678
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6679
    .line 6680
    .line 6681
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6682
    .line 6683
    .line 6684
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6685
    .line 6686
    const-string/jumbo v5, "att.devicehealth.support"

    .line 6687
    .line 6688
    .line 6689
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6690
    .line 6691
    .line 6692
    move-result v1

    .line 6693
    if-eqz v1, :cond_67

    .line 6694
    .line 6695
    const-string v1, "SetupDeviceHealthSupport"

    .line 6696
    .line 6697
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6698
    .line 6699
    .line 6700
    :try_start_82
    new-instance v1, Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 6701
    .line 6702
    invoke-direct {v1, v14}, Lcom/samsung/iqi/IQIServiceBrokerExt;-><init>(Landroid/content/Context;)V

    .line 6703
    .line 6704
    .line 6705
    invoke-virtual {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->startIqi()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_d

    .line 6706
    .line 6707
    .line 6708
    goto/16 :goto_8a

    .line 6709
    .line 6710
    :catch_d
    move-exception v0

    .line 6711
    move-object v1, v0

    .line 6712
    const-string v5, "SystemServer"

    .line 6713
    .line 6714
    const-string v6, "Unable to start com.samsung.iqi.IQIServiceBrokerExt"

    .line 6715
    .line 6716
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6717
    .line 6718
    .line 6719
    :goto_8a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6720
    .line 6721
    .line 6722
    goto/16 :goto_8b

    .line 6723
    .line 6724
    :cond_67
    const-string v1, "SystemServer"

    .line 6725
    .line 6726
    const-string v5, "System feature for device health not found"

    .line 6727
    .line 6728
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6729
    .line 6730
    .line 6731
    :goto_8b
    if-eqz v11, :cond_69

    .line 6732
    .line 6733
    const-string v1, "StartWearPowerService"

    .line 6734
    .line 6735
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6736
    .line 6737
    .line 6738
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6739
    .line 6740
    const-string/jumbo v5, "com.android.clockwork.power.WearPowerService"

    .line 6741
    .line 6742
    .line 6743
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6744
    .line 6745
    .line 6746
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6747
    .line 6748
    .line 6749
    const-string v1, "StartHealthService"

    .line 6750
    .line 6751
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6752
    .line 6753
    .line 6754
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6755
    .line 6756
    const-string/jumbo v5, "com.android.clockwork.healthservices.HealthService"

    .line 6757
    .line 6758
    .line 6759
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6760
    .line 6761
    .line 6762
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6763
    .line 6764
    .line 6765
    const-string v1, "StartSystemStateDisplayService"

    .line 6766
    .line 6767
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6768
    .line 6769
    .line 6770
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6771
    .line 6772
    const-string/jumbo v5, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    .line 6773
    .line 6774
    .line 6775
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6776
    .line 6777
    .line 6778
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6779
    .line 6780
    .line 6781
    const-string v1, "StartWearConnectivityService"

    .line 6782
    .line 6783
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6784
    .line 6785
    .line 6786
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6787
    .line 6788
    const-string/jumbo v5, "com.android.clockwork.connectivity.WearConnectivityService"

    .line 6789
    .line 6790
    .line 6791
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6792
    .line 6793
    .line 6794
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6795
    .line 6796
    .line 6797
    const-string v1, "StartWearDisplayService"

    .line 6798
    .line 6799
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6800
    .line 6801
    .line 6802
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6803
    .line 6804
    const-string/jumbo v5, "com.android.clockwork.display.WearDisplayService"

    .line 6805
    .line 6806
    .line 6807
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6808
    .line 6809
    .line 6810
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6811
    .line 6812
    .line 6813
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 6814
    .line 6815
    if-eqz v1, :cond_68

    .line 6816
    .line 6817
    const-string v1, "StartWearDebugService"

    .line 6818
    .line 6819
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6820
    .line 6821
    .line 6822
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6823
    .line 6824
    const-string/jumbo v5, "com.android.clockwork.debug.WearDebugService"

    .line 6825
    .line 6826
    .line 6827
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6828
    .line 6829
    .line 6830
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6831
    .line 6832
    .line 6833
    :cond_68
    const-string v1, "StartWearTimeService"

    .line 6834
    .line 6835
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6836
    .line 6837
    .line 6838
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6839
    .line 6840
    const-string/jumbo v5, "com.android.clockwork.time.WearTimeService"

    .line 6841
    .line 6842
    .line 6843
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6844
    .line 6845
    .line 6846
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6847
    .line 6848
    .line 6849
    const-string v1, "StartWearSettingsService"

    .line 6850
    .line 6851
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6852
    .line 6853
    .line 6854
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6855
    .line 6856
    const-string/jumbo v5, "com.android.clockwork.settings.WearSettingsService"

    .line 6857
    .line 6858
    .line 6859
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6860
    .line 6861
    .line 6862
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6863
    .line 6864
    .line 6865
    const-string v1, "StartWearModeService"

    .line 6866
    .line 6867
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6868
    .line 6869
    .line 6870
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6871
    .line 6872
    const-string/jumbo v5, "com.android.clockwork.modes.ModeManagerService"

    .line 6873
    .line 6874
    .line 6875
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6876
    .line 6877
    .line 6878
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6879
    .line 6880
    .line 6881
    const-string/jumbo v1, "config.enable_wristorientation"

    .line 6882
    .line 6883
    .line 6884
    const/4 v5, 0x0

    .line 6885
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6886
    .line 6887
    .line 6888
    move-result v1

    .line 6889
    if-eqz v1, :cond_69

    .line 6890
    .line 6891
    const-string v1, "StartWristOrientationService"

    .line 6892
    .line 6893
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6894
    .line 6895
    .line 6896
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6897
    .line 6898
    const-string/jumbo v5, "com.android.clockwork.wristorientation.WristOrientationService"

    .line 6899
    .line 6900
    .line 6901
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6902
    .line 6903
    .line 6904
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6905
    .line 6906
    .line 6907
    :cond_69
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6908
    .line 6909
    const-string v5, "android.software.slices_disabled"

    .line 6910
    .line 6911
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6912
    .line 6913
    .line 6914
    move-result v1

    .line 6915
    if-nez v1, :cond_6a

    .line 6916
    .line 6917
    const-string v1, "StartSliceManagerService"

    .line 6918
    .line 6919
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6920
    .line 6921
    .line 6922
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6923
    .line 6924
    const-class v5, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    .line 6925
    .line 6926
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 6927
    .line 6928
    .line 6929
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6930
    .line 6931
    .line 6932
    :cond_6a
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6933
    .line 6934
    .line 6935
    move-result-object v1

    .line 6936
    const-string v5, "android.hardware.type.embedded"

    .line 6937
    .line 6938
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 6939
    .line 6940
    .line 6941
    move-result v1

    .line 6942
    if-eqz v1, :cond_6b

    .line 6943
    .line 6944
    const-string v1, "StartIoTSystemService"

    .line 6945
    .line 6946
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6947
    .line 6948
    .line 6949
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 6950
    .line 6951
    const-string/jumbo v5, "com.android.things.server.IoTSystemService"

    .line 6952
    .line 6953
    .line 6954
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 6955
    .line 6956
    .line 6957
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6958
    .line 6959
    .line 6960
    :cond_6b
    const-string v1, "StartSpenGestureManagerService"

    .line 6961
    .line 6962
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6963
    .line 6964
    .line 6965
    :try_start_83
    const-string/jumbo v1, "spengestureservice"

    .line 6966
    .line 6967
    .line 6968
    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 6969
    .line 6970
    invoke-direct {v5, v14, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 6971
    .line 6972
    .line 6973
    invoke-static {v1, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_5d

    .line 6974
    .line 6975
    .line 6976
    goto/16 :goto_8c

    .line 6977
    .line 6978
    :catchall_5d
    move-exception v0

    .line 6979
    move-object v1, v0

    .line 6980
    const-string/jumbo v5, "starting SpenGestureManagerService"

    .line 6981
    .line 6982
    .line 6983
    invoke-static {v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6984
    .line 6985
    .line 6986
    :goto_8c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6987
    .line 6988
    .line 6989
    const-string v1, "StartSamsungNotesService"

    .line 6990
    .line 6991
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6992
    .line 6993
    .line 6994
    new-instance v1, Lcom/android/server/samsungnotes/SamsungNotesService;

    .line 6995
    .line 6996
    invoke-direct {v1, v14}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    .line 6997
    .line 6998
    .line 6999
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7000
    .line 7001
    .line 7002
    const-string v1, "StartStatsCompanion"

    .line 7003
    .line 7004
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7005
    .line 7006
    .line 7007
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7008
    .line 7009
    const-string/jumbo v5, "com.android.server.stats.StatsCompanion$Lifecycle"

    .line 7010
    .line 7011
    .line 7012
    const-string v6, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    .line 7013
    .line 7014
    invoke-virtual {v1, v5, v6}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7015
    .line 7016
    .line 7017
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7018
    .line 7019
    .line 7020
    const-string v1, "StartRebootReadinessManagerService"

    .line 7021
    .line 7022
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7023
    .line 7024
    .line 7025
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7026
    .line 7027
    const-string/jumbo v5, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    .line 7028
    .line 7029
    .line 7030
    const-string v6, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    .line 7031
    .line 7032
    invoke-virtual {v1, v5, v6}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7033
    .line 7034
    .line 7035
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7036
    .line 7037
    .line 7038
    const-string v1, "StartStatsPullAtomService"

    .line 7039
    .line 7040
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7041
    .line 7042
    .line 7043
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7044
    .line 7045
    const-class v5, Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 7046
    .line 7047
    const-string v6, "StatsBootstrapAtomService"

    .line 7048
    .line 7049
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7050
    .line 7051
    .line 7052
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7053
    .line 7054
    const-class v5, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    .line 7055
    .line 7056
    const-string v6, "StartIncidentCompanionService"

    .line 7057
    .line 7058
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7059
    .line 7060
    .line 7061
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7062
    .line 7063
    const-class v5, Lcom/android/server/incident/IncidentCompanionService;

    .line 7064
    .line 7065
    const-string v6, "StarSdkSandboxManagerService"

    .line 7066
    .line 7067
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7068
    .line 7069
    .line 7070
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7071
    .line 7072
    const-string/jumbo v5, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    .line 7073
    .line 7074
    .line 7075
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7076
    .line 7077
    .line 7078
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7079
    .line 7080
    .line 7081
    const-string v1, "StartAdServicesManagerService"

    .line 7082
    .line 7083
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7084
    .line 7085
    .line 7086
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7087
    .line 7088
    const-string/jumbo v5, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    .line 7089
    .line 7090
    .line 7091
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7092
    .line 7093
    .line 7094
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7095
    .line 7096
    .line 7097
    invoke-static {}, Lcom/android/server/flags/Flags;->enableOdpFeatureGuard()Z

    .line 7098
    .line 7099
    .line 7100
    move-result v1

    .line 7101
    if-eqz v1, :cond_6c

    .line 7102
    .line 7103
    const-string/jumbo v1, "ro.system_settings.service.odp_enabled"

    .line 7104
    .line 7105
    .line 7106
    const/4 v5, 0x1

    .line 7107
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 7108
    .line 7109
    .line 7110
    move-result v1

    .line 7111
    if-eqz v1, :cond_6d

    .line 7112
    .line 7113
    :cond_6c
    const-string v1, "StartOnDevicePersonalizationSystemService"

    .line 7114
    .line 7115
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7116
    .line 7117
    .line 7118
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7119
    .line 7120
    const-string/jumbo v5, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    .line 7121
    .line 7122
    .line 7123
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7124
    .line 7125
    .line 7126
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7127
    .line 7128
    .line 7129
    :cond_6d
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    .line 7130
    .line 7131
    .line 7132
    move-result v1

    .line 7133
    if-eqz v1, :cond_6e

    .line 7134
    .line 7135
    const-string v1, "StartProfilingCompanion"

    .line 7136
    .line 7137
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7138
    .line 7139
    .line 7140
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7141
    .line 7142
    const-string v5, "android.os.profiling.ProfilingService$Lifecycle"

    .line 7143
    .line 7144
    const-string v6, "/apex/com.android.profiling/javalib/service-profiling.jar"

    .line 7145
    .line 7146
    invoke-virtual {v1, v5, v6}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7147
    .line 7148
    .line 7149
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7150
    .line 7151
    .line 7152
    :cond_6e
    if-eqz v9, :cond_6f

    .line 7153
    .line 7154
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7155
    .line 7156
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 7157
    .line 7158
    .line 7159
    :cond_6f
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7160
    .line 7161
    const-string v5, "android.hardware.telephony"

    .line 7162
    .line 7163
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7164
    .line 7165
    .line 7166
    move-result v1

    .line 7167
    if-eqz v1, :cond_70

    .line 7168
    .line 7169
    const-string v1, "StartMmsService"

    .line 7170
    .line 7171
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7172
    .line 7173
    .line 7174
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7175
    .line 7176
    const-class v5, Lcom/android/server/MmsServiceBroker;

    .line 7177
    .line 7178
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7179
    .line 7180
    .line 7181
    move-result-object v1

    .line 7182
    check-cast v1, Lcom/android/server/MmsServiceBroker;

    .line 7183
    .line 7184
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7185
    .line 7186
    .line 7187
    move-object/from16 v34, v1

    .line 7188
    .line 7189
    goto/16 :goto_8d

    .line 7190
    .line 7191
    :cond_70
    const/16 v34, 0x0

    .line 7192
    .line 7193
    :goto_8d
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7194
    .line 7195
    const-string v5, "android.software.autofill"

    .line 7196
    .line 7197
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7198
    .line 7199
    .line 7200
    move-result v1

    .line 7201
    if-eqz v1, :cond_71

    .line 7202
    .line 7203
    const-string v1, "StartAutoFillService"

    .line 7204
    .line 7205
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7206
    .line 7207
    .line 7208
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7209
    .line 7210
    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    .line 7211
    .line 7212
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7213
    .line 7214
    .line 7215
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7216
    .line 7217
    .line 7218
    :cond_71
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7219
    .line 7220
    const-string v5, "android.software.credentials"

    .line 7221
    .line 7222
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7223
    .line 7224
    .line 7225
    move-result v1

    .line 7226
    if-eqz v1, :cond_74

    .line 7227
    .line 7228
    const-string/jumbo v1, "credential_manager"

    .line 7229
    .line 7230
    .line 7231
    const-string/jumbo v5, "enable_credential_manager"

    .line 7232
    .line 7233
    .line 7234
    const/4 v6, 0x1

    .line 7235
    invoke-static {v1, v5, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7236
    .line 7237
    .line 7238
    move-result v1

    .line 7239
    if-eqz v1, :cond_73

    .line 7240
    .line 7241
    if-eqz v11, :cond_72

    .line 7242
    .line 7243
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->wearCredentialManagerEnabled()Z

    .line 7244
    .line 7245
    .line 7246
    move-result v1

    .line 7247
    if-nez v1, :cond_72

    .line 7248
    .line 7249
    const-string v1, "SystemServer"

    .line 7250
    .line 7251
    const-string v5, "CredentialManager disabled on wear."

    .line 7252
    .line 7253
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7254
    .line 7255
    .line 7256
    goto/16 :goto_8e

    .line 7257
    .line 7258
    :cond_72
    const-string v1, "StartCredentialManagerService"

    .line 7259
    .line 7260
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7261
    .line 7262
    .line 7263
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7264
    .line 7265
    const-class v5, Lcom/android/server/credentials/CredentialManagerService;

    .line 7266
    .line 7267
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7268
    .line 7269
    .line 7270
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7271
    .line 7272
    .line 7273
    goto/16 :goto_8e

    .line 7274
    .line 7275
    :cond_73
    const-string v1, "SystemServer"

    .line 7276
    .line 7277
    const-string v5, "CredentialManager disabled."

    .line 7278
    .line 7279
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7280
    .line 7281
    .line 7282
    :cond_74
    :goto_8e
    const v1, 0x1040336

    .line 7283
    .line 7284
    .line 7285
    invoke-static {v14, v1}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 7286
    .line 7287
    .line 7288
    move-result v1

    .line 7289
    if-eqz v1, :cond_75

    .line 7290
    .line 7291
    const-string v1, "StartTranslationManagerService"

    .line 7292
    .line 7293
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7294
    .line 7295
    .line 7296
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7297
    .line 7298
    const-class v5, Lcom/android/server/translation/TranslationManagerService;

    .line 7299
    .line 7300
    invoke-virtual {v1, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7301
    .line 7302
    .line 7303
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7304
    .line 7305
    .line 7306
    goto/16 :goto_8f

    .line 7307
    .line 7308
    :cond_75
    const-string v1, "SystemServer"

    .line 7309
    .line 7310
    const-string v5, "TranslationService not defined by OEM"

    .line 7311
    .line 7312
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7313
    .line 7314
    .line 7315
    :goto_8f
    const-string v1, "StartClipboardService"

    .line 7316
    .line 7317
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7318
    .line 7319
    .line 7320
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7321
    .line 7322
    const-class v5, Lcom/android/server/clipboard/ClipboardService;

    .line 7323
    .line 7324
    const-string v6, "AppServiceManager"

    .line 7325
    .line 7326
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7327
    .line 7328
    .line 7329
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7330
    .line 7331
    const-class v5, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    .line 7332
    .line 7333
    const-string/jumbo v6, "startTracingServiceProxy"

    .line 7334
    .line 7335
    .line 7336
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7337
    .line 7338
    .line 7339
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7340
    .line 7341
    const-class v5, Lcom/android/server/tracing/TracingServiceProxy;

    .line 7342
    .line 7343
    const-string v6, "MakeLockSettingsServiceReady"

    .line 7344
    .line 7345
    invoke-static {v1, v5, v15, v6}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7346
    .line 7347
    .line 7348
    if-eqz v3, :cond_76

    .line 7349
    .line 7350
    :try_start_84
    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_5e

    .line 7351
    .line 7352
    .line 7353
    goto/16 :goto_90

    .line 7354
    .line 7355
    :catchall_5e
    move-exception v0

    .line 7356
    move-object v1, v0

    .line 7357
    const-string/jumbo v3, "making Lock Settings Service ready"

    .line 7358
    .line 7359
    .line 7360
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7361
    .line 7362
    .line 7363
    :cond_76
    :goto_90
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7364
    .line 7365
    .line 7366
    const-string v1, "StartPersonaSystemready"

    .line 7367
    .line 7368
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7369
    .line 7370
    .line 7371
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 7372
    .line 7373
    .line 7374
    move-result-object v1

    .line 7375
    const-string v3, "2.0"

    .line 7376
    .line 7377
    const-string/jumbo v5, "version"

    .line 7378
    .line 7379
    .line 7380
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7381
    .line 7382
    .line 7383
    move-result-object v1

    .line 7384
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7385
    .line 7386
    .line 7387
    move-result v1

    .line 7388
    if-eqz v1, :cond_77

    .line 7389
    .line 7390
    :try_start_85
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_5f

    .line 7391
    .line 7392
    .line 7393
    goto/16 :goto_91

    .line 7394
    .line 7395
    :catchall_5f
    move-exception v0

    .line 7396
    move-object v1, v0

    .line 7397
    const-string/jumbo v3, "making Persona Manager Service ready"

    .line 7398
    .line 7399
    .line 7400
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7401
    .line 7402
    .line 7403
    :goto_91
    :try_start_86
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_60

    .line 7404
    .line 7405
    .line 7406
    goto/16 :goto_92

    .line 7407
    .line 7408
    :catchall_60
    move-exception v0

    .line 7409
    move-object v1, v0

    .line 7410
    const-string/jumbo v3, "making KnoxMUMContainerPolicy Service ready"

    .line 7411
    .line 7412
    .line 7413
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7414
    .line 7415
    .line 7416
    :cond_77
    :goto_92
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7417
    .line 7418
    .line 7419
    const-string v1, "StartBootPhaseLockSettingsReady"

    .line 7420
    .line 7421
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7422
    .line 7423
    .line 7424
    const-string v1, "SystemServer"

    .line 7425
    .line 7426
    const-string v3, "!@Boot_EBS_D: PHASE_LOCK_SETTINGS_READY"

    .line 7427
    .line 7428
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7429
    .line 7430
    .line 7431
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7432
    .line 7433
    const/16 v3, 0x1e0

    .line 7434
    .line 7435
    invoke-virtual {v1, v15, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7436
    .line 7437
    .line 7438
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7439
    .line 7440
    .line 7441
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7442
    .line 7443
    iget-object v3, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 7444
    .line 7445
    iget-object v5, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 7446
    .line 7447
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7448
    .line 7449
    .line 7450
    move-result-object v6

    .line 7451
    const v7, 0x11101bd

    .line 7452
    .line 7453
    .line 7454
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 7455
    .line 7456
    .line 7457
    move-result v6

    .line 7458
    invoke-static {v1, v3, v5, v6}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    .line 7459
    .line 7460
    .line 7461
    move-result-object v7

    .line 7462
    if-eqz v7, :cond_78

    .line 7463
    .line 7464
    const-string v1, "HsumBootUserInitializer.init"

    .line 7465
    .line 7466
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7467
    .line 7468
    .line 7469
    invoke-virtual {v7, v15}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 7470
    .line 7471
    .line 7472
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7473
    .line 7474
    .line 7475
    :cond_78
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    .line 7476
    .line 7477
    .line 7478
    move-result v1

    .line 7479
    if-eqz v1, :cond_79

    .line 7480
    .line 7481
    const-string v1, "CommunalProfileInitializer.init"

    .line 7482
    .line 7483
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7484
    .line 7485
    .line 7486
    new-instance v1, Lcom/android/server/CommunalProfileInitializer;

    .line 7487
    .line 7488
    invoke-direct {v1}, Lcom/android/server/CommunalProfileInitializer;-><init>()V

    .line 7489
    .line 7490
    .line 7491
    invoke-virtual {v1, v15}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 7492
    .line 7493
    .line 7494
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7495
    .line 7496
    .line 7497
    goto/16 :goto_93

    .line 7498
    .line 7499
    :cond_79
    const-string v1, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    .line 7500
    .line 7501
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7502
    .line 7503
    .line 7504
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 7505
    .line 7506
    .line 7507
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7508
    .line 7509
    .line 7510
    :goto_93
    const-string v1, "StartBootPhaseSystemServicesReady"

    .line 7511
    .line 7512
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7513
    .line 7514
    .line 7515
    const-string v1, "SystemServer"

    .line 7516
    .line 7517
    const-string v3, "!@Boot_EBS_D: PHASE_SYSTEM_SERVICES_READY"

    .line 7518
    .line 7519
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7520
    .line 7521
    .line 7522
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7523
    .line 7524
    const/16 v3, 0x1f4

    .line 7525
    .line 7526
    invoke-virtual {v1, v15, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7527
    .line 7528
    .line 7529
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7530
    .line 7531
    .line 7532
    const-string v1, "MakeWindowManagerServiceReady"

    .line 7533
    .line 7534
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7535
    .line 7536
    .line 7537
    :try_start_87
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_61

    .line 7538
    .line 7539
    .line 7540
    goto/16 :goto_94

    .line 7541
    .line 7542
    :catchall_61
    move-exception v0

    .line 7543
    move-object v1, v0

    .line 7544
    const-string/jumbo v3, "making Window Manager Service ready"

    .line 7545
    .line 7546
    .line 7547
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7548
    .line 7549
    .line 7550
    :goto_94
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7551
    .line 7552
    .line 7553
    const-string v1, "RegisterLogMteState"

    .line 7554
    .line 7555
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7556
    .line 7557
    .line 7558
    :try_start_88
    invoke-static {v14}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_62

    .line 7559
    .line 7560
    .line 7561
    goto/16 :goto_95

    .line 7562
    .line 7563
    :catchall_62
    move-exception v0

    .line 7564
    move-object v1, v0

    .line 7565
    const-string v3, "RegisterLogMteState"

    .line 7566
    .line 7567
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7568
    .line 7569
    .line 7570
    :goto_95
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7571
    .line 7572
    .line 7573
    const-class v1, Lcom/android/server/SystemService;

    .line 7574
    .line 7575
    monitor-enter v1

    .line 7576
    :try_start_89
    sget-object v3, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 7577
    .line 7578
    if-eqz v3, :cond_7a

    .line 7579
    .line 7580
    iget-object v5, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7581
    .line 7582
    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 7583
    .line 7584
    .line 7585
    const/4 v3, 0x0

    .line 7586
    sput-object v3, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 7587
    .line 7588
    goto/16 :goto_96

    .line 7589
    .line 7590
    :catchall_63
    move-exception v0

    .line 7591
    move-object v2, v0

    .line 7592
    goto/16 :goto_a5

    .line 7593
    .line 7594
    :cond_7a
    :goto_96
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_63

    .line 7595
    if-eqz v9, :cond_7b

    .line 7596
    .line 7597
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7598
    .line 7599
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 7600
    .line 7601
    .line 7602
    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 7603
    .line 7604
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    .line 7605
    .line 7606
    .line 7607
    :cond_7b
    const/4 v1, 0x0

    .line 7608
    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 7609
    .line 7610
    .line 7611
    move-result-object v3

    .line 7612
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 7613
    .line 7614
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7615
    .line 7616
    .line 7617
    invoke-virtual {v14}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 7618
    .line 7619
    .line 7620
    move-result-object v5

    .line 7621
    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 7622
    .line 7623
    .line 7624
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7625
    .line 7626
    .line 7627
    move-result-object v5

    .line 7628
    invoke-virtual {v5, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7629
    .line 7630
    .line 7631
    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7632
    .line 7633
    .line 7634
    move-result-object v1

    .line 7635
    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    .line 7636
    .line 7637
    .line 7638
    move-result v3

    .line 7639
    if-eqz v3, :cond_7c

    .line 7640
    .line 7641
    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 7642
    .line 7643
    .line 7644
    :cond_7c
    const-string v1, "DualAppManagerService"

    .line 7645
    .line 7646
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7647
    .line 7648
    .line 7649
    :try_start_8a
    iget-object v1, v2, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 7650
    .line 7651
    if-eqz v1, :cond_7d

    .line 7652
    .line 7653
    invoke-static {}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_64

    .line 7654
    .line 7655
    .line 7656
    goto/16 :goto_99

    .line 7657
    .line 7658
    :goto_97
    move-object v1, v0

    .line 7659
    goto/16 :goto_98

    .line 7660
    .line 7661
    :catchall_64
    move-exception v0

    .line 7662
    goto :goto_97

    .line 7663
    :goto_98
    const-string/jumbo v3, "making DualAppManagerService ready"

    .line 7664
    .line 7665
    .line 7666
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7667
    .line 7668
    .line 7669
    :cond_7d
    :goto_99
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7670
    .line 7671
    .line 7672
    const-string v1, "StartPermissionPolicyService"

    .line 7673
    .line 7674
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7675
    .line 7676
    .line 7677
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7678
    .line 7679
    const-class v3, Lcom/android/server/policy/PermissionPolicyService;

    .line 7680
    .line 7681
    const-string v5, "MakePackageManagerServiceReady"

    .line 7682
    .line 7683
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 7684
    .line 7685
    .line 7686
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 7687
    .line 7688
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 7689
    .line 7690
    .line 7691
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7692
    .line 7693
    .line 7694
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 7695
    .line 7696
    .line 7697
    move-result v1

    .line 7698
    if-eqz v1, :cond_7e

    .line 7699
    .line 7700
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 7701
    .line 7702
    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 7703
    .line 7704
    .line 7705
    move-result-object v1

    .line 7706
    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 7707
    .line 7708
    .line 7709
    :cond_7e
    const-string v1, "MakeASKSManagerServiceReady"

    .line 7710
    .line 7711
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7712
    .line 7713
    .line 7714
    iget-object v1, v2, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 7715
    .line 7716
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->systemReady()V

    .line 7717
    .line 7718
    .line 7719
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7720
    .line 7721
    .line 7722
    const-string v1, "MakeDisplayManagerServiceReady"

    .line 7723
    .line 7724
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7725
    .line 7726
    .line 7727
    :try_start_8b
    iget-object v1, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 7728
    .line 7729
    invoke-virtual {v1, v9}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_65

    .line 7730
    .line 7731
    .line 7732
    goto/16 :goto_9a

    .line 7733
    .line 7734
    :catchall_65
    move-exception v0

    .line 7735
    move-object v1, v0

    .line 7736
    const-string/jumbo v3, "making Display Manager Service ready"

    .line 7737
    .line 7738
    .line 7739
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7740
    .line 7741
    .line 7742
    :goto_9a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7743
    .line 7744
    .line 7745
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7746
    .line 7747
    invoke-virtual {v1, v9}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 7748
    .line 7749
    .line 7750
    const-string v1, "StartDeviceSpecificServices"

    .line 7751
    .line 7752
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7753
    .line 7754
    .line 7755
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 7756
    .line 7757
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7758
    .line 7759
    .line 7760
    move-result-object v1

    .line 7761
    const v3, 0x10700c7

    .line 7762
    .line 7763
    .line 7764
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 7765
    .line 7766
    .line 7767
    move-result-object v1

    .line 7768
    array-length v3, v1

    .line 7769
    const/4 v5, 0x0

    .line 7770
    :goto_9b
    if-ge v5, v3, :cond_7f

    .line 7771
    .line 7772
    aget-object v6, v1, v5

    .line 7773
    .line 7774
    new-instance v8, Ljava/lang/StringBuilder;

    .line 7775
    .line 7776
    move-object/from16 v16, v1

    .line 7777
    .line 7778
    const-string v1, "StartDeviceSpecificServices "

    .line 7779
    .line 7780
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7781
    .line 7782
    .line 7783
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7784
    .line 7785
    .line 7786
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7787
    .line 7788
    .line 7789
    move-result-object v1

    .line 7790
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7791
    .line 7792
    .line 7793
    :try_start_8c
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7794
    .line 7795
    invoke-virtual {v1, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_66

    .line 7796
    .line 7797
    .line 7798
    move/from16 v21, v3

    .line 7799
    .line 7800
    goto/16 :goto_9c

    .line 7801
    .line 7802
    :catchall_66
    move-exception v0

    .line 7803
    move-object v1, v0

    .line 7804
    new-instance v8, Ljava/lang/StringBuilder;

    .line 7805
    .line 7806
    move/from16 v21, v3

    .line 7807
    .line 7808
    const-string/jumbo v3, "starting "

    .line 7809
    .line 7810
    .line 7811
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7812
    .line 7813
    .line 7814
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7815
    .line 7816
    .line 7817
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7818
    .line 7819
    .line 7820
    move-result-object v3

    .line 7821
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7822
    .line 7823
    .line 7824
    :goto_9c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7825
    .line 7826
    .line 7827
    const/4 v1, 0x1

    .line 7828
    add-int/2addr v5, v1

    .line 7829
    move-object/from16 v1, v16

    .line 7830
    .line 7831
    move/from16 v3, v21

    .line 7832
    .line 7833
    goto :goto_9b

    .line 7834
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7835
    .line 7836
    .line 7837
    const-string v1, "GameManagerService"

    .line 7838
    .line 7839
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7840
    .line 7841
    .line 7842
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7843
    .line 7844
    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    .line 7845
    .line 7846
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 7847
    .line 7848
    .line 7849
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7850
    .line 7851
    .line 7852
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7853
    .line 7854
    .line 7855
    move-result-object v1

    .line 7856
    const-string v3, "android.hardware.uwb"

    .line 7857
    .line 7858
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 7859
    .line 7860
    .line 7861
    move-result v1

    .line 7862
    if-eqz v1, :cond_80

    .line 7863
    .line 7864
    const-string v1, "UwbService"

    .line 7865
    .line 7866
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7867
    .line 7868
    .line 7869
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7870
    .line 7871
    const-string/jumbo v3, "com.android.server.uwb.UwbService"

    .line 7872
    .line 7873
    .line 7874
    const-string v5, "/apex/com.android.uwb/javalib/service-uwb.jar"

    .line 7875
    .line 7876
    invoke-virtual {v1, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7877
    .line 7878
    .line 7879
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7880
    .line 7881
    .line 7882
    :try_start_8d
    const-string v1, "SamsungUwbService"

    .line 7883
    .line 7884
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7885
    .line 7886
    .line 7887
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7888
    .line 7889
    const-string/jumbo v3, "com.samsung.android.server.uwb.SamsungUwbService"

    .line 7890
    .line 7891
    .line 7892
    const-string v5, "/system/framework/semuwb-service.jar"

    .line 7893
    .line 7894
    invoke-virtual {v1, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 7895
    .line 7896
    .line 7897
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_67

    .line 7898
    .line 7899
    .line 7900
    goto/16 :goto_9d

    .line 7901
    .line 7902
    :catchall_67
    move-exception v0

    .line 7903
    move-object v1, v0

    .line 7904
    const-string v3, "Failed to find class SamsungUwbService"

    .line 7905
    .line 7906
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7907
    .line 7908
    .line 7909
    :cond_80
    :goto_9d
    const-string v1, "StartBootPhaseDeviceSpecificServicesReady"

    .line 7910
    .line 7911
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7912
    .line 7913
    .line 7914
    const-string v1, "SystemServer"

    .line 7915
    .line 7916
    const-string v3, "!@Boot_EBS_D: PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    .line 7917
    .line 7918
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7919
    .line 7920
    .line 7921
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7922
    .line 7923
    const/16 v3, 0x208

    .line 7924
    .line 7925
    invoke-virtual {v1, v15, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 7926
    .line 7927
    .line 7928
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7929
    .line 7930
    .line 7931
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    .line 7932
    .line 7933
    .line 7934
    move-result v1

    .line 7935
    if-eqz v1, :cond_81

    .line 7936
    .line 7937
    const-string v1, "MdfService"

    .line 7938
    .line 7939
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7940
    .line 7941
    .line 7942
    :try_start_8e
    const-string v1, "MdfService"

    .line 7943
    .line 7944
    new-instance v3, Lcom/android/server/MdfService;

    .line 7945
    .line 7946
    invoke-direct {v3, v14}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    .line 7947
    .line 7948
    .line 7949
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_68

    .line 7950
    .line 7951
    .line 7952
    goto/16 :goto_9e

    .line 7953
    .line 7954
    :catchall_68
    move-exception v0

    .line 7955
    move-object v1, v0

    .line 7956
    const-string v3, "SystemServer"

    .line 7957
    .line 7958
    const-string v5, "Failed to add MdfService"

    .line 7959
    .line 7960
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7961
    .line 7962
    .line 7963
    :goto_9e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7964
    .line 7965
    .line 7966
    goto/16 :goto_9f

    .line 7967
    .line 7968
    :cond_81
    const-string v1, "SystemServer"

    .line 7969
    .line 7970
    const-string v3, "MdfService is ready"

    .line 7971
    .line 7972
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7973
    .line 7974
    .line 7975
    :goto_9f
    const-string v1, "StartSafetyCenterService"

    .line 7976
    .line 7977
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7978
    .line 7979
    .line 7980
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7981
    .line 7982
    const-string/jumbo v3, "com.android.safetycenter.SafetyCenterService"

    .line 7983
    .line 7984
    .line 7985
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 7986
    .line 7987
    .line 7988
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7989
    .line 7990
    .line 7991
    const-string v1, "AppSearchModule"

    .line 7992
    .line 7993
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7994
    .line 7995
    .line 7996
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7997
    .line 7998
    const-string/jumbo v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    .line 7999
    .line 8000
    .line 8001
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8002
    .line 8003
    .line 8004
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8005
    .line 8006
    .line 8007
    const-string/jumbo v1, "ro.config.isolated_compilation_enabled"

    .line 8008
    .line 8009
    .line 8010
    const/4 v3, 0x0

    .line 8011
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8012
    .line 8013
    .line 8014
    move-result v1

    .line 8015
    if-eqz v1, :cond_82

    .line 8016
    .line 8017
    const-string v1, "IsolatedCompilationService"

    .line 8018
    .line 8019
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8020
    .line 8021
    .line 8022
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8023
    .line 8024
    const-string/jumbo v3, "com.android.server.compos.IsolatedCompilationService"

    .line 8025
    .line 8026
    .line 8027
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8028
    .line 8029
    .line 8030
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8031
    .line 8032
    .line 8033
    :cond_82
    const-string v1, "StartMediaCommunicationService"

    .line 8034
    .line 8035
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8036
    .line 8037
    .line 8038
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8039
    .line 8040
    const-string/jumbo v3, "com.android.server.media.MediaCommunicationService"

    .line 8041
    .line 8042
    .line 8043
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8044
    .line 8045
    .line 8046
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8047
    .line 8048
    .line 8049
    const-string v1, "AppCompatOverridesService"

    .line 8050
    .line 8051
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8052
    .line 8053
    .line 8054
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8055
    .line 8056
    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    .line 8057
    .line 8058
    const-string v5, "HealthConnectManagerService"

    .line 8059
    .line 8060
    invoke-static {v1, v3, v15, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    .line 8061
    .line 8062
    .line 8063
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8064
    .line 8065
    const-string/jumbo v3, "com.android.server.healthconnect.HealthConnectManagerService"

    .line 8066
    .line 8067
    .line 8068
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8069
    .line 8070
    .line 8071
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8072
    .line 8073
    .line 8074
    const-string v1, "SemContinuityService"

    .line 8075
    .line 8076
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8077
    .line 8078
    .line 8079
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8080
    .line 8081
    const-class v3, Lcom/samsung/android/server/continuity/SemContinuityService;

    .line 8082
    .line 8083
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 8084
    .line 8085
    .line 8086
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8087
    .line 8088
    .line 8089
    const-string v1, "SemContextEngineService"

    .line 8090
    .line 8091
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8092
    .line 8093
    .line 8094
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8095
    .line 8096
    .line 8097
    move-result-object v1

    .line 8098
    const-string v3, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    .line 8099
    .line 8100
    const/4 v5, 0x0

    .line 8101
    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 8102
    .line 8103
    .line 8104
    move-result v1

    .line 8105
    if-nez v1, :cond_83

    .line 8106
    .line 8107
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8108
    .line 8109
    .line 8110
    move-result-object v1

    .line 8111
    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION"

    .line 8112
    .line 8113
    const/4 v5, -0x1

    .line 8114
    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 8115
    .line 8116
    .line 8117
    move-result v1

    .line 8118
    const/16 v3, 0x4f1b

    .line 8119
    .line 8120
    if-lt v1, v3, :cond_83

    .line 8121
    .line 8122
    const-string v1, "SemContextEngineService"

    .line 8123
    .line 8124
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8125
    .line 8126
    .line 8127
    :try_start_8f
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8128
    .line 8129
    const-class v3, Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 8130
    .line 8131
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_69

    .line 8132
    .line 8133
    .line 8134
    goto/16 :goto_a0

    .line 8135
    .line 8136
    :catchall_69
    move-exception v0

    .line 8137
    move-object v1, v0

    .line 8138
    const-string/jumbo v3, "starting SemContextEngineService"

    .line 8139
    .line 8140
    .line 8141
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8142
    .line 8143
    .line 8144
    :goto_a0
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8145
    .line 8146
    .line 8147
    :cond_83
    :try_start_90
    const-string v1, "SemHwrsService"

    .line 8148
    .line 8149
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8150
    .line 8151
    .line 8152
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8153
    .line 8154
    const-class v3, Lcom/samsung/android/server/hwrs/SemHwrsService;

    .line 8155
    .line 8156
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 8157
    .line 8158
    .line 8159
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_6a

    .line 8160
    .line 8161
    .line 8162
    goto/16 :goto_a1

    .line 8163
    .line 8164
    :catchall_6a
    move-exception v0

    .line 8165
    move-object v1, v0

    .line 8166
    const-string v3, "SemHwrsService startService failed"

    .line 8167
    .line 8168
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8169
    .line 8170
    .line 8171
    :goto_a1
    iget-object v1, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8172
    .line 8173
    const-string v3, "android.software.device_lock"

    .line 8174
    .line 8175
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8176
    .line 8177
    .line 8178
    move-result v1

    .line 8179
    if-eqz v1, :cond_84

    .line 8180
    .line 8181
    const-string v1, "DeviceLockService"

    .line 8182
    .line 8183
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8184
    .line 8185
    .line 8186
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8187
    .line 8188
    const-string/jumbo v3, "com.android.server.devicelock.DeviceLockService"

    .line 8189
    .line 8190
    .line 8191
    const-string v5, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    .line 8192
    .line 8193
    invoke-virtual {v1, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    .line 8194
    .line 8195
    .line 8196
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8197
    .line 8198
    .line 8199
    :cond_84
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 8200
    .line 8201
    .line 8202
    move-result v1

    .line 8203
    if-nez v1, :cond_85

    .line 8204
    .line 8205
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 8206
    .line 8207
    .line 8208
    move-result v1

    .line 8209
    if-eqz v1, :cond_86

    .line 8210
    .line 8211
    :cond_85
    const-string v1, "StartSensitiveContentProtectionManager"

    .line 8212
    .line 8213
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8214
    .line 8215
    .line 8216
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8217
    .line 8218
    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 8219
    .line 8220
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 8221
    .line 8222
    .line 8223
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8224
    .line 8225
    .line 8226
    :cond_86
    const-string v1, "SystemServer"

    .line 8227
    .line 8228
    const-string/jumbo v3, "start samsung apex services"

    .line 8229
    .line 8230
    .line 8231
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8232
    .line 8233
    .line 8234
    const-string v1, "SemPrivilegeManagerService"

    .line 8235
    .line 8236
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8237
    .line 8238
    .line 8239
    iget-object v1, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8240
    .line 8241
    const-string/jumbo v3, "com.android.server.privilege.SemPrivilegeManagerService"

    .line 8242
    .line 8243
    .line 8244
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 8245
    .line 8246
    .line 8247
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8248
    .line 8249
    .line 8250
    const-string v1, "SystemServer"

    .line 8251
    .line 8252
    const-string/jumbo v3, "finish samsung apex services"

    .line 8253
    .line 8254
    .line 8255
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8256
    .line 8257
    .line 8258
    const-string/jumbo v1, "sys.config.hardcoder.enable"

    .line 8259
    .line 8260
    .line 8261
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8262
    .line 8263
    .line 8264
    move-result-object v1

    .line 8265
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 8266
    .line 8267
    .line 8268
    move-result v1

    .line 8269
    if-eqz v1, :cond_87

    .line 8270
    .line 8271
    :try_start_91
    const-string v1, "HardcoderService"

    .line 8272
    .line 8273
    invoke-virtual {v15, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8274
    .line 8275
    .line 8276
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 8277
    .line 8278
    const-string v3, "/system/framework/HardcoderService.jar"

    .line 8279
    .line 8280
    const-class v5, Lcom/android/server/SystemServer;

    .line 8281
    .line 8282
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8283
    .line 8284
    .line 8285
    move-result-object v5

    .line 8286
    invoke-direct {v1, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 8287
    .line 8288
    .line 8289
    const-string/jumbo v3, "com.samsung.android.hardcoder.HardcoderService"

    .line 8290
    .line 8291
    .line 8292
    invoke-virtual {v1, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8293
    .line 8294
    .line 8295
    move-result-object v1

    .line 8296
    const/4 v3, 0x2

    .line 8297
    new-array v3, v3, [Ljava/lang/Class;

    .line 8298
    .line 8299
    const-class v5, Landroid/content/Context;

    .line 8300
    .line 8301
    const/4 v6, 0x0

    .line 8302
    aput-object v5, v3, v6

    .line 8303
    .line 8304
    const-class v5, Landroid/app/IActivityManager;

    .line 8305
    .line 8306
    const/4 v6, 0x1

    .line 8307
    aput-object v5, v3, v6

    .line 8308
    .line 8309
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 8310
    .line 8311
    .line 8312
    move-result-object v1

    .line 8313
    iget-object v3, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8314
    .line 8315
    filled-new-array {v14, v3}, [Ljava/lang/Object;

    .line 8316
    .line 8317
    .line 8318
    move-result-object v3

    .line 8319
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8320
    .line 8321
    .line 8322
    move-result-object v3

    .line 8323
    check-cast v3, Landroid/os/IBinder;

    .line 8324
    .line 8325
    iget-object v5, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8326
    .line 8327
    filled-new-array {v14, v5}, [Ljava/lang/Object;

    .line 8328
    .line 8329
    .line 8330
    move-result-object v5

    .line 8331
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8332
    .line 8333
    .line 8334
    const-string v1, "HardcoderService"

    .line 8335
    .line 8336
    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8337
    .line 8338
    .line 8339
    const-string v1, "SystemServer"

    .line 8340
    .line 8341
    const-string v3, "HardcoderService loaded"

    .line 8342
    .line 8343
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_6b

    .line 8344
    .line 8345
    .line 8346
    :goto_a2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8347
    .line 8348
    .line 8349
    goto/16 :goto_a3

    .line 8350
    .line 8351
    :catchall_6b
    move-exception v0

    .line 8352
    move-object v1, v0

    .line 8353
    :try_start_92
    const-string v3, "SystemServer"

    .line 8354
    .line 8355
    const-string v5, "Failed to add HardcoderService."

    .line 8356
    .line 8357
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_6c

    .line 8358
    .line 8359
    .line 8360
    goto :goto_a2

    .line 8361
    :catchall_6c
    move-exception v0

    .line 8362
    move-object v1, v0

    .line 8363
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8364
    .line 8365
    .line 8366
    throw v1

    .line 8367
    :cond_87
    :goto_a3
    const-string/jumbo v1, "connectivity"

    .line 8368
    .line 8369
    .line 8370
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8371
    .line 8372
    .line 8373
    move-result-object v1

    .line 8374
    move-object v8, v1

    .line 8375
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 8376
    .line 8377
    iget-object v1, v2, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 8378
    .line 8379
    move-object/from16 v16, v1

    .line 8380
    .line 8381
    iget-object v6, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8382
    .line 8383
    new-instance v5, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    .line 8384
    .line 8385
    move-object v1, v5

    .line 8386
    move-object/from16 v2, p0

    .line 8387
    .line 8388
    move-object/from16 v3, p1

    .line 8389
    .line 8390
    move-object/from16 v35, v5

    .line 8391
    .line 8392
    move v5, v11

    .line 8393
    move-object v11, v6

    .line 8394
    move-object v6, v14

    .line 8395
    move-object/from16 v17, v7

    .line 8396
    .line 8397
    move v7, v9

    .line 8398
    move-object v9, v12

    .line 8399
    move-object v12, v10

    .line 8400
    move-object/from16 v10, v29

    .line 8401
    .line 8402
    move-object/from16 v36, v11

    .line 8403
    .line 8404
    move-object/from16 v11, v27

    .line 8405
    .line 8406
    move-object/from16 v37, v12

    .line 8407
    .line 8408
    move-object/from16 v12, v25

    .line 8409
    .line 8410
    move-object/from16 v21, v20

    .line 8411
    .line 8412
    move-object/from16 v20, v13

    .line 8413
    .line 8414
    move-object/from16 v13, v26

    .line 8415
    .line 8416
    move-object/from16 v38, v14

    .line 8417
    .line 8418
    move-object/from16 v14, v17

    .line 8419
    .line 8420
    move-object/from16 v15, v30

    .line 8421
    .line 8422
    move-object/from16 v17, v28

    .line 8423
    .line 8424
    move-object/from16 v18, v31

    .line 8425
    .line 8426
    move-object/from16 v19, v32

    .line 8427
    .line 8428
    move-object/from16 v22, v33

    .line 8429
    .line 8430
    move-object/from16 v23, v34

    .line 8431
    .line 8432
    invoke-direct/range {v1 .. v24}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V

    .line 8433
    .line 8434
    .line 8435
    move-object/from16 v2, p1

    .line 8436
    .line 8437
    move-object/from16 v3, v35

    .line 8438
    .line 8439
    move-object/from16 v1, v36

    .line 8440
    .line 8441
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 8442
    .line 8443
    .line 8444
    const-string v1, "LockSettingsThirdPartyAppsStarted"

    .line 8445
    .line 8446
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8447
    .line 8448
    .line 8449
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 8450
    .line 8451
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8452
    .line 8453
    .line 8454
    move-result-object v1

    .line 8455
    check-cast v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 8456
    .line 8457
    if-eqz v1, :cond_88

    .line 8458
    .line 8459
    invoke-virtual {v1}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 8460
    .line 8461
    .line 8462
    :cond_88
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8463
    .line 8464
    .line 8465
    const-string v1, "StartSystemUI"

    .line 8466
    .line 8467
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8468
    .line 8469
    .line 8470
    const-string v1, "SystemServer"

    .line 8471
    .line 8472
    const-string v3, "!@Boot_EBS_F: StartSystemUI"

    .line 8473
    .line 8474
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8475
    .line 8476
    .line 8477
    move-object/from16 v3, v37

    .line 8478
    .line 8479
    move-object/from16 v1, v38

    .line 8480
    .line 8481
    :try_start_93
    invoke-static {v1, v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_6d

    .line 8482
    .line 8483
    .line 8484
    goto/16 :goto_a4

    .line 8485
    .line 8486
    :catchall_6d
    move-exception v0

    .line 8487
    move-object v1, v0

    .line 8488
    const-string/jumbo v3, "starting System UI"

    .line 8489
    .line 8490
    .line 8491
    invoke-static {v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8492
    .line 8493
    .line 8494
    :goto_a4
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8495
    .line 8496
    .line 8497
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8498
    .line 8499
    .line 8500
    return-void

    .line 8501
    :goto_a5
    :try_start_94
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_63

    .line 8502
    throw v2

    .line 8503
    :catchall_6e
    move-exception v0

    .line 8504
    move-object v2, v15

    .line 8505
    move-object v1, v0

    .line 8506
    :goto_a6
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8507
    .line 8508
    .line 8509
    throw v1

    .line 8510
    :catchall_6f
    move-exception v0

    .line 8511
    move-object v2, v15

    .line 8512
    move-object v1, v0

    .line 8513
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8514
    .line 8515
    .line 8516
    throw v1

    .line 8517
    :catchall_70
    move-exception v0

    .line 8518
    move-object v1, v0

    .line 8519
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 8520
    .line 8521
    .line 8522
    move-result-object v2

    .line 8523
    const-string/jumbo v3, "dexopt"

    .line 8524
    .line 8525
    .line 8526
    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 8527
    .line 8528
    .line 8529
    throw v1

    .line 8530
    :catchall_71
    move-exception v0

    .line 8531
    move-object v2, v15

    .line 8532
    move-object v1, v0

    .line 8533
    :goto_a7
    :try_start_95
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8534
    .line 8535
    .line 8536
    throw v1

    .line 8537
    :catchall_72
    move-exception v0

    .line 8538
    move-object v2, v15

    .line 8539
    move-object v1, v0

    .line 8540
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 8541
    .line 8542
    .line 8543
    throw v1
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_2

    .line 8544
    :goto_a8
    const-string v2, "System"

    .line 8545
    .line 8546
    const-string v3, "******************************************"

    .line 8547
    .line 8548
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8549
    .line 8550
    .line 8551
    const-string v2, "System"

    .line 8552
    .line 8553
    const-string v3, "************ Failure starting core service"

    .line 8554
    .line 8555
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8556
    .line 8557
    .line 8558
    throw v1
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p0, "SystemServer"

    .line 18
    .line 19
    const-string p1, "RotationResolverService is not configured on this device"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "StartRotationResolverService"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 31
    .line 32
    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const v0, 0x1040334

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p0, "SystemServer"

    .line 11
    .line 12
    const-string p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p1, "StartSystemCaptionsManagerService"

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 24
    .line 25
    const-class p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string v0, "StartTextToSpeechManagerService"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 7
    .line 8
    const-class v0, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "startWearableSensingService"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 8
    .line 9
    const-class v0, Lcom/android/server/wearable/WearableSensingManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
