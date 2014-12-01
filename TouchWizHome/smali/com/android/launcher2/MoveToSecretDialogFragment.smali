.class public Lcom/android/launcher2/MoveToSecretDialogFragment;
.super Landroid/app/DialogFragment;
.source "MoveToSecretDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveToSecretDialog"

.field private static f:Lcom/android/launcher2/MoveToSecretDialogFragment; = null

.field private static final sFragmentTag:Ljava/lang/String; = "MoveToSecretDialog"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MoveToSecretDialogFragment;->mView:Landroid/view/View;

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/MoveToSecretDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/MoveToSecretDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/MoveToSecretDialogFragment;-><init>()V

    sput-object v0, Lcom/android/launcher2/MoveToSecretDialogFragment;->f:Lcom/android/launcher2/MoveToSecretDialogFragment;

    sget-object v0, Lcom/android/launcher2/MoveToSecretDialogFragment;->f:Lcom/android/launcher2/MoveToSecretDialogFragment;

    const-string v1, "MoveToSecretDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/MoveToSecretDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "MoveToSecretDialog"

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

    const-string v0, "MoveToSecretDialog"

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MoveToSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-nez v0, :cond_1

    const-string v2, "MoveToSecretDialog"

    const-string v3, "onClick: getActivity fail."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MoveToSecretDialogFragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MoveToSecretDialogFragment;->mView:Landroid/view/View;

    const v3, 0x7f0900c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->saveSecretNoti(Ljava/lang/Boolean;)V

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->completeMoveSecretItem()V

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MoveToSecretDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher2/MoveToSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/MoveToSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MoveToSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    const v8, 0x7f03004d

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MoveToSecretDialogFragment;->mView:Landroid/view/View;

    const/4 v6, 0x0

    const v8, 0x7f0900c1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v6, :cond_0

    new-instance v8, Lcom/android/launcher2/MoveToSecretDialogFragment$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/MoveToSecretDialogFragment$1;-><init>(Lcom/android/launcher2/MoveToSecretDialogFragment;)V

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->isReminderChecked()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    const v8, 0x7f0f00b4

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0f00ba

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0f0018

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
