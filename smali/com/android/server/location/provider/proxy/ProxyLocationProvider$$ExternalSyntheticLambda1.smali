.class public final synthetic Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic f$0:Landroid/location/provider/ProviderRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;->f$0:Landroid/location/provider/ProviderRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;->f$0:Landroid/location/provider/ProviderRequest;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p0}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
