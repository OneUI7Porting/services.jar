.class public final Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

.field public final mDaemonLock:Ljava/lang/Object;

.field public mInputStream:Ljava/io/InputStream;

.field public mIsListening:Z

.field public mOutputStream:Ljava/io/OutputStream;

.field public final mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

.field public final mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    .line 25
    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    return-void
.end method

.method public static varargs makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-gez v1, :cond_9

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-gez v2, :cond_8

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    array-length p1, p4

    .line 32
    move p2, v0

    .line 33
    :goto_0
    if-ge p2, p1, :cond_7

    .line 34
    .line 35
    aget-object p3, p4, p2

    .line 36
    .line 37
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-gez v2, :cond_6

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ltz v2, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move v2, v0

    .line 59
    :goto_1
    const/16 v3, 0x22

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    move v5, v0

    .line 71
    :goto_2
    if-ge v5, v4, :cond_4

    .line 72
    .line 73
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ne v6, v3, :cond_2

    .line 78
    .line 79
    const-string v6, "\\\""

    .line 80
    .line 81
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    const/16 v7, 0x5c

    .line 86
    .line 87
    if-ne v6, v7, :cond_3

    .line 88
    .line 89
    const-string v6, "\\\\"

    .line 90
    .line 91
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string p1, "Unexpected argument: "

    .line 112
    .line 113
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string p1, "Arguments must be separate from command"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p1, "Unexpected command: "

    .line 136
    .line 137
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method


