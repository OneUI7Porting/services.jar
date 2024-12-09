.class public final Lcom/android/server/desktopmode/SettingsHelper$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualModeStopLoadingScreen(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->setToDefaultIfNoSettings()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onStopLoadingScreen(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->setToDefaultIfNoSettings()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$1;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    .line 12
    .line 13
    check-cast v4, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3, v5, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-static {v3, v5, v6, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :cond_2
    sput v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    .line 61
    .line 62
    check-cast v0, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/util/Map$Entry;

    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v5, "persist.service.dex."

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v5, ""

    .line 106
    .line 107
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_3

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 124
    .line 125
    invoke-static {v5, v3, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 133
    .line 134
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    if-eq v0, v2, :cond_5

    .line 138
    .line 139
    const/4 v2, 0x4

    .line 140
    if-ne v0, v2, :cond_6

    .line 141
    .line 142
    :cond_5
    const/4 v1, 0x1

    .line 143
    :cond_6
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 144
    .line 145
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZLcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 146
    .line 147
    .line 148
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SFC:Z

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 159
    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSuperFastCharging(IZ)V

    .line 161
    .line 162
    .line 163
    :cond_7
    return-void
.end method
