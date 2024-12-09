.class public final Lcom/android/server/backup/params/BackupParams;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;

.field public kvPackages:Ljava/util/ArrayList;

.field public listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public nonIncrementalBackup:Z

.field public observer:Landroid/app/backup/IBackupObserver;
