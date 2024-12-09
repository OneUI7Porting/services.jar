.class public final Lcom/android/server/enterprise/security/SecurityPolicy$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const-string p1, "SecurityPolicy"

    .line 13
    .line 14
    const-string/jumbo v0, "listener - Dex Enabling"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->registerDexBlocker$3()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
