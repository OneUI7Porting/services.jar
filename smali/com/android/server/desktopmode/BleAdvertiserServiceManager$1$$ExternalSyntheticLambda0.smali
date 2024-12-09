.class public final synthetic Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/os/IBinder;

    .line 11
    .line 12
    const-string v1, "[DMS]BleAdvertiserServiceManager"

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    iput v3, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mConnectionBackoffAttempts:I

    .line 23
    .line 24
    iget-object v4, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeferredConnectionCallback:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 32
    .line 33
    iget-object v4, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v2, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mDeathRecipient:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;

    .line 43
    .line 44
    invoke-interface {p0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/samsung/android/desktopmode/IBleAdvertiserService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iput-object p0, v2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 54
    .line 55
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v2, "onServiceConnected(), mService="

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mService:Lcom/samsung/android/desktopmode/IBleAdvertiserService;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    const-string v2, "Lost connection to the service"

    .line 84
    .line 85
    invoke-static {v1, v2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->unbindService()V

    .line 91
    .line 92
    .line 93
    iget-object p0, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Landroid/content/ComponentName;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "Binding died of \'"

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p0, "\', try reconnecting"

    .line 119
    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string v1, "[DMS]BleAdvertiserServiceManager"

    .line 128
    .line 129
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p0, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Landroid/content/ComponentName;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "Null binding of \'"

    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p0, "\', try reconnecting"

    .line 158
    .line 159
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string v1, "[DMS]BleAdvertiserServiceManager"

    .line 167
    .line 168
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p0, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
