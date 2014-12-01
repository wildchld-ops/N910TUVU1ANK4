.class public Lcom/android/settings/users/RestrictedProfileSettings;
.super Lcom/android/settings/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    }
.end annotation


# instance fields
.field private mDlgUserNameView:Landroid/widget/EditText;

.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

.field private mHeaderView:Landroid/view/View;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUserIconView:Landroid/widget/ImageView;

.field private mUserNameView:Landroid/widget/TextView;

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->clearEditUserInfoDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mDlgUserNameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/users/RestrictedProfileSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->removeThisUser()V

    return-void
.end method

.method private clearEditUserInfoDialog()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getExistingUser(Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 5

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x1020016

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401a5

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f091a25

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040267

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v5, 0x1020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "pending_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->init(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 20

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    :goto_0
    return-object v12

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    const v1, 0x7f0400aa

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    const v1, 0x7f0b01ce

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mDlgUserNameView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mDlgUserNameView:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v18, 0x16

    move/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mDlgUserNameView:Landroid/widget/EditText;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01cc

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getCircularUserIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v14

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v1, v2, v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v1, v2, v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, 0x7f0b01cd

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v1, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    const v11, 0x7f0901f6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const v11, 0x7f091a39

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020356

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v5, Lcom/android/settings/users/RestrictedProfileSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v5, Lcom/android/settings/users/RestrictedProfileSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    if-ne v1, v5, :cond_6

    const v1, 0x7f090d09

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    if-ne v1, v5, :cond_9

    const v1, 0x7f090d0c

    :goto_3
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d12

    new-instance v5, Lcom/android/settings/users/RestrictedProfileSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/RestrictedProfileSettings$3;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f091a33

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const v1, 0x7f090d0b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    const v1, 0x7f090d0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_9
    const v1, 0x7f090d0e

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mDlgUserNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->onResume()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/users/UserSettings;->mIsInitUser:Z

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/android/settings/users/RestrictedProfileSettings;->getExistingUser(Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getCircularUserIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/users/RestrictedProfileSettings;->setPhotoFrame(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    if-eqz v0, :cond_0

    const-string v0, "pending_photo"

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    invoke-virtual {v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    if-eqz v0, :cond_1

    const-string v0, "awaiting_result"

    iget-boolean v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setPhotoFrame(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0204b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
