.class public final Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final direction:I

.field public final filter:Lcom/android/server/pm/WatchedIntentFilter;

.field public final flags:I

.field public final letsPersonalDataIntoProfile:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    .line 11
    .line 12
    return-void
.end method