.class Lcom/android/server/knox/dar/ddar/ta/TZNative;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDDARTZNativePtr_:J

.field public mIsLoaded:Z

.field public mProcessName:Ljava/lang/String;

.field public mRecvBufSize:I

.field public mRootName:Ljava/lang/String;

.field public mSendBufSize:I

.field public mTAId:I

.field public mTATechnology:Ljava/lang/String;


# direct methods
.method private native nativeDDARProcessTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;)Z
.end method


# virtual methods
.method public final loadTA(IJJ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v3, p4

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 8
    .line 9
    const-wide/16 v11, 0x0

    .line 10
    .line 11
    cmp-long v5, v5, v11

    .line 12
    .line 13
    const/4 v13, 0x1

    .line 14
    const/4 v14, 0x0

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const-string v0, "DualDAR:TZNative"

    .line 18
    .line 19
    const-string v1, "TZNative::loadTA called for TA that is already loaded. Call Ignored"

    .line 20
    .line 21
    new-array v2, v14, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v13

    .line 27
    :cond_0
    const-wide/32 v5, 0x7fffffff

    .line 28
    .line 29
    .line 30
    cmp-long v7, v1, v5

    .line 31
    .line 32
    if-gtz v7, :cond_3

    .line 33
    .line 34
    cmp-long v5, v3, v5

    .line 35
    .line 36
    if-lez v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    long-to-int v5, v1

    .line 40
    long-to-int v4, v3

    .line 41
    iget v6, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTAId:I

    .line 42
    .line 43
    iget v7, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mSendBufSize:I

    .line 44
    .line 45
    iget v8, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRecvBufSize:I

    .line 46
    .line 47
    iget-object v9, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v10, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v15, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    .line 52
    .line 53
    move-object/from16 v1, p0

    .line 54
    .line 55
    move/from16 v2, p1

    .line 56
    .line 57
    move v3, v5

    .line 58
    move v5, v6

    .line 59
    move v6, v7

    .line 60
    move v7, v8

    .line 61
    move-object v8, v9

    .line 62
    move-object v9, v10

    .line 63
    move-object v10, v15

    .line 64
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 69
    .line 70
    cmp-long v1, v1, v11

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    const-string v0, "DualDAR:TZNative"

    .line 75
    .line 76
    const-string v1, "Error: nativeDDARCreateTLCommunicationContext failed"

    .line 77
    .line 78
    new-array v2, v14, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return v14

    .line 84
    :cond_2
    const-class v1, Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 85
    .line 86
    monitor-enter v1

    .line 87
    :try_start_0
    iput-boolean v13, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    .line 88
    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const-string v1, "DualDAR:TZNative"

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "TZNative::loadTA: mDDARTZNativePtr_ = "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-wide v3, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 100
    .line 101
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-array v2, v14, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return v13

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw v0

    .line 117
    :cond_3
    :goto_0
    const-string v0, "DualDAR:TZNative"

    .line 118
    .line 119
    const-string/jumbo v1, "loadTA: cannot get ta offset or size"

    .line 120
    .line 121
    .line 122
    new-array v2, v14, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return v14
.end method

.method public native nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDDARDestroyTLCommunicationContext()V
.end method

.method public final processTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;)Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TZNative::processTACommand: request = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "; mDDARTZNativePtr_ = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v2, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v3, "DualDAR:TZNative"

    .line 29
    .line 30
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->nativeDDARProcessTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    const-string p0, "TZNative::processTACommand: Error: nativeDDARProcessTACommand returned failure"

    .line 45
    .line 46
    new-array p1, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_0
    return-object v0
.end method
