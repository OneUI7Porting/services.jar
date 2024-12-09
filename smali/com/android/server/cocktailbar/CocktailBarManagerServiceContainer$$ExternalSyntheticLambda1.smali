.class public final synthetic Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->sendEdgeAppStartBr(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v2

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
