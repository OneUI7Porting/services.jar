.class public final Lcom/android/server/policy/PhoneWindowManagerExt$14;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic val$appTransitionListenerForDex:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->val$appTransitionListenerForDex:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->val$appTransitionListenerForDex:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->val$appTransitionListenerForDex:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->unregisterAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
