.class public final synthetic Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;->f$1:J

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    const-string v3, "Logging UserspaceRebootReported atom: { outcome: "

    .line 8
    .line 9
    const-string v4, " durationMillis: "

    .line 10
    .line 11
    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, " encryptionState: "

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, " }"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "UserspaceRebootLogger"

    .line 33
    .line 34
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/16 v3, 0xf3

    .line 38
    .line 39
    invoke-static {v3, v0, v1, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo p0, "persist.sys.userspace_reboot.log.should_log"

    .line 43
    .line 44
    .line 45
    const-string v0, ""

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
