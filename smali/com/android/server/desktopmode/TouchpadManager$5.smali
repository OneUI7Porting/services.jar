.class public final Lcom/android/server/desktopmode/TouchpadManager$5;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$5;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$5;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, -0x2

    .line 12
    const-string/jumbo v1, "navigation_mode"

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v0, 0x2

    .line 21
    if-gt v0, p0, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :cond_0
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/android/server/desktopmode/StateManager;->setNavBarGestureEnabled(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
