.class public abstract Lcom/android/server/am/PDSController$PDSControllerHolder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/PDSController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/PDSController;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/android/server/am/PDSController;->mIsPDSEnable:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/android/server/am/PDSController;->mScreenOn:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/am/pds/PDSPkgMap;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/android/server/am/pds/PDSPkgMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/am/pds/PDSPkgMap;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/android/server/am/pds/PDSPkgMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 36
    .line 37
    sput-object v0, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    .line 38
    .line 39
    return-void
.end method
