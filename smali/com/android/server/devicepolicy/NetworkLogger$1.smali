.class public final Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnectEvent(Ljava/lang/String;IJI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/server/devicepolicy/NetworkLogger;->mTargetUserId:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void

    .line 27
    :cond_2
    :goto_0
    new-instance v0, Landroid/app/admin/ConnectEvent;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 32
    .line 33
    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v2, v0

    .line 38
    move-object v3, p1

    .line 39
    move v4, p2

    .line 40
    move-wide v6, p3

    .line 41
    invoke-direct/range {v2 .. v7}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 14
    .line 15
    iget v1, v1, Lcom/android/server/devicepolicy/NetworkLogger;->mTargetUserId:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    :goto_0
    new-instance v1, Landroid/app/admin/DnsEvent;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    move/from16 v3, p9

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    move-object v3, v1

    .line 41
    move-object v4, p4

    .line 42
    move-object v5, p5

    .line 43
    move/from16 v6, p6

    .line 44
    .line 45
    move-wide/from16 v8, p7

    .line 46
    .line 47
    invoke-direct/range {v3 .. v9}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "network_event"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method