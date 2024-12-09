.class public final Lcom/android/server/desktopmode/TouchpadManager$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.pen.INSERT"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 15
    .line 16
    const-string/jumbo v0, "penInsert"

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    xor-int/2addr p2, v1

    .line 25
    iput-boolean p2, p1, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 26
    .line 27
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo p2, "mIsSPenDetached="

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 40
    .line 41
    iget-boolean p2, p2, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "[DMS]TouchpadManager"

    .line 51
    .line 52
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
