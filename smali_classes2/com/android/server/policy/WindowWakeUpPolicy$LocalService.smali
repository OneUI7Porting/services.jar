.class public final Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/policy/WindowWakeUpPolicyInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/policy/Flags;->supportInputWakeupDelegate()Z

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    .line 7
    .line 8
    return-void
.end method
