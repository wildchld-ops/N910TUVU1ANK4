.class Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;
.super Ljava/lang/Object;
.source "DormantModeGroupListDel.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;->this$1:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;->this$1:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->updateSelectionMenu()V

    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;->this$1:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$500(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack$5;->this$1:Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    # invokes: Lcom/android/settings/dormantmode/DormantModeGroupListDel;->ToggleAllCheck(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->access$500(Lcom/android/settings/dormantmode/DormantModeGroupListDel;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
