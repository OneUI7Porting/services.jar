.class public final synthetic Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SizeCompatPolicyManager;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SizeCompatPolicyManager;Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Configuration;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Configuration;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput v0, p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v1, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2, p0, v1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->setFreeformConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Ljava/util/function/BiConsumer;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method
