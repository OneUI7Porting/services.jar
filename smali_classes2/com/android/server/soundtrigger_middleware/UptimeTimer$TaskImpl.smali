.class public final Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mToken:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
