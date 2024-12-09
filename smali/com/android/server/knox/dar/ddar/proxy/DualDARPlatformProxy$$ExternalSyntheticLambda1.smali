.class public final synthetic Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    .line 4
    .line 5
    check-cast p1, Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "DualDARPlatformProxy"

    .line 11
    .line 12
    const-string/jumbo v2, "user_id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_0
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v4, "getConfig failed ! Component may be null"

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-array v2, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, -0x1

    .line 65
    :goto_0
    :try_start_1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 66
    .line 67
    invoke-direct {v2, v0, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    const-string/jumbo p0, "getConfig Failed"

    .line 76
    .line 77
    .line 78
    new-array p1, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object p0
.end method
