.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/app/GameSessionRecord;

.field public final synthetic f$3:Landroid/service/games/GameSessionViewHostConfiguration;

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/app/GameSessionRecord;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$3:Landroid/service/games/GameSessionViewHostConfiguration;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/app/GameSessionRecord;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$3:Landroid/service/games/GameSessionViewHostConfiguration;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 10
    .line 11
    check-cast p1, Landroid/service/games/IGameSessionService;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v4, Landroid/service/games/CreateGameSessionRequest;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v4, v1, v2}, Landroid/service/games/CreateGameSessionRequest;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    .line 28
    .line 29
    invoke-interface {p1, v0, v4, v3, p0}, Landroid/service/games/IGameSessionService;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
