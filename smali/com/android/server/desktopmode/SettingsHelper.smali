.class public final Lcom/android/server/desktopmode/SettingsHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEFAULT_VALUES:Ljava/util/Map;

.field public static final KEYS_TO_MIGRATE:Ljava/util/Map;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mListeners:Ljava/util/List;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mStateListener:Lcom/android/server/desktopmode/SettingsHelper$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    .line 7
    .line 8
    const-string/jumbo v1, "hdmi"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "hdmi_auto_enter"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "keyboard"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "keyboard_dex"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "keyboard_b"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "keyboard_backup"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "timeout"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v2, "timeout_dex"

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v1, "timeout_b"

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "timeout_backup"

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "developer"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v2, "launch_policy_developer_enabled"

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    .line 68
    .line 69
    const-string/jumbo v1, "flow_pointer_is_on_dex"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v2, "false"

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "flow_pointer_from_where_dex"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v2, "right"

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v1, "spen_mode"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v2, "mouse"

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string/jumbo v1, "spen_input_change_support"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "true"

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v1, "touch_keyboard"

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/desktopmode/SettingsHelper$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/SettingsHelper$1;-><init>(Lcom/android/server/desktopmode/SettingsHelper;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 23
    .line 24
    check-cast p3, Lcom/android/server/desktopmode/StateManager;

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 30
    .line 31
    sget-object p3, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    .line 33
    new-instance p4, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;

    .line 34
    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p4, p0, v0}, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;-><init>(Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Handler;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, -0x1

    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final backupOrRestoreSettings(ZLcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string/jumbo v1, "enabled"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v3, ", userId="

    .line 12
    .line 13
    const-string/jumbo v4, "backupOrRestoreSettings(), enter="

    .line 14
    .line 15
    .line 16
    const-string v5, "[DMS]SettingsHelper"

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string p0, ", Already "

    .line 25
    .line 26
    invoke-static {p3, v4, v3, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string/jumbo p1, "backed up!"

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo p1, "restored!"

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v5, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :cond_2
    iget-object v0, p2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 57
    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    const-string v7, ", displayType="

    .line 61
    .line 62
    invoke-static {v4, v7, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayTypeToString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v5, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    const/4 v3, 0x1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/16 v4, 0x66

    .line 93
    .line 94
    if-ne v0, v4, :cond_10

    .line 95
    .line 96
    :goto_1
    const-string/jumbo v0, "screensaver_enabled"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v4, "screensaver_backup"

    .line 100
    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 105
    .line 106
    invoke-static {v7, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v6, :cond_5

    .line 111
    .line 112
    const-string/jumbo v8, "setScreenSaver(), current value="

    .line 113
    .line 114
    .line 115
    invoke-static {v7, v8, v5}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    if-ne v7, v3, :cond_8

    .line 119
    .line 120
    iget-object v8, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 121
    .line 122
    invoke-static {v8, v4, v7, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 126
    .line 127
    invoke-static {v4, v0, v2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 128
    .line 129
    .line 130
    if-eqz v6, :cond_8

    .line 131
    .line 132
    const-string/jumbo v0, "setScreenSaver(), Disabling screen saver"

    .line 133
    .line 134
    .line 135
    invoke-static {v5, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 140
    .line 141
    invoke-static {v7, v4, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-ne v7, v3, :cond_8

    .line 146
    .line 147
    if-eqz v6, :cond_7

    .line 148
    .line 149
    const-string/jumbo v8, "setScreensaver(), Restoring backed up value="

    .line 150
    .line 151
    .line 152
    invoke-static {v7, v8, v5}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    iget-object v8, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 156
    .line 157
    invoke-static {v8, v0, v7, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 161
    .line 162
    invoke-static {v0, v4, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_2
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    .line 166
    .line 167
    .line 168
    const-string/jumbo v4, "keyboard_backup"

    .line 169
    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_c

    .line 178
    .line 179
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 180
    .line 181
    invoke-static {v7, v0, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    const-string/jumbo v8, "setVirtualKeyboard(), current normalModeValue="

    .line 188
    .line 189
    .line 190
    invoke-static {v7, v8, v5}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    if-nez v7, :cond_c

    .line 194
    .line 195
    iget-object v8, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 196
    .line 197
    invoke-static {v8, v4, v7, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    iget-object v4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 201
    .line 202
    invoke-static {v4, v0, v3, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 203
    .line 204
    .line 205
    if-eqz v6, :cond_c

    .line 206
    .line 207
    const-string/jumbo v0, "setVirtualKeyboard(), Enabling to show onScreenKeyboard"

    .line 208
    .line 209
    .line 210
    invoke-static {v5, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_a
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 215
    .line 216
    invoke-static {v7, v4, v3, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-nez v7, :cond_c

    .line 221
    .line 222
    if-eqz v6, :cond_b

    .line 223
    .line 224
    const-string/jumbo v8, "setVirtualKeyboard(), Restoring backed up value="

    .line 225
    .line 226
    .line 227
    invoke-static {v7, v8, v5}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_b
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 231
    .line 232
    invoke-static {v7, v0, v2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 236
    .line 237
    invoke-static {v0, v4, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    :cond_c
    :goto_3
    const-string/jumbo v0, "touch_keyboard_backup"

    .line 241
    .line 242
    .line 243
    const-string/jumbo v4, "touch_keyboard"

    .line 244
    .line 245
    .line 246
    if-eqz p1, :cond_e

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexStationConnectedWithFlipCover()Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-eqz p2, :cond_10

    .line 253
    .line 254
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 255
    .line 256
    invoke-static {p2, v4, v3, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-eqz v6, :cond_d

    .line 261
    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string/jumbo v8, "setTouchKeyboard(), currentValue="

    .line 265
    .line 266
    .line 267
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-static {v5, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_d
    if-eqz p2, :cond_10

    .line 281
    .line 282
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 283
    .line 284
    invoke-static {v7, v0, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 285
    .line 286
    .line 287
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 288
    .line 289
    invoke-static {p2, v4, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 290
    .line 291
    .line 292
    if-eqz v6, :cond_10

    .line 293
    .line 294
    const-string/jumbo p2, "setTouchKeyboard(), Enabling to show on dex display"

    .line 295
    .line 296
    .line 297
    invoke-static {v5, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_e
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 302
    .line 303
    invoke-static {p2, v0, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz p2, :cond_10

    .line 308
    .line 309
    if-eqz v6, :cond_f

    .line 310
    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string/jumbo v8, "setTouchKeyboard(), Restoring backed up value="

    .line 314
    .line 315
    .line 316
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    invoke-static {v5, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_f
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 330
    .line 331
    invoke-static {p2, v4, v3, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 332
    .line 333
    .line 334
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 335
    .line 336
    invoke-static {p2, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    :cond_10
    :goto_4
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 340
    .line 341
    const-string/jumbo v0, "low_power"

    .line 342
    .line 343
    .line 344
    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    if-eqz p2, :cond_15

    .line 349
    .line 350
    const-string/jumbo p2, "speed_limit_backup"

    .line 351
    .line 352
    .line 353
    if-eqz p1, :cond_13

    .line 354
    .line 355
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 356
    .line 357
    const-string/jumbo v4, "restricted_device_performance"

    .line 358
    .line 359
    .line 360
    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-eqz v0, :cond_11

    .line 365
    .line 366
    const/16 v4, 0x2c

    .line 367
    .line 368
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-lez v4, :cond_11

    .line 373
    .line 374
    :try_start_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_5

    .line 383
    :catch_0
    move-exception v0

    .line 384
    const-string v4, "NumberFormatException in getPsmValue"

    .line 385
    .line 386
    invoke-static {v5, v4, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .line 388
    .line 389
    :cond_11
    const/4 v0, -0x1

    .line 390
    :goto_5
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 391
    .line 392
    if-eqz v4, :cond_12

    .line 393
    .line 394
    const-string/jumbo v6, "setPsmSpeedLimit(), current value="

    .line 395
    .line 396
    .line 397
    invoke-static {v0, v6, v5}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_12
    if-ne v0, v3, :cond_15

    .line 401
    .line 402
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 403
    .line 404
    invoke-static {v3, p2, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmValue(I)V

    .line 408
    .line 409
    .line 410
    if-eqz v4, :cond_15

    .line 411
    .line 412
    const-string/jumbo p2, "setPsmSpeedLimit(), Disabling speed limit"

    .line 413
    .line 414
    .line 415
    invoke-static {v5, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_13
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 420
    .line 421
    invoke-static {v0, p2, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-ne v0, v3, :cond_15

    .line 426
    .line 427
    if-eqz v6, :cond_14

    .line 428
    .line 429
    const-string/jumbo v2, "setPsmSpeedLimit(), Restoring backed up value="

    .line 430
    .line 431
    .line 432
    invoke-static {v0, v2, v5}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmValue(I)V

    .line 436
    .line 437
    .line 438
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 439
    .line 440
    invoke-static {v0, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 441
    .line 442
    .line 443
    :cond_15
    :goto_6
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 444
    .line 445
    invoke-static {p0, v1, p1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 446
    .line 447
    .line 448
    return-void
.end method

.method public final backupOrRestoreSuperFastCharging(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-string/jumbo v2, "super_fast_charging"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "super_fast_charging_backup"

    .line 14
    .line 15
    .line 16
    const-string v4, "[DMS]SettingsHelper"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 22
    .line 23
    invoke-static {p2, v2, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const-string/jumbo v7, "backupOrRestoreFastCharging(), current normalSfcValue="

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v7, v4}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-nez p2, :cond_3

    .line 38
    .line 39
    iget-object v7, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 40
    .line 41
    invoke-static {v7, v3, p2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 45
    .line 46
    invoke-static {p0, v2, v5, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 47
    .line 48
    .line 49
    if-eqz v6, :cond_3

    .line 50
    .line 51
    const-string/jumbo p0, "backupOrRestoreFastCharging(), Enabling super fast charging"

    .line 52
    .line 53
    .line 54
    invoke-static {v4, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 59
    .line 60
    invoke-static {p2, v3, v5, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 67
    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    const-string/jumbo v5, "backupOrRestoreFastCharging(), Restoring backed up value="

    .line 71
    .line 72
    .line 73
    invoke-static {p2, v5, v4}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static {p2, v2, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 83
    .line 84
    invoke-static {p0, v3, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "[DMS]SettingsHelper"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "clearSettingsByLauncherDataCleared()"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    :try_start_0
    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v3, "clearSettings"

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v2, "[DMS]DesktopModeSettings"

    .line 29
    .line 30
    const-string v3, "Failed to clear Dex settings"

    .line 31
    .line 32
    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 36
    .line 37
    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    const/4 v4, 0x0

    .line 41
    if-ne v2, v3, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/16 v3, 0x65

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-string/jumbo p1, "set Dex default on virtual keyboard in standalone"

    .line 56
    .line 57
    .line 58
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 62
    .line 63
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/16 v2, 0x66

    .line 75
    .line 76
    if-ne v0, v2, :cond_5

    .line 77
    .line 78
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v2, "set the setting for touchkeyboard, isDexStationCoverAttached="

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexStationConnectedWithFlipCover()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexStationConnectedWithFlipCover()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/4 v2, 0x1

    .line 111
    xor-int/2addr v1, v2

    .line 112
    const-string/jumbo v3, "touch_keyboard"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v3, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexStationConnectedWithFlipCover()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 125
    .line 126
    const-string/jumbo v0, "touch_keyboard_backup"

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v0, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/desktopmode/SettingsHelper;->setToDefaultIfNoSettings()V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 136
    .line 137
    const-string/jumbo p1, "display_chooser_do_not_show_again"

    .line 138
    .line 139
    .line 140
    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final setPsmValue(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string/jumbo v1, "restricted_device_performance"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "[DMS]SettingsHelper"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v3, 0x2c

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lez v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v3, "NumberFormatException in setPsmValue"

    .line 39
    .line 40
    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, ", "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 70
    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v1, "setPsmValue = "

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method

.method public final setToDefaultIfNoSettings()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 32
    .line 33
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v3, v2, v5, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 50
    .line 51
    invoke-static {v3, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public final unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    .line 4
    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
