.class Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;
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

    iput-object p1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;->val$c:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget v1, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;->this$0:Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
