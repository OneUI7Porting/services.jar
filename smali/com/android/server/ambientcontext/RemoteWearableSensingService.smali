.class final Lcom/android/server/ambientcontext/RemoteWearableSensingService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public final queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Query status for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "RemoteWearableSensingService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;-><init>([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Start detection for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "RemoteWearableSensingService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final stopDetection(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Stop detection for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "RemoteWearableSensingService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 26
    .line 27
    .line 28
    return-void
.end method
