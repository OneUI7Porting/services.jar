.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/ICancellationSignal;

.field public final synthetic f$5:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

.field public final synthetic f$6:Landroid/app/appfunctions/IExecuteAppFunctionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$1:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$4:Landroid/os/ICancellationSignal;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$5:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$6:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$1:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$4:Landroid/os/ICancellationSignal;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$5:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;->f$6:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-interface {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    move-object v5, v7

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-static {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v7, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
