.class public final Lcom/android/server/companion/association/Associations;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAssociations:Ljava/util/List;

.field public mMaxId:I

.field public mVersion:I


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
    iput v0, p0, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 15
    .line 16
    return-void
.end method