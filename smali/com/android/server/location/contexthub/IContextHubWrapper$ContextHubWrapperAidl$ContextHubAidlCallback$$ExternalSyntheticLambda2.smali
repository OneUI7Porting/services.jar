.class public final synthetic Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleTransactionResult(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
