.class public final Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_3
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 51
    .line 52
    new-instance p1, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 10
    .line 11
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 27
    .line 28
    const-string/jumbo v2, "user_setup_complete"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    return-void

    .line 98
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 102
    .line 103
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 111
    .line 112
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_2
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 120
    .line 121
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string/jumbo v2, "user_setup_complete"

    .line 144
    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 148
    .line 149
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    const/4 v2, 0x1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    .line 156
    move v1, v2

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    move v1, v3

    .line 159
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string v4, "accessibility_display_inversion_enabled"

    .line 168
    .line 169
    invoke-static {p0, v4, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_2

    .line 174
    .line 175
    move v3, v2

    .line 176
    :cond_2
    if-nez v1, :cond_4

    .line 177
    .line 178
    if-eqz v3, :cond_3

    .line 179
    .line 180
    sget-object p0, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    const/4 p0, 0x0

    .line 184
    :goto_1
    const/16 p1, 0x12c

    .line 185
    .line 186
    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 187
    .line 188
    .line 189
    :cond_4
    return-void

    .line 190
    :pswitch_3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 194
    .line 195
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyColorinversion(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
