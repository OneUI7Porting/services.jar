.class public final synthetic Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

.field public final synthetic f$1:Landroid/app/IBackupAgent;

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$1:Landroid/app/IBackupAgent;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call(Lcom/android/server/backup/remote/FutureBackupCallback;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$1:Landroid/app/IBackupAgent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$2:J

    .line 12
    .line 13
    iget v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;->f$3:I

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    move-object v2, v3

    .line 17
    move-object v3, v4

    .line 18
    move-wide v4, v5

    .line 19
    move-object v6, p1

    .line 20
    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
