.class public final Lcom/android/server/wm/CompatSandboxPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public mBounds:Landroid/graphics/Rect;

.field public mFlags:I

.field public mScale:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final resolveCompatSandboxValues(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :goto_0
    iget v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 26
    .line 27
    and-int/lit8 v0, v0, -0x5

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 30
    .line 31
    :cond_1
    iget v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iput v2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 44
    .line 45
    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 48
    .line 49
    invoke-static {}, Lcom/samsung/android/core/CompatSandbox;->getEmptyRect()Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 62
    .line 63
    iget v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 64
    .line 65
    iget v1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    .line 74
    .line 75
    const/high16 p1, -0x40800000    # -1.0f

    .line 76
    .line 77
    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    .line 81
    .line 82
    return-void
.end method
