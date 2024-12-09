.class public final Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallAttributesListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStatesChanged(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "VZW-"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 25
    .line 26
    const-string v0, "ATT"

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 38
    .line 39
    const-string v0, "TMO"

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    .line 54
    const-string/jumbo v0, "video"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    .line 65
    const-string v1, "activevideo"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 72
    .line 73
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    .line 75
    const-string v4, "epdg"

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    iput-boolean v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 82
    .line 83
    const-string v1, "NetworkPolicy"

    .line 84
    .line 85
    const-string/jumbo v3, "onCallStatesChanged - hasVideoCall: "

    .line 86
    .line 87
    .line 88
    const-string v4, ", hasActiveVideoCall: "

    .line 89
    .line 90
    const-string v5, ", mHasEpdgCall: "

    .line 91
    .line 92
    invoke-static {v3, p1, v4, v0, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 97
    .line 98
    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 99
    .line 100
    invoke-static {v1, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 104
    .line 105
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 106
    .line 107
    if-eq v1, p1, :cond_3

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 112
    .line 113
    iput-boolean v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 114
    .line 115
    const-string p1, "NetworkPolicy"

    .line 116
    .line 117
    const-string v0, "Video call start."

    .line 118
    .line 119
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 123
    .line 124
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 125
    .line 126
    monitor-enter v0

    .line 127
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 130
    .line 131
    .line 132
    monitor-exit v0

    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0

    .line 137
    :cond_2
    if-nez p1, :cond_3

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 140
    .line 141
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 144
    .line 145
    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 146
    .line 147
    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 148
    .line 149
    const-string p1, "NetworkPolicy"

    .line 150
    .line 151
    const-string v0, "Video call end."

    .line 152
    .line 153
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 159
    .line 160
    monitor-enter p1

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 179
    .line 180
    .line 181
    monitor-exit p1

    .line 182
    goto :goto_0

    .line 183
    :catchall_1
    move-exception p0

    .line 184
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    throw p0

    .line 186
    :cond_3
    :goto_0
    return-void
.end method
