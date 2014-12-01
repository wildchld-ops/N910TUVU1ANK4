.class public Lcom/android/settings/wifi/hs20/Hs20PickerDialog;
.super Landroid/app/Activity;
.source "Hs20PickerDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/hs20/Hs20Settings$OnScanStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;
    }
.end annotation


# instance fields
.field mFragmentManager:Landroid/app/FragmentManager;

.field private scanBtn:Landroid/widget/Button;

.field public scanListner:Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    return-object p1
.end method

.method private initialize()V
    .locals 6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09035a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f09039d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0901ba

    new-instance v5, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$2;-><init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040117

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$3;-><init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v4, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$4;-><init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->initialize()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v1, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;-><init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
