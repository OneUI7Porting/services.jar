.class public final Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "TipsManagerService"

    .line 12
    .line 13
    const-string v2, "com.samsung.android.app.tips"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 57
    .line 58
    const-string p1, "[GalaxyTips] Tips was uninstalled."

    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    sget-object p2, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 84
    .line 85
    const-string p2, "[GalaxyTips] Tips was installed. Start to register all filters"

    .line 86
    .line 87
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 94
    .line 95
    iget-boolean v1, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 105
    .line 106
    const-string/jumbo v1, "samsung.galaxy.tips.application.terminated"

    .line 107
    .line 108
    .line 109
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 110
    .line 111
    invoke-static {p2, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 116
    .line 117
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 118
    .line 119
    if-nez p2, :cond_3

    .line 120
    .line 121
    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 128
    .line 129
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 130
    .line 131
    if-nez p2, :cond_4

    .line 132
    .line 133
    const-string p2, "android.intent.action.NEW_OUTGOING_CALL"

    .line 134
    .line 135
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p2, "android.intent.action.PHONE_STATE"

    .line 139
    .line 140
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 144
    .line 145
    iget-object v4, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 146
    .line 147
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 148
    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v9, 0x2

    .line 151
    const/4 v7, 0x0

    .line 152
    move-object v3, p1

    .line 153
    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 157
    .line 158
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 159
    .line 160
    :cond_5
    :goto_1
    return-void
.end method
