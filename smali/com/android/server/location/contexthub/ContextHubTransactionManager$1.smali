.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 2
    .line 3
    iput p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    .line 4
    .line 5
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v1, p2

    .line 12
    move-wide v3, p3

    .line 13
    move-object v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onTransact()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "RemoteException while trying to load nanoapp with ID 0x"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "ContextHubTransactionManager"

    .line 42
    .line 43
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final onTransactionComplete(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v5, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    move v7, v6

    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    const/16 v7, 0x8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    const/4 v7, 0x7

    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const/4 v7, 0x6

    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    const/4 v7, 0x5

    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    const/4 v7, 0x4

    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    const/4 v7, 0x3

    .line 43
    goto :goto_0

    .line 44
    :pswitch_6
    const/4 v7, 0x2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v7, v5

    .line 47
    :goto_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const/16 v9, 0x191

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v10, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    .line 83
    .line 84
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppBinary;->getBinary()[B

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    array-length v3, v3

    .line 103
    int-to-long v14, v3

    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    move/from16 v16, v6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move/from16 v16, v5

    .line 110
    .line 111
    :goto_1
    const-string v3, "Unable to add nanoapp load event to queue: "

    .line 112
    .line 113
    monitor-enter v2

    .line 114
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v8

    .line 118
    new-instance v4, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;

    .line 119
    .line 120
    move-object v7, v4

    .line 121
    invoke-direct/range {v7 .. v16}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;-><init>(JIJIJZ)V

    .line 122
    .line 123
    .line 124
    iget-object v5, v2, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 125
    .line 126
    invoke-virtual {v5, v4}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_2

    .line 131
    .line 132
    const-string v5, "ContextHubEventLogger"

    .line 133
    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    goto :goto_4

    .line 152
    :cond_2
    :goto_2
    monitor-exit v2

    .line 153
    if-nez v1, :cond_3

    .line 154
    .line 155
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 158
    .line 159
    iget v3, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    .line 160
    .line 161
    iget-object v4, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    iget-object v6, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 168
    .line 169
    invoke-virtual {v6}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/location/contexthub/NanoAppStateManager;->addNanoAppInstance(IIJ)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 177
    .line 178
    invoke-interface {v2, v1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 179
    .line 180
    .line 181
    if-nez v1, :cond_4

    .line 182
    .line 183
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 186
    .line 187
    iget v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$contextHubId:I

    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;

    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;-><init>(JI)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "ContextHubTransactionManager"

    .line 210
    .line 211
    const-string v2, "RemoteException while calling client onTransactionComplete"

    .line 212
    .line 213
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .line 215
    .line 216
    :cond_4
    :goto_3
    return-void

    .line 217
    :goto_4
    monitor-exit v2

    .line 218
    throw v0

    .line 219
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
