.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method