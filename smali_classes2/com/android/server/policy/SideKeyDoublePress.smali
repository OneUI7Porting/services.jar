.class public abstract Lcom/android/server/policy/SideKeyDoublePress;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;


# direct methods
.method public static getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .locals 9

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    return-object v7

    .line 15
    :cond_0
    sget-object v6, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 16
    .line 17
    if-eqz v6, :cond_2

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-eqz v8, :cond_1

    .line 27
    .line 28
    const-string v6, "SideKeyDoublePress"

    .line 29
    .line 30
    const-string v8, "appName is empty."

    .line 31
    .line 32
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move v6, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v6, v6, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    :goto_0
    if-eqz v6, :cond_2

    .line 44
    .line 45
    sget-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    sparse-switch v8, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :sswitch_0
    const-string/jumbo v8, "secureFolder/secureFolder"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v6, v0

    .line 71
    goto :goto_1

    .line 72
    :sswitch_1
    const-string/jumbo v8, "torch/torch"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-nez v8, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v6, v1

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string/jumbo v8, "wakeBixby_openApps/wakeBixby_openApps"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    move v6, v2

    .line 95
    goto :goto_1

    .line 96
    :sswitch_3
    const-string v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 97
    .line 98
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    move v6, v3

    .line 106
    goto :goto_1

    .line 107
    :sswitch_4
    const-string/jumbo v8, "samsungpay://simplepay/sidekey"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-nez v8, :cond_7

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    move v6, v4

    .line 118
    goto :goto_1

    .line 119
    :sswitch_5
    const-string v8, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 120
    .line 121
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-nez v8, :cond_8

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_8
    move v6, v5

    .line 129
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    .line 133
    .line 134
    invoke-direct {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iput v4, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 138
    .line 139
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 140
    .line 141
    return-object v0

    .line 142
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS_SECURE_FOLDER:Z

    .line 143
    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 147
    .line 148
    invoke-direct {v7, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    :cond_9
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 152
    .line 153
    return-object v7

    .line 154
    :pswitch_1
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TORCH:Z

    .line 155
    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 159
    .line 160
    invoke-direct {v7, p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    :cond_a
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 164
    .line 165
    return-object v7

    .line 166
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 167
    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 171
    .line 172
    invoke-direct {v7, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    :cond_b
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 176
    .line 177
    return-object v7

    .line 178
    :pswitch_3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 179
    .line 180
    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 184
    .line 185
    return-object v0

    .line 186
    :pswitch_4
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 187
    .line 188
    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 192
    .line 193
    return-object v0

    .line 194
    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 195
    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    .line 199
    .line 200
    invoke-direct {v7, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    :cond_c
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 204
    .line 205
    return-object v7

    .line 206
    nop

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x49b8cf78 -> :sswitch_5
        -0x2ed4269d -> :sswitch_4
        0x5a5f84 -> :sswitch_3
        0x5a741d0f -> :sswitch_2
        0x6a598029 -> :sswitch_1
        0x760519cf -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/16 v2, 0x1a

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v6, v1

    .line 32
    check-cast v6, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-static {v1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    instance-of v1, v2, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAction(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iput-object p0, v2, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 74
    .line 75
    invoke-virtual {v2, v6, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->preCondition(Landroid/content/Intent;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_5

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {v2, v6}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->updateTargetComponent(Landroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string/jumbo v0, "show_on_keyguard"

    .line 96
    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    new-instance p0, Landroid/content/Intent;

    .line 106
    .line 107
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v0, "ignoreKeyguardState"

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    const-string v0, "ignoreUnlock"

    .line 117
    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    :goto_1
    move-object v7, p0

    .line 122
    goto :goto_2

    .line 123
    :cond_6
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    goto :goto_1

    .line 128
    :goto_2
    invoke-virtual {v2, v7}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->showCoverToast(Landroid/content/Intent;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v0, "launch, showCoverToast="

    .line 135
    .line 136
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, " "

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string v0, "SideKeyDoublePress"

    .line 155
    .line 156
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-object v3, p1

    .line 160
    move v4, p2

    .line 161
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->startTargetApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V

    .line 162
    .line 163
    .line 164
    :cond_7
    :goto_3
    return-void
.end method
