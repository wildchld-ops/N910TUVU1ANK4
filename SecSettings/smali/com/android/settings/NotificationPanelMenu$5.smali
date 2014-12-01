.class Lcom/android/settings/NotificationPanelMenu$5;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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

    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/settings/NotificationPanelMenu;->access$1100(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v2}, Lcom/android/settings/NotificationPanelMenu;->access$000(Lcom/android/settings/NotificationPanelMenu;)V

    goto :goto_0

    :pswitch_2
    const/high16 v2, 0x3f800000

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/NotificationPanelMenu;->access$300(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
