.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/BackNavigationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/BackNavigationController;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(ILandroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
