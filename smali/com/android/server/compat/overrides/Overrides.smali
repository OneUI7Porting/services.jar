.class public final Lcom/android/server/compat/overrides/Overrides;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public changeOverrides:Ljava/util/List;


# virtual methods
.method public final getChangeOverrides()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method
