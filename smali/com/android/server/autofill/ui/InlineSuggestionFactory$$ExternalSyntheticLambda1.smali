.class public final synthetic Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

.field public final synthetic f$1:Landroid/service/autofill/Dataset;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/Dataset;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/Dataset;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    invoke-interface {v0, v1, p0}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->autofill(Landroid/service/autofill/Dataset;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
