.class public final Lcom/android/server/wm/DexController$FindTaskResult;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mIsRootTask:Z

.field public final mProcessName:Ljava/lang/String;

.field public final mTargetDisplayId:I

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/DexController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->this$0:Lcom/android/server/wm/DexController;

    .line 5
    .line 6
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput-boolean p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mIsRootTask:Z

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mUid:I

    .line 27
    .line 28
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mProcessName:Ljava/lang/String;

    .line 31
    .line 32
    iput p3, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTargetDisplayId:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    .line 1
    const-string/jumbo v0, "reparentToDisplayAndStartPendingActivity"

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mIsRootTask:Z

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->this$0:Lcom/android/server/wm/DexController;

    .line 11
    .line 12
    iget-object v3, v1, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v5, v3, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v5, v4

    .line 23
    :goto_0
    iget p0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTargetDisplayId:I

    .line 24
    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    if-eq v3, v2, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v1, v2, p0, v0, v4}, Lcom/android/server/wm/DexController;->moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v1, v2, p0, v0, v5}, Lcom/android/server/wm/DexController;->moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-direct {v3, v4, p0, v1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    const/4 v3, -0x1

    .line 60
    if-le p0, v3, :cond_4

    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "FindTaskResult_execute: performClear(Ndx="

    .line 65
    .line 66
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "), "

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", reason=reparentToDisplayAndStartPendingActivity"

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string v1, "DexController"

    .line 90
    .line 91
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    invoke-virtual {v2, v0, p0}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " targetDisplayId="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mTargetDisplayId:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " isRoot="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/wm/DexController$FindTaskResult;->mIsRootTask:Z

    .line 30
    .line 31
    const-string/jumbo v1, "}"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
