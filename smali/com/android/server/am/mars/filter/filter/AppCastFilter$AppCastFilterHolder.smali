.class public abstract Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    .line 17
    .line 18
    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 19
    .line 20
    return-void
.end method
