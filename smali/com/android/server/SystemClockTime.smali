.class public abstract Lcom/android/server/SystemClockTime;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sNativeData:J

.field public static sTimeConfidence:I

.field public static final sTimeDebugLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/LocalLog;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 10
    .line 11
    sput v2, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/SystemClockTime;->init()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/SystemClockTime;->sNativeData:J

    .line 18
    .line 19
    return-void
.end method

.method private static native init()J
.end method

.method private static native setTime(JJ)I
.end method

.method public static setTimeAndConfidence(ILjava/lang/String;J)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/SystemClockTime;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-wide v1, Lcom/android/server/SystemClockTime;->sNativeData:J

    .line 5
    .line 6
    invoke-static {v1, v2, p2, p3}, Lcom/android/server/SystemClockTime;->setTime(JJ)I

    .line 7
    .line 8
    .line 9
    sput p0, Lcom/android/server/SystemClockTime;->sTimeConfidence:I

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method
