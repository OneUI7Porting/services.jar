.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/IResultReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/os/IResultReceiver;

    .line 2
    .line 3
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    .line 4
    .line 5
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/service/autofill/IAutoFillService;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
