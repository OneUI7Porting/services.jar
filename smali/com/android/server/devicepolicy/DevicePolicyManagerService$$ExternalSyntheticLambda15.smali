.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 12
    .line 13
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 14
    .line 15
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->symbols:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 25
    .line 26
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->length:I

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_2
    check-cast p1, Landroid/app/admin/DevicePolicyStringResource;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyStringResource;->getStringId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_3
    check-cast p1, Landroid/app/admin/DevicePolicyDrawableResource;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_4
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 48
    .line 49
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 50
    .line 51
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->numeric:I

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_5
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 59
    .line 60
    iget p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_6
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 68
    .line 69
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 70
    .line 71
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_7
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 79
    .line 80
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 81
    .line 82
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_8
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 90
    .line 91
    const/4 p0, -0x1

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_9
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 98
    .line 99
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 100
    .line 101
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->letters:I

    .line 102
    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :pswitch_a
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 109
    .line 110
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_b
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 114
    .line 115
    iget-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 116
    .line 117
    iget p0, p0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 118
    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :pswitch_c
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
