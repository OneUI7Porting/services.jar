.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;
.super Landroid/content/pm/LauncherApps$Callback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackagesSuspendChanged([Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackagesSuspendChanged([Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
