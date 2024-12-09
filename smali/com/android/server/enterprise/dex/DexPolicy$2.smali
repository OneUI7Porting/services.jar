.class public final Lcom/android/server/enterprise/dex/DexPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

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
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    const-string v0, "DexPolicyService"

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string p0, "action is null!"

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sparse-switch v2, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x2

    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v1, p1

    .line 59
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_0
    const-string/jumbo p0, "dex exit "

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_1
    const-string/jumbo p0, "dex enter "

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_2
    const-string p2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 78
    .line 79
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 83
    .line 84
    iget-object p2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    .line 86
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-nez p2, :cond_4

    .line 101
    .line 102
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 103
    .line 104
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 120
    .line 121
    iget-object v0, p2, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    .line 122
    .line 123
    invoke-virtual {p2, v0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->exitDexModeSetPackageState()V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    sget-boolean p1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 150
    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_1
    return-void

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x35f22cb2 -> :sswitch_2
        0x8a75b96 -> :sswitch_1
        0x6c272afe -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
