.class public Lcom/android/launcher2/FolderClickDialogFragment;
.super Landroid/app/DialogFragment;
.source "FolderClickDialogFragment.java"


# static fields
.field private static mFolder:Lcom/android/launcher2/FolderItem; = null

.field private static mState:Lcom/android/launcher2/MenuAppsGrid$State; = null

.field private static final sFragmentTag:Ljava/lang/String; = "FolderEditClick"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sput-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderClickDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/launcher2/FolderItem;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    sput-object p2, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v0, Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/FolderClickDialogFragment;-><init>()V

    const-string v1, "FolderEditClick"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "FolderEditClick"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "FolderEditClick"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f030001

    iget-object v5, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v3, Lcom/android/launcher2/FolderClickDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/FolderClickDialogFragment$1;-><init>(Lcom/android/launcher2/FolderClickDialogFragment;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
