.class public final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mAppTask:Landroid/app/IAppTask;

.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field public mDreamIsObscured:Z

.field public mDreamStartTime:J

.field public final mDreamingStartedCallback:Lcom/android/server/dreams/DreamController$DreamRecord$1;

.field public final mIsPreviewMode:Z

.field public final mName:Landroid/content/ComponentName;

.field public final mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mStopPreviousDreamsIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public mStopReason:Ljava/lang/String;

.field public final mStopStubbornDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public final mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field public final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Lcom/android/server/dreams/DreamController$DreamRecord$1;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 46
    .line 47
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 48
    .line 49
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 50
    .line 51
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 52
    .line 53
    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 54
    .line 55
    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    .line 57
    if-eqz p7, :cond_0

    .line 58
    .line 59
    invoke-virtual {p7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p0, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    const-wide/16 p1, 0x2710

    .line 65
    .line 66
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final releaseWakeLockIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
