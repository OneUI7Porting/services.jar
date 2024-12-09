.class public abstract Lcom/samsung/ucm/ucmservice/UcmServiceODE;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sOdeStatus:I = -0x1


# direct methods
.method public static getOdeStatus()I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->updateOdeStatus()V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 10
    .line 11
    return v0
.end method

.method public static isUCMODEEnabledWithPropFile()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    const-string v3, "UcmServiceODE"

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    const-string v0, "/efs/sec_efs/ucm_wpc_dar"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readIntFromFile(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "UCM ODE is enabled."

    .line 28
    .line 29
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    const-string v0, "UCM ODE is not enabled"

    .line 34
    .line 35
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return v0
.end method

.method public static updateOdeStatus()V
    .locals 4

    .line 1
    const-string v0, "/efs/sec_efs/ucm_ode_mode"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readIntFromFile(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "updateOdeStatus ["

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 18
    .line 19
    const-string v2, "]"

    .line 20
    .line 21
    const-string v3, "UcmServiceODE"

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string/jumbo v1, "persist.security.ucm_fbe_mode"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
