.class public final Lcom/android/server/pm/MoveInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAppId:I

.field public final mFromCodePath:Ljava/lang/String;

.field public final mFromUuid:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mSeInfo:Ljava/lang/String;

.field public final mTargetSdkVersion:I

.field public final mToUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/MoveInfo;->mAppId:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
