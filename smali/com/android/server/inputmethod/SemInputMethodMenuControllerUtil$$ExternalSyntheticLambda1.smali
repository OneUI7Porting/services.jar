.class public final synthetic Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Switch;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Switch;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Switch;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
