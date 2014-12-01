.class Lcom/android/launcher2/HomeScreenDialogFragment$2;
.super Ljava/lang/Object;
.source "HomeScreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$download_contents:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenDialogFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$download_contents:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$download_contents:Ljava/lang/String;

    const-string v5, "Wallpaper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_1

    if-nez p3, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismiss()V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    packed-switch p3, :pswitch_data_0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://waprd.telstra.com/redirect?target=3glatestpics"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->createAndShow(Landroid/app/FragmentManager;I)V

    goto :goto_0

    :pswitch_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->createAndShow(Landroid/app/FragmentManager;I)V

    goto :goto_0

    :pswitch_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.SViewColor"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "HomeScreenDialogFragment"

    const-string v5, "Activity Not Found for S View cover option"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
