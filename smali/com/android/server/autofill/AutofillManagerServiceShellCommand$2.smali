.class public final Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
