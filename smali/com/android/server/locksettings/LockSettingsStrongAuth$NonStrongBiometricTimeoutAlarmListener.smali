.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
