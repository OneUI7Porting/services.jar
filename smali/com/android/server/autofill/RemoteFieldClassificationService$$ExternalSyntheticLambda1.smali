.class public final synthetic Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public final synthetic f$1:Landroid/service/assist/classification/FieldClassificationRequest;

.field public final synthetic f$2:Ljava/lang/ref/WeakReference;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$1:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$1:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$3:J

    .line 8
    .line 9
    check-cast p1, Landroid/service/assist/classification/IFieldClassificationService;

    .line 10
    .line 11
    sget p0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;

    .line 17
    .line 18
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/autofill/RemoteFieldClassificationService$1;-><init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v1, p0}, Landroid/service/assist/classification/IFieldClassificationService;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
