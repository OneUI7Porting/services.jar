.class public final Lcom/android/server/am/FreecessController$2;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_4

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 4
    .line 5
    iput p2, p1, Lcom/android/server/am/FreecessController;->mLastTopUid:I

    .line 6
    .line 7
    const-string p3, "FGActivity"

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object p3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 29
    .line 30
    monitor-enter p3

    .line 31
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    :try_start_2
    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->cancelRestrictState()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_4

    .line 69
    :cond_1
    :goto_1
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    monitor-enter p3

    .line 71
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    monitor-exit p3

    .line 80
    return-void

    .line 81
    :catchall_2
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 86
    .line 87
    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 88
    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .line 91
    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/android/server/am/FreecessHandler;->sendSlientAudioDeactivated(ILjava/lang/String;J)V

    .line 92
    .line 93
    .line 94
    monitor-exit p3

    .line 95
    goto :goto_5

    .line 96
    :goto_2
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 97
    throw p0

    .line 98
    :goto_3
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :try_start_5
    throw p0

    .line 100
    :goto_4
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    throw p0

    .line 102
    :cond_3
    :goto_5
    return-void

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 104
    .line 105
    iget-boolean p1, p1, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 111
    .line 112
    monitor-enter p1

    .line 113
    const p3, 0x186a0

    .line 114
    .line 115
    .line 116
    if-ge p2, p3, :cond_6

    .line 117
    .line 118
    :try_start_6
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-eqz p3, :cond_b

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :catchall_3
    move-exception p0

    .line 126
    goto :goto_9

    .line 127
    :cond_6
    :goto_6
    iget-object p3, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 128
    .line 129
    invoke-virtual {p3, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    if-nez p3, :cond_7

    .line 134
    .line 135
    monitor-exit p1

    .line 136
    return-void

    .line 137
    :cond_7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 138
    .line 139
    iget-object v1, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 140
    .line 141
    iget v2, p3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_8

    .line 148
    .line 149
    monitor-exit p1

    .line 150
    return-void

    .line 151
    :cond_8
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 152
    .line 153
    iget-object v1, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 156
    .line 157
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 158
    .line 159
    if-nez v2, :cond_a

    .line 160
    .line 161
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 162
    .line 163
    if-eqz p0, :cond_9

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_9
    const/4 p0, 0x0

    .line 167
    goto :goto_8

    .line 168
    :cond_a
    :goto_7
    const/4 p0, 0x1

    .line 169
    :goto_8
    const-string v2, "Bg"

    .line 170
    .line 171
    invoke-virtual {v0, p2, v1, v2, p0}, Lcom/android/server/am/FreecessHandler;->sendUidLcdOnQuickFzMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_b

    .line 179
    .line 180
    iget-object p0, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 181
    .line 182
    iget p2, p3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 183
    .line 184
    invoke-virtual {v0, p2, p0}, Lcom/android/server/am/FreecessHandler;->sendSlientAudioActiveTrigger(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_b
    monitor-exit p1

    .line 188
    return-void

    .line 189
    :goto_9
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 190
    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const v0, 0x186a0

    .line 5
    .line 6
    .line 7
    if-ge p2, v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :cond_1
    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 33
    .line 34
    invoke-virtual {p2, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    monitor-exit p1

    .line 41
    return-void

    .line 42
    :cond_2
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 43
    .line 44
    :cond_3
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
