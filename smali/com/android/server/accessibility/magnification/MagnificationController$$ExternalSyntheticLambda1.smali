.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/view/accessibility/MagnificationAnimationCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
