.class public final synthetic Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Lcom/android/server/wm/TaskFragment;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;->f$0:[Lcom/android/server/wm/TaskFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;->f$0:[Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    aput-object p1, p0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method
