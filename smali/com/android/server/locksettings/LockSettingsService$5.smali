.class public final Lcom/android/server/locksettings/LockSettingsService$5;
.super Landroid/os/IProgressListener$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "LockSettingsService"

    .line 2
    .line 3
    const-string/jumbo p2, "unlockUser finished"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onProgress(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "unlockUser progress "

    .line 2
    .line 3
    .line 4
    const-string p1, "LockSettingsService"

    .line 5
    .line 6
    invoke-static {p2, p0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStarted(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p0, "LockSettingsService"

    .line 2
    .line 3
    const-string/jumbo p1, "unlockUser started"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method