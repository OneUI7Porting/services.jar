.class public final Lcom/android/server/DeviceIdleController$Injector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field public final mContext:Landroid/content/Context;

.field public mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DeviceIdleController"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method