.class public Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public final mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 5
    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 4
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method
