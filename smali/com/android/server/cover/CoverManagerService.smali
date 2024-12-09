.class public final Lcom/android/server/cover/CoverManagerService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 16
    .line 17
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 24
    .line 25
    iput-object v0, p1, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x258

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "cover"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
