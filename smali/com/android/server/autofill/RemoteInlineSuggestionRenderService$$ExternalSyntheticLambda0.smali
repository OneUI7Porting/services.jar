.class public final synthetic Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Landroid/service/autofill/IInlineSuggestionRenderService;

    .line 6
    .line 7
    invoke-interface {p1, v0, p0}, Landroid/service/autofill/IInlineSuggestionRenderService;->destroySuggestionViews(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
