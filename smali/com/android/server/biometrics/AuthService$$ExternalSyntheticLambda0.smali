.class public final synthetic Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/hardware/face/IFaceService;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/face/IFaceService;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/face/IFaceService;

    .line 8
    .line 9
    new-instance v3, Landroid/hardware/face/FaceSensorConfigurations;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v3, v4}, Landroid/hardware/face/FaceSensorConfigurations;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    array-length v4, v0

    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Landroid/hardware/face/FaceSensorConfigurations;->addAidlConfigs([Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/face/FaceSensorConfigurations;->hasSensorConfigurations()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    array-length v0, v1

    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3, v1, v2}, Landroid/hardware/face/FaceSensorConfigurations;->addHidlConfigs([Ljava/lang/String;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const-string v0, "AuthService"

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    :try_start_0
    invoke-interface {p0, v3}, Landroid/hardware/face/IFaceService;->registerAuthenticators(Landroid/hardware/face/FaceSensorConfigurations;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v1, "RemoteException when registering face authenticators"

    .line 47
    .line 48
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/face/FaceSensorConfigurations;->hasSensorConfigurations()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    const-string p0, "Face configuration exists, but FaceService is null."

    .line 59
    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method