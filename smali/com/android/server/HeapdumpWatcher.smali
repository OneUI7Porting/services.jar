.class public final Lcom/android/server/HeapdumpWatcher;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final THRESHOLD_OF_HEAPSIZE:D

.field public static mContext:Landroid/content/Context;

.field public static mHeapDumped:Z


# instance fields
.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllocatedMemory:J

.field public mOverThresholdCnt:I

.field public mScreenOffCount:I

.field public final softdog:Lcom/android/server/WatchdogSoftdog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    const-wide v2, 0x3feeb851eb851eb8L    # 0.96

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double/2addr v0, v2

    .line 16
    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    .line 17
    .line 18
    div-double/2addr v0, v2

    .line 19
    sput-wide v0, Lcom/android/server/HeapdumpWatcher;->THRESHOLD_OF_HEAPSIZE:D

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/android/server/HeapdumpWatcher;->mHeapDumped:Z

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/WatchdogSoftdog;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x64

    .line 23
    .line 24
    iput v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 28
    .line 29
    sput-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 30
    .line 31
    :cond_0
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/HeapdumpWatcher;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public checkBackgroundAudio()Z
    .locals 5

    .line 1
    sget-object p0, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "audio"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/media/AudioManager;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "Watchdog:HeapdumpWatcher"

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "Failed to get AudioManager"

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x2

    .line 52
    if-eq v3, v4, :cond_1

    .line 53
    .line 54
    const/4 v4, 0x6

    .line 55
    if-ne v3, v4, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "!@ audio is active by uid : "

    .line 67
    .line 68
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v0

    .line 86
    :cond_3
    const/4 p0, 0x1

    .line 87
    return p0
.end method

.method public checkCall()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "telecom"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string p0, "Watchdog:HeapdumpWatcher"

    .line 21
    .line 22
    const-string v0, "!@ In call"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public checkScreenOff()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "power"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/PowerManager;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "Watchdog:HeapdumpWatcher"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string/jumbo v0, "screen is on now"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput v2, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 37
    .line 38
    :goto_0
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 39
    .line 40
    const/4 v4, 0x2

    .line 41
    if-gt v0, v4, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "!@ screen is on now (or off few seconds ago) cnt : "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 51
    .line 52
    invoke-static {v0, p0, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_1
    return v1
.end method

.method public final makeHeapDump()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/HeapdumpWatcher;->mHeapDumped:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/HeapdumpWatcher;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isHeapDumpAllowed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/android/server/HeapdumpWatcher;->mHeapDumped:Z

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/HeapdumpWatcher$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/HeapdumpWatcher$1;-><init>(Lcom/android/server/HeapdumpWatcher;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
