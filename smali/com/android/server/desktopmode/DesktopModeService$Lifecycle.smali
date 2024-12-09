.class public final Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mService:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/desktopmode/Injector;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/desktopmode/Injector;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 10
    .line 11
    const-class p1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    if-ne v2, v1, :cond_4

    .line 8
    .line 9
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 19
    .line 20
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v5, v1

    .line 27
    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v6, v1

    .line 36
    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 37
    .line 38
    const-class v1, Lcom/android/server/desktopmode/BlockerManager;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v7, v1

    .line 45
    check-cast v7, Lcom/android/server/desktopmode/BlockerManager;

    .line 46
    .line 47
    const-class v1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v8, v1

    .line 54
    check-cast v8, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 55
    .line 56
    const-class v1, Lcom/android/server/desktopmode/UiManager;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v9, v1

    .line 63
    check-cast v9, Lcom/android/server/desktopmode/UiManager;

    .line 64
    .line 65
    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v10, v1

    .line 72
    check-cast v10, Lcom/android/server/desktopmode/SettingsHelper;

    .line 73
    .line 74
    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v11, v1

    .line 81
    check-cast v11, Lcom/android/server/desktopmode/HardwareManager;

    .line 82
    .line 83
    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-object v12, v1

    .line 90
    check-cast v12, Lcom/android/server/desktopmode/TouchpadManager;

    .line 91
    .line 92
    const-class v1, Lcom/android/server/desktopmode/CoverStateManager;

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    move-object v13, v1

    .line 99
    check-cast v13, Lcom/android/server/desktopmode/CoverStateManager;

    .line 100
    .line 101
    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object v14, v1

    .line 108
    check-cast v14, Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 109
    .line 110
    const-class v1, Lcom/android/server/desktopmode/DockManager;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object v15, v1

    .line 117
    check-cast v15, Lcom/android/server/desktopmode/DockManager;

    .line 118
    .line 119
    const-class v1, Lcom/android/server/desktopmode/PackageStateManager;

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    move-object/from16 v16, v1

    .line 126
    .line 127
    check-cast v16, Lcom/android/server/desktopmode/PackageStateManager;

    .line 128
    .line 129
    const-class v1, Landroid/app/StatusBarManager;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object/from16 v17, v1

    .line 136
    .line 137
    check-cast v17, Landroid/app/StatusBarManager;

    .line 138
    .line 139
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 140
    .line 141
    if-eqz v1, :cond_0

    .line 142
    .line 143
    const-class v1, Lcom/android/server/desktopmode/BootInitBlocker;

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/android/server/desktopmode/BootInitBlocker;

    .line 150
    .line 151
    move-object/from16 v18, v1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    const/16 v18, 0x0

    .line 155
    .line 156
    :goto_0
    const-class v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object/from16 v19, v1

    .line 163
    .line 164
    check-cast v19, Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 165
    .line 166
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 167
    .line 168
    if-nez v1, :cond_2

    .line 169
    .line 170
    sget-boolean v20, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    .line 171
    .line 172
    if-eqz v20, :cond_1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_1
    const/16 v20, 0x0

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_2
    :goto_1
    const-class v3, Lcom/android/server/desktopmode/WirelessDexManager;

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Lcom/android/server/desktopmode/WirelessDexManager;

    .line 185
    .line 186
    move-object/from16 v20, v3

    .line 187
    .line 188
    :goto_2
    if-eqz v1, :cond_3

    .line 189
    .line 190
    const-class v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 197
    .line 198
    move-object/from16 v21, v1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    const/16 v21, 0x0

    .line 202
    .line 203
    :goto_3
    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    move-object/from16 v22, v1

    .line 210
    .line 211
    check-cast v22, Lcom/android/server/desktopmode/DualModeChanger;

    .line 212
    .line 213
    const-class v1, Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 214
    .line 215
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    move-object/from16 v23, v1

    .line 220
    .line 221
    check-cast v23, Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 222
    .line 223
    const-class v1, Lcom/android/server/desktopmode/McfManager;

    .line 224
    .line 225
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    move-object/from16 v24, v1

    .line 230
    .line 231
    check-cast v24, Lcom/android/server/desktopmode/McfManager;

    .line 232
    .line 233
    const-class v1, Lcom/samsung/android/knox/dex/DexManager;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/Injector;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    move-object/from16 v25, v1

    .line 240
    .line 241
    check-cast v25, Lcom/samsung/android/knox/dex/DexManager;

    .line 242
    .line 243
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 244
    .line 245
    invoke-virtual/range {v3 .. v25}, Lcom/android/server/desktopmode/DesktopModeService;->injectServices(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/desktopmode/BlockerManager;Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/PackageStateManager;Landroid/app/StatusBarManager;Lcom/android/server/desktopmode/BootInitBlocker;Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/McfManager;Lcom/samsung/android/knox/dex/DexManager;)V

    .line 246
    .line 247
    .line 248
    :cond_4
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "desktopmode"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "onStartUser(), userId="

    .line 17
    .line 18
    .line 19
    const-string v0, "[DMS]DesktopModeService"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "onCleanupUser(), userId="

    .line 17
    .line 18
    .line 19
    const-string v0, "[DMS]DesktopModeService"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "onStopUser(), userId="

    .line 17
    .line 18
    .line 19
    const-string v0, ", CurrentUser="

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "[DMS]DesktopModeService"

    .line 37
    .line 38
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget p2, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string/jumbo p2, "onSwitchUser(), userId="

    .line 17
    .line 18
    .line 19
    const-string v0, "[DMS]DesktopModeService"

    .line 20
    .line 21
    invoke-static {p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->mService:Lcom/android/server/desktopmode/DesktopModeService;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo v0, "onUnlockUser(), userId="

    .line 17
    .line 18
    .line 19
    const-string v1, ", CurrentUser="

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "[DMS]DesktopModeService"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 43
    .line 44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
