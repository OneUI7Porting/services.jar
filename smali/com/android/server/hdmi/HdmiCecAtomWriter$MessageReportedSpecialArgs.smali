.class public final Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mFeatureAbortOpcode:I

.field public mFeatureAbortReason:I

.field public mUserControlPressedCommand:I


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
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    .line 6
    .line 7
    const/16 v1, 0x100

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    .line 12
    .line 13
    return-void
.end method
