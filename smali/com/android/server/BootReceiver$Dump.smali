.class public final Lcom/android/server/BootReceiver$Dump;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final dumpInFix:Ljava/lang/String;

.field public final fileList:Ljava/util/List;

.field public final listMax:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/BootReceiver$Dump;->listMax:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
