.class public final Lcom/samsung/android/server/contextengine/SemContextEngineService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/contextengine/SemContextEngineService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

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
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "com.samsung.android.mcfds"

    .line 14
    .line 15
    const-string v2, "SemContextEngineService"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 20
    .line 21
    iget-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    .line 22
    .line 23
    if-nez p2, :cond_3

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    .line 27
    .line 28
    const-string p1, "ACTION_SCREEN_ON"

    .line 29
    .line 30
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/content/Intent;

    .line 34
    .line 35
    const-string p2, "com.samsung.android.ce.SCREEN_ON"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 60
    .line 61
    iget-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    .line 67
    .line 68
    const-string p1, "ACTION_SCREEN_OFF"

    .line 69
    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance p1, Landroid/content/Intent;

    .line 74
    .line 75
    const-string p2, "com.samsung.android.ce.SCREEN_OFF"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    const-string p1, "ACTION_AIRPLANE_MODE_CHANGED"

    .line 100
    .line 101
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroid/content/Intent;

    .line 105
    .line 106
    const-string v0, "com.samsung.android.ce.AIRPLANE_MODE"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_3

    .line 136
    .line 137
    const-string p1, "ACTION_SIM_CARD_STATE_CHANGED"

    .line 138
    .line 139
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    new-instance p1, Landroid/content/Intent;

    .line 143
    .line 144
    const-string v0, "com.samsung.android.ce.SIM_CARD_STATE_CHANGED"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_0
    return-void
.end method
