.class public final Lcom/android/server/os/DeviceIdentifiersPolicyService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "device_identifiers"

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
