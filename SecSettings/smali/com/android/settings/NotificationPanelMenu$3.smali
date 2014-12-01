.class Lcom/android/settings/NotificationPanelMenu$3;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    new-instance v1, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {v1, v2, p1}, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;-><init>(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    # setter for: Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/settings/NotificationPanelMenu;->access$202(Lcom/android/settings/NotificationPanelMenu;Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/NotificationPanelMenu;->access$200(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/NotificationPanelMenu;->mDragStart:Z

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # setter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/settings/NotificationPanelMenu;->access$302(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;

    const-string v0, "NotificationPanelMenu"

    const-string v1, "mLongClickListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDragStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    iget-boolean v3, v3, Lcom/android/settings/NotificationPanelMenu;->mDragStart:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    iget-boolean v0, v0, Lcom/android/settings/NotificationPanelMenu;->mDragStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$000(Lcom/android/settings/NotificationPanelMenu;)V

    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDragStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu$3;->this$0:Lcom/android/settings/NotificationPanelMenu;

    iget-boolean v3, v3, Lcom/android/settings/NotificationPanelMenu;->mDragStart:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
