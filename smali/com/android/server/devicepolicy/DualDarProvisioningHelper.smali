.class public final Lcom/android/server/devicepolicy/DualDarProvisioningHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

.field public final mContext:Landroid/content/Context;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/UserManagerInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    return-void
.end method

.method public static getDualDARConfigParams(Landroid/content/Context;Landroid/os/PersistableBundle;)Landroid/os/Bundle;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->isDualDARIntentProvisioned(Landroid/os/PersistableBundle;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    const-string/jumbo v0, "dualdar-config-client-package"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string/jumbo v2, "dualdar-config-client-signature"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string/jumbo v4, "dualdar-config-client-location"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v5, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v6, "dualdar-config"

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v6, "default"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    move-object v7, p1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v7, v1

    .line 72
    :goto_0
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    move-object v3, p1

    .line 82
    :cond_3
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    move-object p1, p0

    .line 93
    :goto_1
    invoke-virtual {v5, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v5
.end method

.method public static getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string/jumbo v0, "persona"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method public static isDualDARConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "DualDarProvisioningHelper"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v2, "dualdar-config"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "isDualDARConfigured from provisioning params"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-string/jumbo p0, "isDualDARConfigured from preset params"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static isDualDARIntentProvisioned(Landroid/os/PersistableBundle;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo v0, "dualdar-config"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "DualDarProvisioningHelper"

    .line 13
    .line 14
    const-string/jumbo v0, "isDualDARIntentProvisioned from provisioning params"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static isDualDARNativeCrypto(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "dualdar-config-client-package"

    .line 3
    .line 4
    .line 5
    const-string v2, "DualDarProvisioningHelper"

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string p0, "Custom crypto from provisioning params"

    .line 20
    .line 21
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v3, 0x1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string/jumbo v4, "dualdar-config"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string/jumbo p0, "native crypto from provisioning params"

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v3

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string/jumbo p1, "default"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    const-string/jumbo p0, "isDualDARNativeCrypto from preset params"

    .line 68
    .line 69
    .line 70
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_2
    return v0
.end method


# virtual methods
.method public final startProvisionService(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    .line 4
    .line 5
    const/16 v1, 0x41

    .line 6
    .line 7
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 15
    .line 16
    const-string/jumbo p1, "startProvisionService : failed to startService."

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
