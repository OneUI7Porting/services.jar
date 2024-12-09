.class public final Lcom/android/server/display/WifiDisplayAdapter$8;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$interval:I

.field public final synthetic val$scanChannel:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$scanChannel:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$interval:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$scanChannel:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$interval:I

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    const-string/jumbo v2, "requestStartScan setChannel = "

    .line 16
    .line 17
    .line 18
    const-string v3, ", interval = "

    .line 19
    .line 20
    const-string v4, "WifiDisplayController"

    .line 21
    .line 22
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput v1, v0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    .line 26
    .line 27
    const/16 v1, 0x3e8

    .line 28
    .line 29
    if-gtz p0, :cond_0

    .line 30
    .line 31
    iput v1, v0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    mul-int/2addr p0, v1

    .line 35
    iput p0, v0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanInterval:I

    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x1

    .line 38
    iput-boolean p0, v0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->enableP2p()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
