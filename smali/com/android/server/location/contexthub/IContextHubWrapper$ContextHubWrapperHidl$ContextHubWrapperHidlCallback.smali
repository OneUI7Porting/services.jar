.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;
.super Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleAppAbort(JI)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;-><init>(JI)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final handleAppsInfo(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 23
    .line 24
    new-instance v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v3, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 30
    .line 31
    iget-wide v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 32
    .line 33
    iput-wide v4, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 34
    .line 35
    iget v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 36
    .line 37
    iput v4, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 38
    .line 39
    iget-object v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object v4, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-boolean v1, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 44
    .line 45
    iput-boolean v1, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->handleAppsInfo_1_2(Ljava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final handleAppsInfo_1_2(Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 23
    .line 24
    new-instance v8, Landroid/hardware/location/NanoAppState;

    .line 25
    .line 26
    iget-object v2, v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 27
    .line 28
    iget-wide v3, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 29
    .line 30
    iget v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 31
    .line 32
    iget-boolean v6, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 33
    .line 34
    iget-object v7, v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 35
    .line 36
    move-object v2, v8

    .line 37
    invoke-direct/range {v2 .. v7}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleNanoappInfo(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 2
    .line 3
    iget-short v0, p1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final handleClientMsg_1_2(Landroid/hardware/contexthub/V1_2/ContextHubMsg;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 4
    .line 5
    iget-short v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p1, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->permissions:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final handleHubEvent(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "toContextHubEvent: Unknown event type: "

    .line 9
    .line 10
    .line 11
    const-string v1, "ContextHubServiceUtil"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleContextHubEvent(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final handleTxnResult(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleTransactionResult(IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
