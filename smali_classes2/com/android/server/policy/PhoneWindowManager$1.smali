.class public final Lcom/android/server/policy/PhoneWindowManager$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShowingChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onKeyguardShowingAndNotOccludedChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onTrustedChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->notifyKeyguardTrustedChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
