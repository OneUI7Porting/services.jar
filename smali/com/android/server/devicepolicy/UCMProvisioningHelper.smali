.class public final Lcom/android/server/devicepolicy/UCMProvisioningHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static ucmProfile:Landroid/os/Bundle;


# instance fields
.field public final connection:Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->connection:Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static getUCMConfigParams(Landroid/os/PersistableBundle;)Landroid/os/Bundle;
    .locals 8

    .line 1
    const-string/jumbo v0, "ucm-config"

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 23
    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const-string/jumbo p0, "getUCMProfile received null"

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v1, "getUCMProfile received non-null: "

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    const-string v1, "UCMProvisioningHelper"

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    sget-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    sget-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 68
    .line 69
    const-string/jumbo v1, "ucm-config-client-package"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget-object v2, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 77
    .line 78
    const-string/jumbo v3, "ucm-config-client-signature"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v4, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 86
    .line 87
    const-string/jumbo v5, "ucm-config-client-location"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v6, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const/4 v7, 0x1

    .line 100
    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v6

    .line 113
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 114
    return-object p0
.end method

.method public static isUCMConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "UCMProvisioningHelper"

    .line 3
    .line 4
    const-string/jumbo v2, "ucm-config"

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

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
    const-string/jumbo p0, "isUCMConfigured from provisioning params"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    const-string/jumbo p1, "persona"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMProfile()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_0
    sput-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    const-string/jumbo p0, "isUCMConfigured from preset params"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v0

    .line 56
    :cond_2
    const/4 p0, 0x0

    .line 57
    return p0
.end method
