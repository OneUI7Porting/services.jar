.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/infra/AndroidFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
