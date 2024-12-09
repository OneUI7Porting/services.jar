.class public final Lcom/android/server/am/FreecessHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final mFreecessController:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 5
    .line 6
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleFreecessResetAllState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const-string/jumbo v1, "reason"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v1, "FreecessController"

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "!@*** unFreezeAllPackages for watchdog : Start reset all state unfreezing!!! - MARs FW Side (reason: "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ")"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const-string v1, "SoftReset"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string/jumbo v3, "power"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/os/PowerManager;

    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-wide/16 v3, 0x7d0

    .line 69
    .line 70
    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 v1, -0x1

    .line 77
    const/4 v3, 0x2

    .line 78
    const/4 v4, 0x3

    .line 79
    invoke-virtual {p0, v4, v1, v3, v1}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_2

    .line 84
    .line 85
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 86
    .line 87
    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 89
    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    monitor-exit v1

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_2
    const-string v1, "FreecessController"

    .line 103
    .line 104
    const-string/jumbo v3, "cleanPacketMonitoredUids Exception"

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 115
    .line 116
    monitor-enter v1

    .line 117
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    :goto_3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-ge v3, v4, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 133
    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    iput v2, v4, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_5

    .line 141
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    monitor-exit v1

    .line 145
    goto :goto_6

    .line 146
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    throw p0

    .line 148
    :cond_5
    :goto_6
    const-string p0, "FreecessController"

    .line 149
    .line 150
    const-string v1, "!@*** unFreezeAllPackages for watchdog : End reset all state unfreezing!!! - MARs FW Side (reason: "

    .line 151
    .line 152
    const-string v2, ")"

    .line 153
    .line 154
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    return-void
.end method

.method public final handleFreecessResetState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const-string/jumbo v1, "packageName"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string/jumbo v2, "userId"

    .line 16
    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    if-eq v1, v3, :cond_4

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    monitor-exit v2

    .line 42
    goto :goto_4

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eq v1, v3, :cond_2

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 56
    .line 57
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iput v4, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 63
    .line 64
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v4, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v3, 0x3

    .line 74
    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 78
    .line 79
    const/16 v1, 0x1c

    .line 80
    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 86
    .line 87
    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v1, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 92
    .line 93
    iget v3, v0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 94
    .line 95
    const-string v4, "UidActive"

    .line 96
    .line 97
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iput v4, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 102
    .line 103
    :goto_1
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 106
    .line 107
    const/4 v1, 0x4

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    monitor-exit v2

    .line 112
    goto :goto_4

    .line 113
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0

    .line 115
    :cond_4
    :goto_4
    return-void
.end method

