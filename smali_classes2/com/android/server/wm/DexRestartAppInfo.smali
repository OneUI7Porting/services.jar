.class public abstract Lcom/android/server/wm/DexRestartAppInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mOptions:Landroid/app/ActivityOptions;

.field public mPal:Lcom/android/server/wm/PendingActivityLaunch;

.field public final mPreferredDisplayId:I

.field public final mProcessName:Ljava/lang/String;

.field public final mReusedTask:Lcom/android/server/wm/Task;

.field public final mTargetTask:Lcom/android/server/wm/Task;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DexRestartAppInfo;->mTargetTask:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    :goto_0
    iput-object p5, p0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 20
    .line 21
    iput p6, p0, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public abstract startResult(ILcom/android/server/wm/ActivityTaskManagerService;)V
.end method
