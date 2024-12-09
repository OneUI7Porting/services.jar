.class public final Lcom/android/server/chimera/ppn/QuickSwap;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final QUICKSWAP_BLOCKLIST:Ljava/util/List;


# instance fields
.field public isDoingQuickSwap:Z

.field public final isDoingQuickSwapLock:Ljava/lang/Object;

.field public mGenieDump:Ljava/util/ArrayList;

.field public final mIsNandswapOn:Z

.field public mLatestAnonZramDiff:J

.field public mLatestLatency:J

.field public mLatestPageoutCnt:I

.field public mLatestQuickSwapType:I

.field public mLatestResult:Ljava/lang/String;

.field public mLatestTimestampMS:J

.field public mLatestWritebackCnt:I

.field public final mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public mPageoutCnt:I

.field public final mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

.field public final mQuickSwapThread:Lcom/android/server/ServiceThread;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mTriggeredCnt:I

.field public mWritebackCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "com.samsung.android.offline.languagemodel"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "com.android.bluetooth"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "com.google.android.aicore"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "com.samsung.android.wallpaper.magician"

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    .line 12
    .line 13
    const-string v1, "N/A"

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 44
    .line 45
    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.quickswap.nandswap"

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    .line 54
    .line 55
    const/4 p1, 0x4

    .line 56
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    .line 64
    const-string/jumbo p1, "thread pool created, size is 4"

    .line 65
    .line 66
    .line 67
    const-string v0, "QuickSwap"

    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 73
    .line 74
    const-string v0, "QuickSwapThread"

    .line 75
    .line 76
    const/16 v1, 0xa

    .line 77
    .line 78
    invoke-direct {p1, v1, v0, p2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_0

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 90
    .line 91
    .line 92
    :cond_0
    new-instance p1, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;-><init>(Lcom/android/server/chimera/ppn/QuickSwap;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    .line 98
    .line 99
    return-void
.end method

.method public static native __setRbinRefillModePath()Z
.end method

.method public static native __writeRbinRefillMode(I)Z
.end method

.method public static getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    aget-wide v1, v0, v1

    .line 8
    .line 9
    const/16 v3, 0x19

    .line 10
    .line 11
    aget-wide v3, v0, v3

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    add-long v7, v1, v3

    .line 18
    .line 19
    add-long/2addr v7, v5

    .line 20
    const-string/jumbo p0, "du: "

    .line 21
    .line 22
    .line 23
    const-string v0, " = aa "

    .line 24
    .line 25
    invoke-static {p0, v7, v8, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " + ia "

    .line 33
    .line 34
    const-string v1, " + zr "

    .line 35
    .line 36
    invoke-static {p0, v0, v3, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "QuickSwap"

    .line 40
    .line 41
    invoke-static {p0, v5, v6, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-wide v7
.end method

.method public static getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x1a

    .line 6
    .line 7
    aget-wide v0, p0, v0

    .line 8
    .line 9
    const/16 v2, 0x1b

    .line 10
    .line 11
    aget-wide v2, p0, v2

    .line 12
    .line 13
    add-long v4, v0, v2

    .line 14
    .line 15
    const-string p0, " af "

    .line 16
    .line 17
    const-string v6, " + if "

    .line 18
    .line 19
    invoke-static {p0, v0, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "QuickSwap"

    .line 24
    .line 25
    invoke-static {p0, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-wide v4
.end method


# virtual methods
.method public final doQuickSwap(IJ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "do QuickSwap execute with exception!"

    const/4 v1, 0x0

    const/16 v2, -0x384

    filled-new-array {v1, v2}, [I

    move-result-object v2

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p3, v2, p1}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(J[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    const-string p2, "QuickSwap"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    iget-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 9
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 10
    :goto_1
    iget-object p2, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p2

    .line 11
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 12
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    throw p1

    :catchall_3
    move-exception p0

    .line 14
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public final doQuickSwap(J[II)V
    .locals 41

    move-object/from16 v8, p0

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v9, p4

    .line 15
    const-string v3, " threshold: 0.1"

    const-string/jumbo v4, "storageFreeRatio: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 16
    iget-wide v5, v8, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    sub-long v5, v10, v5

    const-wide/32 v12, 0xea60

    cmp-long v5, v5, v12

    const-string v12, "QuickSwap"

    if-gtz v5, :cond_0

    .line 17
    const-string v0, "QuickSwap throttled!"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_0
    new-instance v5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 19
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    const/4 v13, 0x1

    .line 20
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v14, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v14, v6

    if-gez v6, :cond_1

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%.2f"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    .line 23
    :catch_0
    const-string v3, "Read StatFs Failed!"

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v13

    :goto_0
    const-wide/32 v6, 0x200000

    cmp-long v4, v0, v6

    .line 24
    const-string v14, ", "

    const-wide/16 v16, 0x0

    if-nez v4, :cond_4

    .line 25
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v4

    .line 26
    aget-wide v6, v4, v13

    const/16 v15, 0x1d

    move-object/from16 v18, v14

    .line 27
    aget-wide v13, v4, v15

    const/4 v15, 0x6

    move-wide/from16 v19, v10

    .line 28
    aget-wide v10, v4, v15

    sub-long v21, v6, v13

    sub-long v8, v21, v10

    const/16 v15, 0x1a

    move/from16 v21, v3

    .line 29
    aget-wide v2, v4, v15

    const/16 v15, 0x1b

    move-object/from16 v22, v5

    .line 30
    aget-wide v4, v4, v15

    move-wide/from16 v23, v10

    add-long v10, v2, v4

    add-long v25, v8, v10

    cmp-long v15, v0, v25

    if-lez v15, :cond_2

    sub-long v25, v0, v25

    move-wide/from16 v39, v4

    move-wide/from16 v4, v25

    move-wide/from16 v25, v39

    goto :goto_1

    :cond_2
    move-wide/from16 v25, v4

    move-wide/from16 v4, v16

    .line 31
    :goto_1
    const-string v15, "QuickSwap : tr: "

    move-object/from16 v27, v12

    const-string v12, " = ts "

    .line 32
    invoke-static {v15, v4, v5, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 33
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - "

    const-string v1, " ("

    .line 34
    invoke-static {v12, v0, v8, v9, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v18

    .line 36
    invoke-static {v12, v8, v13, v14, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v6, v23

    .line 37
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")  - "

    .line 38
    invoke-static {v12, v0, v10, v11, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 39
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v27

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v4, v16

    if-gtz v0, :cond_3

    return-void

    :cond_3
    move-wide v0, v4

    goto :goto_2

    :cond_4
    move/from16 v21, v3

    move-object/from16 v22, v5

    move-wide/from16 v19, v10

    move-object v9, v12

    move-object v8, v14

    .line 40
    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v10

    if-eqz v21, :cond_5

    .line 41
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v12, p0

    iget-boolean v2, v12, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    if-eqz v2, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v12, p0

    :cond_6
    const/4 v13, 0x0

    .line 42
    :goto_3
    invoke-static/range {v22 .. v22}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v14

    .line 43
    const-string v2, "QuickSwap start"

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v2, v12, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v12, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    .line 45
    new-instance v2, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 47
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 48
    iget-object v2, v12, Lcom/android/server/chimera/ppn/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 49
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 50
    invoke-virtual {v2, v5}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 51
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    move-wide/from16 p1, v0

    iget-object v0, v12, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    const-string v1, ") error."

    move-object/from16 v21, v8

    const-string v8, "Process.getRss("

    move-wide/from16 v23, v10

    const-string v10, " expected_reclaimed: "

    const-string v11, " swaprss "

    move-wide/from16 v25, v14

    const-string/jumbo v14, "reclaimCadidate: "

    const/16 v27, 0x2

    const-wide/16 v29, 0x4

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 52
    sget-object v15, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    move-object/from16 v31, v4

    iget-object v4, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_5
    move-wide/from16 v0, p1

    move-object/from16 v8, v21

    move-wide/from16 v10, v23

    move-wide/from16 v14, v25

    move-object/from16 v4, v31

    goto :goto_4

    .line 53
    :cond_7
    iget v4, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v2, v4}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v4

    const/4 v15, 0x1

    aget v4, v4, v15

    const/16 v15, -0x3e8

    if-lt v4, v15, :cond_10

    const/16 v15, 0xfa

    if-le v4, v15, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v15, p3

    move-object/from16 v32, v2

    .line 54
    array-length v2, v15

    move/from16 v33, v13

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_6
    if-ge v13, v2, :cond_a

    move/from16 v34, v2

    aget v2, v15, v13

    if-ne v4, v2, :cond_9

    const/16 v18, 0x1

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v34

    goto :goto_6

    :cond_a
    if-eqz v18, :cond_b

    move-wide/from16 v0, p1

    move-object/from16 v8, v21

    move-wide/from16 v10, v23

    move-wide/from16 v14, v25

    move-object/from16 v4, v31

    move-object/from16 v2, v32

    move/from16 v13, v33

    goto :goto_4

    .line 55
    :cond_b
    iget v2, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    move-result-object v2

    if-eqz v2, :cond_c

    .line 56
    array-length v13, v2

    const/4 v15, 0x4

    if-ge v13, v15, :cond_d

    :cond_c
    move-object/from16 v35, v5

    move-object/from16 v34, v7

    goto/16 :goto_a

    .line 57
    :cond_d
    aget-wide v12, v2, v27

    const/4 v1, 0x3

    .line 58
    aget-wide v1, v2, v1

    .line 59
    div-long v27, v1, v29

    add-long v27, v27, v12

    move-object v15, v7

    div-long v7, v27, v29

    .line 60
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v34, v15

    .line 61
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    move-object/from16 v35, v5

    const-string v5, " adj: "

    move-object/from16 v36, v0

    const-string v0, " anonrss: "

    .line 62
    invoke-static {v14, v4, v5, v0, v15}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v15, v11, v1, v2, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v15, v7, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object/from16 v36, v0

    move-object/from16 v35, v5

    move-object/from16 v34, v15

    .line 65
    :goto_7
    new-instance v0, Landroid/util/Pair;

    iget v1, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    cmp-long v2, v7, v16

    if-lez v2, :cond_f

    goto :goto_8

    :cond_f
    const-wide/16 v7, 0x1

    :goto_8
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v1, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    move-object/from16 v12, v36

    invoke-virtual {v12, v1, v4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    :goto_9
    move-object/from16 v12, p0

    move-wide/from16 v0, p1

    move-object/from16 v8, v21

    move-wide/from16 v10, v23

    move-wide/from16 v14, v25

    move-object/from16 v4, v31

    move-object/from16 v2, v32

    move/from16 v13, v33

    move-object/from16 v7, v34

    move-object/from16 v5, v35

    goto/16 :goto_4

    .line 67
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 68
    invoke-static {v0, v2, v1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move-object/from16 v12, p0

    goto/16 :goto_5

    :cond_11
    move-object v12, v0

    move-object/from16 v35, v5

    move-object/from16 v34, v7

    move/from16 v33, v13

    .line 69
    move-object/from16 v5, v35

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 70
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/proc/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_13

    .line 71
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skipped by dead process pid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 73
    invoke-static {v4, v2, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_b

    .line 74
    :cond_13
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Landroid/os/Process;->getRss(I)[J

    move-result-object v4

    if-eqz v4, :cond_14

    .line 75
    array-length v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_15

    :cond_14
    move-object/from16 p3, v0

    move-object v15, v1

    move-object v7, v14

    const/16 v4, -0x3e8

    goto :goto_d

    .line 76
    :cond_15
    aget-wide v6, v4, v27

    move-object/from16 p3, v0

    move-object v13, v1

    const/4 v5, 0x3

    .line 77
    aget-wide v0, v4, v5

    .line 78
    div-long v31, v0, v29

    add-long v31, v31, v6

    move-wide/from16 v35, v6

    div-long v5, v31, v29

    .line 79
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " adj: -1000 anonrss: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v7, v14

    move-wide/from16 v13, v35

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {v4, v11, v0, v1, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v4, v5, v6, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_c

    :cond_16
    move-object v15, v13

    move-object v7, v14

    .line 82
    :goto_c
    new-instance v0, Landroid/util/Pair;

    iget v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v4, -0x3e8

    invoke-virtual {v12, v1, v4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    move-object/from16 v0, p3

    move-object v14, v7

    move-object v1, v15

    goto/16 :goto_b

    .line 84
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object v2, v15

    .line 85
    invoke-static {v0, v1, v2, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object v1, v2

    move-object v14, v7

    goto/16 :goto_b

    .line 86
    :cond_17
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v1, p1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    move-object/from16 v7, v34

    .line 87
    invoke-virtual {v7, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 89
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 90
    const-string/jumbo v4, "reclaimSet remaining: "

    const-string v5, " expected_reclaimed "

    .line 91
    invoke-static {v4, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 92
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    cmp-long v3, v1, v16

    if-gtz v3, :cond_19

    goto :goto_f

    :cond_19
    move-object/from16 v34, v7

    goto :goto_e

    :cond_1a
    move-object/from16 v7, v34

    .line 93
    :goto_f
    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 94
    const-string/jumbo v0, "reclaimSet size 0!!"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_1b
    invoke-static/range {v22 .. v22}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v0

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v1

    if-lt v0, v1, :cond_24

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 98
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 99
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 100
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 102
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 103
    const-string v1, "QuickSwap skip: app launch "

    .line 104
    invoke-static {v11, v1, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v10, 0x1

    goto :goto_10

    .line 105
    :cond_1d
    iget-object v1, v12, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v4, :cond_1f

    .line 106
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 107
    const-string v1, "QuickSwap skip: no nandswap record"

    .line 108
    invoke-static {v11, v1, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v13, p0

    move-object/from16 v18, v7

    goto :goto_11

    :cond_1f
    move-object/from16 v13, p0

    .line 109
    :try_start_1
    iget-object v14, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v15, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v11

    move-object/from16 v18, v7

    move/from16 v7, v33

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ppn/QuickSwap;ILcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;JZ)V

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_1
    move-object/from16 v18, v7

    .line 111
    :catch_2
    const-string v1, "QuickSwap Skip: rejected submit "

    .line 112
    invoke-static {v11, v1, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object/from16 v7, v18

    goto :goto_10

    :cond_20
    move-object/from16 v13, p0

    move-object/from16 v18, v7

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 114
    :try_start_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v2, v0

    goto :goto_12

    :catch_3
    move-exception v0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QuickSwap async task execute with exception! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v0, v3, v9}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_12

    .line 117
    :cond_21
    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 118
    const-string v0, "PO=comp"

    goto :goto_13

    :cond_22
    if-eqz v10, :cond_23

    .line 119
    const-string v0, "PO=laun"

    goto :goto_13

    .line 120
    :cond_23
    const-string v0, "PO=skip"

    :goto_13
    move v7, v2

    goto :goto_14

    :cond_24
    move-object/from16 v13, p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuickSwap Skip: swap is full (free is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "PO=full"

    const/4 v7, 0x0

    .line 123
    :goto_14
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 124
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 125
    invoke-static {v1}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v2

    sub-long v14, v25, v2

    cmp-long v2, v14, v16

    if-gez v2, :cond_25

    move-wide/from16 v14, v16

    .line 126
    :cond_25
    invoke-static {v1}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v1

    sub-long v10, v23, v1

    cmp-long v1, v10, v16

    if-gez v1, :cond_26

    move-wide/from16 v10, v16

    .line 127
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 128
    const-string v3, "QuickSwap done: "

    const-string v4, ", PO "

    move/from16 v8, p4

    move-object/from16 v5, v21

    .line 129
    invoke-static {v8, v3, v5, v0, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 130
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", WB 0, anon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "KB and file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "KB in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v1, v19

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_27

    .line 132
    iget-object v2, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    const-string v3, "QuickSwap Time : "

    const-string v4, " ms Anon : "

    .line 133
    invoke-static {v3, v5, v6, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " kB File : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " kB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 136
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v2, v2, v19

    .line 137
    invoke-static {v9, v2, v3, v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v1, v4

    move-object v2, v0

    move-object v4, v9

    move-wide/from16 v37, v5

    move-object v5, v12

    move-object v6, v14

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x13d6ea

    .line 139
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 140
    iget v1, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    add-int/2addr v1, v7

    iput v1, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    .line 141
    iget v1, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    iput v1, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    .line 142
    iput v8, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    .line 143
    iput-object v0, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    .line 145
    iput v7, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    const/4 v1, 0x0

    .line 146
    iput v1, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    .line 147
    iput-wide v10, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    move-wide/from16 v1, v37

    .line 148
    iput-wide v1, v13, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "    configs"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "      threadpoolsize: 4"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "      NS: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "    stats"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "      triggerd_cnt: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    .line 43
    .line 44
    const-string v2, "      PO_cnt: "

    .line 45
    .line 46
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    .line 51
    .line 52
    const-string v3, "      WB_cnt: "

    .line 53
    .line 54
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "    latest"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "      type: "

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    .line 83
    .line 84
    const-string v4, "      Result: "

    .line 85
    .line 86
    invoke-static {v0, v1, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    .line 97
    .line 98
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    .line 103
    .line 104
    const-string v2, "      anonZramDiff: "

    .line 105
    .line 106
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    .line 111
    .line 112
    const-string v3, "      latency: "

    .line 113
    .line 114
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    .line 119
    .line 120
    const-string v3, "      time: "

    .line 121
    .line 122
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    iget-wide v3, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    .line 131
    .line 132
    sub-long/2addr v1, v3

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
