.class public final Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    const-string p1, "RFCommServiceLauncher"

    .line 2
    .line 3
    const-string p2, "HotspotRFCommService is connected"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    .line 12
    .line 13
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "RFCommServiceLauncher"

    .line 2
    .line 3
    const-string v0, "HotspotRFCommService is disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0xbb8

    .line 19
    .line 20
    iget-object p0, p1, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
