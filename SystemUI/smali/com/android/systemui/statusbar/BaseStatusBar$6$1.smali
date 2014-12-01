.class Lcom/android/systemui/statusbar/BaseStatusBar$6$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$6;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

.field final synthetic val$packageNameF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080161

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
