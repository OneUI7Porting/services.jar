.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "[DMS]UiManager"

    .line 7
    .line 8
    const-string v1, "Binder died, reconnecting"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
