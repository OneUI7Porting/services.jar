.class public final Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

.field public final mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;


# direct methods
.method public constructor <init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

    .line 9
    .line 10
    return-void
.end method
