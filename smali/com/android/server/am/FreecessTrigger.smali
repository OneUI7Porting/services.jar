.class public final Lcom/android/server/am/FreecessTrigger;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

.field public final mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

.field public mIsRegisteredReceiverForEnhancedFreecess:Z

.field public final mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

.field public final mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/am/FreecessTrigger$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$1;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger$2;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger$2;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger$2;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

    .line 37
    .line 38
    return-void
.end method