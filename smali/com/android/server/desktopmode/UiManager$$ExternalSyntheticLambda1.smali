.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 55
    .line 56
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 57
    .line 58
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 67
    .line 68
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 79
    .line 80
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$1:I

    .line 81
    .line 82
    iget v2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$2:I

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/desktopmode/UiManager;->handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
