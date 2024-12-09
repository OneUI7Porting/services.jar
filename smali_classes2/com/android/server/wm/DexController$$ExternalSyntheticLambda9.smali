.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;->f$0:I

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;->onDelayChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string/jumbo p1, "updateDexStarShowingDelayTime. "

    .line 11
    .line 12
    .line 13
    const-string v0, "DexController"

    .line 14
    .line 15
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
