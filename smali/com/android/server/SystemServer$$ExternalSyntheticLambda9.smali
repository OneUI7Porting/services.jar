.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 2
    .line 3
    const-string/jumbo p0, "tethering"

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
