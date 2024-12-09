.class public final synthetic Lcom/android/server/enterprise/hdm/HdmSoftwareBlock$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->restrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setMicrophoneState(Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string/jumbo p1, "controlMic failed: "

    .line 26
    .line 27
    .line 28
    const-string v0, "HDM - HdmSoftwareBlock"

    .line 29
    .line 30
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->controlNfc(Z)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->restrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->allowBluetooth(Z)Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    const-string/jumbo p1, "controlBt failed: "

    .line 60
    .line 61
    .line 62
    const-string v0, "HDM - HdmSoftwareBlock"

    .line 63
    .line 64
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->restrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->allowWiFi(Z)Z

    .line 79
    .line 80
    .line 81
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    goto :goto_2

    .line 83
    :catch_2
    move-exception p0

    .line 84
    const-string/jumbo p1, "controlWiFi failed: "

    .line 85
    .line 86
    .line 87
    const-string v0, "HDM - HdmSoftwareBlock"

    .line 88
    .line 89
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/hdm/HdmSoftwareBlock;->restrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setCameraState(Z)Z

    .line 104
    .line 105
    .line 106
    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    goto :goto_3

    .line 108
    :catch_3
    move-exception p0

    .line 109
    const-string/jumbo p1, "controlCamera failed: "

    .line 110
    .line 111
    .line 112
    const-string v0, "HDM - HdmSoftwareBlock"

    .line 113
    .line 114
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
