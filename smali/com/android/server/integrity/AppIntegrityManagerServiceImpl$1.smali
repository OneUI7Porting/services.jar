.class public final Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v0, p0, p2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method