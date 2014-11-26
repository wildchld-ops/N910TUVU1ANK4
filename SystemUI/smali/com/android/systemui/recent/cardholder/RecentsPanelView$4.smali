.class Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;->makeRecentHelpPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    const/4 v2, -0x2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentPopupForAttTmo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2300(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recent_menukey_dialog_do_not_show"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissHelpPopup()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mDisableAlertCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2400(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2500(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recent_menukey_dialog_do_not_show"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
