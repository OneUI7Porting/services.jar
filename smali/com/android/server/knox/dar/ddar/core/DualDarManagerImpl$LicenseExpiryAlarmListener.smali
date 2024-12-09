.class public final Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LicenseExpiryAlarmListener onAlarm() "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "DualDarManagerImpl"

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "user_id"

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mUserId:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v1, "EXPIRE_TRIAL_PERIOD_TIME"

    .line 45
    .line 46
    const-string v2, "KNOXCORE_PROXY_AGENT"

    .line 47
    .line 48
    const-string v3, "DUALDAR_CONTROLLER_SERVICE"

    .line 49
    .line 50
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    return-void
.end method
