.class public final Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

.field public mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

.field public mDexModel:I

.field public mFanHoldingTimerTaskList:Ljava/util/List;

.field public mFanModeMap:Ljava/util/Map;

.field public mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

.field public mIsExistSystemRequest:Z

.field public mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public mTimer:Ljava/util/Timer;


# virtual methods
.method public final addFanHoldingTimerTask(ILjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addFanHoldingTimerTask "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "   "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "DexFanControlManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    .line 50
    .line 51
    iget-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    const-string v0, "checkAndUpdateFanHoldingTask "

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v0, "setUpdate - true"

    .line 69
    .line 70
    .line 71
    const-string v4, "DexFanHoldingTimerTask"

    .line 72
    .line 73
    invoke-static {v4, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v2, v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->cancel()Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "checkAndUpdateFanHoldingTask after remove : "

    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    .line 110
    .line 111
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;-><init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-interface {p2, v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedFanHoldingRequestCount(I)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 133
    .line 134
    if-nez p2, :cond_2

    .line 135
    .line 136
    new-instance p2, Ljava/util/Timer;

    .line 137
    .line 138
    invoke-direct {p2, v2}, Ljava/util/Timer;-><init>(Z)V

    .line 139
    .line 140
    .line 141
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 142
    .line 143
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    .line 144
    .line 145
    int-to-long v2, p1

    .line 146
    invoke-virtual {p2, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    .line 150
    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p2, "addFanHoldingTimerTask currentFanHoldingCount : "

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v1, p0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final controlFanLevel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->getCurrentFanLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "controlFanLevel : "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " , "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "DexFanControlManager"

    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;->onFanLevelChanged(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getFanHoldingRequestCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getFanHoldingTimerTaskList()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getFanModeMap()Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 13
    .line 14
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iput-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    .line 21
    .line 22
    iput-object p0, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 28
    .line 29
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 30
    .line 31
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NormalMode;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    .line 37
    .line 38
    iput-object p0, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NormalMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 39
    .line 40
    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    .line 41
    .line 42
    iput v4, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NormalMode;->mDexModel:I

    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 48
    .line 49
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mFanLevelTable:Ljava/util/Map;

    .line 57
    .line 58
    iput-object p0, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 59
    .line 60
    iput v4, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;->mDexModel:I

    .line 61
    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 66
    .line 67
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 68
    .line 69
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 75
    .line 76
    iput-object p0, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 77
    .line 78
    iput v4, v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    .line 84
    .line 85
    return-object p0
.end method

.method public final setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setFanMode "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DexFanControlManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 32
    .line 33
    return-void
.end method

.method public final setSystemRequest(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setSystemRequest : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DexFanControlManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    .line 22
    .line 23
    if-eq v0, p1, :cond_0

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedSystemRequestStatus(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
