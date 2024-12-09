.class public final synthetic Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isDualDarDoSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDualDarDoManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->getInnerAuthUserId(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, p3, :cond_0

    .line 26
    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "Token(%x) activated for user %d"

    .line 40
    .line 41
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "DualDarManagerImpl"

    .line 46
    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->mHasTokenSetForInner:Z

    .line 55
    .line 56
    new-instance p1, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method
