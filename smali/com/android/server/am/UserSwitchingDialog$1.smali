.class public final Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$onAnimationEndWithTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
