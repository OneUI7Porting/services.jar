.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

.field public static final enum NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

.field public static final enum NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

.field public static final enum NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xa2

    .line 5
    .line 6
    const-string v3, "NOTIFICATION_POSTED"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0xa3

    .line 17
    .line 18
    const-string v4, "NOTIFICATION_UPDATED"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const/16 v4, 0x38c

    .line 29
    .line 30
    const-string v5, "NOTIFICATION_ADJUSTED"

    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 36
    .line 37
    filled-new-array {v0, v1, v2}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
