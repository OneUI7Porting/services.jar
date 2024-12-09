.class public interface abstract Lcom/android/server/pm/pkg/PackageUserStateInternal;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserState;
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateDefault;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
.end method

.method public abstract getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
.end method
