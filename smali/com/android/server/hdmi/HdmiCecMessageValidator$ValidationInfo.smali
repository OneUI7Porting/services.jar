.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

.field public final validDestinations:I

.field public final validSources:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validSources:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validDestinations:I

    .line 9
    .line 10
    return-void
.end method
