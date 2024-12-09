.class public final Lcom/android/server/desktopmode/BlockerManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBlockers:Ljava/util/Map;

.field public final mDefaultBlocker:Lcom/android/server/desktopmode/DefaultBlocker;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;Lcom/android/server/desktopmode/Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker;

    .line 12
    .line 13
    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/desktopmode/DefaultBlocker;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mDefaultBlocker:Lcom/android/server/desktopmode/DefaultBlocker;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getDefaultBlockerInfo(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mDefaultBlocker:Lcom/android/server/desktopmode/DefaultBlocker;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    iget-object v4, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iput v3, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v5, 0x2

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iput v5, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object v1, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v6, 0x3

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iput v6, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x4

    .line 58
    iput p1, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 63
    .line 64
    const-string v1, "android.intent.action.MAIN"

    .line 65
    .line 66
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "android.intent.category.HOME"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v1, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/high16 v7, 0x10000

    .line 82
    .line 83
    invoke-virtual {v1, p1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 90
    .line 91
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 92
    .line 93
    const-string/jumbo v1, "com.sec.android.app.kidshome"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    const/4 p1, 0x5

    .line 103
    iput p1, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object p1, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ne v1, v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eq v1, v6, :cond_5

    .line 125
    .line 126
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-ne p1, v5, :cond_6

    .line 135
    .line 136
    :cond_5
    iget-object p1, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string/jumbo v1, "lelink_cast_on"

    .line 143
    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-ne p1, v3, :cond_7

    .line 151
    .line 152
    :cond_6
    const/4 p1, 0x6

    .line 153
    iput p1, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_7
    iget-object p1, v0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->DEX_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 163
    .line 164
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 165
    .line 166
    const-string/jumbo v3, "dex_mode"

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v3, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string/jumbo v0, "new"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    .line 181
    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    if-eqz p1, :cond_8

    .line 185
    .line 186
    const/4 p1, 0x7

    .line 187
    iput p1, v4, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 188
    .line 189
    :goto_0
    move-object v7, v4

    .line 190
    goto :goto_1

    .line 191
    :cond_8
    move-object v7, v2

    .line 192
    :goto_1
    if-eqz v7, :cond_9

    .line 193
    .line 194
    new-instance p1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 195
    .line 196
    iget v0, v7, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 197
    .line 198
    packed-switch v0, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    const-string v1, "Unknown="

    .line 202
    .line 203
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :goto_2
    move-object v8, v0

    .line 208
    goto :goto_3

    .line 209
    :pswitch_0
    const-string v0, "REASON_NEW_DEX"

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :pswitch_1
    const-string v0, "REASON_SMART_VIEW"

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :pswitch_2
    const-string v0, "REASON_KIDS_MODE"

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_3
    const-string v0, "REASON_UNAVAILABLE_USER"

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :pswitch_4
    const-string v0, "REASON_SAFE_MODE"

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :pswitch_5
    const-string v0, "REASON_PRO_KIOSK_MODE"

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :pswitch_6
    const-string v0, "REASON_LOCK_TASK_MODE"

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :pswitch_7
    const-string v0, "REASON_NOT_BLOCKED"

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :goto_3
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    move-object v5, p1

    .line 250
    move-object v6, p0

    .line 251
    invoke-direct/range {v5 .. v10}, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;-><init>(Lcom/android/server/desktopmode/BlockerManager;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V

    .line 252
    .line 253
    .line 254
    return-object p1

    .line 255
    :cond_9
    return-object v2

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
