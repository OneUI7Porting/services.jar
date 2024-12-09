.class public final Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

.field public final mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 11
    .line 12
    return-void
.end method
