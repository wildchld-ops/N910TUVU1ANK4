.class public Lcom/android/settings/homesync/BackupFragment;
.super Landroid/app/Fragment;
.source "BackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;
    }
.end annotation


# static fields
.field private static rootView:Landroid/view/View;

.field private static selectedDatesizeTextView:Landroid/widget/TextView;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCheckBoxListener:Landroid/view/View$OnClickListener;

.field private mCheckPersonal:Landroid/widget/CheckBox;

.field private mCheckPrivate:Landroid/widget/CheckBox;

.field private mCheckShared:Landroid/widget/CheckBox;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDestAvailSize:J

.field private mDestDirectoryName:Ljava/lang/String;

.field mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

.field private mNextButtonListener:Landroid/view/View$OnClickListener;

.field private mPersonalDataSize:J

.field private mPrivateDataSize:J

.field private mSelectedDataSize:J

.field private mSharedDataSize:J

.field private mSourceTotalSize:J

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field startBackupButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    sput-object v0, Lcom/android/settings/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/homesync/BackupFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    const-string v0, "HomeSync_Backup"

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mDestDirectoryName:Ljava/lang/String;

    iput-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mSourceTotalSize:J

    iput-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mDestAvailSize:J

    iput-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J

    iput-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J

    iput-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J

    iput-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    iput-object v3, p0, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/homesync/BackupFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/BackupFragment$1;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/homesync/BackupFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/BackupFragment$2;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/homesync/BackupFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/BackupFragment$3;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    iput-object v3, p0, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    new-instance v0, Lcom/android/settings/homesync/BackupFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/BackupFragment$7;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/homesync/BackupFragment;)Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/homesync/BackupFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/settings/homesync/BackupFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/settings/homesync/BackupFragment;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/homesync/BackupFragment;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/homesync/BackupFragment;->getTotalSelectedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/homesync/BackupFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/homesync/BackupFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/homesync/BackupFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings/homesync/BackupFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    return-wide p1
.end method

.method static synthetic access$714(Lcom/android/settings/homesync/BackupFragment;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/settings/homesync/BackupFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/homesync/BackupFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J

    return-wide p1
.end method

.method static synthetic access$814(Lcom/android/settings/homesync/BackupFragment;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/settings/homesync/BackupFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/settings/homesync/BackupFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J

    return-wide p1
.end method

.method private getTotalSelectedSize()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/homesync/BackupFragment;->mSharedDataSize:J

    add-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/settings/homesync/BackupFragment;->mPersonalDataSize:J

    add-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/settings/homesync/BackupFragment;->mPrivateDataSize:J

    add-long/2addr v0, v2

    :cond_2
    return-wide v0
.end method


# virtual methods
.method createAlertDialog(I)Landroid/app/AlertDialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091832

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090cd7

    new-instance v3, Lcom/android/settings/homesync/BackupFragment$6;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/BackupFragment$6;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method createCancelDialog()Landroid/app/AlertDialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09181d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090cd7

    new-instance v3, Lcom/android/settings/homesync/BackupFragment$5;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/BackupFragment$5;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901ba

    new-instance v3, Lcom/android/settings/homesync/BackupFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/BackupFragment$4;-><init>(Lcom/android/settings/homesync/BackupFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "BackupFragment"

    const-string v1, "  onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.spc.service.SpcBackupService.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f091840

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f02039a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/settings/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->selectedDatesizeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0b0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPersonal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/settings/homesync/BackupFragment;->rootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v2, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f091833

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_1
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f091815

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/settings/homesync/BackupFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f091833

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "/sdcard/HomeSync/"

    new-instance v1, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings/homesync/BackupFragment;Lcom/android/settings/homesync/BackupFragment$1;)V

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/settings/homesync/BackupFragment;->mSelectedDataSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment;->startBackupButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v1}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    goto :goto_0
.end method
