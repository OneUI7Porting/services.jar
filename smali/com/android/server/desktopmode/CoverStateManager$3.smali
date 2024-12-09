.class public final Lcom/android/server/desktopmode/CoverStateManager$3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBlocked()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "[DMS]CoverStateManager"

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "onBlocked(), !mAuthComplete"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const-string/jumbo p0, "onBlocked(), Unknown reason"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