.method public final handleFreecessSettlementPackage()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v1, "packageName"

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 15
    .line 16
    const-string/jumbo v2, "userId"

    .line 17
    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 25
    .line 26
    const-string/jumbo v4, "uid"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 34
    .line 35
    const-string/jumbo v5, "packetMonitorFlag"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string/jumbo v6, "disableWakelockFlag"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget-object v6, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 52
    .line 53
    const-string/jumbo v7, "isLcdOnTrigger"

    .line 54
    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iget-object v7, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 62
    .line 63
    const-string/jumbo v9, "unrestrictJobs"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_1

    .line 71
    .line 72
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 73
    .line 74
    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 75
    .line 76
    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    .line 77
    .line 78
    .line 79
    :cond_1
    const/4 v7, 0x3

    .line 80
    const/4 v9, 0x1

    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    if-eq v4, v9, :cond_2

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 87
    .line 88
    invoke-virtual {v4, v7, v3, v8, v2}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-lez v7, :cond_4

    .line 93
    .line 94
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 95
    .line 96
    monitor-enter v7

    .line 97
    :try_start_0
    iget-object v1, v4, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    iget-object v1, v4, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    :goto_0
    monitor-exit v7

    .line 124
    goto :goto_4

    .line 125
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_4
    const-string v7, "RegException"

    .line 128
    .line 129
    invoke-virtual {v4, v1, v0, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 134
    .line 135
    invoke-virtual {v1, v7, v3, v9, v2}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-lez v4, :cond_7

    .line 140
    .line 141
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 142
    .line 143
    monitor-enter v4

    .line 144
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 145
    .line 146
    if-eqz v7, :cond_6

    .line 147
    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_6

    .line 157
    .line 158
    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_3

    .line 170
    :cond_6
    :goto_2
    monitor-exit v4

    .line 171
    goto :goto_4

    .line 172
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    throw p0

    .line 174
    :cond_7
    const-string v1, "FreecessController"

    .line 175
    .line 176
    const-string/jumbo v4, "deletePacketMonitoredUid Exception"

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :goto_4
    if-eq v5, v3, :cond_e

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 185
    .line 186
    if-ne v5, v9, :cond_8

    .line 187
    .line 188
    move v8, v9

    .line 189
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 190
    .line 191
    if-nez v1, :cond_9

    .line 192
    .line 193
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 194
    .line 195
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 200
    .line 201
    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 202
    .line 203
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 204
    .line 205
    invoke-virtual {v1, v2, v8}, Landroid/os/PowerManagerInternal;->setWakeLockEnableDisable(IZ)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-ne v1, v9, :cond_b

    .line 210
    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    if-eqz v8, :cond_a

    .line 217
    .line 218
    const-string/jumbo v1, "disable"

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    const-string/jumbo v1, "enable"

    .line 223
    .line 224
    .line 225
    :goto_5
    const-string v3, " frozen app ("

    .line 226
    .line 227
    const-string v4, ","

    .line 228
    .line 229
    invoke-static {p0, v1, v3, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v0, ") wakelock."

    .line 233
    .line 234
    const-string v1, "FreecessController"

    .line 235
    .line 236
    invoke-static {p0, v2, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_b
    const/4 v3, 0x2

    .line 241
    if-ne v1, v3, :cond_e

    .line 242
    .line 243
    const-string v1, "Wakelock"

    .line 244
    .line 245
    if-eqz v6, :cond_d

    .line 246
    .line 247
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 248
    .line 249
    if-eqz v3, :cond_c

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_c
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_d
    sget-object v3, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 261
    .line 262
    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_e

    .line 267
    .line 268
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_e
    :goto_6
    return-void
.end method

.method public final handleFreezeStateChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const-string/jumbo v1, "enabled"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string/jumbo v2, "uid"

    .line 16
    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-class v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 38
    .line 39
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 44
    .line 45
    const/16 v4, 0x15

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 53
    .line 54
    const-wide/16 v5, 0xc8

    .line 55
    .line 56
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 67
    .line 68
    iget-object v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v5, "Sending alarms blocked by MARsFreecess for uid "

    .line 86
    .line 87
    const-string v6, "AlarmManager"

    .line 88
    .line 89
    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    .line 96
    .line 97
    iget-object v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-virtual {v2, v5, v6, v4}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    monitor-exit v3

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 115
    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 119
    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    const-string/jumbo v2, "location"

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception p0

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 139
    .line 140
    if-eqz p0, :cond_5

    .line 141
    .line 142
    invoke-interface {p0, v0, v1}, Landroid/location/ILocationManager;->onFreezeStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :goto_3
    const-string v2, "FreecessController"

    .line 147
    .line 148
    const-string v3, "Error occurred while setLRs("

    .line 149
    .line 150
    const-string v4, ", "

    .line 151
    .line 152
    const-string v5, "): "

    .line 153
    .line 154
    invoke-static {v1, v3, v4, v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_4
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 10
    .line 11
    iget v3, v1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const-wide/16 v5, 0x3a98

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, -0x1

    .line 20
    packed-switch v3, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "Unexpected value: "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v1, v1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :pswitch_1
    if-eqz v2, :cond_18

    .line 46
    .line 47
    const-string/jumbo v1, "uid"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string/jumbo v3, "packageName"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 63
    .line 64
    const-string/jumbo v2, "delay"

    .line 65
    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 73
    .line 74
    const-string/jumbo v2, "mSlientAudioApp has "

    .line 75
    .line 76
    .line 77
    const-string v3, "SILENT:"

    .line 78
    .line 79
    const-string v4, " endCheckSilentAudio result :"

    .line 80
    .line 81
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    .line 83
    if-nez v7, :cond_0

    .line 84
    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 91
    .line 92
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_1

    .line 104
    .line 105
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_1
    :goto_0
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_2

    .line 129
    .line 130
    monitor-exit v7

    .line 131
    goto/16 :goto_c

    .line 132
    .line 133
    :cond_2
    iget-object v8, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Ljava/lang/Long;

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v8

    .line 149
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 151
    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    iget-object v11, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v7, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    sget-boolean v10, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 174
    .line 175
    if-eqz v10, :cond_3

    .line 176
    .line 177
    const-string v10, "ActiveMusicRecordFilter"

    .line 178
    .line 179
    new-instance v11, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v4, " check time:"

    .line 188
    .line 189
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 193
    .line 194
    .line 195
    move-result-wide v12

    .line 196
    sub-long/2addr v12, v8

    .line 197
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    goto :goto_5

    .line 210
    :cond_3
    :goto_1
    iget-object v4, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 211
    .line 212
    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :try_start_3
    const-string/jumbo v10, "true"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_4

    .line 221
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 223
    .line 224
    .line 225
    move-result-wide v10

    .line 226
    sub-long/2addr v10, v8

    .line 227
    cmp-long v5, v10, v5

    .line 228
    .line 229
    if-ltz v5, :cond_5

    .line 230
    .line 231
    iget-object v5, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 232
    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 241
    .line 242
    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 243
    .line 244
    const-string v6, "DEV"

    .line 245
    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v5, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    goto :goto_3

    .line 264
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_5

    .line 275
    .line 276
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 277
    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    :cond_5
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    :try_start_4
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 287
    .line 288
    if-eqz v1, :cond_18

    .line 289
    .line 290
    const-string v1, "ActiveMusicRecordFilter"

    .line 291
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 311
    .line 312
    .line 313
    goto/16 :goto_c

    .line 314
    .line 315
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 317
    :goto_4
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 319
    :goto_5
    const-string v1, "ActiveMusicRecordFilter"

    .line 320
    .line 321
    const-string v2, " endCheckSilentAudio exception :"

    .line 322
    .line 323
    invoke-static {v0, v2, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_c

    .line 327
    .line 328
    :pswitch_2
    if-eqz v2, :cond_18

    .line 329
    .line 330
    const-string/jumbo v1, "uid"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 338
    .line 339
    const-string/jumbo v2, "packageName"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    sget-object v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 347
    .line 348
    const-string/jumbo v3, "put "

    .line 349
    .line 350
    .line 351
    const-string v4, " startCheckSilentAudio :"

    .line 352
    .line 353
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 354
    .line 355
    if-nez v7, :cond_6

    .line 356
    .line 357
    goto/16 :goto_c

    .line 358
    .line 359
    :cond_6
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 360
    .line 361
    monitor-enter v7

    .line 362
    :try_start_9
    iget-object v8, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 363
    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    if-eqz v8, :cond_7

    .line 373
    .line 374
    monitor-exit v7

    .line 375
    goto/16 :goto_c

    .line 376
    .line 377
    :catchall_2
    move-exception v0

    .line 378
    goto/16 :goto_8

    .line 379
    .line 380
    :cond_7
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 381
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 382
    .line 383
    if-eqz v7, :cond_8

    .line 384
    .line 385
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-nez v7, :cond_8

    .line 390
    .line 391
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 392
    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-nez v7, :cond_9

    .line 402
    .line 403
    :cond_8
    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->isUsingAudio(ILjava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    if-eqz v7, :cond_18

    .line 408
    .line 409
    :cond_9
    iget-object v7, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 410
    .line 411
    monitor-enter v7

    .line 412
    :try_start_a
    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 413
    .line 414
    if-eqz v8, :cond_a

    .line 415
    .line 416
    const-string v8, "ActiveMusicRecordFilter"

    .line 417
    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :catchall_3
    move-exception v0

    .line 435
    goto :goto_7

    .line 436
    :cond_a
    :goto_6
    iget-object v4, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 437
    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_b

    .line 447
    .line 448
    iget-object v4, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 449
    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    :cond_b
    iget-object v4, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 458
    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 464
    .line 465
    .line 466
    move-result-wide v9

    .line 467
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 475
    .line 476
    if-eqz v4, :cond_c

    .line 477
    .line 478
    const-string v4, "ActiveMusicRecordFilter"

    .line 479
    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v3, " to check at : "

    .line 489
    .line 490
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget-object v3, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 494
    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    :cond_c
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 514
    iget-object v3, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 515
    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    iget-object v2, v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    sget-object v2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 537
    .line 538
    invoke-virtual {v2, v1, v0, v5, v6}, Lcom/android/server/am/FreecessHandler;->sendSlientAudioDeactivated(ILjava/lang/String;J)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_c

    .line 542
    .line 543
    :goto_7
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 544
    throw v0

    .line 545
    :goto_8
    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 546
    throw v0

    .line 547
    :pswitch_3
    if-eqz v2, :cond_18

    .line 548
    .line 549
    const-string/jumbo v1, "packageName"

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 557
    .line 558
    const-string/jumbo v3, "uid"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 562
    .line 563
    .line 564
    move-result v13

    .line 565
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 566
    .line 567
    const-string/jumbo v3, "userId"

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 571
    .line 572
    .line 573
    move-result v15

    .line 574
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 575
    .line 576
    const-string/jumbo v3, "reason"

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    if-eqz v1, :cond_18

    .line 584
    .line 585
    if-eq v13, v10, :cond_18

    .line 586
    .line 587
    if-eq v15, v10, :cond_18

    .line 588
    .line 589
    if-eqz v2, :cond_18

    .line 590
    .line 591
    iget-object v3, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 592
    .line 593
    const-string/jumbo v5, "isDelay"

    .line 594
    .line 595
    .line 596
    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    const-string v5, "FreecessController"

    .line 606
    .line 607
    const-string v6, "Try to make pkg idle for fz: ("

    .line 608
    .line 609
    :try_start_d
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 610
    .line 611
    .line 612
    move-result-object v8

    .line 613
    if-nez v8, :cond_d

    .line 614
    .line 615
    goto/16 :goto_c

    .line 616
    .line 617
    :cond_d
    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 618
    .line 619
    iget-object v10, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 620
    .line 621
    const-string v11, ", "

    .line 622
    .line 623
    if-eqz v10, :cond_f

    .line 624
    .line 625
    :try_start_e
    iget-boolean v10, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 626
    .line 627
    if-eqz v10, :cond_f

    .line 628
    .line 629
    sget-object v10, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 630
    .line 631
    iget v12, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 632
    .line 633
    invoke-virtual {v10, v12}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    if-nez v10, :cond_f

    .line 638
    .line 639
    if-nez v3, :cond_f

    .line 640
    .line 641
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 642
    .line 643
    if-eqz v3, :cond_e

    .line 644
    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v6, ")."

    .line 660
    .line 661
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    goto :goto_9

    .line 672
    :catch_1
    move-exception v0

    .line 673
    goto/16 :goto_a

    .line 674
    .line 675
    :cond_e
    :goto_9
    iget-object v3, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 676
    .line 677
    invoke-virtual {v3, v9, v15}, Lcom/android/server/am/ActivityManagerService;->makePackageIdle(Ljava/lang/String;I)V

    .line 678
    .line 679
    .line 680
    :cond_f
    iget-boolean v3, v0, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 681
    .line 682
    const-string v6, "<"

    .line 683
    .line 684
    if-eqz v3, :cond_11

    .line 685
    .line 686
    :try_start_f
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    new-instance v10, Ljava/util/ArrayList;

    .line 691
    .line 692
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .line 694
    .line 695
    iget-object v12, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 696
    .line 697
    invoke-virtual {v12, v3, v10}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    if-ne v3, v4, :cond_11

    .line 702
    .line 703
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 704
    .line 705
    if-eqz v0, :cond_10

    .line 706
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v1, "> is still ES after making idle, scheduling retry."

    .line 722
    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    :cond_10
    sget-object v11, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 734
    .line 735
    iget-object v12, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 736
    .line 737
    const/4 v14, 0x1

    .line 738
    move-object/from16 v16, v2

    .line 739
    .line 740
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/FreecessHandler;->sendMakePkgIdleMsg(Ljava/lang/String;IZILjava/lang/String;)V

    .line 741
    .line 742
    .line 743
    goto/16 :goto_c

    .line 744
    .line 745
    :cond_11
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(IZ)Ljava/util/ArrayList;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    if-nez v0, :cond_18

    .line 754
    .line 755
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 756
    .line 757
    if-eqz v0, :cond_12

    .line 758
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v1, "> Service stopped, continue."

    .line 774
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    :cond_12
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 786
    .line 787
    invoke-virtual {v0, v15, v9, v2}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 788
    .line 789
    .line 790
    goto/16 :goto_c

    .line 791
    .line 792
    :goto_a
    const-string/jumbo v1, "makePkgIdleForLcdOn Exception : "

    .line 793
    .line 794
    .line 795
    invoke-static {v0, v1, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_c

    .line 799
    .line 800
    :pswitch_4
    if-eqz v2, :cond_18

    .line 801
    .line 802
    const-string/jumbo v1, "packageName"

    .line 803
    .line 804
    .line 805
    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 810
    .line 811
    const-string/jumbo v3, "userId"

    .line 812
    .line 813
    .line 814
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 819
    .line 820
    const-string/jumbo v3, "reason"

    .line 821
    .line 822
    .line 823
    const-string v4, ""

    .line 824
    .line 825
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    if-eqz v1, :cond_18

    .line 829
    .line 830
    if-eq v2, v10, :cond_18

    .line 831
    .line 832
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 833
    .line 834
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 835
    .line 836
    invoke-virtual {v0, v2, v1, v8}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    .line 837
    .line 838
    .line 839
    goto/16 :goto_c

    .line 840
    .line 841
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 842
    .line 843
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 844
    .line 845
    if-eqz v1, :cond_13

    .line 846
    .line 847
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 848
    .line 849
    if-eqz v1, :cond_13

    .line 850
    .line 851
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRequestFocusPkg()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v9

    .line 855
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 856
    .line 857
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    if-eqz v1, :cond_18

    .line 866
    .line 867
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 868
    .line 869
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    const-string/jumbo v2, "has Focus"

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_c

    .line 880
    .line 881
    :pswitch_6
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 882
    .line 883
    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->cancelCalmMode()V

    .line 884
    .line 885
    .line 886
    goto/16 :goto_c

    .line 887
    .line 888
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleRepeatCalmMode()V

    .line 889
    .line 890
    .line 891
    goto/16 :goto_c

    .line 892
    .line 893
    :pswitch_8
    if-eqz v2, :cond_18

    .line 894
    .line 895
    const-string/jumbo v1, "list"

    .line 896
    .line 897
    .line 898
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 903
    .line 904
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->triggerCalmMode(Ljava/util/ArrayList;)V

    .line 905
    .line 906
    .line 907
    goto/16 :goto_c

    .line 908
    .line 909
    :pswitch_9
    if-eqz v2, :cond_18

    .line 910
    .line 911
    const-string/jumbo v1, "packageName"

    .line 912
    .line 913
    .line 914
    const-string v3, ""

    .line 915
    .line 916
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 920
    .line 921
    const-string/jumbo v2, "uid"

    .line 922
    .line 923
    .line 924
    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 925
    .line 926
    .line 927
    move-result v1

    .line 928
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 929
    .line 930
    const-string/jumbo v3, "reason"

    .line 931
    .line 932
    .line 933
    const-string v4, ""

    .line 934
    .line 935
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 940
    .line 941
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezeSpecialPackage(ILjava/lang/String;)V

    .line 942
    .line 943
    .line 944
    goto/16 :goto_c

    .line 945
    .line 946
    :pswitch_a
    if-eqz v2, :cond_18

    .line 947
    .line 948
    const-string/jumbo v1, "packageName"

    .line 949
    .line 950
    .line 951
    const-string v3, ""

    .line 952
    .line 953
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 958
    .line 959
    const-string/jumbo v3, "uid"

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 963
    .line 964
    .line 965
    move-result v2

    .line 966
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 967
    .line 968
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/FreecessController;->deleteRemovedPackage(ILjava/lang/String;)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_c

    .line 972
    .line 973
    :pswitch_b
    if-eqz v2, :cond_18

    .line 974
    .line 975
    const-string/jumbo v1, "packageName"

    .line 976
    .line 977
    .line 978
    const-string v3, ""

    .line 979
    .line 980
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 985
    .line 986
    const-string/jumbo v3, "uid"

    .line 987
    .line 988
    .line 989
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 990
    .line 991
    .line 992
    move-result v2

    .line 993
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 994
    .line 995
    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 996
    .line 997
    .line 998
    move-result-object v3

    .line 999
    const-string v4, "FreecessController"

    .line 1000
    .line 1001
    if-eqz v3, :cond_15

    .line 1002
    .line 1003
    iget-object v5, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 1004
    .line 1005
    iget-boolean v5, v5, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 1006
    .line 1007
    if-nez v5, :cond_14

    .line 1008
    .line 1009
    goto :goto_b

    .line 1010
    :cond_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    iget-object v5, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    .line 1015
    .line 1016
    invoke-virtual {v5, v2}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    new-instance v6, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;

    .line 1026
    .line 1027
    invoke-direct {v6, v7, v5}, Lcom/android/server/am/FreecessController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/FreecessController;->canUidBeFrozen(Ljava/util/ArrayList;Lcom/android/server/am/FreecessController$checkResultCallback;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v2

    .line 1034
    if-nez v2, :cond_18

    .line 1035
    .line 1036
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    const-string/jumbo v5, "unfreeze "

    .line 1041
    .line 1042
    .line 1043
    const-string v6, "("

    .line 1044
    .line 1045
    invoke-static {v5, v1, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    iget v3, v3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 1050
    .line 1051
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    const-string v5, ")in postMonitoringFrozenProcs. reason : "

    .line 1055
    .line 1056
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_c

    .line 1073
    .line 1074
    :cond_15
    :goto_b
    const-string/jumbo v0, "postMonitoringFrozenProcs: u="

    .line 1075
    .line 1076
    .line 1077
    const-string v1, " is not frozen, return."

    .line 1078
    .line 1079
    invoke-static {v2, v0, v1, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_c

    .line 1083
    .line 1084
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreezeStateChanged()V

    .line 1085
    .line 1086
    .line 1087
    goto/16 :goto_c

    .line 1088
    .line 1089
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleUnfreezeActivePackages()V

    .line 1090
    .line 1091
    .line 1092
    goto/16 :goto_c

    .line 1093
    .line 1094
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1095
    .line 1096
    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->readSysfs()V

    .line 1097
    .line 1098
    .line 1099
    goto/16 :goto_c

    .line 1100
    .line 1101
    :pswitch_f
    if-eqz v2, :cond_18

    .line 1102
    .line 1103
    const-string/jumbo v1, "type"

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1107
    .line 1108
    .line 1109
    move-result v1

    .line 1110
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1111
    .line 1112
    iput-boolean v8, v0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 1113
    .line 1114
    iput-boolean v8, v0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 1115
    .line 1116
    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_c

    .line 1120
    .line 1121
    :pswitch_10
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1122
    .line 1123
    invoke-virtual {v1, v10, v8}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    .line 1124
    .line 1125
    .line 1126
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1127
    .line 1128
    const-string/jumbo v1, "timeout"

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_c

    .line 1135
    .line 1136
    :pswitch_11
    if-eqz v2, :cond_18

    .line 1137
    .line 1138
    const-string/jumbo v1, "enterFlag"

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v2, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v1

    .line 1145
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1146
    .line 1147
    const-string/jumbo v3, "packageName"

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    iget-object v3, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1155
    .line 1156
    const-string/jumbo v4, "uid"

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1160
    .line 1161
    .line 1162
    move-result v3

    .line 1163
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1164
    .line 1165
    if-eqz v1, :cond_16

    .line 1166
    .line 1167
    invoke-virtual {v0, v3, v7}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    .line 1168
    .line 1169
    .line 1170
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1171
    .line 1172
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1173
    .line 1174
    .line 1175
    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 1176
    .line 1177
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1178
    .line 1179
    .line 1180
    move-result v1

    .line 1181
    iput v1, v0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 1182
    .line 1183
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/FreecessController;->triggerOLAF(ILjava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    iget-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1187
    .line 1188
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1189
    .line 1190
    .line 1191
    iput-object v9, v0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    .line 1192
    .line 1193
    const/16 v1, -0xa

    .line 1194
    .line 1195
    iput v1, v0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    .line 1196
    .line 1197
    goto/16 :goto_c

    .line 1198
    .line 1199
    :cond_16
    const-string v1, "Force"

    .line 1200
    .line 1201
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v0, v10, v8}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    .line 1205
    .line 1206
    .line 1207
    goto/16 :goto_c

    .line 1208
    .line 1209
    :pswitch_12
    if-eqz v2, :cond_18

    .line 1210
    .line 1211
    const-string/jumbo v1, "uid"

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1215
    .line 1216
    .line 1217
    move-result v1

    .line 1218
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1219
    .line 1220
    const/4 v2, 0x4

    .line 1221
    invoke-virtual {v0, v2, v1, v8, v8}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    .line 1222
    .line 1223
    .line 1224
    move-result v1

    .line 1225
    if-gez v1, :cond_18

    .line 1226
    .line 1227
    const-string v1, "FBException"

    .line 1228
    .line 1229
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    goto/16 :goto_c

    .line 1233
    .line 1234
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessSettlementPackage()V

    .line 1235
    .line 1236
    .line 1237
    goto/16 :goto_c

    .line 1238
    .line 1239
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetAllState()V

    .line 1240
    .line 1241
    .line 1242
    goto/16 :goto_c

    .line 1243
    .line 1244
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetState()V

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_c

    .line 1248
    .line 1249
    :pswitch_16
    if-eqz v2, :cond_18

    .line 1250
    .line 1251
    const-string/jumbo v1, "packageName"

    .line 1252
    .line 1253
    .line 1254
    const-string v3, ""

    .line 1255
    .line 1256
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1261
    .line 1262
    const-string/jumbo v3, "uid"

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1270
    .line 1271
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/FreecessController;->lcdOnFreezePackage(ILjava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_c

    .line 1275
    :pswitch_17
    if-eqz v2, :cond_18

    .line 1276
    .line 1277
    const-string/jumbo v1, "packageName"

    .line 1278
    .line 1279
    .line 1280
    const-string v3, ""

    .line 1281
    .line 1282
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1287
    .line 1288
    const-string/jumbo v5, "userId"

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v2, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1292
    .line 1293
    .line 1294
    move-result v2

    .line 1295
    iget-object v5, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1296
    .line 1297
    const-string/jumbo v6, "reason"

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v3

    .line 1304
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1305
    .line 1306
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(IILjava/lang/String;Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    goto :goto_c

    .line 1310
    :pswitch_18
    if-eqz v2, :cond_18

    .line 1311
    .line 1312
    const-string/jumbo v1, "packageName"

    .line 1313
    .line 1314
    .line 1315
    const-string v3, ""

    .line 1316
    .line 1317
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v1

    .line 1321
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1322
    .line 1323
    const-string/jumbo v4, "userId"

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v2, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    iget-object v4, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1331
    .line 1332
    const-string/jumbo v5, "reason"

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1340
    .line 1341
    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(IILjava/lang/String;Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    goto :goto_c

    .line 1345
    :pswitch_19
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 1346
    .line 1347
    if-eqz v1, :cond_17

    .line 1348
    .line 1349
    const-string v1, "FreecessHandler"

    .line 1350
    .line 1351
    const-string/jumbo v2, "handle FREECESS_LCD_ON_QUICK_FREEZE_MSG...."

    .line 1352
    .line 1353
    .line 1354
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    :cond_17
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1358
    .line 1359
    if-eqz v1, :cond_18

    .line 1360
    .line 1361
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 1362
    .line 1363
    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 1364
    .line 1365
    .line 1366
    sget-object v2, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 1367
    .line 1368
    invoke-virtual {v2}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 1369
    .line 1370
    .line 1371
    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1372
    .line 1373
    const-string/jumbo v3, "uid"

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1377
    .line 1378
    .line 1379
    move-result v2

    .line 1380
    iget-object v3, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1381
    .line 1382
    const-string/jumbo v4, "packageName"

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v3

    .line 1389
    iget-object v0, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 1390
    .line 1391
    const-string/jumbo v4, "reason"

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    :cond_18
    :goto_c
    return-void

    .line 1402
    nop

    .line 1403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final handleRepeatCalmMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string/jumbo v1, "packageName"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string/jumbo v3, "userId"

    .line 16
    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 24
    .line 25
    const-string/jumbo v4, "reason"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 38
    .line 39
    monitor-enter v3

    .line 40
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 53
    .line 54
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v3

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_1
    :goto_2
    return-void
.end method

.method public final handleUnfreezeActivePackages()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const-string/jumbo v1, "reason"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "screenOn-widget"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move v4, v2

    .line 42
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ge v4, v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 53
    .line 54
    sget-object v6, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    .line 55
    .line 56
    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 57
    .line 58
    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 59
    .line 60
    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 61
    .line 62
    const/4 v10, 0x4

    .line 63
    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->filter(IIILjava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-lez v6, :cond_0

    .line 68
    .line 69
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    monitor-exit v1

    .line 79
    goto :goto_6

    .line 80
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_2
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 83
    .line 84
    monitor-enter v1

    .line 85
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    move v4, v2

    .line 94
    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ge v4, v5, :cond_4

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    .line 105
    .line 106
    iget-object v6, v5, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 107
    .line 108
    iget-boolean v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 109
    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 113
    .line 114
    iget v7, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_5

    .line 128
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    monitor-exit v1

    .line 132
    goto :goto_6

    .line 133
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    throw p0

    .line 135
    :cond_5
    :goto_6
    return-void
.end method
