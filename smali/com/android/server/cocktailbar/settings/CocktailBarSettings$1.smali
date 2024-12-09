.class public final Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
