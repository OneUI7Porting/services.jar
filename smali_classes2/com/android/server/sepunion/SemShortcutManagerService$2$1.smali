.class public final Lcom/android/server/sepunion/SemShortcutManagerService$2$1;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemShortcutManagerService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2$1;->this$1:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2$1;->this$1:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 9
    .line 10
    sget-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
