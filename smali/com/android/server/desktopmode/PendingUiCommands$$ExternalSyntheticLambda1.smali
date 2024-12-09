.class public final synthetic Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 4
    .line 5
    iget v0, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    .line 6
    .line 7
    const/16 v1, 0x384

    .line 8
    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    .line 12
    .line 13
    const/16 v1, 0x385

    .line 14
    .line 15
    if-ne v0, v1, :cond_3

    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    iget v1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    sub-int v3, v1, v2

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v3, v0, :cond_0

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/16 v3, 0x6f

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->hasSameNotificationId(II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    :cond_1
    :goto_0
    iget p1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    .line 49
    .line 50
    if-eq p1, p0, :cond_2

    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    if-eq p0, p1, :cond_2

    .line 54
    .line 55
    if-eq p0, v0, :cond_2

    .line 56
    .line 57
    const/16 p1, 0x65

    .line 58
    .line 59
    if-ne p0, p1, :cond_3

    .line 60
    .line 61
    :cond_2
    const/4 p0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 p0, 0x0

    .line 64
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
