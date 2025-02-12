.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;
.super Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

.field public final mImeDisplayId:I

.field public final mImePackageName:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/AutofillSuggestionsController;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostDisplayId(I)V

    .line 16
    .line 17
    .line 18
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    .line 28
    .line 29
    if-ne v3, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 42
    .line 43
    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "Host package name in the provide request=["

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "] doesn\'t match the IME package name=["

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    .line 71
    .line 72
    const-string p1, "]."

    .line 73
    .line 74
    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p2
.end method

.method public final onInlineSuggestionsSessionInvalidated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInlineSuggestionsUnsupported()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInputMethodFinishInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodFinishInput()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInputMethodFinishInputView()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInputMethodShowInputRequested(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInputMethodStartInputView()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodStartInputView()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
