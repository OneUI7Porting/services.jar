.class public final Lcom/android/server/usb/UsbUI$NotificationWrapper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final action:Landroid/app/Notification$Action;

.field public final alertOnce:Z

.field public final channel:Ljava/lang/String;

.field public final contentInent:Landroid/app/PendingIntent;

.field public final icon:I

.field public final instant:Z

.field public final messageResId:I

.field public final ongoing:Z

.field public final priority:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;

.field public final titleResId:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/Notification$Action;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    .line 12
    .line 13
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 16
    .line 17
    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 18
    .line 19
    iput p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->titleResId:I

    .line 20
    .line 21
    iput p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->messageResId:I

    .line 22
    .line 23
    iput p4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    .line 24
    .line 25
    iput-object p5, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->contentInent:Landroid/app/PendingIntent;

    .line 29
    .line 30
    const-wide/16 p2, 0x1

    .line 31
    .line 32
    invoke-static {p6, p7, p2, p3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 p3, 0x1

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    iput-boolean p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 40
    .line 41
    :cond_0
    const-wide/16 p4, 0x2

    .line 42
    .line 43
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iput-boolean p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 50
    .line 51
    :cond_1
    const-wide/16 p4, 0x4

    .line 52
    .line 53
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iput-boolean p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    .line 60
    .line 61
    :cond_2
    const-wide/16 p4, 0x8

    .line 62
    .line 63
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    sget-object p2, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 72
    .line 73
    :cond_3
    const-wide/16 p4, 0x10

    .line 74
    .line 75
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    const/4 p2, -0x1

    .line 82
    iput p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 83
    .line 84
    :cond_4
    const-wide/16 p4, 0x20

    .line 85
    .line 86
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    const/4 p2, -0x2

    .line 93
    iput p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 94
    .line 95
    :cond_5
    const-wide/16 p4, 0x40

    .line 96
    .line 97
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_6

    .line 102
    .line 103
    iput p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 104
    .line 105
    :cond_6
    const-wide/16 p2, 0x80

    .line 106
    .line 107
    invoke-static {p6, p7, p2, p3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    const/4 p3, 0x2

    .line 112
    if-eqz p2, :cond_7

    .line 113
    .line 114
    iput p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 115
    .line 116
    :cond_7
    const-wide/16 p4, 0x100

    .line 117
    .line 118
    invoke-static {p6, p7, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_8

    .line 123
    .line 124
    const-string p2, "USBImpLow"

    .line 125
    .line 126
    iput-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 127
    .line 128
    new-instance p2, Landroid/app/NotificationChannel;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 131
    .line 132
    const-string p4, "USBImportanceLow"

    .line 133
    .line 134
    invoke-direct {p2, p0, p4, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 135
    .line 136
    .line 137
    const-string p0, "USB connector connection"

    .line 138
    .line 139
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    const-class p1, Landroid/app/NotificationManager;

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Landroid/app/NotificationManager;

    .line 151
    .line 152
    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 153
    .line 154
    .line 155
    :cond_8
    return-void
.end method


# virtual methods
.method public final build()Landroid/app/Notification;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->getTitle()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->messageResId:I

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v3, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const v4, 0x106001c

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 83
    .line 84
    .line 85
    const-string v5, "USBImpLow"

    .line 86
    .line 87
    iget-object v6, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_1

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 96
    .line 97
    .line 98
    :cond_1
    if-eqz v2, :cond_2

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->contentInent:Landroid/app/PendingIntent;

    .line 129
    .line 130
    if-eqz p0, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->titleResId:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method
