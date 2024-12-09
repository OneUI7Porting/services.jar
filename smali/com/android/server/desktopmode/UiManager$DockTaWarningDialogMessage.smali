.class public final Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNotFastChargerDialogCommand:Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method
