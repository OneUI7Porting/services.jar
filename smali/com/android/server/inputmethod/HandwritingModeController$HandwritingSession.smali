.class public final Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mHandwritingChannel:Landroid/view/InputChannel;

.field public final mRecordedEvents:Ljava/util/List;

.field public final mRequestId:I


# direct methods
.method public constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method