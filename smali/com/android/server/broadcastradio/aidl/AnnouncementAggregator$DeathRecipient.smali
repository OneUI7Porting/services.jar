.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "BcRadioAidlSrv.AnnAggr"

    .line 12
    .line 13
    const-string v2, "Cannot close Announcement aggregator for DeathRecipient"

    .line 14
    .line 15
    invoke-static {v1, p0, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
