.class final Lcom/android/server/pm/SystemDeleteException;
.super Ljava/lang/Exception;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field final mReason:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/SystemDeleteException;->mReason:Lcom/android/server/pm/PackageManagerException;

    .line 5
    .line 6
    return-void
.end method
