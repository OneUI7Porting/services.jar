.class public final Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sDateTimeFormatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mDate:Ljava/lang/String;

.field public final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "uuuu/MM/dd HH:mm:ss"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->sDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->sDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountEventRecord;->mDate:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
