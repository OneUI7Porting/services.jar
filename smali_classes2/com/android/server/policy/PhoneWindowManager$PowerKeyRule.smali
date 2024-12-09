.class public final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    const/16 p1, 0x1a

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    const/16 p1, 0x108

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 24
    .line 25
    :goto_0
    return-wide v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxMultiPressCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    :cond_2
    :goto_1
    return v1

    .line 30
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(IIJ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-ne p1, p2, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p2, v2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(IZZI)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 68
    .line 69
    iget v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 70
    .line 71
    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 72
    .line 73
    if-eq v3, v5, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "ActivityTaskManager"

    .line 77
    .line 78
    const-string v1, "No running task found!"

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    move-object v2, v4

    .line 84
    :goto_0
    iput-object v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 85
    .line 86
    iput-object v4, p1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 87
    .line 88
    iget-boolean v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 93
    .line 94
    if-ne v0, p2, :cond_3

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 97
    .line 98
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-direct {p2, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 109
    .line 110
    iget-boolean p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 111
    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    const/4 p0, 0x1

    .line 115
    if-ne p1, p0, :cond_4

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v4, 0x1

    .line 119
    move-wide v2, p3

    .line 120
    move v5, p2

    .line 121
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(JLandroid/view/KeyEvent;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 15
    .line 16
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 26
    .line 27
    iget-object v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 28
    .line 29
    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 30
    .line 31
    const-string v6, "WindowManager"

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    iget-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    const-string v0, "Not support long press power when device is not interactive."

    .line 40
    .line 41
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_0
    const/4 v5, 0x1

    .line 47
    iput-boolean v5, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const-string/jumbo v7, "powerLongPress: eventTime="

    .line 54
    .line 55
    .line 56
    const-string v8, " mLongPressOnPowerBehavior="

    .line 57
    .line 58
    invoke-static {v7, v3, v4, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget v8, v2, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, " behavior="

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    .line 83
    .line 84
    const-string v9, "HWB1006"

    .line 85
    .line 86
    const/4 v10, 0x4

    .line 87
    if-eqz v7, :cond_d

    .line 88
    .line 89
    iget-object v12, v2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 90
    .line 91
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-boolean v13, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 95
    .line 96
    iget-object v14, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 97
    .line 98
    const-string v15, "PhoneWindowManagerExt"

    .line 99
    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    invoke-virtual {v14}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    if-nez v16, :cond_1

    .line 107
    .line 108
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    new-instance v1, Landroid/content/Intent;

    .line 111
    .line 112
    const-string v3, "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

    .line 113
    .line 114
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 118
    .line 119
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v0, "startActivity, power off guide"

    .line 123
    .line 124
    .line 125
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_1
    iget-object v11, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 131
    .line 132
    const/16 v8, 0x1a

    .line 133
    .line 134
    invoke-virtual {v11, v8, v10}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-eqz v11, :cond_2

    .line 139
    .line 140
    const-string/jumbo v0, "skip long press power, requestedSystemKey"

    .line 141
    .line 142
    .line 143
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :cond_2
    const/high16 v11, 0x20000000

    .line 149
    .line 150
    and-int v11, p4, v11

    .line 151
    .line 152
    if-eqz v11, :cond_3

    .line 153
    .line 154
    move v11, v5

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const/4 v11, 0x0

    .line 157
    :goto_0
    if-eq v0, v5, :cond_b

    .line 158
    .line 159
    const-string/jumbo v10, "open_dictation"

    .line 160
    .line 161
    .line 162
    packed-switch v0, :pswitch_data_1

    .line 163
    .line 164
    .line 165
    const-string v1, "Invalid side key long press info"

    .line 166
    .line 167
    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    .line 173
    .line 174
    if-eqz v0, :cond_c

    .line 175
    .line 176
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    iput-boolean v5, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 187
    .line 188
    invoke-virtual {v12, v8, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGoogleQuickSearchBoxAsDigitalAssistant()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-virtual {v14}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_6

    .line 204
    .line 205
    const-string v1, "invocation_type"

    .line 206
    .line 207
    const/4 v3, 0x5

    .line 208
    invoke-static {v3, v1}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 217
    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    .line 223
    :catch_0
    :cond_5
    const-string/jumbo v0, "run digital assistant."

    .line 224
    .line 225
    .line 226
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_6
    const-string/jumbo v0, "statusBar is null"

    .line 231
    .line 232
    .line 233
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_7
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->setGoogleQuickSearchBoxAsDigitalAssistant()V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v0, "setGoogleQuickSearchBoxAsDigitalAssistant"

    .line 241
    .line 242
    .line 243
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 247
    .line 248
    if-eqz v0, :cond_c

    .line 249
    .line 250
    const-string v0, "Digital Assistant"

    .line 251
    .line 252
    invoke-static {v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :pswitch_2
    iget-object v10, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 257
    .line 258
    iget-object v11, v10, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 259
    .line 260
    const/4 v12, 0x4

    .line 261
    invoke-virtual {v11, v12, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    if-nez v11, :cond_8

    .line 266
    .line 267
    const-string/jumbo v1, "powerLongPress, info is null"

    .line 268
    .line 269
    .line 270
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_8
    iget v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 275
    .line 276
    invoke-virtual {v10, v0, v1, v8}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :pswitch_3
    if-eqz v13, :cond_a

    .line 281
    .line 282
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 283
    .line 284
    if-eqz v0, :cond_9

    .line 285
    .line 286
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_9

    .line 291
    .line 292
    iput-boolean v5, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 293
    .line 294
    invoke-virtual {v12, v8, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_9
    new-instance v0, Lcom/android/server/policy/BixbyService$Params;

    .line 299
    .line 300
    invoke-direct {v0, v1, v11}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    .line 301
    .line 302
    .line 303
    iput-boolean v5, v0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    .line 304
    .line 305
    iput-boolean v5, v0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    .line 306
    .line 307
    new-instance v1, Lcom/android/server/policy/BixbyService$Params;

    .line 308
    .line 309
    invoke-direct {v1, v0}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    .line 315
    .line 316
    .line 317
    const-string/jumbo v0, "run wake Bixby"

    .line 318
    .line 319
    .line 320
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 324
    .line 325
    if-eqz v0, :cond_c

    .line 326
    .line 327
    const-string v0, "Wake Bixby"

    .line 328
    .line 329
    invoke-static {v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_a
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_b
    if-eqz v11, :cond_c

    .line 337
    .line 338
    const-string v1, "Side key long press global action"

    .line 339
    .line 340
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_c
    :goto_2
    const-string v0, "consume powerLongPress"

    .line 345
    .line 346
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    :goto_3
    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :cond_d
    :goto_4
    const/16 v1, 0x2713

    .line 354
    .line 355
    if-eq v0, v5, :cond_15

    .line 356
    .line 357
    const/4 v7, 0x2

    .line 358
    if-eq v0, v7, :cond_11

    .line 359
    .line 360
    const/4 v8, 0x3

    .line 361
    if-eq v0, v8, :cond_11

    .line 362
    .line 363
    const/4 v8, 0x4

    .line 364
    if-eq v0, v8, :cond_f

    .line 365
    .line 366
    const/4 v6, 0x5

    .line 367
    if-eq v0, v6, :cond_e

    .line 368
    .line 369
    goto/16 :goto_7

    .line 370
    .line 371
    :cond_e
    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 372
    .line 373
    const/16 v0, 0x2712

    .line 374
    .line 375
    const-string v1, "Power - Long Press - Go To Assistant"

    .line 376
    .line 377
    const/4 v5, 0x0

    .line 378
    invoke-virtual {v2, v0, v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 379
    .line 380
    .line 381
    const/4 v1, -0x2

    .line 382
    const/4 v5, 0x6

    .line 383
    const/4 v6, 0x0

    .line 384
    move-object v0, v2

    .line 385
    move v2, v5

    .line 386
    move-wide/from16 v3, p1

    .line 387
    .line 388
    move-object v5, v6

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_7

    .line 393
    .line 394
    :cond_f
    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 395
    .line 396
    const-string v0, "Power - Long Press - Go To Voice Assist"

    .line 397
    .line 398
    const/4 v3, 0x0

    .line 399
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 400
    .line 401
    .line 402
    iget-boolean v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 403
    .line 404
    iget-object v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 405
    .line 406
    const-string v3, "android.intent.action.VOICE_ASSIST"

    .line 407
    .line 408
    if-eqz v1, :cond_10

    .line 409
    .line 410
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_10

    .line 415
    .line 416
    iget-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 417
    .line 418
    new-instance v1, Landroid/content/Intent;

    .line 419
    .line 420
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 424
    .line 425
    if-eqz v0, :cond_17

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_10
    new-instance v1, Landroid/content/Intent;

    .line 432
    .line 433
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    const/4 v3, 0x0

    .line 437
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 438
    .line 439
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 440
    .line 441
    .line 442
    goto :goto_7

    .line 443
    :cond_11
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 444
    .line 445
    if-eqz v3, :cond_12

    .line 446
    .line 447
    iget-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 448
    .line 449
    if-eqz v3, :cond_12

    .line 450
    .line 451
    const-string v0, "Do not shutdown. Maybe power wake lock is delayed."

    .line 452
    .line 453
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_12
    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 458
    .line 459
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_13

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_13
    const-string v3, "Power - Long Press - Shut Off"

    .line 467
    .line 468
    const/4 v4, 0x0

    .line 469
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 470
    .line 471
    .line 472
    iget-object v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 473
    .line 474
    const-string v3, "globalactions"

    .line 475
    .line 476
    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 480
    .line 481
    if-ne v0, v7, :cond_14

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_14
    const/4 v5, 0x0

    .line 485
    :goto_5
    invoke-interface {v1, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 486
    .line 487
    .line 488
    goto :goto_7

    .line 489
    :cond_15
    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 490
    .line 491
    const-string v0, "Power - Long Press - Global Actions"

    .line 492
    .line 493
    const/4 v3, 0x0

    .line 494
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 495
    .line 496
    .line 497
    if-eqz v7, :cond_16

    .line 498
    .line 499
    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    .line 500
    .line 501
    .line 502
    goto :goto_6

    .line 503
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 504
    .line 505
    .line 506
    :goto_6
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 507
    .line 508
    if-eqz v0, :cond_17

    .line 509
    .line 510
    iget-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    const-string v0, "Power off menu"

    .line 516
    .line 517
    invoke-static {v9, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    :cond_17
    :goto_7
    return-void

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onMultiPress(JIILandroid/view/KeyEvent;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p4, 0x3

    .line 7
    iget-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8
    .line 9
    if-ne p3, p4, :cond_2

    .line 10
    .line 11
    iget p4, p5, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p4, v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 19
    .line 20
    const/16 p1, 0x108

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 31
    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 42
    .line 43
    if-ne p0, v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    :try_start_0
    iget-object p1, p5, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 50
    .line 51
    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-interface {p1, p0, p2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p2, "Failed to start task "

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 67
    .line 68
    iget p2, p2, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, " from recents"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "WindowManager"

    .line 83
    .line 84
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    invoke-static {p5, p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object p4, p5, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 92
    .line 93
    new-instance p5, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;

    .line 94
    .line 95
    invoke-direct {p5, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, p5, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 103
    .line 104
    move-wide v1, p1

    .line 105
    move v3, p3

    .line 106
    move v4, p4

    .line 107
    move-object v5, p5

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPress(JLandroid/view/KeyEvent;I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget-boolean p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    iget p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p4, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 19
    .line 20
    new-instance p4, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p4, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p4, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    iget-boolean p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x1

    .line 38
    move-wide v2, p1

    .line 39
    move v5, p4

    .line 40
    move-object v6, p3

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVeryLongPress()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const-string v1, "Power - Very Long Press - Show Global Actions"

    .line 26
    .line 27
    const/16 v2, 0x2713

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportLongPress()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_1
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public supportVeryLongPress()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
