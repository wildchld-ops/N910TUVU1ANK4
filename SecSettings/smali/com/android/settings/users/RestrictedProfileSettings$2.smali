.class Lcom/android/settings/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mDlgUserNameView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$100(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$200(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$300(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/view/View;

    move-result-object v4

    const v6, 0x1020016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v4, v4, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v6, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v6, v6, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$500(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    invoke-static {v6}, Lcom/android/settings/users/RestrictedProfileSettings;->access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$500(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v6, v1}, Lcom/android/settings/users/RestrictedProfileSettings;->setPhotoFrame(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v6, Lcom/android/settings/users/RestrictedProfileSettings$2$1;

    invoke-direct {v6, p0}, Lcom/android/settings/users/RestrictedProfileSettings$2$1;-><init>(Lcom/android/settings/users/RestrictedProfileSettings$2;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    const/4 v5, 0x1

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings/users/RestrictedProfileSettings;->access$600(Lcom/android/settings/users/RestrictedProfileSettings;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # invokes: Lcom/android/settings/users/RestrictedProfileSettings;->clearEditUserInfoDialog()V
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$000(Lcom/android/settings/users/RestrictedProfileSettings;)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    # getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$500(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
