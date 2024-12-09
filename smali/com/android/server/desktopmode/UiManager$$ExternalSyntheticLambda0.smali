.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    const/16 p1, 0x190

    iput p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;II)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 51
    .line 52
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 67
    .line 68
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 75
    .line 76
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 83
    .line 84
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 85
    .line 86
    iget v1, v0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 87
    .line 88
    if-eq v1, p0, :cond_0

    .line 89
    .line 90
    iput p0, v0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 91
    .line 92
    iget-object p0, v0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 95
    .line 96
    check-cast p0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 99
    .line 100
    .line 101
    iget-boolean p0, v0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 102
    .line 103
    if-eqz p0, :cond_0

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    .line 106
    .line 107
    .line 108
    :cond_0
    return-void

    .line 109
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 110
    .line 111
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 117
    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v2, "handleFinishActivity(), type="

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "[DMS]UiManager"

    .line 140
    .line 141
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object v1, v0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 145
    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->finishActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 157
    const/4 v2, 0x0

    .line 158
    iget-object v3, v0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 159
    .line 160
    const/16 v4, 0x385

    .line 161
    .line 162
    invoke-virtual {v3, v4, p0, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 170
    .line 171
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 178
    .line 179
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;->f$1:I

    .line 180
    .line 181
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
