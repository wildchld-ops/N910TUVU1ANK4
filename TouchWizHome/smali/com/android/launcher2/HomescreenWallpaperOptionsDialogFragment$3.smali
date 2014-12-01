.class Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;
.super Ljava/lang/Object;
.source "HomescreenWallpaperOptionsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0f0011

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.wallpaper.livepicker/com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-ne v2, v5, :cond_1

    :cond_0
    const-string v2, "SET_LOCKSCREEN_WALLPAPER"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->val$c:Landroid/content/Context;

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;->val$c:Landroid/content/Context;

    invoke-static {v2, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "HomescreenWallpaperOptionsDialogFragment"

    const-string v3, "Launcher does not have the permission to launch com.android.wallpaper.livepicker/com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
