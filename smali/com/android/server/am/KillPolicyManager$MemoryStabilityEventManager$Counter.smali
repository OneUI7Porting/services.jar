.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final FORMAT_ZRAM_ERROR:[I


# instance fields
.field public final countOfEvents:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x200a

    .line 2
    .line 3
    const/16 v1, 0x2020

    .line 4
    .line 5
    filled-new-array {v0, v1, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->FORMAT_ZRAM_ERROR:[I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [J

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    .line 8
    .line 9
    return-void
.end method
