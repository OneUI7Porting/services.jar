.class public final Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;
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
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

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
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    .line 15
    .line 16
    return-void
.end method

.method public final getCurrentFanLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 12

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
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

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
    const-string v1, "ScreenRequestMode"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

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
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 34
    .line 35
    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    .line 36
    .line 37
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 38
    .line 39
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 40
    .line 41
    sget-object v4, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 42
    .line 43
    sget-object v5, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 44
    .line 45
    sget-object v6, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 46
    .line 47
    sget-object v7, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 48
    .line 49
    sget-object v8, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 50
    .line 51
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 52
    .line 53
    sget-object v10, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 54
    .line 55
    const v11, 0xa020

    .line 56
    .line 57
    .line 58
    if-ne v1, v11, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 64
    .line 65
    check-cast v0, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v0, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 78
    .line 79
    check-cast v0, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 85
    .line 86
    check-cast v0, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 92
    .line 93
    check-cast v0, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 99
    .line 100
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 101
    .line 102
    check-cast v0, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 112
    .line 113
    check-cast v0, Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 119
    .line 120
    check-cast v0, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 126
    .line 127
    check-cast v0, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 133
    .line 134
    check-cast v0, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 140
    .line 141
    check-cast v0, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 147
    .line 148
    check-cast v0, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    .line 158
    .line 159
    check-cast v0, Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    .line 166
    .line 167
    return-object p0
.end method

.method public final onChangedDexMode()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized onChangedFanHoldingRequestCount(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final onChangedSystemRequestStatus(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    .line 4
    .line 5
    sget-object p1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
