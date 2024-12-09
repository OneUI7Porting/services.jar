.class public final Lcom/android/server/desktopmode/DisplayPortStateManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayPortState:I

.field public mDualModeEnabled:Z

.field public mExternalDisplayModeDual:Z

.field public final mExternalDisplayModeListener:Lcom/android/server/desktopmode/DisplayPortStateManager$2;

.field public mHdmiAutoEnterEnabled:Z

.field public final mHdmiAutoEnterListener:Lcom/android/server/desktopmode/DisplayPortStateManager$2;

.field public mHdmiDisplayConnected:Z

.field public mHighResolutionsForExternalEnabled:Z

.field public final mHighResolutionsForExternalListener:Lcom/android/server/desktopmode/DisplayPortStateManager$2;

.field public final mLock:Ljava/lang/Object;

.field public mStandaloneModeEnabled:Z

.field public final mStateListener:Lcom/android/server/desktopmode/DisplayPortStateManager$1;


# direct methods
.method public static -$$Nest$msetDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_2

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public static -$$Nest$msetHighResolutionsForExternalEnabledLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "setHighResolutionsForExternalEnabledLocked(), enabled="

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "[DMS]DisplayPortStateManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DisplayPortStateManager$1;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/desktopmode/DisplayPortStateManager$2;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager$2;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/server/desktopmode/DisplayPortStateManager$2;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager$2;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/server/desktopmode/DisplayPortStateManager$2;

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v3, p0, v4}, Lcom/android/server/desktopmode/DisplayPortStateManager$2;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    iput v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 39
    .line 40
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 41
    .line 42
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 43
    .line 44
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 45
    .line 46
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 47
    .line 48
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v2}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "mHighResolutionsForExternalEnabled="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "mExternalDisplayModeDual="

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "mStandaloneModeEnabled="

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "mDualModeEnabled="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "mHdmiAutoEnterEnabled="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "mHdmiDisplayConnected="

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "mDisplayPortState="

    .line 20
    .line 21
    .line 22
    iget-object v7, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v7

    .line 25
    :try_start_0
    const-string v8, "Current DisplayPortStateManager state:"

    .line 26
    .line 27
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 31
    .line 32
    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v6, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    .line 39
    .line 40
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v5, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 141
    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 153
    .line 154
    .line 155
    monitor-exit v7

    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    throw p0
.end method

.method public final getSettingState()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 22
    .line 23
    :goto_0
    return p0
.end method

.method public final setDisplayPortStateLocked(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    shl-int/lit8 v0, p1, 0x4

    .line 9
    .line 10
    or-int/2addr v0, p2

    .line 11
    :goto_0
    iget v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    .line 12
    .line 13
    if-eq v2, v0, :cond_6

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    .line 16
    .line 17
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v3, "setDisplayPortState(), state=0x"

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "[DMS]DisplayPortStateManager"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-nez p1, :cond_2

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    :cond_2
    const/4 v1, 0x1

    .line 50
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo p2, "writeFile(), path=/sys/class/dp_sec/dex, value="

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, ", async="

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p2, "[DMS]Utils"

    .line 80
    .line 81
    invoke-static {p2, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    new-instance p0, Lcom/android/server/desktopmode/Utils$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {p0, p1, v1}, Lcom/android/server/desktopmode/Utils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Utils$$ExternalSyntheticLambda0;->run()V

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_1
    return-void
.end method
