.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 10
    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
