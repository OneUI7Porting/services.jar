.class public final Lcom/android/server/desktopmode/DesktopModeService$6;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field public final synthetic val$firstConnectionKey:Ljava/lang/String;

.field public final synthetic val$startWelcomeActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->val$startWelcomeActivity:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->val$firstConnectionKey:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClickButtonPositive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 5
    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->val$startWelcomeActivity:Z

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 12
    .line 13
    const-string/jumbo v2, "welcome_completed"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->val$firstConnectionKey:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
