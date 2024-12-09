.class public final Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mMaxCount:I

.field public final mPendingCmds:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final add(ILcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 22
    .line 23
    iget v4, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    move-object v2, v3

    .line 32
    :goto_0
    if-nez v2, :cond_3

    .line 33
    .line 34
    :goto_1
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 41
    .line 42
    if-lt v1, v2, :cond_2

    .line 43
    .line 44
    const-string v1, "DualDarDaemonConnector"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v4, "more buffered than allowed: "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, " >= "

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const/4 v4, 0x0

    .line 81
    new-array v5, v4, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v1, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 93
    .line 94
    const-string v2, "DualDarDaemonConnector"

    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v6, "Removing request: "

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v6, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, " ("

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v1, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    .line 117
    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ")"

    .line 122
    .line 123
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-array v4, v4, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v2, v1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    new-instance v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 137
    .line 138
    invoke-direct {v2, p1, v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_3
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 147
    .line 148
    add-int/lit8 p1, p1, 0x1

    .line 149
    .line 150
    iput p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 151
    .line 152
    if-nez p1, :cond_4

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 155
    .line 156
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    .line 161
    .line 162
    check-cast p0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 163
    .line 164
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    :catch_0
    return-void

    .line 168
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    throw p0
.end method

.method public final remove(ILjava/lang/String;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 22
    .line 23
    iget v4, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v2, v3

    .line 31
    :goto_0
    if-nez v2, :cond_2

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 34
    .line 35
    invoke-direct {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 44
    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    .line 47
    iput p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    .line 58
    .line 59
    const p1, 0xea60

    .line 60
    .line 61
    .line 62
    int-to-long p1, p1

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    check-cast p0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    move-object v3, p0

    .line 74
    :catch_0
    if-nez v3, :cond_4

    .line 75
    .line 76
    const-string p0, "DualDarDaemonConnector"

    .line 77
    .line 78
    const-string p1, "Timeout waiting for response"

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    new-array p2, p2, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-object v3

    .line 87
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p0
.end method
