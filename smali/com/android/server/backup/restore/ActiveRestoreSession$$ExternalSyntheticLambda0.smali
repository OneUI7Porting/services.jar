.class public final synthetic Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/backup/TransportManager;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportConnection;

.field public final synthetic f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
