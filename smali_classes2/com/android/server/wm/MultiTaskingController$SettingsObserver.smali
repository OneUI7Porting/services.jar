.class public final Lcom/android/server/wm/MultiTaskingController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDexFontScaleUri:Landroid/net/Uri;

.field public final mDexForceImmersiveModeEnabledUri:Landroid/net/Uri;

.field public final mDexForceImmersiveModeSettingUri:Landroid/net/Uri;

.field public final mDexStandaloneRotationUri:Landroid/net/Uri;

.field public final mDexStarShowingDelayTimeUri:Landroid/net/Uri;

.field public final mDexTouchPadUsingUri:Landroid/net/Uri;

.field public final mEdgeUri:Landroid/net/Uri;

.field public final mFreeformCaptionTypeUri:Landroid/net/Uri;

.field public final mMinimalBatteryUseUri:Landroid/net/Uri;

.field public final mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

.field public final mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

.field public final mNotificationBubbleUri:Landroid/net/Uri;

.field public final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field public final mSplitGestureUri:Landroid/net/Uri;

.field public final mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

.field public final mUriList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string/jumbo p1, "navigation_bar_gesture_while_hidden"

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    .line 21
    .line 22
    const-string/jumbo p1, "navigation_bar_gesture_detail_type"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    .line 30
    .line 31
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    .line 33
    const-string/jumbo p2, "standalone_mode_rotate_app"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexStandaloneRotationUri:Landroid/net/Uri;

    .line 41
    .line 42
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    const-string p2, "floating_noti_package_list"

    .line 47
    .line 48
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 53
    .line 54
    const-string/jumbo p2, "notification_bubbles"

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubbleUri:Landroid/net/Uri;

    .line 62
    .line 63
    :cond_0
    const-string p2, "freeform_corner_gesture_level"

    .line 64
    .line 65
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

    .line 70
    .line 71
    const-string/jumbo p2, "minimal_battery_use"

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMinimalBatteryUseUri:Landroid/net/Uri;

    .line 79
    .line 80
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 81
    .line 82
    if-eqz p2, :cond_1

    .line 83
    .line 84
    const-string p2, "freeform_caption_type"

    .line 85
    .line 86
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFreeformCaptionTypeUri:Landroid/net/Uri;

    .line 91
    .line 92
    :cond_1
    const-string/jumbo p2, "open_in_split_screen_view"

    .line 93
    .line 94
    .line 95
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    .line 100
    .line 101
    const-string p2, "edge_enable"

    .line 102
    .line 103
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    .line 108
    .line 109
    const-string/jumbo p2, "taskbar_hide_bar"

    .line 110
    .line 111
    .line 112
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexForceImmersiveModeSettingUri:Landroid/net/Uri;

    .line 117
    .line 118
    const-string/jumbo p2, "taskbar_hide_bar_enabled"

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexForceImmersiveModeEnabledUri:Landroid/net/Uri;

    .line 126
    .line 127
    const-string/jumbo p2, "touchpad_enabled"

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexTouchPadUsingUri:Landroid/net/Uri;

    .line 135
    .line 136
    const-string p2, "font_scale"

    .line 137
    .line 138
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexFontScaleUri:Landroid/net/Uri;

    .line 143
    .line 144
    const-string/jumbo p2, "mouse_immersive_time_control"

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexStarShowingDelayTimeUri:Landroid/net/Uri;

    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "MultiTaskingController"

    .line 4
    .line 5
    const-string p1, "SettingsObserver_onChange: uri is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(ZLandroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final readSettings(ZLandroid/net/Uri;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 28
    .line 29
    const-string/jumbo v6, "navigation_bar_gesture_while_hidden"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ne v6, v3, :cond_1

    .line 37
    .line 38
    move v6, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v6, v4

    .line 41
    :goto_0
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsNavigationModeGesture:Z

    .line 42
    .line 43
    :cond_2
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_5

    .line 52
    .line 53
    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 54
    .line 55
    const-string/jumbo v6, "navigation_bar_gesture_detail_type"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-ne v6, v3, :cond_4

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move v6, v4

    .line 67
    :goto_1
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    .line 68
    .line 69
    :cond_5
    if-nez p1, :cond_6

    .line 70
    .line 71
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexStandaloneRotationUri:Landroid/net/Uri;

    .line 72
    .line 73
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_7

    .line 78
    .line 79
    :cond_6
    const-string/jumbo v5, "standalone_mode_rotate_app"

    .line 80
    .line 81
    .line 82
    sget v6, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 83
    .line 84
    invoke-static {v2, v5, v4, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 89
    .line 90
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 93
    .line 94
    iget-object v7, v6, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 95
    .line 96
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 97
    .line 98
    new-instance v8, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;

    .line 99
    .line 100
    invoke-direct {v8, v6, v5}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DexController;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    :cond_7
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 107
    .line 108
    if-eqz v5, :cond_9

    .line 109
    .line 110
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 111
    .line 112
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 113
    .line 114
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 115
    .line 116
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_9

    .line 121
    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 125
    .line 126
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_8

    .line 131
    .line 132
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubbleUri:Landroid/net/Uri;

    .line 133
    .line 134
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_9

    .line 139
    .line 140
    :cond_8
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 141
    .line 142
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 143
    .line 144
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 145
    .line 146
    const-string/jumbo v6, "setting_changed"

    .line 147
    .line 148
    .line 149
    iget-object v7, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 150
    .line 151
    const/16 v8, 0x68

    .line 152
    .line 153
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    .line 159
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 160
    .line 161
    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    .line 163
    .line 164
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 165
    .line 166
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 167
    .line 168
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 169
    .line 170
    const-string/jumbo v6, "setting_changed"

    .line 171
    .line 172
    .line 173
    iget-object v7, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 174
    .line 175
    const/16 v8, 0x67

    .line 176
    .line 177
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    .line 183
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 184
    .line 185
    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .line 187
    .line 188
    :cond_9
    if-nez p1, :cond_a

    .line 189
    .line 190
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

    .line 191
    .line 192
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_c

    .line 197
    .line 198
    :cond_a
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 199
    .line 200
    const-string v6, "freeform_corner_gesture_level"

    .line 201
    .line 202
    const/4 v7, 0x2

    .line 203
    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getCornerGestureCustomValue(I)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    iget-object v7, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 212
    .line 213
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 214
    .line 215
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 216
    .line 217
    .line 218
    monitor-enter v7

    .line 219
    :try_start_0
    iget-object v8, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 220
    .line 221
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 222
    .line 223
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_b

    .line 236
    .line 237
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    check-cast v9, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    iget-object v9, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 248
    .line 249
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 250
    .line 251
    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 252
    .line 253
    const-string v11, "corner_gesture_custom_value"

    .line 254
    .line 255
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    const/16 v16, 0x0

    .line 260
    .line 261
    const/4 v14, 0x1

    .line 262
    const/4 v15, 0x1

    .line 263
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 264
    .line 265
    .line 266
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBoundsIfNeeded()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    goto/16 :goto_6

    .line 272
    .line 273
    :cond_b
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 275
    .line 276
    .line 277
    :cond_c
    if-nez p1, :cond_d

    .line 278
    .line 279
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMinimalBatteryUseUri:Landroid/net/Uri;

    .line 280
    .line 281
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_f

    .line 286
    .line 287
    :cond_d
    const-string/jumbo v5, "minimal_battery_use"

    .line 288
    .line 289
    .line 290
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 295
    .line 296
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 297
    .line 298
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 299
    .line 300
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 301
    .line 302
    .line 303
    monitor-enter v6

    .line 304
    :try_start_1
    iget-object v7, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 305
    .line 306
    if-ne v5, v3, :cond_e

    .line 307
    .line 308
    move v5, v3

    .line 309
    goto :goto_3

    .line 310
    :cond_e
    move v5, v4

    .line 311
    :goto_3
    iput-boolean v5, v7, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 312
    .line 313
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 314
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 315
    .line 316
    .line 317
    :cond_f
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 318
    .line 319
    if-eqz v5, :cond_11

    .line 320
    .line 321
    if-nez p1, :cond_10

    .line 322
    .line 323
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFreeformCaptionTypeUri:Landroid/net/Uri;

    .line 324
    .line 325
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_11

    .line 330
    .line 331
    :cond_10
    const-string v5, "freeform_caption_type"

    .line 332
    .line 333
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 338
    .line 339
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 340
    .line 341
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 342
    .line 343
    invoke-virtual {v6, v5}, Lcom/android/server/wm/FreeformController;->updateFreeformCaptionType(I)V

    .line 344
    .line 345
    .line 346
    :cond_11
    if-nez p1, :cond_12

    .line 347
    .line 348
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    .line 349
    .line 350
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-eqz v5, :cond_14

    .line 355
    .line 356
    :cond_12
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 357
    .line 358
    const-string/jumbo v6, "open_in_split_screen_view"

    .line 359
    .line 360
    .line 361
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-ne v6, v3, :cond_13

    .line 366
    .line 367
    move v6, v3

    .line 368
    goto :goto_4

    .line 369
    :cond_13
    move v6, v4

    .line 370
    :goto_4
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    .line 371
    .line 372
    :cond_14
    if-nez p1, :cond_15

    .line 373
    .line 374
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    .line 375
    .line 376
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-eqz v5, :cond_18

    .line 381
    .line 382
    :cond_15
    const-string v5, "edge_enable"

    .line 383
    .line 384
    const/4 v6, -0x2

    .line 385
    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-ne v5, v3, :cond_16

    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_16
    move v3, v4

    .line 393
    :goto_5
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 394
    .line 395
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 396
    .line 397
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 398
    .line 399
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 400
    .line 401
    .line 402
    monitor-enter v5

    .line 403
    :try_start_2
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 404
    .line 405
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 406
    .line 407
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 408
    .line 409
    iget-object v6, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 410
    .line 411
    if-eqz v6, :cond_17

    .line 412
    .line 413
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 414
    .line 415
    iput-boolean v3, v6, Lcom/android/server/wm/DisplayPolicy;->mEdgeEnabled:Z

    .line 416
    .line 417
    :cond_17
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 418
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 419
    .line 420
    .line 421
    :cond_18
    if-nez p1, :cond_19

    .line 422
    .line 423
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexForceImmersiveModeSettingUri:Landroid/net/Uri;

    .line 424
    .line 425
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-eqz v3, :cond_1a

    .line 430
    .line 431
    :cond_19
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 432
    .line 433
    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 434
    .line 435
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 436
    .line 437
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 438
    .line 439
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    const-string/jumbo v6, "taskbar_hide_bar"

    .line 444
    .line 445
    .line 446
    sget v7, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 447
    .line 448
    invoke-static {v3, v6, v4, v7}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-virtual {v5, v3}, Lcom/android/server/wm/DexController;->updateForceImmersiveModeSetting(Z)V

    .line 453
    .line 454
    .line 455
    :cond_1a
    if-nez p1, :cond_1b

    .line 456
    .line 457
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexForceImmersiveModeEnabledUri:Landroid/net/Uri;

    .line 458
    .line 459
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_1c

    .line 464
    .line 465
    :cond_1b
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 466
    .line 467
    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 468
    .line 469
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 470
    .line 471
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 472
    .line 473
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    const-string/jumbo v6, "taskbar_hide_bar_enabled"

    .line 478
    .line 479
    .line 480
    sget v7, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 481
    .line 482
    invoke-static {v3, v6, v4, v7}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    invoke-virtual {v5, v3}, Lcom/android/server/wm/DexController;->updateForceImmersiveModeState(Z)V

    .line 487
    .line 488
    .line 489
    :cond_1c
    if-nez p1, :cond_1d

    .line 490
    .line 491
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexTouchPadUsingUri:Landroid/net/Uri;

    .line 492
    .line 493
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eqz v3, :cond_1f

    .line 498
    .line 499
    :cond_1d
    const-string/jumbo v3, "touchpad_enabled"

    .line 500
    .line 501
    .line 502
    sget v5, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 503
    .line 504
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    iget-object v4, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 509
    .line 510
    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 511
    .line 512
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 513
    .line 514
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 515
    .line 516
    .line 517
    monitor-enter v4

    .line 518
    :try_start_3
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 519
    .line 520
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 521
    .line 522
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 523
    .line 524
    iget-boolean v6, v5, Lcom/android/server/wm/DexController;->mDexTouchPadEnabled:Z

    .line 525
    .line 526
    if-eq v6, v3, :cond_1e

    .line 527
    .line 528
    iput-boolean v3, v5, Lcom/android/server/wm/DexController;->mDexTouchPadEnabled:Z

    .line 529
    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string/jumbo v6, "setDexTouchPadEnabledLocked: enabled="

    .line 533
    .line 534
    .line 535
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-boolean v5, v5, Lcom/android/server/wm/DexController;->mDexTouchPadEnabled:Z

    .line 539
    .line 540
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    const-string v5, "DexController"

    .line 548
    .line 549
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    :cond_1e
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 553
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 554
    .line 555
    .line 556
    :cond_1f
    if-nez p1, :cond_20

    .line 557
    .line 558
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexFontScaleUri:Landroid/net/Uri;

    .line 559
    .line 560
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-eqz v3, :cond_21

    .line 565
    .line 566
    :cond_20
    const-string v3, "font_scale"

    .line 567
    .line 568
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 569
    .line 570
    const/high16 v5, 0x3f800000    # 1.0f

    .line 571
    .line 572
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 585
    .line 586
    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 587
    .line 588
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 589
    .line 590
    invoke-virtual {v3, v2}, Lcom/android/server/wm/DexController;->updateDexFontScaleIfNeeded(F)V

    .line 591
    .line 592
    .line 593
    const-string v3, "MultiTaskingController"

    .line 594
    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string v5, "SettingsObserver_readSettings: dex_font_scale="

    .line 598
    .line 599
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    :cond_21
    if-nez p1, :cond_22

    .line 613
    .line 614
    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexStarShowingDelayTimeUri:Landroid/net/Uri;

    .line 615
    .line 616
    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-eqz v1, :cond_23

    .line 621
    .line 622
    :cond_22
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 623
    .line 624
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 625
    .line 626
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 627
    .line 628
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 629
    .line 630
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    const-string/jumbo v2, "mouse_immersive_time_control"

    .line 635
    .line 636
    .line 637
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 638
    .line 639
    const/4 v4, -0x1

    .line 640
    invoke-static {v0, v2, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DexController;->updateDexStarShowingDelayTime(I)V

    .line 645
    .line 646
    .line 647
    :cond_23
    return-void

    .line 648
    :catchall_1
    move-exception v0

    .line 649
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 650
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 651
    .line 652
    .line 653
    throw v0

    .line 654
    :catchall_2
    move-exception v0

    .line 655
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 656
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 657
    .line 658
    .line 659
    throw v0

    .line 660
    :catchall_3
    move-exception v0

    .line 661
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 662
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 663
    .line 664
    .line 665
    throw v0

    .line 666
    :goto_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 667
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 668
    .line 669
    .line 670
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SettingsObserver{mUriList="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p0, "}"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
