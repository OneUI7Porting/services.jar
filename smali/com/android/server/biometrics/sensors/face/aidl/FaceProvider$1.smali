.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "onUserSwitching: "

    .line 13
    .line 14
    .line 15
    const-string v2, ", "

    .line 16
    .line 17
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 38
    .line 39
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string/jumbo p1, "sensor is not added yet"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 73
    .line 74
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string/jumbo p1, "onUserSwitching: skip first event with user 0"

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 92
    .line 93
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string/jumbo v1, "onUserSwitching: "

    .line 107
    .line 108
    .line 109
    const-string v2, ", "

    .line 110
    .line 111
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 132
    .line 133
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string/jumbo p1, "sensor is not added yet"

    .line 150
    .line 151
    .line 152
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 167
    .line 168
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 169
    .line 170
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 171
    .line 172
    if-nez p1, :cond_3

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    const-string/jumbo p1, "onUserSwitching HIDL: skip first event with user 0"

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 186
    .line 187
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 194
    .line 195
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    .line 196
    .line 197
    new-instance v7, Landroid/os/Binder;

    .line 198
    .line 199
    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    iget-object p0, v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 210
    .line 211
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    const/4 v9, 0x1

    .line 215
    move-object v3, v0

    .line 216
    move v6, p1

    .line 217
    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    .line 222
    .line 223
    :goto_1
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
