.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;
.super Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 5

    .line 1
    iget-object p1, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_6

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    .line 20
    .line 21
    iget-object v0, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mId:Ljava/lang/String;

    .line 22
    .line 23
    iget p2, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mControl:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->getCallForId(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    const-string v4, "CallMetadataIcs"

    .line 40
    .line 41
    packed-switch p2, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :pswitch_0
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/telecom/Call;->unhold()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const-string p2, "Failed to process unhold action; no matching call"

    .line 55
    .line 56
    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_1
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/telecom/Call;->hold()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-string p2, "Failed to process hold action; no matching call"

    .line 69
    .line 70
    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_2
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/telecom/Call;->disconnect()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const-string p2, "Failed to process end action; no matching call"

    .line 83
    .line 84
    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/telecom/InCallService;->setMuted(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->setMuted(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_5
    const-class p2, Landroid/telecom/TelecomManager;

    .line 97
    .line 98
    invoke-virtual {v1, p2}, Landroid/telecom/InCallService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Landroid/telecom/TelecomManager;

    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_6
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 113
    .line 114
    if-ne p2, v2, :cond_5

    .line 115
    .line 116
    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 117
    .line 118
    invoke-virtual {p2, v2}, Landroid/telecom/Call;->reject(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-string p2, "Failed to process reject action; no matching call"

    .line 123
    .line 124
    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_7
    if-eqz v0, :cond_4

    .line 129
    .line 130
    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 131
    .line 132
    invoke-virtual {p2, v3}, Landroid/telecom/Call;->answer(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const-string p2, "Failed to process accept action; no matching call"

    .line 137
    .line 138
    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_6
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string p0, "CrossDeviceSyncController"

    .line 44
    .line 45
    const-string p1, "Cannot sync to requested device; connection is blocked"

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    filled-new-array {p1}, [I

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 68
    .line 69
    const v1, 0x63678883

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateNumberOfActiveSyncAssociations(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    move v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    add-int/2addr p1, v0

    .line 20
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sub-int/2addr p1, v0

    .line 24
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 25
    .line 26
    :goto_1
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 29
    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 39
    .line 40
    if-lez p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCalls()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    if-eqz v1, :cond_3

    .line 98
    .line 99
    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 100
    .line 101
    if-gtz p1, :cond_3

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_2
    return-void
.end method
