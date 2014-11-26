.class public Lcom/android/settings/homesync/RestoreFragment;
.super Landroid/app/Fragment;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;,
        Lcom/android/settings/homesync/RestoreFragment$ViewHolder;,
        Lcom/android/settings/homesync/RestoreFragment$ListItem;,
        Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;
    }
.end annotation


# static fields
.field private static rootView:Landroid/view/View;


# instance fields
.field private backupList:Landroid/widget/ListView;

.field private list_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountName:Ljava/lang/String;

.field private mDestAvailSize:J

.field private mDestDateName:Ljava/lang/String;

.field private mNextButtonListener:Landroid/view/View$OnClickListener;

.field private mPasteType:I

.field private mSourceDirectoryName:Ljava/lang/String;

.field private mSourceTotalSize:J

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

.field private startRestoreButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    const-string v0, "HomeSync_Backup"

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J

    iput-wide v2, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestAvailSize:J

    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/homesync/RestoreFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/RestoreFragment$2;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private MakeItemList()V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "RestoreFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "titleList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings/homesync/RestoreFragment;Lcom/android/settings/homesync/RestoreFragment$1;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v4, v2

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040203

    iget-object v8, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;-><init>(Lcom/android/settings/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/homesync/RestoreFragment;)I
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/homesync/RestoreFragment;I)I
    .locals 0
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/homesync/RestoreFragment;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/homesync/RestoreFragment;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;
    .param p1    # Landroid/os/storage/StorageVolume;

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/homesync/RestoreFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/homesync/RestoreFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/homesync/RestoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/homesync/RestoreFragment;)J
    .locals 2
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-wide v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/homesync/RestoreFragment;J)J
    .locals 0
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/settings/homesync/RestoreFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method createAlertDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1    # I

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

    new-instance v3, Lcom/android/settings/homesync/RestoreFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/RestoreFragment$3;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "RestoreFragment"

    const-string v1, "  onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

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
    .locals 11
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    :cond_0
    const v5, 0x7f040202

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestAvailSize:J

    :cond_1
    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b04f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestAvailSize:J

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b04f8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b04f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/homesync/RestoreFragment;->MakeItemList()V

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b04f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09182e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09182f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const/4 v5, 0x2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091830

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x109000f

    invoke-direct {v0, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v9, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    new-instance v5, Lcom/android/settings/homesync/RestoreFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/homesync/RestoreFragment$1;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    return-object v5
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

    const v2, 0x7f091834

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

    const-class v0, Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f091816

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

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
    .locals 3

    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091834

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    goto :goto_0
.end method
