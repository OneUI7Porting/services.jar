.class public final Lcom/android/server/multicontrol/MultiControlManagerService$1;
.super Landroid/database/ContentObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 20
    .line 21
    return-void
.end method
