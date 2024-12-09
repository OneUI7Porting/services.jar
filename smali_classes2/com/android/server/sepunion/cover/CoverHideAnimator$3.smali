.class public final Lcom/android/server/sepunion/cover/CoverHideAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
