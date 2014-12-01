.class Lcom/android/settings/users/AppRestrictionsFragment$9;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->createCameraDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z
    invoke-static {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->access$302(Lcom/android/settings/users/AppRestrictionsFragment;Z)Z

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    const-string v1, "com.sec.android.app.camera"

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1500(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$9;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mClickedCheckBoxPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1600(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Z)V

    return-void
.end method
