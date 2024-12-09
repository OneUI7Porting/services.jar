.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;
.super Landroid/app/appfunctions/ICancellationCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/appfunctions/ICancellationCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