# virtual methods
.method public final varargs declared-synchronized executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x320

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    const-string v2, "DualDarDaemonConnector"

    .line 31
    .line 32
    const-string v4, "Missing Output stream - cannot write commands!"

    .line 33
    .line 34
    new-array v5, p3, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v2, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    :try_start_2
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, p3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    const-string v2, "DualDarDaemonConnector"

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v5, "Command Sent : sequence Number "

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string/jumbo v5, "task is "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, " Command is "

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-array v5, p3, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-static {v2, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    .line 104
    .line 105
    invoke-virtual {v2, v1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->remove(ILjava/lang/String;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-nez v2, :cond_2

    .line 110
    .line 111
    const-string p1, "DualDarDaemonConnector"

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v4, "timed-out waiting for response to "

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    new-array v1, p3, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_1

    .line 142
    .line 143
    :goto_1
    if-eqz v2, :cond_3

    .line 144
    .line 145
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 146
    .line 147
    const/16 p2, 0x1f4

    .line 148
    .line 149
    if-lt p1, p2, :cond_3

    .line 150
    .line 151
    const/16 p2, 0x258

    .line 152
    .line 153
    if-ge p1, p2, :cond_3

    .line 154
    .line 155
    const-string p1, "DualDarDaemonConnector"

    .line 156
    .line 157
    const-string/jumbo p2, "event = null or isClassClientError = true"

    .line 158
    .line 159
    .line 160
    new-array v1, p3, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {v0, p3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    monitor-exit p0

    .line 174
    return-object v2

    .line 175
    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    :catchall_1
    move-exception p1

    .line 178
    monitor-exit p0

    .line 179
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    const-string v0, "DualDarDaemonConnector"

    .line 2
    .line 3
    const-string v1, "Unhandled event \'"

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\'"

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-array v1, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "Error handling \'"

    .line 45
    .line 46
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "\': "

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-array p1, v2, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    const/4 p0, 0x1

    .line 70
    return p0
.end method

.method public final listenToSocket()V
    .locals 10

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-array v3, v0, [B

    .line 6
    .line 7
    :cond_0
    move v4, v2

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 9
    .line 10
    rsub-int v6, v4, 0x1000

    .line 11
    .line 12
    invoke-virtual {v5, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-gez v5, :cond_4

    .line 17
    .line 18
    const-string v6, "DualDarDaemonConnector"

    .line 19
    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v8, "got "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v5, " reading with start = "

    .line 35
    .line 36
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-array v5, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v6, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move v4, v2

    .line 52
    :goto_1
    if-ge v4, v0, :cond_1

    .line 53
    .line 54
    aput-byte v2, v3, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v0

    .line 68
    :try_start_1
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    :try_start_2
    const-string v3, "DualDarDaemonConnector"

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v5, "closing stream for "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-array v5, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_4

    .line 107
    :catch_1
    move-exception v3

    .line 108
    :try_start_3
    const-string v4, "DualDarDaemonConnector"

    .line 109
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v6, "Failed closing output stream: "

    .line 116
    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    new-array v5, v2, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v4, v3, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 133
    .line 134
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :try_start_4
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 136
    .line 137
    if-eqz p0, :cond_3

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catch_2
    move-exception p0

    .line 144
    const-string v0, "DualDarDaemonConnector"

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "Failed closing socket: "

    .line 149
    .line 150
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    new-array v1, v2, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_3
    return-void

    .line 166
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    throw p0

    .line 168
    :cond_4
    add-int/2addr v5, v4

    .line 169
    move v4, v2

    .line 170
    move v6, v4

    .line 171
    :goto_5
    if-ge v4, v5, :cond_7

    .line 172
    .line 173
    :try_start_6
    aget-byte v7, v3, v4

    .line 174
    .line 175
    if-nez v7, :cond_6

    .line 176
    .line 177
    new-instance v7, Ljava/lang/String;

    .line 178
    .line 179
    sub-int v8, v4, v6

    .line 180
    .line 181
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 182
    .line 183
    invoke-direct {v7, v3, v6, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 184
    .line 185
    .line 186
    const-string v6, "DualDarDaemonConnector"

    .line 187
    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v9, "rawEvent "

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    new-array v9, v2, [Ljava/lang/Object;

    .line 207
    .line 208
    invoke-static {v6, v8, v9}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    .line 210
    .line 211
    :try_start_7
    invoke-static {v7}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    iget v7, v6, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    .line 216
    .line 217
    const/16 v8, 0x258

    .line 218
    .line 219
    if-lt v7, v8, :cond_5

    .line 220
    .line 221
    const/16 v8, 0x2bc

    .line 222
    .line 223
    if-ge v7, v8, :cond_5

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_5
    iget-object v7, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    .line 227
    .line 228
    iget v8, v6, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    .line 229
    .line 230
    invoke-virtual {v7, v8, v6}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->add(ILcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catch_3
    move-exception v6

    .line 235
    :try_start_8
    const-string v7, "DualDarDaemonConnector"

    .line 236
    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v9, "Problem parsing message "

    .line 243
    .line 244
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    new-array v8, v2, [Ljava/lang/Object;

    .line 255
    .line 256
    invoke-static {v7, v6, v8}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :goto_6
    add-int/lit8 v6, v4, 0x1

    .line 260
    .line 261
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_7
    if-nez v6, :cond_8

    .line 265
    .line 266
    const-string v4, "DualDarDaemonConnector"

    .line 267
    .line 268
    const-string v7, "RCV incomplete"

    .line 269
    .line 270
    new-array v8, v2, [Ljava/lang/Object;

    .line 271
    .line 272
    invoke-static {v4, v7, v8}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    if-eq v6, v5, :cond_0

    .line 276
    .line 277
    rsub-int v4, v6, 0x1000

    .line 278
    .line 279
    invoke-static {v3, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 280
    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :goto_7
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    .line 286
    .line 287
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 288
    :goto_8
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 289
    .line 290
    monitor-enter v3

    .line 291
    :try_start_a
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 292
    .line 293
    if-eqz v4, :cond_9

    .line 294
    .line 295
    :try_start_b
    const-string v4, "DualDarDaemonConnector"

    .line 296
    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string/jumbo v6, "closing stream for "

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 309
    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    new-array v6, v2, [Ljava/lang/Object;

    .line 318
    .line 319
    invoke-static {v4, v5, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 325
    .line 326
    .line 327
    goto :goto_9

    .line 328
    :catchall_2
    move-exception p0

    .line 329
    goto :goto_b

    .line 330
    :catch_4
    move-exception v4

    .line 331
    :try_start_c
    const-string v5, "DualDarDaemonConnector"

    .line 332
    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v7, "Failed closing output stream: "

    .line 339
    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    new-array v6, v2, [Ljava/lang/Object;

    .line 351
    .line 352
    invoke-static {v5, v4, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :goto_9
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 356
    .line 357
    :cond_9
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 358
    :try_start_d
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 359
    .line 360
    if-eqz p0, :cond_a

    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 363
    .line 364
    .line 365
    goto :goto_a

    .line 366
    :catch_5
    move-exception p0

    .line 367
    const-string v1, "DualDarDaemonConnector"

    .line 368
    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v4, "Failed closing socket: "

    .line 372
    .line 373
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    new-array v2, v2, [Ljava/lang/Object;

    .line 384
    .line 385
    invoke-static {v1, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_a
    :goto_a
    throw v0

    .line 389
    :goto_b
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 390
    throw p0
.end method

.method public final openSocketLocked()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroid/net/LocalSocketAddress;

    .line 4
    .line 5
    const-string/jumbo v3, "ddar"

    .line 6
    .line 7
    .line 8
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 9
    .line 10
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    const-string v3, "DualDarDaemonConnector"

    .line 16
    .line 17
    const-string v4, "Creating socket"

    .line 18
    .line 19
    new-array v5, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroid/net/LocalSocket;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 30
    .line 31
    const-string v3, "DualDarDaemonConnector"

    .line 32
    .line 33
    const-string v4, "Connecting socket"

    .line 34
    .line 35
    new-array v5, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 62
    .line 63
    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .line 67
    .line 68
    :try_start_1
    const-string v3, "DualDARDaemonProxy"

    .line 69
    .line 70
    const-string/jumbo v4, "onDaemonConnected()"

    .line 71
    .line 72
    .line 73
    new-array v5, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :try_start_2
    iget-object v2, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 84
    .line 85
    .line 86
    monitor-exit v3

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v2

    .line 89
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :goto_0
    const-string v2, "DualDarDaemonConnector"

    .line 96
    .line 97
    const-string v3, "DualDarDaemon connected !"

    .line 98
    .line 99
    new-array v4, v1, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {v2, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_1
    move-exception v2

    .line 106
    const-string v3, "DualDarDaemonConnector"

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v5, "Caught an exception opening the socket: "

    .line 111
    .line 112
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    new-array v5, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v3, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-array v3, v1, [Ljava/lang/Object;

    .line 128
    .line 129
    const-string v4, "DualDarDaemonConnector"

    .line 130
    .line 131
    const-string v5, "Closing socket"

    .line 132
    .line 133
    invoke-static {v4, v5, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :try_start_5
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 137
    .line 138
    if-eqz v3, :cond_0

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 141
    .line 142
    .line 143
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_2
    move-exception v3

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v6, "Failed closing output stream: "

    .line 150
    .line 151
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    new-array v5, v1, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {v4, v3, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_0
    :goto_1
    :try_start_6
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 167
    .line 168
    if-eqz v3, :cond_1

    .line 169
    .line 170
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Landroid/net/LocalSocket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_3
    move-exception v0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v5, "Failed closing socket: "

    .line 180
    .line 181
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    .line 193
    invoke-static {v4, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    throw v2
.end method

.method public final run()V
    .locals 6

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const-wide/16 v0, 0x64

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->openSocketLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_2

    .line 14
    :catch_0
    :try_start_1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 15
    .line 16
    .line 17
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->listenToSocket()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v2

    .line 23
    const-string v3, "DualDarDaemonConnector"

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v5, "Error connecting to DualDAR daemon in NativeDaemonConnector: "

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v4, 0x0

    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v3, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    throw v0

    .line 51
    :cond_0
    return-void
.end method
