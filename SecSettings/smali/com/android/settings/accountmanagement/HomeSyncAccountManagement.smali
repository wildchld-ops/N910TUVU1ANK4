.class public Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;
.super Landroid/app/Fragment;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$InsertReceiver;,
        Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    }
.end annotation


# static fields
.field private static adminsecurestorage:D

.field private static list:Landroid/widget/ListView;

.field private static rootView:Landroid/view/View;


# instance fields
.field private accountManager:Lcom/android/settings/accountmanagement/AccountManager;

.field private isAdmin:Z

.field private isDeletemode:Z

.field private mAccountAL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddMenuItem:Landroid/view/MenuItem;

.field private mAdimAccountid:Ljava/lang/String;

.field private mAdimGroupid:Ljava/lang/String;

.field private mChangeMenuItem:Landroid/view/MenuItem;

.field private mCleanStorageMenuItem:Landroid/view/MenuItem;

.field private mDeleteAdminMenuItem:Landroid/view/MenuItem;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEasysetupAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResetPasswordMenuItem:Landroid/view/MenuItem;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public static round(DI)D
    .locals 8
    .param p0    # D
    .param p2    # I

    if-gez p2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    const-wide/high16 v4, 0x4024000000000000L

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v0, v4

    long-to-double v4, v0

    mul-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    div-long v4, v2, v0

    long-to-double v4, v4

    goto :goto_0
.end method

.method private setTempData(Landroid/view/View;)V
    .locals 13
    .param p1    # Landroid/view/View;

    const v9, 0x7f0b029e

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v9, 0x7f0b018e

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0b02a4

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0b02a6

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0917ca

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f0b02a8

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-wide v9, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090000000000000L

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v9, 0x7f0b029d

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v9, 0x7f0917c7

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x7f0b029f

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v9, 0x7f0917c8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    sget-wide v9, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090000000000000L

    div-double v3, v9, v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-static {v3, v4, v10}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public initialisedata()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    invoke-virtual {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getAdminSamsungId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    invoke-virtual {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getGuestSamsungAccountId()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    invoke-virtual {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getEasySetupAccountId()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    iget-object v1, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/accountmanagement/AccountManager;->getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimGroupid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    iget-object v1, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimGroupid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/accountmanagement/AccountManager;->dBGetTotalSecuredFileInfo(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    sget-wide v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const-wide/high16 v2, 0x4130000000000000L

    div-double/2addr v0, v2

    sput-wide v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "Settings"

    const-string v1, " HomeSync Account Management:   onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    const-string v0, "Settings"

    const-string v1, "is_delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isDeletemode:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    const-string v0, "Settings"

    const-string v1, "is_delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isDeletemode:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_2

    const-string v0, "is_add"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Settings"

    const-string v1, "is_add success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    const-string v0, "is_change"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Settings"

    const-string v1, "is_change_success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    if-ne p2, v3, :cond_4

    const-string v0, "is_passwordreset"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Settings"

    const-string v1, "is_recover_success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/accountmanagement/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings/accountmanagement/AccountManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    const v0, 0x7f0917bb

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020463

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0917bc

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020467

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0917bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020464

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x5

    const v1, 0x7f0917be

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020466

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x6

    const v1, 0x7f0917bf

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020465

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f0917c0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020468

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v14, 0x7f040115

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    sput-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b0299

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0917c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b029b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0917c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b02a0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    sput-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b02a1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->initialisedata()V

    const-string v14, "Settings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mAdimAccountid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->setTempData(Landroid/view/View;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isAdmin:Z

    new-instance v5, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$1;-><init>(Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b02a2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v14, 0x7f0917cc

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b02a3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v14, 0x7f0917c3

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    invoke-virtual {v14, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    return-object v14

    :cond_1
    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v14, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isAdmin:Z

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b029d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v14, 0x7f0917c7

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(I)V

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b029e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    const v14, 0x7f0b02a5

    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v15, 0x7f0b029f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    sget-object v14, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b02a2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v14, 0x7f0917cd

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v15, 0x7f0b02a3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v14, 0x7f0917c6

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1    # Landroid/view/MenuItem;

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "key_request_for"

    const-string v8, "addrequest"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x3

    invoke-virtual {p0, v0, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "key_request_for"

    const-string v8, "deleterequest"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "key_request_for"

    const-string v8, "changerequest"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x4

    invoke-virtual {p0, v2, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "key_request_for"

    const-string v8, "deleteadminrequest"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "key_request_for"

    const-string v8, "deletestoragerequest"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "key_request_for"

    const-string v8, "passwordresetrequest"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x5

    invoke-virtual {p0, v3, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAddMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mResetPasswordMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mCleanStorageMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mDeleteAdminMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mChangeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public refreshView()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->initialisedata()V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    invoke-direct {p0, v10}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->setTempData(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    new-instance v3, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$2;-><init>(Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b02a2

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v10, 0x7f0917cc

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b02a3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v10, 0x7f0917c3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    new-instance v2, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-nez v10, :cond_1

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v11, 0x7f0b029d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v10, 0x7f0917c7

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v11, 0x7f0b029e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f0b02a5

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v11, 0x7f0b029f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    sget-object v10, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b02a2

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x7f0917cd

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->view:Landroid/view/View;

    const v11, 0x7f0b02a3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v10, 0x7f0917c6

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement;->isAdmin:Z

    goto/16 :goto_1
.end method
