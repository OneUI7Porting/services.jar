.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$5:I

    .line 12
    .line 13
    move-object v4, p1

    .line 14
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-virtual {v6, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method