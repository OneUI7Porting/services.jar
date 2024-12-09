.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->f$3:I

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
