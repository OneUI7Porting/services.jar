.class Lcom/android/server/enterprise/mpos/MposTZNative;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mIsLoaded:Z

.field public mMOPTZNativePtr_:J

.field public final mProcessName:Ljava/lang/String;

.field public final mRecvBufSize:I

.field public final mRootName:Ljava/lang/String;

.field public final mSendBufSize:I

.field public final mTAId:I

.field public final mTATechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MposTZNative constructor: taId = "

    .line 5
    .line 6
    const-string v1, "MposTZNative"

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTAId:I

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 16
    .line 17
    iput p2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mSendBufSize:I

    .line 18
    .line 19
    iput p6, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRecvBufSize:I

    .line 20
    .line 21
    iput-object p3, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTATechnology:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRootName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mProcessName:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 29
    .line 30
    return-void
.end method

.method private native mposNativeProcessTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;Lcom/samsung/android/knox/mpos/TACommandResponse;)Z
.end method


# virtual methods
.method public final loadTA(Landroid/content/Context;IJJ)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v3, p5

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 8
    .line 9
    const-wide/16 v12, 0x0

    .line 10
    .line 11
    cmp-long v5, v5, v12

    .line 12
    .line 13
    const/4 v14, 0x1

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    const-string v0, "MposTZNative"

    .line 17
    .line 18
    const-string v1, "MposTZNative::loadTA called for TA that is already loaded. Call Ignored"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v14

    .line 24
    :cond_0
    const-wide/32 v5, 0x7fffffff

    .line 25
    .line 26
    .line 27
    cmp-long v7, v1, v5

    .line 28
    .line 29
    const/4 v15, 0x0

    .line 30
    if-gtz v7, :cond_3

    .line 31
    .line 32
    cmp-long v5, v3, v5

    .line 33
    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    long-to-int v5, v1

    .line 38
    long-to-int v6, v3

    .line 39
    iget v7, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTAId:I

    .line 40
    .line 41
    iget v8, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mSendBufSize:I

    .line 42
    .line 43
    iget v9, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRecvBufSize:I

    .line 44
    .line 45
    iget-object v10, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTATechnology:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v11, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRootName:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mProcessName:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v1, p0

    .line 52
    .line 53
    move-object/from16 v2, p1

    .line 54
    .line 55
    move/from16 v3, p2

    .line 56
    .line 57
    move-object/from16 v16, v4

    .line 58
    .line 59
    move v4, v5

    .line 60
    move v5, v6

    .line 61
    move v6, v7

    .line 62
    move v7, v8

    .line 63
    move v8, v9

    .line 64
    move-object v9, v10

    .line 65
    move-object v10, v11

    .line 66
    move-object/from16 v11, v16

    .line 67
    .line 68
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    iput-wide v1, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 73
    .line 74
    cmp-long v1, v1, v12

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    const-string v0, "MposTZNative"

    .line 79
    .line 80
    const-string v1, "Error: mposNativeCreateTLCommunicationContext failed"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v15

    .line 86
    :cond_2
    const-class v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    .line 87
    .line 88
    monitor-enter v1

    .line 89
    :try_start_0
    iput-boolean v14, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 90
    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const-string v1, "MposTZNative"

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v3, "MposTZNative::loadTA: mMOPTZNativePtr_ = "

    .line 97
    .line 98
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v3, v0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 102
    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return v14

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
    const-string v0, "MposTZNative"

    .line 118
    .line 119
    const-string v1, "MposTZNative::loadTA : cannot get ta offset or size"

    .line 120
    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return v15
.end method

.method public native mposNativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native mposNativeDestroyTLCommunicationContext()V
.end method

.method public final processTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MposTZNative::processTACommand: request = "

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
    const-string v1, "; mMOPTZNativePtr_ = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

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
    const-string v1, "MposTZNative"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandResponse;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandResponse;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeProcessTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;Lcom/samsung/android/knox/mpos/TACommandResponse;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "MposTZNative::processTACommand: ret: "

    .line 42
    .line 43
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ", response: "

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    if-nez p0, :cond_0

    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0

    .line 68
    :cond_0
    return-object v0
.end method

.method public final unloadTA()V
    .locals 6

    .line 1
    const-string v0, "MposTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    .line 2
    .line 3
    const-class v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v2, v2, v4

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeDestroyTLCommunicationContext()V

    .line 24
    .line 25
    .line 26
    iput-wide v4, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    .line 27
    .line 28
    const-string p0, "MposTZNative"

    .line 29
    .line 30
    const-string v0, "MposTZNative::unloadTA called"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    :try_start_1
    const-string v2, "MposTZNative"

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    .line 46
    .line 47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method