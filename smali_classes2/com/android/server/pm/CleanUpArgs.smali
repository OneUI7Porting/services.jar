.class public final Lcom/android/server/pm/CleanUpArgs;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCodeFile:Ljava/io/File;

.field public final mInstructionSets:[Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method