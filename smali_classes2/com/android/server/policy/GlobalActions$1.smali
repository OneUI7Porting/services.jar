.class public final Lcom/android/server/policy/GlobalActions$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    throw p0
.end method
