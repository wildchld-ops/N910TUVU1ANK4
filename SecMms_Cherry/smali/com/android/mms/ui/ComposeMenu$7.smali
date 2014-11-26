.class Lcom/android/mms/ui/ComposeMenu$7;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu;->startSearchMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$7;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$7;->this$0:Lcom/android/mms/ui/ComposeMenu;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMenu;->access$1702(Lcom/android/mms/ui/ComposeMenu;Z)Z

    const/4 v0, 0x1

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$1802(Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$7;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
