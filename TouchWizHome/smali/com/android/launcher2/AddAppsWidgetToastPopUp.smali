.class public Lcom/android/launcher2/AddAppsWidgetToastPopUp;
.super Landroid/app/DialogFragment;
.source "AddAppsWidgetToastPopUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AddAppsWidgetToastPopUp"


# instance fields
.field private mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

.field private mView:Landroid/view/View;

.field toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;-><init>(Lcom/android/launcher2/AddAppsWidgetToastPopUp;)V

    iput-object v0, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    iput-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;

    invoke-direct {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;-><init>()V

    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->saveToastPopup(Ljava/lang/Boolean;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f00a3

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0f001c

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v5, 0x7f090012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v6, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-object v2
.end method
