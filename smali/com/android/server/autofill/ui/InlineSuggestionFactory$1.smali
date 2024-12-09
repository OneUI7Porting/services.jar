.class public final Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# virtual methods
.method public final authenticate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final autofill(Landroid/service/autofill/Dataset;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onError()V
    .locals 1

    .line 1
    const-string p0, "InlineSuggestionFactory"

    .line 2
    .line 3
    const-string v0, "An error happened on the tooltip"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onInflate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    return-void
.end method
