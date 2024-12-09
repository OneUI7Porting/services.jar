.class public final Lcom/android/server/autofill/InlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

.field public final mViewStateWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p0, "InlineSuggestionRequestConsumer"

    .line 22
    .line 23
    const-string/jumbo p1, "assistDataReceiver is null when accepting new inline suggestionrequests"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    if-nez p0, :cond_1

    .line 31
    .line 32
    const-string p0, "InlineSuggestionRequestConsumer"

    .line 33
    .line 34
    const-string/jumbo p1, "view state is null when accepting new inline suggestion requests"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v2, 0x0

    .line 60
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 61
    .line 62
    iput-object p1, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 65
    .line 66
    .line 67
    const/high16 p1, 0x10000

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    :goto_1
    monitor-exit v1

    .line 77
    :goto_2
    return-void

    .line 78
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method
