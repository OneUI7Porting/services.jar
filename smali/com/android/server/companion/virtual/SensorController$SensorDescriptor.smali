.class final Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mHandle:I

.field public final mName:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
