.class public final Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "BluetoothPolicyService"

    .line 7
    .line 8
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 11
    .line 12
    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    new-instance v4, Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v5, "time"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "log"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "StoreLogThread - cv: "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 74
    .line 75
    const-string v2, "BluetoothLogTable"

    .line 76
    .line 77
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    .line 83
    const-string v1, "StoreLogThread - Failed on inserting log"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    const-string v1, "StoreLogThread - InterruptedException on take"

    .line 90
    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_0
    new-instance v0, Landroid/os/ConditionVariable;

    .line 96
    .line 97
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    .line 101
    .line 102
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 103
    .line 104
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v3, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    invoke-direct {v3, v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const-wide/16 v3, 0x2710

    .line 125
    .line 126
    invoke-virtual {v0, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    .line 127
    .line 128
    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 132
    .line 133
    .line 134
    :cond_1
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
