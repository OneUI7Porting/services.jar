.class public final Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/devicepolicy/UCMProvisioningHelper;

.field public final synthetic val$errorCode:[I

.field public final synthetic val$finished:[Z

.field public final synthetic val$mutex:Ljava/lang/Object;

.field public final synthetic val$success:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/UCMProvisioningHelper;[Z[ILjava/lang/Object;[ZI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/UCMProvisioningHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$success:[Z

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$errorCode:[I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$finished:[Z

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "UCMProvisioningHelper"

    .line 11
    .line 12
    const-string v2, "UCM Managed Profile Completed Service onReceived is called: "

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/UCMProvisioningHelper;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/UCMProvisioningHelper;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->connection:Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "com.samsung.android.knox.ucm.action.UCM_COMPLETED_PROVISIONING_SUCCESS"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$success:[Z

    .line 45
    .line 46
    aput-boolean v1, p2, v2

    .line 47
    .line 48
    sget-object p2, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    const-string/jumbo v0, "ucm-config"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    :cond_0
    const-string p2, "UCMProvisioningHelper"

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v3, "resetUCMProfile: "

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v3, "persona"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager;->resetUCMProfile()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$success:[Z

    .line 108
    .line 109
    aput-boolean v2, p1, v2

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$errorCode:[I

    .line 112
    .line 113
    const-string v0, "ERROR_CODE"

    .line 114
    .line 115
    const/4 v3, 0x5

    .line 116
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    aput p2, p1, v2

    .line 121
    .line 122
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter p1

    .line 125
    :try_start_0
    iget-object p2, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$finished:[Z

    .line 126
    .line 127
    aput-boolean v1, p2, v2

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 132
    .line 133
    .line 134
    monitor-exit p1

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0

    .line 139
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v0, "UCMProvisioningHelper"

    .line 144
    .line 145
    const-string v1, "UCM Managed Profile Started Service onReceived is called: "

    .line 146
    .line 147
    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/UCMProvisioningHelper;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->this$0:Lcom/android/server/devicepolicy/UCMProvisioningHelper;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->connection:Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v0, "com.samsung.android.knox.ucm.action.UCM_STARTED_PROVISIONING_SUCCESS"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    const/4 v0, 0x1

    .line 174
    const/4 v1, 0x0

    .line 175
    if-eqz p1, :cond_4

    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$success:[Z

    .line 178
    .line 179
    aput-boolean v0, p1, v1

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$success:[Z

    .line 183
    .line 184
    aput-boolean v1, p1, v1

    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$errorCode:[I

    .line 187
    .line 188
    const-string v2, "ERROR_CODE"

    .line 189
    .line 190
    const/4 v3, 0x5

    .line 191
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    aput p2, p1, v1

    .line 196
    .line 197
    :goto_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 198
    .line 199
    monitor-enter p1

    .line 200
    :try_start_1
    iget-object p2, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$finished:[Z

    .line 201
    .line 202
    aput-boolean v0, p2, v1

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$1;->val$mutex:Ljava/lang/Object;

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 207
    .line 208
    .line 209
    monitor-exit p1

    .line 210
    return-void

    .line 211
    :catchall_1
    move-exception p0

    .line 212
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    throw p0

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
