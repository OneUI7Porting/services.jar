.class public final Lcom/android/server/am/UserController$7;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;

.field public final synthetic val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final synthetic val$dispatchStartedTime:J

.field public final synthetic val$dispatchStartedTimeForObserver:J

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$newUserId:I

.field public final synthetic val$oldUserId:I

.field public final synthetic val$userSwitchTimeoutMs:J

.field public final synthetic val$uss:Lcom/android/server/am/UserState;

.field public final synthetic val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/String;IJJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTimeForObserver:J

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    .line 10
    .line 11
    iput-wide p8, p0, Lcom/android/server/am/UserController$7;->val$userSwitchTimeoutMs:J

    .line 12
    .line 13
    iput-object p10, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 14
    .line 15
    iput-object p11, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    iput-object p12, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    .line 18
    .line 19
    iput p13, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string p1, "User switch timeout: observer "

    .line 2
    .line 3
    const-string v0, "User switch slowed down by observer "

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "onUserSwitching-"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v2, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/android/server/am/UserController;->asyncTraceEnd(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-wide v4, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTimeForObserver:J

    .line 37
    .line 38
    sub-long/2addr v2, v4

    .line 39
    const-wide/16 v4, 0x1f4

    .line 40
    .line 41
    cmp-long v4, v2, v4

    .line 42
    .line 43
    if-lez v4, :cond_0

    .line 44
    .line 45
    const-string v4, "ActivityManager"

    .line 46
    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ": result took "

    .line 58
    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " ms to process."

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    iget-wide v4, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    .line 85
    .line 86
    sub-long/2addr v2, v4

    .line 87
    iget-wide v4, p0, Lcom/android/server/am/UserController$7;->val$userSwitchTimeoutMs:J

    .line 88
    .line 89
    cmp-long v0, v2, v4

    .line 90
    .line 91
    if-lez v0, :cond_1

    .line 92
    .line 93
    const-string v0, "ActivityManager"

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, "\'s result was received "

    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, " ms after dispatchUserSwitch."

    .line 114
    .line 115
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_2

    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 145
    .line 146
    if-ne p1, v0, :cond_2

    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    .line 151
    .line 152
    iget v2, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    .line 153
    .line 154
    iget p0, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    .line 155
    .line 156
    invoke-virtual {p1, v0, v2, p0}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 157
    .line 158
    .line 159
    :cond_2
    monitor-exit v1

    .line 160
    return-void

    .line 161
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    throw p0
.end method
