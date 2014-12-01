.class Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$4;
.super Ljava/lang/Object;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$4;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$4;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->access$600(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_pp_request_code"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "REQUEST_CODE_LOCK_TYPE_QUIT - back key in LockType >> finish"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$4;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_0
    return v1

    :cond_0
    const/16 v3, 0x195

    if-ne v0, v3, :cond_1

    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "REQUEST_CODE_LOCK_TYPE_BY_TUTORIAL_FINISH - back key in LockType >> finish"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$4;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
