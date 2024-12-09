.class public final Lcom/android/server/am/DualDarUserController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static volatile mInstance:Lcom/android/server/am/DualDarUserController;


# instance fields
.field public final mInjector:Lcom/android/server/am/UserController$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/DualDarUserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstance(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/DualDarUserController;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/DualDarUserController;->mInstance:Lcom/android/server/am/DualDarUserController;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/server/am/DualDarUserController;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/server/am/DualDarUserController;->mInstance:Lcom/android/server/am/DualDarUserController;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/am/DualDarUserController;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/server/am/DualDarUserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/server/am/DualDarUserController;->mInstance:Lcom/android/server/am/DualDarUserController;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/am/DualDarUserController;->mInstance:Lcom/android/server/am/DualDarUserController;

    .line 27
    .line 28
    return-object p0
.end method
