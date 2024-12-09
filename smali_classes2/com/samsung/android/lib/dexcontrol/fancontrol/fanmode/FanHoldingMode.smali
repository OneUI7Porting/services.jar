.class public final Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;


# instance fields
.field public mDexModel:I

.field public mFanLevelTable:Ljava/util/Map;

.field public mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mDexModel:I

    .line 15
    .line 16
    return-void
.end method

.method public final getCurrentFanLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "curFanLevel"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DexTestApp : FanHolding"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 34
    .line 35
    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mDexModel:I

    .line 36
    .line 37
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 38
    .line 39
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 40
    .line 41
    sget-object v4, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 42
    .line 43
    sget-object v5, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 44
    .line 45
    sget-object v6, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 46
    .line 47
    sget-object v7, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 48
    .line 49
    sget-object v8, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 50
    .line 51
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 52
    .line 53
    sget-object v10, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 54
    .line 55
    sget-object v11, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 56
    .line 57
    const v12, 0xa020

    .line 58
    .line 59
    .line 60
    if-ne v1, v12, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 66
    .line 67
    check-cast v0, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 73
    .line 74
    check-cast v0, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 80
    .line 81
    check-cast v0, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 87
    .line 88
    check-cast v0, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 94
    .line 95
    check-cast v0, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 101
    .line 102
    check-cast v0, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 112
    .line 113
    check-cast v0, Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 119
    .line 120
    check-cast v0, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 126
    .line 127
    check-cast v0, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 133
    .line 134
    check-cast v0, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 140
    .line 141
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->MILD:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 142
    .line 143
    check-cast v0, Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 149
    .line 150
    check-cast v0, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 160
    .line 161
    check-cast v0, Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 168
    .line 169
    return-object p0
.end method

.method public final onChangedDexMode()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized onChangedFanHoldingRequestCount(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-gtz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void
.end method

.method public final onChangedSystemRequestStatus(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/Timer;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 39
    .line 40
    check-cast p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 46
    .line 47
    sget-object p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method
